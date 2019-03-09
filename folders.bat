set folders = "D:/google-drive D:/movies D:/tv-series D:/downloads D:/games"

for %%f in (%folders%) do (
    IF EXIST %f% (
        mkdir %f%
        echo %f% has been created
    ) ELSE (
        echo %f% already exists
    )
)