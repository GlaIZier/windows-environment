echo Creating folders script is being executed

set disk=%1
if not defined disk set disk=D
echo Disk is set to %disk%

set folders=%disk%:\google-drive %disk%:\movies %disk%:\tv-series %disk%:\downloads %disk%:\games

echo Folders to be created %folders%

for %%f in (%folders%) do (
	if not exist %%f (
        mkdir %%f
        echo %%f has been created
    ) else (
        echo %%f already exists
    )
)