using KeyhanMigrationWindowsVersion.Services;

namespace KeyhanMigrationWindowsVersion;
public partial class MainForm : Form
{
    private readonly IMigrationService _migrationService;

    public MainForm(IMigrationService migrationService)
    {
        InitializeComponent();
        _migrationService = migrationService;

        Load += MainForm_Load;
        StartBtn.ButtonClick += StartBtn_ButtonClick;
    }

    private async void StartBtn_ButtonClick(object? sender, EventArgs e)
    {
        await _migrationService.StartAsync();
    }

    private async void MainForm_Load(object? sender, EventArgs e)
    {
        await BindRunway19GridAsync();
        await BindRunway22GridAsync();
    }

    protected async Task BindRunway19GridAsync()
    {
        runwayv19.AutoGenerateColumns = true;
        runwayv19.DataSource = await _migrationService.GetRunwayv19Async();
    }

    protected async Task BindRunway22GridAsync()
    {
        runwayv19.AutoGenerateColumns = true;
        runwayv22.DataSource = await _migrationService.GetRunwayv22Async();
    }
}
