$searchTerms = @(
    'term1'
    'term2'
)
foreach ( $Term in $searchTerms){
    ##$title = $Term.Substring(0,$Term.Length-1)
    New-ComplianceSearch -name "Search $Term" -case "eDiscovery Case" -exchangelocation user@domain.com -ContentMatchQuery "(keyword) NEAR(25) $Term Date>=2016-01-01"
    Start-Sleep -Milliseconds 2500
    Start-ComplianceSearch -Identity "Search $Term"
    echo "Searching for $Term" 
}
