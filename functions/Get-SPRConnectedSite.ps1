﻿Function Get-SPRConnectedSite {
<#
.SYNOPSIS
    Returns the connected SharePoint Site Collection.

.DESCRIPTION
    Returns the connected SharePoint Site Collection.
    
.PARAMETER EnableException
    By default, when something goes wrong we try to catch it, interpret it and give you a friendly warning message.
    This avoids overwhelming you with "sea of red" exceptions, but is inconvenient because it basically disables advanced scripting.
    Using this switch turns this "nice by default" feature off and enables you to catch exceptions with your own try/catch.

.EXAMPLE
    Get-SPRConnectedSite

    Returns the connected SharePoint Site Collection.
#>
    [CmdletBinding()]
    param (
        [switch]$EnableException
    )
    process {
        if ($global:spsite) {
            $global:spsite | Select-Object *
        }
        else {
            Stop-PSFFunction -Message "Not connected"
        }
    }
}