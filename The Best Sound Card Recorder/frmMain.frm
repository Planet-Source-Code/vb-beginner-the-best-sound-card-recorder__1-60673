VERSION 5.00
Object = "{6BF52A50-394A-11D3-B153-00C04F79FAA6}#1.0#0"; "wmp.dll"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form frmMain 
   BorderStyle     =   0  'None
   Caption         =   "The Best Sound Recorder"
   ClientHeight    =   7965
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   6405
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   7965
   ScaleWidth      =   6405
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdMinimize 
      Caption         =   "_"
      Height          =   375
      Left            =   5640
      TabIndex        =   16
      Top             =   0
      Width           =   375
   End
   Begin VB.CommandButton cmdClose 
      Caption         =   "X"
      Height          =   375
      Left            =   6000
      TabIndex        =   15
      Top             =   0
      Width           =   375
   End
   Begin VB.CommandButton cmdAbout 
      Caption         =   "About the Author"
      Height          =   495
      Left            =   5160
      TabIndex        =   13
      Top             =   1920
      Width           =   1215
   End
   Begin VB.CommandButton cmdBrowse 
      Caption         =   "..."
      Height          =   375
      Left            =   5760
      TabIndex        =   11
      Top             =   5280
      Width           =   495
   End
   Begin VB.TextBox txtOpen 
      Height          =   645
      Left            =   240
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   9
      Top             =   5160
      Width           =   5415
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   0
      Top             =   0
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.TextBox txtStatus 
      Height          =   1095
      Left            =   240
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   8
      Top             =   6840
      Width           =   6015
   End
   Begin VB.Timer tmrStatus 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   0
      Top             =   0
   End
   Begin VB.CommandButton cmdStop 
      Caption         =   "Stop Recording"
      Enabled         =   0   'False
      Height          =   495
      Left            =   1800
      TabIndex        =   7
      Top             =   3840
      Width           =   1335
   End
   Begin VB.CommandButton cmdHelp 
      Caption         =   "Help"
      Height          =   495
      Left            =   5520
      TabIndex        =   6
      Top             =   1320
      Width           =   855
   End
   Begin VB.CommandButton cmdOptions 
      Caption         =   "Options"
      Height          =   495
      Left            =   5160
      TabIndex        =   5
      Top             =   720
      Width           =   1215
   End
   Begin VB.CommandButton cmdSaveAs 
      Caption         =   "Save Recording As..."
      Enabled         =   0   'False
      Height          =   495
      Left            =   3240
      TabIndex        =   4
      Top             =   3840
      Width           =   1695
   End
   Begin VB.CommandButton cmdRecord 
      Caption         =   "Start Recording"
      Height          =   495
      Left            =   240
      TabIndex        =   0
      Top             =   3840
      Width           =   1455
   End
   Begin VB.CommandButton cmdPlay 
      Caption         =   "Play Recording"
      Enabled         =   0   'False
      Height          =   495
      Left            =   5040
      TabIndex        =   3
      Top             =   3840
      Width           =   1215
   End
   Begin VB.CommandButton cmdOpen 
      Caption         =   "Open File or URL to Record"
      Height          =   495
      Left            =   240
      TabIndex        =   2
      Top             =   5880
      Width           =   1575
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H00FFFFFF&
      BorderStyle     =   2  'Dash
      Height          =   1695
      Left            =   120
      Top             =   4800
      Width           =   6255
   End
   Begin VB.Label lblTitle 
      Alignment       =   2  'Center
      BackColor       =   &H80000008&
      Caption         =   "The Best Sound Recorder"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   375
      Left            =   0
      TabIndex        =   14
      Top             =   0
      Width           =   6500
   End
   Begin VB.Label lblStatus 
      Caption         =   "Status:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   360
      TabIndex        =   12
      Top             =   6600
      Width           =   615
   End
   Begin VB.Label lblOpen 
      Caption         =   "File or URL:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   10
      Top             =   4920
      Width           =   1215
   End
   Begin WMPLibCtl.WindowsMediaPlayer WindowsMediaPlayer1 
      Height          =   3015
      Left            =   240
      TabIndex        =   1
      Top             =   720
      Width           =   3615
      URL             =   ""
      rate            =   1
      balance         =   0
      currentPosition =   0
      defaultFrame    =   ""
      playCount       =   1
      autoStart       =   -1  'True
      currentMarker   =   0
      invokeURLs      =   -1  'True
      baseURL         =   ""
      volume          =   50
      mute            =   0   'False
      uiMode          =   "full"
      stretchToFit    =   0   'False
      windowlessVideo =   0   'False
      enabled         =   -1  'True
      enableContextMenu=   -1  'True
      fullScreen      =   0   'False
      SAMIStyle       =   ""
      SAMILang        =   ""
      SAMIFilename    =   ""
      captioningID    =   ""
      enableErrorDialogs=   0   'False
      _cx             =   6376
      _cy             =   5318
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdAbout_Click()
frmAuthor.Show vbModeless, Me
Me.Enabled = False
End Sub

