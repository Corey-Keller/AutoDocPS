######################################################################################
# NAME: New-AutoDocModule
#
# AUTHOR: Corey Keller
# DATE  : 08/27/2019
#
# Copyright (C) 2019  Corey Keller
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published
# by the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
# 
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
######################################################################################

function New-AutoDocModule {
  <#
  .SYNOPSIS
     Will create a new module that will update documentation from comment based help on build.
  .DESCRIPTION
     Will create a new module that will update documentation from comment based help on build.
  .PARAMETER ParameterName
    Description of what the parameter does
  .EXAMPLE
    PS C:\> <example usage>
    Explanation of what the example does
  .INPUTS
    Inputs (if any)
  .OUTPUTS
    Output (if any)
  .NOTES
    General notes
  .LINK
    https://autodocps.readthedocs.io/en/latest/functions/New-AutoDocModule.md
  .LINK
    https://github.com/Corey-Keller/AutoDocPS/blob/master/AutoDocPS/Public/New-AutoDocModule.md
  #>
  [CmdletBinding(
    DefaultParameterSetName='DefaultParamSet',
    SupportsShouldProcess=$true,
    PositionalBinding=$false,
    HelpUri = "https://autodocps.readthedocs.io/en/latest/functions/New-AutoDocModule.md",
    ConfirmImpact='Medium'
  )]
  Param
  (

  )
  begin
  {

  }
  process
  {

  }
  end
  {

  }
}
