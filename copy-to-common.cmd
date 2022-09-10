call del /S /Q .\common\content\comparison\de\*
call del /S /Q .\common\content\comparison\en\*
call del /S /Q .\common\content\comparison\ru\*
call del /S /Q .\common\content\comparison\zh\*

call xcopy /s .\de\ .\common\content\comparison\de\
call xcopy /s .\en\ .\common\content\comparison\en\
call xcopy /s .\ru\ .\common\content\comparison\ru\
call xcopy /s .\zh\ .\common\content\comparison\zh\

REM PAUSE