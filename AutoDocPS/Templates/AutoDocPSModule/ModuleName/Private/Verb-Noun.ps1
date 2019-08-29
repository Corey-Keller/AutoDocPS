######################################################################################
# NAME: Verb-Noun
#
# AUTHOR: <%=$PLASTER_PARAM_FullName%>
# DATE  : <%=$PLASTER_Date%>
#
<%
if ($PLASTER_PARAM_License -ne "None") {
  "# Copyright (c) $PLASTER_YEAR $PLASTER_PARAM_FullName
#"
"$(Get-Content -Raw -LiteralPath $PLASTER_TemplatePath\license\$PLASTER_PARAM_License.FileNotice.txt)"
}
else {
  "#"
}
%>
######################################################################################

function Verb-Noun
{
  <#
  .SYNOPSIS
    Short Description
  .DESCRIPTION
    Long Description
  .PARAMETER ParameterName
    Description of what the parameter does
  .EXAMPLE
    PS C:\> Verb-Noun -ParameterName Value
    Explanation of what the example does
  .INPUTS
    Inputs (if any)
  .OUTPUTS
    Output (if any)
  .NOTES
    General notes
  .LINK
    https://<%=$PLASTER_PARAM_GitHubDomain%>/<%=$PLASTER_PARAM_GitHubUserName%>/<%=$PLASTER_PARAM_GitHubRepo%>/blob/master/<%=$PLASTER_PARAM_ModuleName%>/Private/Verb-Noun.ps1
  #>
  [CmdletBinding(
    DefaultParameterSetName='DefaultParamSet',
    SupportsShouldProcess=$true,
    PositionalBinding=$false,
    HelpUri = "https://<%=$PLASTER_PARAM_GitHubDomain%>/<%=$PLASTER_PARAM_GitHubUserName%>/<%=$PLASTER_PARAM_GitHubRepo%>/blob/master/<%=$PLASTER_PARAM_ModuleName%>/Private/Verb-Noun.ps1",
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
