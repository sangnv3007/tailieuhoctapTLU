using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Diagnostics; //Gọi tới process
namespace startKillListProcess
{
    public partial class Form1 : DevExpress.XtraEditors.XtraForm
    {
        public Form1()
        {
            InitializeComponent();
        }
        Process[] processList;
        private void loadProcessList()
        {
            processList = Process.GetProcesses();
            if(Convert.ToInt32(lblCount.Text) != processList.Length)
            {
                lblList.Items.Clear();
                for(int i = 0;i <processList.Length; i++)
                {
                    lblList.Items.Add(processList[i].ProcessName);
                }
                lblCount.Text = processList.Length.ToString();
            }
        }
        private void Form1_Load(object sender, EventArgs e)
        {
            loadProcessList(); 
        }

        private void btnStart_Click(object sender, EventArgs e)
        {
            string text = txtText.Text;
            Process process = new Process();
            process.StartInfo.FileName = text;
            process.Start();
        }

        private void btnStop_Click(object sender, EventArgs e)
        {
            processList[lblList.SelectedIndex].Kill();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            loadProcessList();
        }

        private void killProcessToolStripMenuItem_Click(object sender, EventArgs e)
        {
            processList[lblList.SelectedIndex].Kill();
        }
    }
}
