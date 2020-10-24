#SingleInstance, Force
#Persistent

CloseZoomWindowsAfterJoiningAMeeting()
{
  browserWindowTitleToMatch := "Launch Meeting - Zoom"

  ; If a browser tab to join a meeting exists.
  IfWinExist, %browserWindowTitleToMatch%
  {
    ; Put the browser tab window in focus.
    WinActivate, %browserWindowTitleToMatch%

    ; Close the browser tab (Ctrl + F4).
    SendInput, ^{F4}

    ; Wait until the URL opened the Zoom app to join the meeting.
    WinWait, ahk_class ZPPTMainFrmWndClassEx,,5

    ; Close the Zoom app.
    IfWinExist, ahk_class ZPPTMainFrmWndClassEx
    {
      WinClose, ahk_class ZPPTMainFrmWndClassEx
    }
  }
}
SetTimer, CloseZoomWindowsAfterJoiningAMeeting, 250
