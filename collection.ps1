$outfile = 'C:/tmp'
Add-Type -AssemblyName System.Windows.Forms
Add-type -AssemblyName System.Drawing
$screen =
[System.Windows.Forms.SystemInformation]::VirtualScreen
$bitmap = New-Object System.Drawing.Bitmap $Screen.Width,
$Screen.Height
$graphic = [System.Drawing.Graphics]::FromImage($bitmap)
$graphic.CopyFromScreen($Screen.Left, $Screen.Top, 0, 0,
$bitmap.Size)
$bitmap.Save($outfile)
