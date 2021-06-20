VERSION 5.00
Begin VB.Form frmMain 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "AddressOf Example - Enumerate Windows"
   ClientHeight    =   4695
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5160
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   4695
   ScaleWidth      =   5160
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton btnEnd 
      Caption         =   "E&nd"
      Height          =   495
      Left            =   2640
      TabIndex        =   2
      Top             =   3960
      Width           =   2295
   End
   Begin VB.CommandButton btnEnumThem 
      Caption         =   "&Enumerate Windows"
      Height          =   495
      Left            =   120
      TabIndex        =   1
      Top             =   3960
      Width           =   2415
   End
   Begin VB.ListBox lstOutput 
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3420
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4815
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False






''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

' John Robbins, Microsoft Systems Journal - August 1997

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

Option Explicit

Private Sub btnEnd_Click()

End

End Sub

Private Sub btnEnumThem_Click()

lstOutput.Clear


Dim bRet As Long

bRet = EnumWindows(AddressOf WndEnumProc, lstOutput)


End Sub
