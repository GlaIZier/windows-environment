:: installs to a default chocolatey directory https://chocolatey.org/docs/default-chocolatey-install-reasoning
choco install packages.config -y

echo Applications have been installed

call folders.bat %1

echo Folders have been created