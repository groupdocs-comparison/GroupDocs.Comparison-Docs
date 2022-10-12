call del /S /Q .\common\content\en\*
call del /S /Q .\common\content\ru\*

call xcopy /s .\en\ .\common\content\en\
call xcopy /s .\ru\ .\common\content\ru\

REM PAUSE