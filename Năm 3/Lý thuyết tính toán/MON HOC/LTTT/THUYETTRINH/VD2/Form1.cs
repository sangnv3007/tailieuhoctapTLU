using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace VD2
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            label8.Visible = false;
            label7.Visible = false;   
        }
        private void Form1_Click(object sender, EventArgs e)
        {
            /*Pen p1 = new Pen(Color.Black, 2);
            Graphics g1 = this.CreateGraphics();
            g1.DrawEllipse(p1, 50, 150, 85, 85);
            g1.DrawEllipse(p1, 250, 150, 85, 85);
            //g1.DrawArc(p1, 265, 33, 22, 30, 145, 280);
            g1.DrawEllipse(p1, 450, 150, 85, 85);
            g1.DrawEllipse(p1, 50, 400, 85, 85);*/
            textBox1.Focus();
          
        }
        int a=0;
        int b=0;
        int c = 0;
        private void textBox1_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                if (textBox1.Text == "0")
                {
                    if (c != 0)
                    {
                        textBox1.Enabled = false;
                        label8.Visible = true;
                        
                    }
                    a += 1;
                    label9.Text += "0";
                    textBox1.ResetText();
                }
                if (textBox1.Text == "1")
                {
                    b += 1;
                    c += 1;
                    label9.Text += "1";
                    textBox1.ResetText();
                    if (a < b & a==0)
                    {
                        textBox1.Enabled = false;
                        label8.Visible = true;
                    }
                    if (a < b & a != 0)
                    {
                        textBox1.Enabled = false;
                        label8.Visible = true;
                    }
                }
               

            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (a == b)
            {
                textBox1.Enabled = false;
                label7.Visible = true;
            }
            else { textBox1.Enabled = false; label8.Visible = true; }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            a = 0;
            b = 0;
            c = 0;
            label7.Visible = false;
            label8.Visible = false;
            label9.ResetText();
            textBox1.Enabled = true;
            textBox1.Focus();
        }

        private void label7_Click(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }
    }
}
