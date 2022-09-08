$ContentSearches = Get-ComplianceSearch -Case "eDiscovery Case Name"
foreach ($search in $ContentSearches){
   $results =  Get-Compliancesearch -Identity $Search.Name| select name, exchangelocation, ContentMatchQuery, items, size
   $Columns = @{
    'name' = $results.Name
    'exchangelocation' = $results.exchangelocation
    'ContentMatchQuery' = $Results.ContentMatchQuery
    'items' = $results.items
    'size' = $results.size
   } 
   $Columns| Export-csv C:\tmp\Results.csv -Append
    write-host $columns

}
