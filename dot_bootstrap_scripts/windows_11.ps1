# install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
# install all the things
choco install -y chezmoi git starship wezterm nerd-fonts-firacode powershell-core neovim lua winlibs vscode bitwarden-cli fzf vivaldi
# install psfzf
Install-Module -Name PSFzf -RequiredVersion 2.5.16
#chezmoi
chezmoi init --apply jheidecker

# create wezterm shortcut
$SourceFilePath = "C:\Program Files\WezTerm\wezterm-gui.exe"
$ShortcutPath = "C:\Users\JayHeidecker\Desktop\WezTerm.lnk"
$WScriptObj = New-Object -ComObject ("WScript.Shell")
$shortcut = $WscriptObj.CreateShortcut($ShortcutPath)
$shortcut.TargetPath = $SourceFilePath
$shortcut.Description = "WezTerm"
$shortcut.Arguments = "start -- pwsh.exe"
$shortcut.Save()

# optional get ssh privates with bw-login, set env, chezmoi update