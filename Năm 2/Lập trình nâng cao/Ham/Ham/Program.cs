using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ham
{
    class Program
    {
        //a> Số chính phương:
        static void chinhphuong(int n)
        {


            Console.WriteLine("a> So chinh phuong nho hon n:");
            for (int i = 1; i <= n; i++)
            {
                for (int j = 0; j < i; j++)
                {
                    if (j * j == i)
                        Console.Write(j + "\t");
                }
            }
        }
        //b> Số nguyên tố:
        static void songuyento(int n)
        {
            int dem = 0;
            Console.WriteLine("\nb> So nguyen to nho hon n:");
            for (int i = 0; i <= n; i++)
            {
                if (i < 2)
                    continue;
                dem = 0;
                for (int j = 2; j <= Math.Sqrt(i); j++)
                {
                    if (i % j == 0)
                        dem++;

                }
                if (dem == 0)
                    Console.Write(i + "\t");
            }
        }
        //c> Số đối xứng:
        static void sodoixung(int n)
        {
            Console.WriteLine("\nc> So doi xung nho hon n:");
            //Phương pháp: đảo ngược số lại so với số ban đầu.
            //Nếu hiệu số mới và số ban đầu = nhau thì đó là số đối xứng.
            for (int i = 0; i < n; i++)
            {
                int dvi = i, nguoc = 0;
                while (dvi > 0)
                {
                    nguoc = nguoc * 10 + dvi % 10;
                    dvi = dvi / 10;
                }
                if (nguoc == i)
                    Console.Write(i + "\t");
            }
        }


        //Số Amstrong:
        static void amstrong(int n)
        {

            Console.WriteLine("\nd> So Amstrong nho hon n:");
            for (int i = 0; i < n; i++)
            {
                int h = i, p = i, k = 0;
                double S = 0;
                while (p > 0)
                {
                    p = p / 10;
                    k++;
                }
                for (int j = 1; j <= k; j++)
                {
                    int m = h % 10;
                    h = h / 10;
                    S += Math.Pow(m, k);
                }
                if (S == i)
                    Console.Write(i + "\t");
            }
        }
        //Số hoàn chỉnh:
        static void sohoanchinh(int n)
        {
            Console.WriteLine("\nd> So hoan chinh nho hon n:");
            for (int i = 2; i <= n; i++)
            {
                int sum = 1;
                for (int j = 2; j < i; j++)
                {
                    if (i % j == 0)
                    {
                        sum += j;
                    }
                }
                if (i == sum)
                    Console.Write(i + "\t");
                static void Main(string[] args)
                {
                    int n;
                    Console.WriteLine("Nhap so nguyen duong n:");
                    do
                        n = Convert.ToInt32(Console.ReadLine());
                    while (n < 0 || n > 100000);
                    chinhphuong(n);
                    songuyento(n);
                    sodoixung(n);
                    amstrong(n);
                    sohoanchinh(n);
                    Console.ReadKey();

                }
            }
        }
    }
}




