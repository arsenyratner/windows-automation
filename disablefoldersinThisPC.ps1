#disable folders in This PC
set-strictMode -version latest

function set-folderHidden($guid, $hide) {
 #
 # Setting $hide to 1 is supposed to hide the folder
 # 
   $regPath = 'hkcu:/SOFTWARE/Microsoft/Windows/CurrentVersion/Explorer/HideMyComputerIcons'

   if ( -not (test-path $regPath )) {
    # write-host "$regPath does not exist, creating it"
      write-hsot "$null = new-item $regPath -force"
   }
   $null = new-itemProperty -path $regPath -name $guid  -value $hide  -force
   $regPath32 = 'hklm:/SOFTWARE/Microsoft/Windows/CurrentVersion/Explorer/MyComputer/NameSpace' + '/' + $guid
   $regPath64 = 'hklm:/SOFTWARE/Wow6432Node/Microsoft/Windows/CurrentVersion/Explorer/MyComputer/NameSpace' + '/' + $guid
   if (($hide -eq 1) -and (test-path $regPath64)) {
        Write-Host "$null = remove-itremProperty -path $regPath64 -force"
   }
   if (($hide -eq 0) -and ( -not (test-path $regPath64))) {
    Write-Host "$null = new-item -path $regPath64 -force"
}
}

set-folderHidden  '{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}'  1   # 3D Objects
set-folderHidden  '{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}'  1   # Deskop

set-folderHidden  '{D3162B92-9365-467A-956B-92703ACA08AF}'  0   # Documents

set-folderHidden  '{088E3905-0323-4B02-9826-5D99428E115F}'  0   # Downloads

set-folderHidden  '{3DFDF296-DBEC-4FB4-81D1-6A3438BCF4DE}'  1   # Music

set-folderHidden  '{24AD3AD4-A569-4530-98E1-AB02F9417AA8}'  1   # Pictures

set-folderHidden  '{F86FA3AB-70D2-4FC7-9C99-FCBF05467F3A}'  1   # Videos
