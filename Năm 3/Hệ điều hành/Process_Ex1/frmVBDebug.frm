VERSION 5.00

Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.1#0"; "COMDLG32.OCX"

Begin VB.Form frmVBDebug 

Caption = "VBDebug"

ClientHeight = 4935

ClientLeft = 165

ClientTop = 735

ClientWidth = 5985

Icon = "frmVBDebug.frx":0000

LinkTopic = "Form1"

ScaleHeight = 4935

ScaleWidth = 5985

StartUpPosition = 3 'Windows Default

Begin MSComDlg.CommonDialog dlgFileOpen 

Left = 3120

Top = 840

_ExtentX = 847

_ExtentY = 847

_Version = 327680

CancelError = -1 'True

DefaultExt = ".exe"

Filter = "Executables (*.exe) | *.exe"

End

Begin VB.TextBox txtOutput 

Height = 2055

Left = 120

Locked = -1 'True

MultiLine = -1 'True

ScrollBars = 3 'Both

TabIndex = 0

Top = 360

Width = 2055

End

Begin VB.Menu mnuFile 

Caption = "&File"

Begin VB.Menu mnuFileOpen 

Caption = "&Open"

Shortcut = ^O

End

Begin VB.Menu mnuFileExit 

Caption = "&Exit"

Shortcut = ^Q

End

End

Begin VB.Menu mnuDebug 

Caption = "&Debug"

Begin VB.Menu mnuDebugStart 

Caption = "&Start"

Enabled = 0 'False

Shortcut = {F5}

End

Begin VB.Menu mnuDebugPause 

Caption = "&Pause"

Enabled = 0 'False

End

Begin VB.Menu mnuDebugEnd 

Caption = "&End"

Enabled = 0 'False

End

Begin VB.Menu mnuDebugRestart 

Caption = "&Restart"

Enabled = 0 'False

Shortcut = +{F5}

End

Begin VB.Menu mnuSep1 

Caption = "-"

End

Begin VB.Menu mnuDebugShowActiveThreads 

Caption = "S&how Active Threads"

Enabled = 0 'False

End

Begin VB.Menu mnuDebugShowActiveDLLs 

Caption = "Sh&ow Active DLLs"

Enabled = 0 'False

End

End

Begin VB.Menu mnuHelp 

Caption = "&Help"

Begin VB.Menu mnuHelpAbout 

Caption = "&About VBDebug"

End

End

End

Attribute VB_Name = "frmVBDebug"

Attribute VB_GlobalNameSpace = False

Attribute VB_Creatable = False

Attribute VB_PredeclaredId = True

Attribute VB_Exposed = False

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

' John Robbins

' Microsoft Systems Journal - August 1997

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

' FILE : frmVBDebug.frm

' DISCUSSION :

' The main UI form for the whole VBDebug project.

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

Option Explicit

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

' Enumeration types that indicate the state of the UI widgits.

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

Private Enum eUIState

' The UI is uninitialized. The only time in this state is when I

' first start and before I have loaded an executable.

eUIUninitialized = 0

' The user has opened a file but has not started debugging or the

' current debuggee has finished and is ready to run again.

eUILoaded = 1

' There is an application running under the debug loop.

eUIDebugging = 2

' The debuggee is running but it is paused.

eUIDebuggingPaused = 3

End Enum

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

' Form private variables.

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

' The full name of the executable that I have open for debugging.

Private g_szFullDebuggeeName As String

' The name portion of the debuggee. This is what I use for setting the

' application title.

Private g_szJustDebuggeeName As String

' The debugger class that is passed to the debug thread.

Private g_clsDebug As DebuggerClass

' The executive class for the debugger.

Private g_clsExecutive As SimpleExecutive

' The synchronization class.

Private g_clsSynch As DebugSynchClass

' The handle to the debug thread.

Private g_hDebugThread As Long

' The handle to the thread that waits for the debug thread to end.

Private g_hWaitThread As Long

' The structure that I pass to the wait thread.

Private g_stWaitType As SPECIALWAIT_TYPE

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

' Form Event Handling

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

Private Sub Form_Load()

' Force the output text box to cover the client area.

Form_Resize

End Sub

Private Sub Form_Resize()

' Resize the output text box to fill the entire client area.

txtOutput.Top = 0

txtOutput.Left = 0

txtOutput.Height = ScaleHeight

txtOutput.Width = ScaleWidth

End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)

' Tell the debugger thread to die if it is active.

If (Not (g_clsDebug Is Nothing)) Then

g_clsSynch.QuitDebugThread

' Hang out until the wait thread is done to ensure complete and

' proper cleanup.

Dim bRes As Long

bRes = WaitForSingleObject(g_hWaitThread, INFINITE)

End If

' Clear up any outstanding references.

Set g_clsDebug = Nothing

