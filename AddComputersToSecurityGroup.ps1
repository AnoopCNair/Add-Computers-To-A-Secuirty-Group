Import-Module ActiveDirectory 
$comps=Get-Content FILE.txt 

foreach ($comp in $comps)
{$dns=get-adcomputer $comp
$b=$dns.distinguishedname
Add-ADPrincipalGroupMembership $b Cap_BES_Admins
}