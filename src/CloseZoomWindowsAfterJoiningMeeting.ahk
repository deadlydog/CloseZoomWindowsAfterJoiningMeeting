#SingleInstance, Force
#Persistent

CloseZoomWindowsAfterJoiningAMeeting()
{
	browserWindowTitles := ["Launch Meeting - Zoom", "Post Attendee - Zoom"]

	; Loop over each potential browser window title to match against.
	for index, browserWindowTitle in browserWindowTitles
	{
		; If a browser tab to join a meeting exists.
		if (WinExist(browserWindowTitle))
		{
			; Wait until the URL opened the Zoom app to join the meeting.
			WinWait, ahk_class ZPPTMainFrmWndClassEx,,3

			; If the browser tab still exists, close it.
			if (WinExist(browserWindowTitle))
			{
				; Put the browser tab window in focus.
				WinActivate, %browserWindowTitle%

				; Close the browser tab (Ctrl + F4).
				SendInput, ^{F4}
			}

			; Close the Zoom app.
			if (WinExist("ahk_class ZPPTMainFrmWndClassEx"))
			{
				WinClose, ahk_class ZPPTMainFrmWndClassEx
			}
		}
	}
}
SetTimer, CloseZoomWindowsAfterJoiningAMeeting, 250
