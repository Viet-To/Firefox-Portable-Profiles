@echo off
REM Script Version 1.0.0 2024-09-01

REM This script is to make regular Firefox be portable, as well as launch the profile manager. 
REM This is not a 100% sandbox. Firefox will still read/write Registry as well as several folders, leaving a trail.

REM PortableApps Firefox is better for portability, except for the native profiles and extensions that use them.
REM The PortableApps version of Firefox does not allow Profiles easily. 
	REM https://portableapps.com/apps/internet/firefox_portable
		REM https://portableapps.com/comment/254669#comment-254669
		REM https://portableapps.com/node/5376
	

REM Instructions: Place this file in the same folder as firefox.exe, and launch script.
REM Download firefox from https://ftp.mozilla.org/pub/firefox/releases/ and use 7-zip to extract the .EXE file contents. Place script in the /core folder


REM This script was created due to Chrome breaking these apps:
	REM https://chromewebstore.google.com/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm
		REM https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/
		REM https://github.com/uBlockOrigin/uBlock-issues/wiki/About-Google-Chrome's-%22This-extension-may-soon-no-longer-be-supported%22
		REM https://www.reddit.com/r/uBlockOrigin/comments/17wu2gz/google_confirms_they_will_disable_ublock_origin/
	
	REM Multiselect for Youtube currently runs better in Firefox, but is broken and can't do any tasks. :( 
	REM https://chromewebstore.google.com/detail/multiselect-for-youtube/gpgbiinpmelaihndlegbgfkmnpofgfei
		REM https://addons.mozilla.org/en-US/firefox/addon/multiselect-for-youtube/
		REM https://buymeacoffee.com/msfy
			REM https://buymeacoffee.com/msfy/due-current-events
		REM https://www.reddit.com/r/youtube/comments/1er7yc2/multiselect_for_youtube_alternative/

REM %USERPROFILE%\AppData\Roaming\Mozilla\Firefox\profiles.ini
	REM https://jagriffin.wordpress.com/2011/01/11/profilemanager-1-0_beta1/
		REM http://ftp.mozilla.org/pub/utilities/profilemanager/




GOTO Versions
	REM Start of comment block Versions
	REM How-to comment block https://www.robvanderwoude.com/comments.php
	
	App Versions tested:
		https://ftp.mozilla.org/pub/firefox/releases/
			https://ftp.mozilla.org/pub/firefox/releases/129.0.2/win64/en-US/Firefox%20Setup%20129.0.2.exe
			https://ftp.mozilla.org/pub/firefox/releases/128.1.0esr/win64/en-US/Firefox%20Setup%20128.1.0esr.exe
			https://ftp.mozilla.org/pub/firefox/releases/127.0/win64/en-US/Firefox%20Setup%20127.0.exe
			https://ftp.mozilla.org/pub/firefox/releases/118.0/win64/en-US/Firefox%20Setup%20118.0.exe
		
	Windows Versions Tested:
		Windows 11
		Windows 10
:Versions
	REM See above. Ends coment block Versions

:Sandbox
	REM Sandbox contains Environment Variables required to make the program portable.
	set USERPROFILE=%CD%\USERPROFILE
		REM Firefox uses %USERPROFILE% and writes to a hardcoded AppData folder, so %APPDATA% can't be used.

:Launch
REM https://wiki.mozilla.org/Firefox/CommandLineOptions
REM https://www-archive.mozilla.org/support/firefox/profile
REM https://kb.mozillazine.org/Profile_Manager
REM https://support.mozilla.org/en-US/kb/profile-manager-create-remove-switch-firefox-profiles

	firefox.exe -ProfileManager


REM pause
