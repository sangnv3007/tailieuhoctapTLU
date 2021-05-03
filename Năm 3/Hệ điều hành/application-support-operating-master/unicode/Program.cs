using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Windows.Forms;

namespace AppUnikey
{
    class Program
    {
        private static List<int> a = new List<int>() { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }; //Mảng lưu lại nhật ký của keyboard
        private static bool startVn = true; //lưu trạng thái mở đóng của gõ tiếng việt
        private static bool capsLock = false; //lưu trạng thái capslock
        #region Kỹ thuật hook keyboard lấy ra keybord gõ vào
        //Hock: là một cơ chế mà một ứng dụng có thể chặn các sự kiện, như các thông điệp, thao tác chuột, bàn phím.
        private const int WH_KEYBOARD_LL = 13; //WH_KEYBOARD_LL: hock cho phép theo dỗi sự kiện hàn phím => ứng dụng hook low evelkeyboard nên cần phải có hằng số xác định kiểu hook.
        private const int WM_KEYDOWN = 0x0100; //WH_KEYDOWN: hock cho phép tham số bắt thông điệp keydown khi nhấn phím.

        private static LowLevelKeyboardProc _proc = HookCallback; //Gọi hàm này mọi thời gian mỗi khi có một sự kiến keyboad mới được thực thi đưa vào luồng.
        private static IntPtr _hookID = IntPtr.Zero; //khai báo và khởi tạo con trỏ null.

        //Khai báo gọi sử dụng tới API "user32.dll" trong windown để trả về thông điệp trạng thái.
        [DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true, CallingConvention = CallingConvention.Winapi)]

        public static extern short GetKeyState(int keyCode); //lấy trạng thái
        /*
         *  Keycode -Mã của phím cần lấy trạng thái.
         */
        [DllImport("user32.dll", CharSet = CharSet.Auto, SetLastError = true)]
        private static extern IntPtr SetWindowsHookEx(int idHook, LowLevelKeyboardProc lpfn, IntPtr hMod, uint dwThreadId); //Handle của hook nếu thành công, ngược lại trả về NULL,cài đặt một hook procedure vào một hook chain.
        /*
        - idHook:  loại hook(Xem bảng giá trị trong word):
        - lpfn: một con trỏ đến hook procedure. Nếu là global hook thì tham số này phải trỏ đến một hook procedure trong một DLL. Ngược lại thì có thể trỏ đến một đoạn mã đóng vai trò hook procedure trong process hiện tại.
        - hMod: handle của DLL chứa hook procedure. Trong trường hợp local hook thì tham số này được đặt là NULL.
        – dwThreadId: định danh của thread mà hook procedure sẽ gắn vào. Nếu giá trị này là 0 thì mọi thread sẽ bị ảnh hưởng (global), ngược lại thì chỉ có thread được xác định là bị ảnh hưởng (local).      
         */

        [DllImport("user32.dll", CharSet = CharSet.Auto, SetLastError = true)]
        [return: MarshalAs(UnmanagedType.Bool)]
        private static extern bool UnhookWindowsHookEx(IntPtr hhk); //Giá trị trả về: Một số khác 0 nếu thành công, ngược lại là 0.
                                                                    /* Giải thích tham số:
                                                                    –hhk: handle của hook sẽ được loại ra khỏi hook chain, lấy từ SetWindowsHookEx.
                                                                    */

        [DllImport("user32.dll", CharSet = CharSet.Auto, SetLastError = true)]
        private static extern IntPtr CallNextHookEx(IntPtr hhk, int nCode, IntPtr wParam, IntPtr lParam); //chuyển quyền điều khiển cùng các thông tin hook cho hook procedure kế tiếp trong hook chain. Bạn có thể không sử dụng hàm này tuy nhiên chỉ khi nào bạn muốn chặn các hook procedure còn lại trong hook chain.
        /*Giải thích tham số:
        – hhk: handle của hook lấy được từ SetWindowsHookEx, tuy nhiên tham số này thực sự không cần thiết.
        – nCode: tham số này được gọi tên là hook code.Giá trị của nó sẽ quyết định hook procedure có thực hiện các công việc xử lý không. Nếu giá trị này là âm, bạn cần gọi hàm CallNextHookEx để chuyển tới hook procedure kế tiếp và bỏ qua bước xử lý (xem phần hook procedure). Giá trị này có được do hệ thống quyết định và bạn không nên thay đối giá trị.
        – wParam / lParam: các tham số lưu trữ thông tin cần thiết cho hook procedure kế tiếp.
        */