Set g_clsExecutive = Nothing

Set g_clsSynch = Nothing

End Sub

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

' File Menu Handling

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

Private Sub mnuFileOpen_Click()

' Bring up the file open dialog and get the user's choice.

On Error GoTo mnuFileOpen_Click_Error

dlgFileOpen.ShowOpen

' Get the full name of the executable.

g_szFullDebuggeeName = dlgFileOpen.filename

' Get just the partial name.

g_szJustDebuggeeName = dlgFileOpen.FileTitle

' Set the UI state to not running.

SetUIState (eUILoaded)

' Put the text in the output so the user can see what is going on.

' I am allowed to touch the output edit control here because no

' debugger thread is running so there are no synchronization

' problems

txtOutput.Text = "UI: " + g_szFullDebuggeeName + _

" opened and ready to run." + vbNewLine

Exit Sub

mnuFileOpen_Click_Error:

' If the error was anything other than cancel, throw it on.

If (cdlCancel <> Err.Number) Then

Err.Raise (Err.Number)

End If

End Sub

Private Sub mnuFileExit_Click()

' If there is an active executive class, then I must use the

' AppendText method to access the output edit control.

If (Not g_clsExecutive Is Nothing) Then

g_clsExecutive.AppendText "UI: File Exit selected"

Else

txtOutput.Text = txtOutput.Text + vbNewLine + _

"UI: File Exit selected" + vbNewLine

End If

' Call this to get the Form_QueryUnload function called.

Unload Me

End Sub

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

' Debug Menu Handling

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

Private Sub mnuDebugStart_Click()

On Error GoTo mnuDebugStart_Click_Error

Dim bRet As Long

Dim boolDidStart As Boolean

' To keep everything straight, I do a complete new debugger,

' synchronization, and executive classes on each start.

' Clear out any existing debugger, executive, and synch classes.

Set g_clsDebug = Nothing

Set g_clsExecutive = Nothing

Set g_clsSynch = Nothing

' Clear the text box and indicate that the UI menu was picked.

txtOutput.Text = ""

txtOutput.Text = "UI: Debug Start selected" + vbNewLine

' Instantiate the debugger class.

Set g_clsDebug = New DebuggerClass

' Instantiate the executive.

Set g_clsExecutive = New SimpleExecutive

' Instantiate the synchronization class.

Set g_clsSynch = New DebugSynchClass

' Initialize the executive class text output. After this, the UI

' thread is no longer allowed to touch the text box.

Let g_clsExecutive.txtOutput = txtOutput

' Initialize the debugger class with the program name.

g_clsDebug.SetDebuggeeInfo (g_szFullDebuggeeName)

' Initialize the debugger class with the executive that does all

' the work.

Set g_clsDebug.clsBaseExecutive = g_clsExecutive

' Now that I have all of the required classes set up, I can start

' the debug thread.

SetUIState (eUIDebugging)

' I have to do the synch in two stages: create it before, then

' check it after. If you don't do this, then you can run into cases

' where the debug thread cranks, sets the event and dies before this

' thread can get it created. Granted those cases only happen on

' those super fast Alphas (400Mhz is REALLY great!) but they do

' happen.

g_clsSynch.PrepareWaitForStartup

' Crank the debug thread passing it debugger class.

g_hDebugThread = StartDebugThread(g_clsDebug)

' Wait until the debug thread at least gets through the

' CreateProcess on the debuggee and see how it did.

boolDidStart = g_clsSynch.WaitForStartup

' If WaitForStartup returned False, then the debuggee was not

' started.

If (False = boolDidStart) Then

' There was a problem starting up so clean up.

Set g_clsDebug = Nothing

Set g_clsExecutive = Nothing

Set g_clsSynch = Nothing

' Let the user know.

MsgBox ("Unable to start " + g_szFullDebuggeeName)

txtOutput.Text = "UI: Unable to start " + g_szFullDebuggeeName

' Make sure to set the UI state back.

SetUIState (eUILoaded)

Exit Sub

End If

' Get the debuggee process ID into the synch class.

g_clsSynch.dwUniqueID = g_clsDebug.dwDebuggeePID

' Create the synchronization objects for THIS thread.

g_clsSynch.CreateSynchObjects

' Create the thread that waits on the debug thread to end.

Set g_stWaitType.frmDTE = Me

g_stWaitType.hThread = g_hDebugThread

' Crank up the wait thread that will watch for the debug thread to

' end.

g_hWaitThread = StartWaitThread(g_stWaitType)

g_clsExecutive.AppendText "UI: Debuggee started"

Exit Sub

mnuDebugStart_Click_Error:

MsgBox ("Error in mnuDebugStart_Click: " + Err.Description)

End Sub

Private Sub mnuDebugEnd_Click()

g_clsExecutive.AppendText "UI: Debug End selected"

