[Environment]::GetEnvironmentVariable("Path", "User") > user-path-backup.txt
echo "User variable PATH has been saved to user-path-backup.txt"
echo ""
[Environment]::GetEnvironmentVariable("Path", "Machine") > system-path-backup.txt
echo "System variable PATH has been saved to system-path-backup.txt"
echo ""
[Environment]::SetEnvironmentVariable("Path", [Environment]::GetEnvironmentVariable("Path", "User") + ";$pwd", "User")
echo "Directory of the repository has been added to User variable PATH"
echo ""
