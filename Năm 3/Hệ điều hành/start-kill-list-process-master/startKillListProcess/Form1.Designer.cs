namespace startKillListProcess
{
    partial class Form1
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
            this.components = new System.ComponentModel.Container();
            this.btnStart = new DevExpress.XtraEditors.SimpleButton();
            this.txtText = new DevExpress.XtraEditors.TextEdit();
            this.btnStop = new DevExpress.XtraEditors.SimpleButton();
            this.lblList = new System.Windows.Forms.ListBox();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.lblCount = new DevExpress.XtraEditors.LabelControl();
            this.contextMenuStrip1 = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.killProcessToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.txtText.Properties)).BeginInit();
            this.contextMenuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnStart
            // 
            this.btnStart.Appearance.Font = new System.Drawing.Font("Tahoma", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnStart.Appearance.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(192)))));
            this.btnStart.Appearance.Options.UseFont = true;
            this.btnStart.Appearance.Options.UseForeColor = true;
            this.btnStart.Location = new System.Drawing.Point(26, 13);
            this.btnStart.Name = "btnStart";
            this.btnStart.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.btnStart.Size = new System.Drawing.Size(136, 35);
            this.btnStart.TabIndex = 0;
            this.btnStart.Text = "Start";
            this.btnStart.Click += new System.EventHandler(this.btnStart_Click);
            // 
            // txtText
            // 
            this.txtText.Location = new System.Drawing.Point(26, 54);
            this.txtText.Name = "txtText";
            this.txtText.Size = new System.Drawing.Size(205, 20);
            this.txtText.TabIndex = 1;
            // 
            // btnStop
            // 
            this.btnStop.Appearance.Font = new System.Drawing.Font("Tahoma", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnStop.Appearance.ForeColor = System.Drawing.Color.Red;
            this.btnStop.Appearance.Options.UseFont = true;
            this.btnStop.Appearance.Options.UseForeColor = true;
            this.btnStop.Location = new System.Drawing.Point(338, 13);
            this.btnStop.Name = "btnStop";
            this.btnStop.Size = new System.Drawing.Size(136, 35);
            this.btnStop.TabIndex = 2;
            this.btnStop.Text = "End Process";
            this.btnStop.Click += new System.EventHandler(this.btnStop_Click);
            // 
            // lblList
            // 
            this.lblList.FormattingEnabled = true;
            this.lblList.ItemHeight = 14;
            this.lblList.Location = new System.Drawing.Point(26, 99);
            this.lblList.Name = "lblList";
            this.lblList.Size = new System.Drawing.Size(445, 396);
            this.lblList.TabIndex = 3;
            // 
            // labelControl1
            // 
            this.labelControl1.Appearance.Font = new System.Drawing.Font("Tahoma", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelControl1.Location = new System.Drawing.Point(339, 57);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(72, 18);
            this.labelControl1.TabIndex = 4;
            this.labelControl1.Text = "Processs:";
            // 
            // lblCount
            // 
            this.lblCount.Appearance.Font = new System.Drawing.Font("Tayninh", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCount.Location = new System.Drawing.Point(446, 53);
            this.lblCount.Name = "lblCount";
            this.lblCount.Size = new System.Drawing.Size(9, 22);
            this.lblCount.TabIndex = 5;
            this.lblCount.Text = "0";
            // 
            // contextMenuStrip1
            // 
            this.contextMenuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.killProcessToolStripMenuItem});
            this.contextMenuStrip1.Name = "contextMenuStrip1";
            this.contextMenuStrip1.Size = new System.Drawing.Size(134, 26);
            // 
            // killProcessToolStripMenuItem
            // 
            this.killProcessToolStripMenuItem.Name = "killProcessToolStripMenuItem";
            this.killProcessToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.killProcessToolStripMenuItem.Text = "Kill Process";
            this.killProcessToolStripMenuItem.Click += new System.EventHandler(this.killProcessToolStripMenuItem_Click);
            // 
            // timer1
            // 
            this.timer1.Enabled = true;
            this.timer1.Interval = 1000;
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // Form1
            // 
            this.Appearance.Options.UseFont = true;
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(485, 513);
            this.Controls.Add(this.lblCount);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.lblList);
            this.Controls.Add(this.btnStop);
            this.Controls.Add(this.txtText);
            this.Controls.Add(this.btnStart);
            this.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Name = "Form1";
            this.Text = "Processes windown";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.txtText.Properties)).EndInit();
            this.contextMenuStrip1.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton btnStart;
        private DevExpress.XtraEditors.TextEdit txtText;
        private DevExpress.XtraEditors.SimpleButton btnStop;
        private System.Windows.Forms.ListBox lblList;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl lblCount;
        private System.Windows.Forms.ContextMenuStrip contextMenuStrip1;
        private System.Windows.Forms.ToolStripMenuItem killProcessToolStripMenuItem;
        private System.Windows.Forms.Timer timer1;
    }
}

