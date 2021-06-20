Attribute VB_Name = "mod_EnumWnds"

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

' John Robbins, Microsoft Systems Journal - August 1997

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

Option Explicit

' Declare the API functions.

Declare Function EnumWindows Lib "User32" _
(ByVal lpEnumFunc As Any, ByVal lParam As Any) As Long

Private Declare Function GetWindowText Lib "User32" Alias _
         "GetWindowTextA" (ByVal hwnd As Long, ByVal lpString As String, _
         ByVal cch As Long) As Long


Function WndEnumProc(ByVal hwnd As Long, _
ByVal lParam As ListBox) As Long

Dim szTitle As String

Dim bRet As Long

szTitle = String(512, 0)

bRet = GetWindowText(hwnd, szTitle, 512)

' Only show those that have titles.

If (0 <> bRet) Then

lParam.AddItem szTitle

End If

WndEnumProc = 1

End Function

