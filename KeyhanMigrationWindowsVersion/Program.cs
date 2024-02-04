using KeyhanMigrationWindowsVersion.Data.Data;
using KeyhanMigrationWindowsVersion.Services;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using System.Reflection;

namespace KeyhanMigrationWindowsVersion;

internal static class Program
{
    public static IServiceProvider? ServiceProvider { get; private set; }
    static IHostBuilder CreateHostBuilder()
    {
        return Host.CreateDefaultBuilder()
         .ConfigureServices((context, services) =>
         {
             services.AddTransient<IMigrationService, MigrationService>();
             services.AddDbContext<DataDbContext>();
             services.AddTransient<MainForm>();
             services.AddAutoMapper(a =>
             {
                 var asm = Assembly.GetEntryAssembly();
                 a.AddMaps(asm);
             });
         });
    }

    /// <summary>
    ///  The main entry point for the application.
    /// </summary>
    [STAThread]
    static void Main()
    {
        ApplicationConfiguration.Initialize();

        var host = CreateHostBuilder().Build();
        ServiceProvider = host.Services;

        Application.Run(ServiceProvider.GetRequiredService<MainForm>());
    }
}