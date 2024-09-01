# Firefox-Portable-Profiles
Makes regular Firefox be portable, as well as launch the profile manager

Script Version 1.0.1 2024-09-01

This script is to make regular Firefox be portable, as well as launch the profile manager. 
This is not a 100% sandbox. Firefox will still read/write Registry as well as several folders, leaving a trail.

PortableApps Firefox is better for portability, except for the native profiles and extensions that use them.
The PortableApps version of Firefox does not allow Profiles easily. 
  - https://portableapps.com/apps/internet/firefox_portable
    - https://portableapps.com/comment/254669#comment-254669
    - https://portableapps.com/node/5376
	

Instructions: Place this file in the same folder as firefox.exe, and launch script.
Download firefox from https://ftp.mozilla.org/pub/firefox/releases/ and use 7-zip to extract the .EXE file contents. Place script in the /core folder


This script was created due to Chrome breaking these apps:
- https://chromewebstore.google.com/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm
  - https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/
 - https://github.com/uBlockOrigin/uBlock-issues/wiki/About-Google-Chrome's-%22This-extension-may-soon-no-longer-be-supported%22
 - https://www.reddit.com/r/uBlockOrigin/comments/17wu2gz/google_confirms_they_will_disable_ublock_origin/
	
Multiselect for Youtube currently runs better in Firefox, but is broken and can't do any tasks. :( 
- https://chromewebstore.google.com/detail/multiselect-for-youtube/gpgbiinpmelaihndlegbgfkmnpofgfei
	- https://addons.mozilla.org/en-US/firefox/addon/multiselect-for-youtube/
	- https://buymeacoffee.com/msfy
	  - https://buymeacoffee.com/msfy/due-current-events
	- https://www.reddit.com/r/youtube/comments/1er7yc2/multiselect_for_youtube_alternative/

# Versions
App Versions tested:
-	https://ftp.mozilla.org/pub/firefox/releases/
	-	https://ftp.mozilla.org/pub/firefox/releases/129.0.2/win64/en-US/Firefox%20Setup%20129.0.2.exe
	-	https://ftp.mozilla.org/pub/firefox/releases/128.1.0esr/win64/en-US/Firefox%20Setup%20128.1.0esr.exe
	-	https://ftp.mozilla.org/pub/firefox/releases/127.0/win64/en-US/Firefox%20Setup%20127.0.exe
	-	https://ftp.mozilla.org/pub/firefox/releases/118.0/win64/en-US/Firefox%20Setup%20118.0.exe
		
Windows Versions Tested:
-	Windows 11
- Windows 10
  
# Further Reading
- https://wiki.mozilla.org/Firefox/CommandLineOptions
- https://www-archive.mozilla.org/support/firefox/profile
- https://kb.mozillazine.org/Profile_Manager
- https://support.mozilla.org/en-US/kb/profile-manager-create-remove-switch-firefox-profiles
