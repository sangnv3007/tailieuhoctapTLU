Attribute VB_Name = "modFunctions"
'This Module contains the functions called in the threads.
'They have to be in a module because you have to use the AddressOf-
'function which will only work with public functions

'API Declarations
Private Declare Function timeGetTime Lib "winmm.dll" () As Long
Private Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)

Public Function ShowMovingLine()
    'Displays a line moving from the top of the PictureBox to the bottom
    'in frmTest
    Dim PosBuf As Integer
    Dim TimeBuf As Long
    Do
        TimeBuf = timeGetTime
        'Clear the PictureBox
        frmTest.picOutput(0).Cls
        'Paint the line into the PictureBox
        frmTest.picOutput(0).Line (0, PosBuf)-(frmTest.picOutput(0).Width, PosBuf)
        
        PosBuf = PosBuf + 1
        If PosBuf > frmTest.picOutput(0).Height Then
            'Set position back to the top of the PictureBox
            PosBuf = 0
        End If
        
        'Wait some milliseconds...
        Do While timeGetTime - TimeBuf < 5
            Sleep 2
        Loop
    Loop
End Function

Public Function ShowAnimation()
    'Displays a simple Animation using single pictures in frmTest
    Dim PicNumber As Integer
    Dim TimeBuf As Long
    Do
        TimeBuf = timeGetTime
        'Put the actual picture into the PictureBox
        frmTest.picDisplay.Picture = frmTest.imgAnimation(PicNumber).Picture
        
        PicNumber = PicNumber + 1
        If PicNumber > 3 Then PicNumber = 0
        
        'Wait some milliseconds...
        Do While timeGetTime - TimeBuf < 5
            Sleep 100
        Loop
    Loop
End Function
