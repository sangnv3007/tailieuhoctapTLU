Attribute VB_Name = "MultiThreaded_Main"
 Option Explicit
 

Public Sub HienSo1()

Dim i%

    For i = 1 To 10
        Form1.Label1.Caption = Str(i)
        DeLay (0.3)
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


