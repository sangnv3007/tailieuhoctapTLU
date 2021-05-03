using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Drawing.Drawing2D;

namespace WindowsFormsApplication2
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            label4.Visible = false; //accept
            label5.Visible = false; //reject
        }

        private void Form1_Click(object sender, EventArgs e)
        {
            Pen p1 = new Pen(Color.Black, 2);
            Graphics g1 = this.CreateGraphics();
            g1.DrawEllipse(p1, 50, 150, 85, 85);
            g1.DrawEllipse(p1, 250, 150, 85, 85);
            //g1.DrawArc(p1, 265, 33, 22, 30, 145, 280);
            g1.DrawEllipse(p1, 450, 150, 85, 85);

        }

        private void textBox1_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                if (textBox1.Text == "1" || textBox1.Text == "n")
                {
                    label5.Visible = true;
                    textBox1.Enabled = false;
                    textBox2.Enabled = false;
                    textBox3.Enabled = false;
                    label8.Text += textBox1.Text;
                    label9.Text += textBox1.Text;
                }
                if (textBox1.Text == "0")
                {
                    textBox2.Focus();
                    label8.Text += "0";
                    label9.Text += "x";
                }
            }
        }


        private void textBox2_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                if (textBox2.Text == "n")
                {
                    label5.Visible = true;
                    textBox1.Enabled = false;
                    textBox2.Enabled = false;
                    textBox3.Enabled = false;
                    label8.Text += "n";
                    label9.Text += "n";
                }
                if (textBox2.Text == "1")
                {
                    textBox2.ResetText();
                    label8.Text += "1" ;
                    label9.Text += "y";
                }
                if (textBox2.Text == "0")
                {
                    textBox3.Focus();
                    label8.Text += "0";
                    label9.Text += "x";
                }
            }

        }

        private void textBox3_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                if (textBox3.Text == "n")
                {
                    label4.Visible = true;
                    textBox1.Enabled = false;
                    textBox2.Enabled = false;
                    textBox3.Enabled = false;
                    label8.Text += "n";
                    label9.Text += "n";
                }
                if (textBox3.Text == "0" || textBox3.Text == "1")
                {
                    label5.Visible = true;
                    textBox1.Enabled = false;
                    textBox2.Enabled = false;
                    textBox3.Enabled = false;
                    label8.Text += textBox3.Text;
                    label9.Text += textBox3.Text;
                }
            }


        }


        private void button1_Click(object sender, EventArgs e)
        {
            textBox1.ResetText();
            textBox2.ResetText();
            textBox3.ResetText();
            label8.ResetText();
            label9.ResetText();
            label4.Visible = false;
            label5.Visible = false;
            textBox1.Enabled = true;
            textBox2.Enabled = true;
            textBox3.Enabled = true;
            textBox1.Focus();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void label8_Click(object sender, EventArgs e)
        {

        }
    }
}