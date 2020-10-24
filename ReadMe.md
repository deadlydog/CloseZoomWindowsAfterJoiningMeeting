# Auto Close Zoom Meeting Windows

## The problem

As described in [this blog post](https://blog.danskingdom.com/Close-those-superfluous-Zoom-windows-automatically/), when we join a Zoom meeting it leaves behind open windows/tabs that we have to close manually.

The typical flow to joining a Zoom meeting is:

1. Click a link to join the Zoom meeting.
1. It opens a tab in your browser.
1. Which opens the main Zoom window.
1. Which then opens the actual Zoom meeting window.

This leaves the browser tab and the main Zoom windows open, and you have to manually close them.

## The solution

This repository provides 2 methods that will automatically close the browser tab and main Zoom window after joining a Zoom meeting.

1. [A stand-alone executable](https://github.com/deadlydog/deadlydog.github.io/releases) that you can run.
1. [An AutoHotkey script](src/AutoCloseZoomMeetingWindows.ahk) that you can run by itself if you have [AutoHotkey](https://www.autohotkey.com) installed, or add the code to an existing AutoHotkey script of yours.

Enjoy!
