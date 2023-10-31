```vb
using System;
using System.Runtime.InteropServices; 
using System.Windows.Forms;
 
namespace MM
{
    public partial class Form1 : Form
    {
        [DllImport("user32.dll")]
        static extern uint SendInput(
            uint nInputs, //INPUT構造体の数
            INPUT[] pInputs, //INPUT構造体
            int cbSize);   //INPUT構造体のサイズ
        [StructLayout(LayoutKind.Sequential)]
        struct INPUT    // 初期値はすべて0
        {
            public int type; // 0:MOUSE 1:KEYBOARD
            public MOUSEINPUT mi;
        }
        [StructLayout(LayoutKind.Sequential)]
        struct MOUSEINPUT   // 初期値はすべて0
        {
            public int dx;
            public int dy;
            public int mouseData;
            public int dwFlags;
            public int time;
            public IntPtr dwExtraInfo;
        }
        INPUT[] input = new INPUT[1];//イベントは1個だけ
        public Form1()
        {
            InitializeComponent();
        }
        private void timer1_Tick(object sender, EventArgs e)
        {
            input[0].mi.dwFlags = 0x0001;//MOUSEEVENTF_MOVE
            //input[0].mi.dx = 100;     //動作確認用
            SendInput(1, input, Marshal.SizeOf(input[0]));
        }
    }
}
```
