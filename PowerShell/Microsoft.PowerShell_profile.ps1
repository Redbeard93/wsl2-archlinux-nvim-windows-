$ENV:STARSHIP_CONFIG = "$HOME\Documents\PowerShell\starship.toml"
Invoke-Expression (&starship init powershell)
$ENV:LFCD = "$HOME\Documents\PowerShell\lfcd.ps1"

     Set-PSReadLineKeyHandler -Chord Ctrl+o -ScriptBlock {
         [Microsoft.PowerShell.PSConsoleReadLine]::RevertLine()
         [Microsoft.PowerShell.PSConsoleReadLine]::Insert('.$ENV:LFCD')
         [Microsoft.PowerShell.PSConsoleReadLine]::AcceptLine()
     }

     Set-PSReadLineKeyHandler -Chord F1 -ScriptBlock {
         [Microsoft.PowerShell.PSConsoleReadLine]::RevertLine()
         [Microsoft.PowerShell.PSConsoleReadLine]::Insert('wsl -d archlinux')
         [Microsoft.PowerShell.PSConsoleReadLine]::AcceptLine()

     }

     Set-PSReadLineKeyHandler -Chord F2 -ScriptBlock {
         [Microsoft.PowerShell.PSConsoleReadLine]::RevertLine()
         [Microsoft.PowerShell.PSConsoleReadLine]::Insert('wsl -t archlinux')
         [Microsoft.PowerShell.PSConsoleReadLine]::AcceptLine()

     }
