namespace KeyhanMigrationWindowsVersion;

partial class MainForm
{
    /// <summary>
    /// Required designer variable.
    /// </summary>
    private System.ComponentModel.IContainer components = null;

    /// <summary>
    /// Clean up any resources being used.
    /// </summary>
    /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
    protected override void Dispose(bool disposing)
    {
        if (disposing && (components != null))
        {
            components.Dispose();
        }
        base.Dispose(disposing);
    }

    #region Windows Form Designer generated code

    /// <summary>
    /// Required method for Designer support - do not modify
    /// the contents of this method with the code editor.
    /// </summary>
    private void InitializeComponent()
    {
        System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MainForm));
        runwayv19 = new DataGridView();
        runwayv22 = new DataGridView();
        splitContainer1 = new SplitContainer();
        panel1 = new Panel();
        label1 = new Label();
        panel2 = new Panel();
        label2 = new Label();
        statusStrip1 = new StatusStrip();
        StartBtn = new ToolStripSplitButton();
        ((System.ComponentModel.ISupportInitialize)runwayv19).BeginInit();
        ((System.ComponentModel.ISupportInitialize)runwayv22).BeginInit();
        ((System.ComponentModel.ISupportInitialize)splitContainer1).BeginInit();
        splitContainer1.Panel1.SuspendLayout();
        splitContainer1.Panel2.SuspendLayout();
        splitContainer1.SuspendLayout();
        panel1.SuspendLayout();
        panel2.SuspendLayout();
        statusStrip1.SuspendLayout();
        SuspendLayout();
        // 
        // runwayv19
        // 
        runwayv19.AllowUserToAddRows = false;
        runwayv19.AllowUserToDeleteRows = false;
        runwayv19.AllowUserToResizeRows = false;
        runwayv19.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.DisplayedCells;
        runwayv19.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
        runwayv19.Dock = DockStyle.Fill;
        runwayv19.Location = new Point(0, 45);
        runwayv19.MultiSelect = false;
        runwayv19.Name = "runwayv19";
        runwayv19.ReadOnly = true;
        runwayv19.Size = new Size(492, 523);
        runwayv19.TabIndex = 0;
        // 
        // runwayv22
        // 
        runwayv22.AllowUserToAddRows = false;
        runwayv22.AllowUserToDeleteRows = false;
        runwayv22.AllowUserToResizeRows = false;
        runwayv22.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.DisplayedCells;
        runwayv22.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
        runwayv22.Dock = DockStyle.Fill;
        runwayv22.Location = new Point(0, 45);
        runwayv22.MultiSelect = false;
        runwayv22.Name = "runwayv22";
        runwayv22.ReadOnly = true;
        runwayv22.Size = new Size(530, 523);
        runwayv22.TabIndex = 1;
        // 
        // splitContainer1
        // 
        splitContainer1.Dock = DockStyle.Fill;
        splitContainer1.Location = new Point(0, 0);
        splitContainer1.Name = "splitContainer1";
        // 
        // splitContainer1.Panel1
        // 
        splitContainer1.Panel1.Controls.Add(runwayv19);
        splitContainer1.Panel1.Controls.Add(panel1);
        // 
        // splitContainer1.Panel2
        // 
        splitContainer1.Panel2.Controls.Add(runwayv22);
        splitContainer1.Panel2.Controls.Add(panel2);
        splitContainer1.Size = new Size(1026, 568);
        splitContainer1.SplitterDistance = 492;
        splitContainer1.TabIndex = 2;
        // 
        // panel1
        // 
        panel1.Controls.Add(label1);
        panel1.Dock = DockStyle.Top;
        panel1.Location = new Point(0, 0);
        panel1.Name = "panel1";
        panel1.Size = new Size(492, 45);
        panel1.TabIndex = 1;
        // 
        // label1
        // 
        label1.Dock = DockStyle.Fill;
        label1.Font = new Font("Segoe UI", 12F, FontStyle.Bold);
        label1.Location = new Point(0, 0);
        label1.Name = "label1";
        label1.Size = new Size(492, 45);
        label1.TabIndex = 0;
        label1.Text = "Runway V19";
        label1.TextAlign = ContentAlignment.MiddleCenter;
        // 
        // panel2
        // 
        panel2.Controls.Add(label2);
        panel2.Dock = DockStyle.Top;
        panel2.Location = new Point(0, 0);
        panel2.Name = "panel2";
        panel2.Size = new Size(530, 45);
        panel2.TabIndex = 3;
        // 
        // label2
        // 
        label2.Dock = DockStyle.Fill;
        label2.Font = new Font("Segoe UI", 12F, FontStyle.Bold);
        label2.Location = new Point(0, 0);
        label2.Name = "label2";
        label2.Size = new Size(530, 45);
        label2.TabIndex = 2;
        label2.Text = "Runway V22";
        label2.TextAlign = ContentAlignment.MiddleCenter;
        // 
        // statusStrip1
        // 
        statusStrip1.Items.AddRange(new ToolStripItem[] { StartBtn });
        statusStrip1.Location = new Point(0, 568);
        statusStrip1.Name = "statusStrip1";
        statusStrip1.Size = new Size(1026, 22);
        statusStrip1.TabIndex = 1;
        statusStrip1.Text = "statusStrip1";
        // 
        // StartBtn
        // 
        StartBtn.DisplayStyle = ToolStripItemDisplayStyle.Text;
        StartBtn.DropDownButtonWidth = 0;
        StartBtn.Image = (Image)resources.GetObject("StartBtn.Image");
        StartBtn.ImageTransparentColor = Color.Magenta;
        StartBtn.Name = "StartBtn";
        StartBtn.Size = new Size(91, 20);
        StartBtn.Text = "Start Migration";
        // 
        // MainForm
        // 
        AutoScaleDimensions = new SizeF(7F, 15F);
        AutoScaleMode = AutoScaleMode.Font;
        ClientSize = new Size(1026, 590);
        Controls.Add(splitContainer1);
        Controls.Add(statusStrip1);
        FormBorderStyle = FormBorderStyle.SizableToolWindow;
        Name = "MainForm";
        Text = "Main Form";
        ((System.ComponentModel.ISupportInitialize)runwayv19).EndInit();
        ((System.ComponentModel.ISupportInitialize)runwayv22).EndInit();
        splitContainer1.Panel1.ResumeLayout(false);
        splitContainer1.Panel2.ResumeLayout(false);
        ((System.ComponentModel.ISupportInitialize)splitContainer1).EndInit();
        splitContainer1.ResumeLayout(false);
        panel1.ResumeLayout(false);
        panel2.ResumeLayout(false);
        statusStrip1.ResumeLayout(false);
        statusStrip1.PerformLayout();
        ResumeLayout(false);
        PerformLayout();
    }

    #endregion

    private DataGridView runwayv19;
    private DataGridView runwayv22;
    private SplitContainer splitContainer1;
    private Panel panel1;
    private Label label1;
    private Panel panel2;
    private Label label2;
    private StatusStrip statusStrip1;
    private ToolStripSplitButton StartBtn;
}