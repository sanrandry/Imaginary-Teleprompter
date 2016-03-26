; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Teleprompter"
#define MyAppVersion "2.0b"
#define MyAppPublisher "Imaginary Films LLC"
#define MyAppURL "http://www.imaginary.tech/teleprompter/"
#define MyAppExeName "teleprompter.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{4FEBCAE6-9359-4743-B635-FD6AB01305FA}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=C:\Users\javie\Dropbox\Imaginary\Tech\teleprompter\Teleprompter\LICENSE
OutputDir=C:\Users\javie\Dropbox\Imaginary\Tech\teleprompter\Teleprompter\distribution\windows
OutputBaseFilename=teleprompter_setup
SetupIconFile=C:\Users\javie\Dropbox\Imaginary\Tech\teleprompter\Teleprompter\favicon.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "C:\Users\javie\Dropbox\Imaginary\Tech\teleprompter\Teleprompter\distribution\windows\teleprompter\teleprompter.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\javie\Dropbox\Imaginary\Tech\teleprompter\Teleprompter\distribution\windows\teleprompter\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