' Tell the debugger thread to die.

g_clsSynch.QuitDebugThread

' NOTE: I don't set the UI state here. I need to make sure the

' debug thread is really done before I set it. It is set in the

' btnPostMsgButton_MouseDown handler.

End Sub

Private Sub mnuDebugPause_Click()

g_clsExecutive.AppendText "UI: Debug Pause selected"

' Tell the debugger thread to pause.

g_clsSynch.PauseDebugThread

SetUIState (eUIDebuggingPaused)

End Sub

Private Sub mnuDebugRestart_Click()

g_clsExecutive.AppendText "UI: Debug Restart selected"

' Tell the debugger thread to resume.

g_clsSynch.ResumeDebugThread

SetUIState (eUIDebugging)

End Sub

Private Sub mnuDebugShowActiveThreads_Click()

g_clsExecutive.DumpActiveThreads

End Sub

Private Sub mnuDebugShowActiveDlls_Click()

g_clsExecutive.DumpLoadedDLLs

End Sub

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

' Help Menu Handling

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

Private Sub mnuHelpAbout_Click()

If (Not g_clsExecutive Is Nothing) Then

g_clsExecutive.AppendText "UI: Help About selected"

Else

txtOutput.Text = txtOutput.Text + vbNewLine + _

"UI: Help About selected" + vbNewLine

End If

frmAbout.Show vbModal, Me

End Sub

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

' The special function that is called from the thread that waits for the

' debug thread to end. This is how I get the UI resynched to know what

' the current state is.

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

Public Sub DebugThreadEnded()

SetUIState (eUILoaded)

Dim bRet As Long

' This is very ugly. This function is called in another thread's

' context and it seems that while the caption is set correctly, it

' does not get updated correctly. To force the update, I simply make

' a direct call to SetWindowText to get everything updated.

bRet = SetWindowText(Me.hWnd, Me.Caption)

g_clsExecutive.AppendText "UI: DebugThreadEnded called!"

End Sub

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

' Form specific helper functions

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

' FUNCTION : SetUIState

' DISCUSSION :

' A helper function to set the state of all UI widgits.

' PARAMETERS :

' eUIToSet - The enum to set the user interface to.

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

Private Sub SetUIState(eUIToSet As eUIState)

Select Case (eUIToSet)

' I have an executable open, but I am not debugging yet.

Case eUILoaded

' If the user wants to open another file, they can.

mnuFileOpen.Enabled = True

' Debugging can start.

mnuDebugStart.Enabled = True

' Since I am not debugging, I cannot end, pause or restart

' debugging.

mnuDebugEnd.Enabled = False

mnuDebugPause.Enabled = False

mnuDebugRestart.Enabled = False

' Set the info commands off.

mnuDebugShowActiveThreads.Enabled = False

mnuDebugShowActiveDLLs.Enabled = False

' Set the title.

Me.Caption = k_APPNAME + " - " + _

g_szJustDebuggeeName + _

k_NOTRUNNINGSTATE

' I am debugging!

Case eUIDebugging

' Nope, cannot open files.

mnuFileOpen.Enabled = False

' Cannot start debugging again.

mnuDebugStart.Enabled = False

' I am debugging so I can end and pause but not restart.

mnuDebugEnd.Enabled = True

mnuDebugPause.Enabled = True

mnuDebugRestart.Enabled = False

' Turn the info commands on.

mnuDebugShowActiveThreads.Enabled = True

mnuDebugShowActiveDLLs.Enabled = True

' Set the title.

Me.Caption = k_APPNAME + " - " + _

g_szJustDebuggeeName + _

k_DEBUGGINGSTATE

' The debuggee is paused.

Case eUIDebuggingPaused

' Since this state is only allowed from eUIDebugging, all

' that is done here is to set restart to true and pause

' to false.

mnuDebugPause.Enabled = False

mnuDebugRestart.Enabled = True

Me.Caption = k_APPNAME + " - " + _

g_szJustDebuggeeName + _

k_PAUSEDSTATE

' The uninitialized state.

Case eUIUninitialized

mnuFileOpen.Enabled = True

mnuDebugStart.Enabled = False

mnuDebugEnd.Enabled = False

mnuDebugPause.Enabled = False

mnuDebugRestart.Enabled = False

mnuDebugShowActiveThreads.Enabled = False

mnuDebugShowActiveDLLs.Enabled = False

Me.Caption = k_APPNAME

End Select

End Sub

SimpleExecutive.cls
VERSION 1.0 CLASS

BEGIN

MultiUse = -1 'True

END

Attribute VB_Name = "SimpleExecutive"

Attribute VB_GlobalNameSpace = False

Attribute VB_Creatable = True

Attribute VB_PredeclaredId = False

Attribute VB_Exposed = False
