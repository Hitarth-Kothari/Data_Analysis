#Windows Environmental variable %USERPROFILE%\AppData\Local\Temp
PCTempDir <- Sys.getenv("TEMP")

#detect and delete folders with pattern "Rtmp"
folders <- dir(PCTempDir, pattern = "Rtmp", full.names = TRUE)
unlink(folders, recursive = TRUE, force = TRUE, expand = TRUE)