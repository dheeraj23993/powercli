#script to fetch datastore names from naaid

$naa = Get-Content U:\Users\kothad\Desktop\vmlist.txt
foreach($ds in $naa)
{
 get-datastore |Where-Object { $_.extensiondata.info.vmfs.extent.diskname -like “$ds”}
}