Private Sub cmdClose_Click()
End
End Sub

Private Sub cmdMinimize_Click()
Me.WindowState = 1
End Sub

'Select a File to Record
Private Sub cmdBrowse_Click()
On Error GoTo Error_Handler
CommonDialog1.CancelError = True
CommonDialog1.Filter = "All Supported Media Files|*.*"
CommonDialog1.Flags = &H2 Or &H400
CommonDialog1.ShowOpen
txtOpen.Text = CommonDialog1.FileName
Error_Handler:
End Sub

Private Sub cmdHelp_Click()
frmHelp.Show vbModeless, Me
Me.Enabled = False
End Sub

Private Sub cmdOptions_Click()
frmOptions.Show vbModeless, Me
Me.Enabled = False
End Sub

'Open a File or URL to Record
Private Sub cmdOpen_Click()
Dim i As Integer
On Error GoTo Error_Handler

If txtOpen.Text = "" Then
MsgBox "Please type in a file or URL to record", vbCritical, "Error"
Exit Sub
End If

WindowsMediaPlayer1.URL = txtOpen.Text
WindowsMediaPlayer1.Controls.play

Error_Handler:
End Sub

'Play the Recording
Private Sub cmdPlay_Click()
Dim i As Integer
i = mciSendString("play capture from 0", 0&, 0, 0)
End Sub

'Start Recording
Private Sub cmdRecord_Click()
Dim i As Integer
'Close any MCI operations from previous VB programs
i = mciSendString("close all", 0&, 0, 0)
 
'Open a new WAV with MCI Command...
i = mciSendString("open new type waveaudio alias capture", 0&, 0, 0)
'Samples Per Second that are supported:
'11025   low quality
'22050   medium quality
'44100 high quality (CD music quality)
 
 
'Bits per sample is 16 or 8


'Channels are 1 (mono) or 2 (stereo)

i = mciSendString("set capture channels 2", 0&, 0, 0) ' 2 channels for stereo
  
   'start at begining
i = mciSendString("seek capture to start", 0&, 0, 0) 'Always start at the beginning

i = mciSendString("set capture samplespersec 44100", 0&, 0, 0) 'CD Quality

i = mciSendString("set capture bitspersample 16", 0&, 0, 0)  '16 bits for better sound

i = mciSendString("record capture", 0&, 0, 0)  'Start the recording

cmdStop.Enabled = True   'Enable the STOP BUTTON
cmdPlay.Enabled = False  'Disable the "PLAY" button
cmdSaveAs.Enabled = False   'Disable the "SAVE AS" button
cmdRecord.Caption = "Recording..."
cmdRecord.Enabled = False

tmrStatus_Timer
tmrStatus.Enabled = True
End Sub

