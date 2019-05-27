echo Creating folders script is being executed

set path=%1
if not defined path set path=C:
echo Disk is set to %path%

set folders=%path%\cloud %path%\movies %path%\tv-series %path%\games %path%\downloads

echo Folders to be created %folders%

for %%f in (%folders%) do (
	if not exist %%f (
        mkdir %%f
        echo %%f has been created
    ) else (
        echo %%f already exists
    )
)