        //Khai báo gọi sử dụng tới hàm API "kernel32.dll" trên windown hàm trả về thông tin về hệ thống hiện tại.
        [DllImport("kernel32.dll", CharSet = CharSet.Auto, SetLastError = true)]
        private static extern IntPtr GetModuleHandle(string lpModuleName); // lấy ra module đang xủ lý
        /*
         * lpModuleName - Tên của module
         */

        private delegate IntPtr LowLevelKeyboardProc(int nCode, IntPtr wParam, IntPtr lParam);

        private static IntPtr SetHook(LowLevelKeyboardProc proc)
        {
            using (Process curProcess = Process.GetCurrentProcess())
            {
                using (ProcessModule curModule = curProcess.MainModule)
                {
                    return SetWindowsHookEx(WH_KEYBOARD_LL, proc, GetModuleHandle(curModule.ModuleName), 0);
                }
            }
        }
        private static IntPtr HookCallback(int nCode, IntPtr wParam, IntPtr lParam)
        {
            IntPtr a = new IntPtr();
            if (nCode >= 0 && wParam == (IntPtr)WM_KEYDOWN)
            {
                int vkCode = Marshal.ReadInt32(lParam);
                CheckHotKey(vkCode);
                if (startVn == true)
                {
                    if (CheckKey(vkCode) == true)
                        return lParam;
                    else
                        return a;
                }
            }
            return a;
        }
        static bool CheckKey(int vkCode)
        {
            capsLock = ((((ushort)GetKeyState(0x14)) & 0xffff) != 0); ///0x14
            a.Add(vkCode);
            while (a.Count() > 10)
            {
                a.RemoveAt(0);
            }
            //Console.WriteLine(vkCode);
            #region A
            if (vkCode == 83 & a[a.Count() - 2] == 65) //á
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("á");
                else
                    SendKeys.Send("Á");
                return true;
            }
            if (vkCode == 70 & a[a.Count() - 2] == 65) //à
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("à");
                else
                    SendKeys.Send("À");
                return true;
            }
            if (vkCode == 74 & a[a.Count() - 2] == 65) //ạ
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ạ");
                else
                    SendKeys.Send("Ạ");
                return true;
            }
            if (vkCode == 82 & a[a.Count() - 2] == 65) //ả
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ả");
                else
                    SendKeys.Send("Ả");
                return true;
            }
            if (a[a.Count() - 1] == 88 & a[a.Count() - 2] == 65) //ã
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ã");
                else
                    SendKeys.Send("Ã");
                return true;
            }

            #endregion
            #region U
            if (a[a.Count() - 1] == 83 & a[a.Count() - 2] == 85) //á
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ú");
                else
                    SendKeys.Send("Ú");
                return true;
            }
            if (a[a.Count() - 1] == 70 & a[a.Count() - 2] == 85) //à
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ù");
                else
                    SendKeys.Send("Ù");
                return true;
            }
            if (a[a.Count() - 1] == 74 & a[a.Count() - 2] == 85) //ạ
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ụ");
                else
                    SendKeys.Send("Ụ");
                return true;
            }
            if (a[a.Count() - 1] == 82 & a[a.Count() - 2] == 85) //ả
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ủ");
                else
                    SendKeys.Send("Ủ");
                return true;
            }
            if (a[a.Count() - 1] == 88 & a[a.Count() - 2] == 85) //ả
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ũ");
                else
                    SendKeys.Send("Ũ");
                return true;
            }
            #endregion
            #region E
            if (a[a.Count() - 1] == 83 & a[a.Count() - 2] == 69) //á
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("é");
                else
                    SendKeys.Send("É");
                return true;
            }
            if (a[a.Count() - 1] == 70 & a[a.Count() - 2] == 69) //à
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("è");
                else
                    SendKeys.Send("È");
                return true;
            }
            if (a[a.Count() - 1] == 74 & a[a.Count() - 2] == 69) //ạ
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ẹ");
                else
                    SendKeys.Send("Ẹ");
                return true;
            }
            if (a[a.Count() - 1] == 82 & a[a.Count() - 2] == 69) // hỏi
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ẻ");
                else
                    SendKeys.Send("Ẻ");
                return true;
            }
            if (a[a.Count() - 1] == 88 & a[a.Count() - 2] == 69) //~
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ẽ");
                else
                    SendKeys.Send("Ẽ");
                return true;
            }
            #endregion
            #region O
            if (a[a.Count() - 1] == 83 & a[a.Count() - 2] == 79) //á
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ó");
                else
                    SendKeys.Send("Ó");
                return true;
            }
            if (a[a.Count() - 1] == 70 & a[a.Count() - 2] == 79) //à
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ò");
                else
                    SendKeys.Send("Ò");
                return true;
            }
            if (a[a.Count() - 1] == 74 & a[a.Count() - 2] == 79) //ạ
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ọ");
                else
                    SendKeys.Send("Ọ");
                return true;
            }
            if (a[a.Count() - 1] == 82 & a[a.Count() - 2] == 79) //ả
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ỏ");
                else
                    SendKeys.Send("Ỏ");
                return true;
            }
            if (a[a.Count() - 1] == 82 & a[a.Count() - 2] == 79) //ả
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("õ");
                else
                    SendKeys.Send("Õ");
                return true;
            }
            #endregion
            #region I
            if (a[a.Count() - 1] == 83 & a[a.Count() - 2] == 73) //á
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("í");
                else
                    SendKeys.Send("Í");
                return true;
            }
            if (a[a.Count() - 1] == 70 & a[a.Count() - 2] == 73) //à
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ì");
                else
                    SendKeys.Send("Ì");
                return true;
            }
            if (a[a.Count() - 1] == 74 & a[a.Count() - 2] == 73) //ạ
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ị");
                else
                    SendKeys.Send("Ị");
                return true;
            }
            if (a[a.Count() - 1] == 82 & a[a.Count() - 2] == 73) //ả
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ỉ");
                else
                    SendKeys.Send("Ỉ");
                return true;
            }
            if (a[a.Count() - 1] == 82 & a[a.Count() - 2] == 73) //ả
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ĩ");
                else
                    SendKeys.Send("Ĩ");
                return true;
            }
            #endregion
            #region double key telex Ă,Â,Ê,Ơ,Ô,Ư,Đ
            if (a[a.Count() - 1] == 65 & a[a.Count() - 2] == 65)
            {
                SendKeys.Send("{BACKSPACE}"); //số 8
                if (capsLock != true)
                    SendKeys.Send("â"); //231
                else
                    SendKeys.Send("Â");
                return true;
            }
            if (a[a.Count() - 1] == 69 & a[a.Count() - 2] == 69)
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ê"); //231
                else
                    SendKeys.Send("Ê");
                return true;
            }
            if (a[a.Count() - 1] == 79 & a[a.Count() - 2] == 79)
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ô");
                else
                    SendKeys.Send("Ô");
                return true;
            }
            if (a[a.Count() - 1] == 87 & a[a.Count() - 2] == 79)
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ơ");
                else
                    SendKeys.Send("Ơ");
                return true;
            }
            if (a[a.Count() - 1] == 87 & a[a.Count() - 2] == 65)
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ă");
                else
                    SendKeys.Send("Ă");
                return true;
            }
            if (a[a.Count() - 1] == 87 & a[a.Count() - 2] == 85)
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ư");
                else
                    SendKeys.Send("Ư");
                return true;
            }
            if (a[a.Count() - 1] == 68 & a[a.Count() - 2] == 68)
            {
                SendKeys.Send("{BACKSPACE}"); //số 8
                if (capsLock != true)
                    SendKeys.Send("đ"); //231
                else
                    SendKeys.Send("Đ");
                return true;
            }
            #endregion
            #region Ă 
            if (65 == a[a.Count - 5] & 87 == a[a.Count - 4] & 8 == a[a.Count - 3] & 231 == a[a.Count - 2] & 83 == a[a.Count - 1])
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ắ");
                else
                    SendKeys.Send("Ắ");
                return true;
            }
            if (65 == a[a.Count - 5] & 87 == a[a.Count - 4] & 8 == a[a.Count - 3] & 231 == a[a.Count - 2] & 70 == a[a.Count - 1])
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ằ");
                else
                    SendKeys.Send("Ằ");
                return true;
            }
            if (65 == a[a.Count - 5] & 87 == a[a.Count - 4] & 8 == a[a.Count - 3] & 231 == a[a.Count - 2] & 82 == a[a.Count - 1])
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ẳ");
                else
                    SendKeys.Send("Ẳ");
                return true;
            }
            if (65 == a[a.Count - 5] & 87 == a[a.Count - 4] & 8 == a[a.Count - 3] & 231 == a[a.Count - 2] & 88 == a[a.Count - 1])
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ẵ");
                else
                    SendKeys.Send("Ẵ");
                return true;
            }
            if (65 == a[a.Count - 5] & 87 == a[a.Count - 4] & 8 == a[a.Count - 3] & 231 == a[a.Count - 2] & 74 == a[a.Count - 1])
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ặ");
                else
                    SendKeys.Send("Ặ");
                return true;
            }
            #endregion
            #region Â 
            if (65 == a[a.Count - 5] & 65 == a[a.Count - 4] & 8 == a[a.Count - 3] & 231 == a[a.Count - 2] & 83 == a[a.Count - 1])
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ấ");
                else
                    SendKeys.Send("Ấ");
                return true;
            }
            if (65 == a[a.Count - 5] & 65 == a[a.Count - 4] & 8 == a[a.Count - 3] & 231 == a[a.Count - 2] & 70 == a[a.Count - 1])
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ầ");
                else
                    SendKeys.Send("Ầ");
                return true;
            }
            if (65 == a[a.Count - 5] & 65 == a[a.Count - 4] & 8 == a[a.Count - 3] & 231 == a[a.Count - 2] & 82 == a[a.Count - 1])
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ẩ");
                else
                    SendKeys.Send("Ẩ");
                return true;
            }
            if (65 == a[a.Count - 5] & 87 == a[a.Count - 4] & 8 == a[a.Count - 3] & 231 == a[a.Count - 2] & 88 == a[a.Count - 1])
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ẫ");
                else
                    SendKeys.Send("Ẫ");
                return true;
            }
            if (65 == a[a.Count - 5] & 65 == a[a.Count - 4] & 8 == a[a.Count - 3] & 231 == a[a.Count - 2] & 74 == a[a.Count - 1])
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ậ");
                else
                    SendKeys.Send("Ậ");
                return true;
            }
            #endregion
            #region Ê 
            if (69 == a[a.Count - 5] & 69 == a[a.Count - 4] & 8 == a[a.Count - 3] & 231 == a[a.Count - 2] & 83 == a[a.Count - 1])
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ế");
                else
                    SendKeys.Send("Ế");
                return true;
            }
            if (69 == a[a.Count - 5] & 69 == a[a.Count - 4] & 8 == a[a.Count - 3] & 231 == a[a.Count - 2] & 70 == a[a.Count - 1])
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ề");
                else
                    SendKeys.Send("Ề");
                return true;
            }
            if (69 == a[a.Count - 5] & 69 == a[a.Count - 4] & 8 == a[a.Count - 3] & 231 == a[a.Count - 2] & 82 == a[a.Count - 1])
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ể");
                else
                    SendKeys.Send("Ể");
                return true;
            }
            if (69 == a[a.Count - 5] & 69 == a[a.Count - 4] & 8 == a[a.Count - 3] & 231 == a[a.Count - 2] & 88 == a[a.Count - 1])
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ễ");
                else
                    SendKeys.Send("Ễ");
                return true;
            }
            if (69 == a[a.Count - 5] & 69 == a[a.Count - 4] & 8 == a[a.Count - 3] & 231 == a[a.Count - 2] & 74 == a[a.Count - 1])
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ệ");
                else
                    SendKeys.Send("Ệ");
                return true;
            }
            #endregion
            #region Ơ 
            if (79 == a[a.Count - 5] & 87 == a[a.Count - 4] & 8 == a[a.Count - 3] & 231 == a[a.Count - 2] & 83 == a[a.Count - 1])
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ớ");
                else
                    SendKeys.Send("Ớ");
                return true;
            }
            if (79 == a[a.Count - 5] & 87 == a[a.Count - 4] & 8 == a[a.Count - 3] & 231 == a[a.Count - 2] & 70 == a[a.Count - 1])
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ờ");
                else
                    SendKeys.Send("Ờ");
                return true;
            }
            if (79 == a[a.Count - 5] & 87 == a[a.Count - 4] & 8 == a[a.Count - 3] & 231 == a[a.Count - 2] & 82 == a[a.Count - 1])
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ở");
                else
                    SendKeys.Send("Ở");
                return true;
            }
            if (79 == a[a.Count - 5] & 87 == a[a.Count - 4] & 8 == a[a.Count - 3] & 231 == a[a.Count - 2] & 88 == a[a.Count - 1])
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ỡ");
                else
                    SendKeys.Send("Ỡ");
                return true;
            }
            if (79 == a[a.Count - 5] & 87 == a[a.Count - 4] & 8 == a[a.Count - 3] & 231 == a[a.Count - 2] & 74 == a[a.Count - 1])
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ợ");
                else
                    SendKeys.Send("Ợ");
                return true;
            }
            #endregion
            #region Ô 
            if (79 == a[a.Count - 5] & 79 == a[a.Count - 4] & 8 == a[a.Count - 3] & 231 == a[a.Count - 2] & 83 == a[a.Count - 1])
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ố");
                else
                    SendKeys.Send("Ố");
                return true;
            }
            if (79 == a[a.Count - 5] & 79 == a[a.Count - 4] & 8 == a[a.Count - 3] & 231 == a[a.Count - 2] & 70 == a[a.Count - 1])
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ồ");
                else
                    SendKeys.Send("Ồ");
                return true;
            }
            if (79 == a[a.Count - 5] & 79 == a[a.Count - 4] & 8 == a[a.Count - 3] & 231 == a[a.Count - 2] & 82 == a[a.Count - 1])
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ổ");
                else
                    SendKeys.Send("Ổ");
                return true;
            }
            if (79 == a[a.Count - 5] & 79 == a[a.Count - 4] & 8 == a[a.Count - 3] & 231 == a[a.Count - 2] & 88 == a[a.Count - 1])
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ỗ");
                else
                    SendKeys.Send("Ỗ");
                return true;
            }
            if (79 == a[a.Count - 5] & 79 == a[a.Count - 4] & 8 == a[a.Count - 3] & 231 == a[a.Count - 2] & 74 == a[a.Count - 1])
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ộ");
                else
                    SendKeys.Send("Ộ");
                return true;
            }
            #endregion
            #region Ư 
            if (85 == a[a.Count - 5] & 87 == a[a.Count - 4] & 8 == a[a.Count - 3] & 231 == a[a.Count - 2] & 83 == a[a.Count - 1])
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ứ");
                else
                    SendKeys.Send("Ứ");
                return true;
            }
            if (85 == a[a.Count - 5] & 87 == a[a.Count - 4] & 8 == a[a.Count - 3] & 231 == a[a.Count - 2] & 70 == a[a.Count - 1])
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ừ");
                else
                    SendKeys.Send("Ừ");
                return true;
            }
            if (85 == a[a.Count - 5] & 87 == a[a.Count - 4] & 8 == a[a.Count - 3] & 231 == a[a.Count - 2] & 82 == a[a.Count - 1])
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ử");
                else
                    SendKeys.Send("Ử");
                return true;
            }
            if (85 == a[a.Count - 5] & 87 == a[a.Count - 4] & 8 == a[a.Count - 3] & 231 == a[a.Count - 2] & 88 == a[a.Count - 1])
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ữ");
                else
                    SendKeys.Send("Ữ");
                return true;
            }
            if (85 == a[a.Count - 5] & 87 == a[a.Count - 4] & 8 == a[a.Count - 3] & 231 == a[a.Count - 2] & 74 == a[a.Count - 1])
            {
                SendKeys.Send("{BACKSPACE}");
                if (capsLock != true)
                    SendKeys.Send("ự");
                else
                    SendKeys.Send("Ự");
                return true;
            }
            #endregion
            return false;
        }
        static void HookKeyboard()
        {
            _hookID = SetHook(_proc);
            Application.Run();
            UnhookWindowsHookEx(_hookID);
        }
        static bool isHotKey_openwindow = false;
        static bool isShowing = false;
        static Keys previoursKey_openwindow = Keys.Separator;

        static bool isHotKey_Telex = false;
        static bool isTelex = false;
        static Keys previoursKey_Telex = Keys.Separator;


        static void CheckHotKey(int vkCode) //hàm kiểm tra các key sử dụng chương trình
        {
            #region open window
            if ((previoursKey_openwindow == Keys.LControlKey || previoursKey_openwindow == Keys.RControlKey) && (Keys)(vkCode) == Keys.K) //Ctrl+K
                isHotKey_openwindow = true;
            if (isHotKey_openwindow)
            {
                if (!isShowing)
                {
                    DisplayWindow();
                }
                else
                    HideWindow();

                isShowing = !isShowing;
            }
            previoursKey_openwindow = (Keys)vkCode;
            isHotKey_openwindow = false;
            #endregion
            #region off gotv
            if (previoursKey_Telex == Keys.LControlKey && (Keys)(vkCode) == Keys.LShiftKey) //Ctrl+Shift
                isHotKey_Telex = true;
            if (isHotKey_Telex)
            {
                if (!isTelex)
                {
                    startVn = true;
                    Menu();
                }
                else
                {
                    startVn = false;
                    Menu();
                }

                isTelex = !isTelex;
            }
            previoursKey_Telex = (Keys)vkCode;
            isHotKey_Telex = false;
            #endregion
            if ((Keys)(vkCode) == Keys.CapsLock)
            {
                Menu();
            }
        }
        #endregion        
        #region Windows
        [DllImport("kernel32.dll")]
        static extern IntPtr GetConsoleWindow(); //lấy ra màn hình console

        [DllImport("user32.dll")]
        static extern bool ShowWindow(IntPtr hWnd, int nCmdShow); //hàm ẩn hiện window
        /*
         * hWnd - Giá trị con trỏ của màn hình hiện tại.
         * nCmdShow -giá trị của hàm để thự hiện vd: 0 là mã ẩn cửa sổ - 5 là mã hiện
         */

        //Mã ẩn cửa sổ
        const int SW_HIDE = 0;
        //Mã hiện cửa sổ
        const int SW_SHOW = 5;
        static void HideWindow()
        {
            IntPtr console = GetConsoleWindow(); //lấy ra màn hình console hiện tai đang chạy.
            ShowWindow(console, SW_HIDE); // ẩn window  truyền mã ẩn
        }
        static void DisplayWindow()
        {
            IntPtr console = GetConsoleWindow();
            ShowWindow(console, SW_SHOW);// hiện window
        }
        #endregion
        #region Registry dùng để khởi động cùng hệ điều hành
        static void StartWithOS() //set chay mặc định khi hệ điều hành khởi động
        {
            RegistryKey regkey = Registry.CurrentUser.CreateSubKey("Software\\GoTiengViet");   //create regkey
            RegistryKey regstart = Registry.CurrentUser.CreateSubKey("SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run");
            string keyvalue = "1";
            try
            {
                regkey.SetValue("Index", keyvalue);
                regstart.SetValue("GoTiengViet", Application.StartupPath + "\\" + Application.ProductName + ".exe");
                regkey.Close();
            }
            catch (System.Exception ex)
            {

            }
        }
        #endregion   
        static void Menu()
        {
            Console.Clear();
            Console.OutputEncoding = Encoding.UTF8;
            Console.WriteLine();
            Console.WriteLine("CHƯƠNG TRÌNH ỨNG DỤNG HỖ TRỢ UNIKEY TRÊN WINDOWN:");
            Console.WriteLine();
            if (startVn == true)
                Console.WriteLine("   Trạng thái: Gõ unicode đang ON.");
            else
                Console.WriteLine("   Trạng thái: Gõ unicode đang OFF.");
            Console.WriteLine();
            Console.WriteLine("   ==========================================");
            Console.WriteLine("   Hướng dẫn sử dụng ứng dụng: ");
            Console.WriteLine("   - Để ON/OFF gõ unicode nhấn tổ hợp: Ctrl+Shift ");
            Console.WriteLine("   - Để ON/OFF cửa sổ chương trình ứng dụng     : Ctrl+K ");

        }
        static void Main(string[] args)
        {
            Menu();
            HookKeyboard();

        }
    }
}


