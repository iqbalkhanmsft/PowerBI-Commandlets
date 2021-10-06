Login-PowerBI

#Change date range here.
$activities = Get-PowerBIActivityEvent -StartDateTime '2021-09-28T00:00:00' -EndDateTime '2021-09-28T23:59:59' -ActivityType 'CreateEmailSubscription' | ConvertFrom-Json

$activities.Count
$activities[0]

#Change file name here.
$activities | Export-Csv "C:\Users\Iqbal Khan\Desktop\PBISubscriptionsActivityPowershell - Created.csv"