'Save the Recording
Private Sub cmdSaveAs_Click()
Dim i As Integer
CommonDialog1.CancelError = True
On Error GoTo ErrHandler1
CommonDialog1.Filter = "WAV file (*.wav*)|*.wav"
CommonDialog1.Flags = &H2 Or &H400
CommonDialog1.InitDir = GetSetting(App.EXEName, App.EXEName, "Default Path")
CommonDialog1.FileName = GetSetting(App.EXEName, App.EXEName, "Default Filename")
CommonDialog1.ShowSave

'If file already exists then remove it
If Len(Dir$(CommonDialog1.FileName)) > 0 Then
Kill CommonDialog1.FileName
End If

'MCI command to save the WAV file
 i = mciSendString("save capture " & """" & CommonDialog1.FileName & """", 0&, 0, 0)

ErrHandler1:
End Sub

'Stop Recording
Private Sub cmdStop_Click()
Dim i As Integer
i = mciSendString("stop capture", 0&, 0, 0)

cmdSaveAs.Enabled = True  'Enable the "SAVE AS" button
cmdPlay.Enabled = True  'Enable the "PLAY" button
cmdRecord.Enabled = True
cmdRecord.Caption = "Start Recording"
cmdStop.Enabled = False
tmrStatus.Enabled = True
End Sub

Private Sub Form_Load()
Dim i As Integer
Dim intLoop As Integer

Call SetWindowPos(hwnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE Or SWP_NOSIZE)
 
'Close any MCI operations from previous VB programs
i = mciSendString("close all", 0&, 0, 0)
 
'Open a new WAV with MCI Command...
i = mciSendString("open new type waveaudio alias capture", 0&, 0, 0)
WindowsMediaPlayer1.settings.volume = 100

With Me
.AutoRedraw = True
.DrawStyle = vbInsideSolid
.DrawMode = vbCopyPen
.ScaleMode = vbPixels
.DrawWidth = 2
.ScaleHeight = 256
End With

For intLoop = 0 To 255
Me.Line (0, intLoop)-(Screen.Width, intLoop - 1), RGB(0, 0, 255 - intLoop), B
Next
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
Dim i As Integer
i = mciSendString("close capture", 0&, 0, 0)
End Sub

Private Sub lblTitle_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 1 Then
Call ReleaseCapture
Call SendMessage(Me.hwnd, &HA1, 2, 0)
End If
End Sub

'Display the status of the recording
Private Sub tmrStatus_Timer()
Dim mssg As String * 255
Dim msg As String
Dim i As Integer

i = mciSendString("set capture time format ms", 0&, 0, 0)
i = mciSendString("status capture length", mssg, 255, 0)
msg = "Milliseconds = " & Str(mssg) & vbCrLf

i = mciSendString("set capture time format bytes", 0&, 0, 0)
i = mciSendString("status capture length", mssg, 255, 0)
msg = msg & "Bytes = " & Str(mssg) & vbCrLf

i = mciSendString("status capture channels", mssg, 255, 0)
If Str(mssg) = 1 Then
msg = msg & "Channels = 1 (mono)" & vbCrLf
ElseIf Str(mssg) = 2 Then
msg = msg & "Channels = 2 (stereo)" & vbCrLf
End If

i = mciSendString("status capture bitspersample", mssg, 255, 0)
msg = msg & "Bits per sample = " & Str(mssg) & vbCrLf

i = mciSendString("status capture bytespersec", mssg, 255, 0)
msg = msg & "Bytes per second = " & Str(mssg) & vbCrLf

txtStatus.Text = msg
End Sub

Private Sub WindowsMediaPlayer1_MediaError(ByVal pMediaObject As Object)
cmdStop_Click
WindowsMediaPlayer1.Close
tmrStatus.Enabled = False
txtStatus.Text = "Error"
End Sub

Private Sub WindowsMediaPlayer1_PlayStateChange(ByVal NewState As Long)
If NewState = 3 Then
cmdRecord_Click
End If
If NewState = 1 Then
cmdStop_Click
WindowsMediaPlayer1.Close
tmrStatus.Enabled = False
End If
Error_Handler:
End Sub
