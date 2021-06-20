VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Message"
   ClientHeight    =   3045
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7320
   LinkTopic       =   "Form1"
   ScaleHeight     =   3045
   ScaleWidth      =   7320
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdSend 
      Caption         =   "Send Message"
      Height          =   375
      Left            =   3120
      TabIndex        =   6
      Top             =   2400
      Width           =   1215
   End
   Begin VB.Frame Frame1 
      Caption         =   "Thay doi Regional Setting"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1815
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   6975
      Begin VB.TextBox txtDauPhanCach 
         Height          =   375
         Left            =   1680
         MaxLength       =   1
         TabIndex        =   5
         Text            =   ","
         Top             =   1080
         Width           =   375
      End
      Begin VB.TextBox txtDate 
         Height          =   375
         Left            =   1200
         TabIndex        =   2
         Text            =   "MMM/dd/yyyy"
         Top             =   360
         Width           =   2175
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Setting"
         Height          =   390
         Left            =   5040
         TabIndex        =   1
         Top             =   720
         Width           =   1140
      End
      Begin VB.Label Label2 
         Caption         =   "Decimal separator :"
         Height          =   375
         Left            =   120
         TabIndex        =   4
         Top             =   1200
         Width           =   1455
      End
      Begin VB.Label Label1 
         Caption         =   "Date Format :"
         Height          =   375
         Left            =   120
         TabIndex        =   3
         Top             =   480
         Width           =   1095
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
      Option Explicit
      'C¸c h»ng Regional setting
      Private Const LOCALE_SSHORTDATE = &H1F    '§Þnh d¹ng ngµy
      Private Const LOCALE_SDECIMAL = &HE         'DÊu chÊm thËp ph©n - decimal separator
      Private Const LOCALE_STHOUSAND = &HF    'DÊu ph©n c¸ch hµng ngh×n -  thousand separator
      Private Const LOCALE_SNEGATIVESIGN = &H51    'DÊu ©m - negative sign

      'same as the old WM_WININICHANGE
      Private Const HWND_BROADCAST = &HFFFF&
      Private Const WM_SETTINGCHANGE = &H1A      'Th«ng ®iÖp thay ®æi cµi ®Æt hÖ thèng

      Private Declare Function GetLocaleInfo Lib "kernel32" Alias _
        "GetLocaleInfoA" (ByVal Locale As Long, ByVal LCType As _
          Long, ByVal LpLCData As String, ByVal cchData As Long) As Long
          
      Private Declare Function SetLocaleInfo Lib "kernel32" Alias _
          "SetLocaleInfoA" (ByVal Locale As Long, ByVal LCType As _
          Long, ByVal LpLCData As String) As Boolean
      
      Private Declare Function PostMessage Lib "user32" Alias _
          "PostMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, _
          ByVal wParam As Long, ByVal lParam As Long) As Long
          
        Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long

        Private Declare Function GetLastError Lib "kernel32" () As Long

      
      Private Declare Function GetSystemDefaultLCID Lib "kernel32" _
          () As Long


Public Sub DatSetting()
'§Æt Settings  vÒ ®óng d¹ng chuÈn.
         Dim dwLCID As Long
         dwLCID = GetSystemDefaultLCID()   'Lay ID cua he thong mac dinh?
         
         'Dinh dang ngay-thang-nam  ShortDate - Chó ý: Th¸ng MM ph¶i viÕt hoa, Ngµy dd vµ n¨m yy viÕt th­êng
         If SetLocaleInfo(dwLCID, LOCALE_SSHORTDATE, txtDate.Text) = False Then
            MsgBox "Failed"
            Exit Sub
         End If
         
        'DÊu chÊm thËp ph©n - decimal separator
         If SetLocaleInfo(dwLCID, LOCALE_SDECIMAL, txtDauPhanCach.Text) = False Then
            MsgBox "Failed"
            Exit Sub
         End If
         

         'Thong bao cho he thong biet la Setting da thay doi:
         'Dim a As Long, b As Long
         'a = PostMessage(HWND_BROADCAST, WM_SETTINGCHANGE, 0, 0)
         'a = SendMessage(HWND_BROADCAST, WM_SETTINGCHANGE, 0, 0)
         'b = GetLastError   'tra ve ma loi neu goi ham bi loi

End Sub


Private Sub cmdSend_Click()
    'PostMessage HWND_BROADCAST, WM_SETTINGCHANGE, 0, 0
    SendMessage HWND_BROADCAST, WM_SETTINGCHANGE, 0, 0
End Sub

Private Sub Command2_Click()
    DatSetting
End Sub

