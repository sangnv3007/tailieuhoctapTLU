VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Single Thread"
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

    HienSo1
    HienSo2
    
End Sub


Public Sub HienSo1()

Dim i%

    For i = 1 To 10
        Form1.Label1.Caption = Str(i)
        DeLay (0.3)
    Next

End Sub

Public Sub HienSo2()

Dim i%

    For i = 1 To 10
        Form1.Label2.Caption = Str(i)
        DeLay (0.5)
    Next

End Sub

Public Sub DeLay(PauseTime!)
'Tam dung ung dung trong khoang thoi gian PauseTime (giay)
Dim Start!, Finish!
    
    Start = Timer   ' Set start time.
    Do While Timer < Start + PauseTime
        DoEvents    ' Yield to other processes.
    Loop
    
End Sub

