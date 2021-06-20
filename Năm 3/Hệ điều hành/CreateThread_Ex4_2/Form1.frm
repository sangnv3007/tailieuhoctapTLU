VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Start"
      Height          =   525
      Left            =   1830
      TabIndex        =   2
      Top             =   2400
      Width           =   1215
   End
   Begin VB.Label Label2_2 
      Height          =   315
      Left            =   2640
      TabIndex        =   4
      Top             =   1500
      Width           =   1905
   End
   Begin VB.Label Label1_2 
      Height          =   315
      Left            =   600
      TabIndex        =   3
      Top             =   1500
      Width           =   1785
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   915
      Left            =   2670
      TabIndex        =   1
      Top             =   450
      Width           =   1515
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   915
      Left            =   600
      TabIndex        =   0
      Top             =   450
      Width           =   1515
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim lRet As Long
Dim lThreadID As Long
Dim stParam As PARAM_TYPE
lThreadID = 0
stParam.lValue = -1
' Do the call to CreateThread with a by reference parameter:
'Thuc chat la goi thi hanh ham HienSo1 vµ khoi tao Thread ®Ó qu¶n lý viÖc thùc hiÖn Hµm nµy
    
    lRet = CreateThread(ByVal 0&, ByVal 0&, AddressOf HienSo1, stParam, ByVal 0&, lThreadID)
    HienSo2

End Sub

Private Sub HienSo2()
'Thoi gian chay cua ham HienSo2 phai lon hon ham HienSo1 de khong bi loi (Luong HienSo1 phai ket thuc truoc khi Luong Chinh ket thuc)
Label2_2.Caption = "Main Thread - " & "ID: " & CStr(GetCurrentThreadId)

Dim i%
Dim TimeBuf As Long

    For i = 1 To 10
        Form1.Label2.Caption = Str(i)
        DeLay (0.5)  'Do tre phai lon hon ham HienSo1 de dam bao Luong HienSo1 ket thuc truoc Luong Chinh
     Next

End Sub

Private Sub DeLay(PauseTime!)
'Tam dung ung dung trong khoang thoi gian PauseTime (giay)
Dim Start!, Finish!
    
    Start = Timer   ' Set start time.
    Do While Timer < Start + PauseTime
        DoEvents    ' Yield to other processes.
    Loop
    
End Sub

