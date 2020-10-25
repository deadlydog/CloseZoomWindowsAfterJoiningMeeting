#SingleInstance, Force
#Persistent

CloseZoomWindowsAfterJoiningAMeeting()
{
	; The various browser tab titles that are used to launch a Zoom meeting.
	browserWindowTitles := ["Launch Meeting - Zoom", "Post Attendee - Zoom"]

	; Loop over each potential browser window title to match against.
	for index, browserWindowTitle in browserWindowTitles
	{
		; If a browser tab to join a meeting exists.
		if (WinExist(browserWindowTitle))
		{
			; Wait until the URL opened the Zoom app to join the meeting.
			; Use regex to check for a few possible windows depending on the Zoom version being used.
			;	ZPPTMainFrmWndClassEx = The main Zoom application window.
			;	zWaitHostWndClass= The "Connecting..." Zoom window.
			;	ZPContentViewWndClass = The actual Zoom meeting window.
			previousTitleMatchMode := A_TitleMatchMode
			SetTitleMatchMode, RegEx
			WinWait, ahk_class i)(ZPPTMainFrmWndClassEx)|(zWaitHostWndClass)|(ZPContentViewWndClass),,3
			SetTitleMatchMode, %previousTitleMatchMode%

			; If the browser tab still exists, close it.
			if (WinExist(browserWindowTitle))
			{
				; Put the browser tab window in focus.
				WinActivate, %browserWindowTitle%

				; Close the browser tab (Ctrl + F4).
				SendInput, ^{F4}
			}

			; If the main Zoom window is open, close it.
			if (WinExist("ahk_class ZPPTMainFrmWndClassEx"))
			{
				WinClose, ahk_class ZPPTMainFrmWndClassEx
			}
		}
	}
}
SetTimer, CloseZoomWindowsAfterJoiningAMeeting, 250
