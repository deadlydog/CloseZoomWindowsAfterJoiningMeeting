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

__NOTE__: This script assumes you've checked the box in your browser that says something to the effect of "Always open links of this type automatically".
If you haven't, then you'll need to manually click the "Open" button in your browser every time; only this script will close the tab before you have a chance to click the Open button.
So be sure you have the browser opening Zoom meetings automatically before running this application.

You'll likely also want to check out [how to run it automatically when you log into Windows](/Get-up-and-running-with-AutoHotkey/#run-scripts-automatically-at-startup) so that you don't need to manually run it every time you restart your computer.

Enjoy!
