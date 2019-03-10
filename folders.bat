set disk = %1
if [%disk%] == [] (
    set disk = "D"
)

echo Disk is set to %disk%

set folders = "%disk%:\google-drive %disk%:\movies %disk%:\tv-series %disk%:\downloads %disk%:\games"

echo Folders to be created %folders%

for %%f in (%folders%) do (
    IF EXIST %f% (
        mkdir %f%
        echo %f% has been created
    ) ELSE (
        echo %f% already exists
    )
)