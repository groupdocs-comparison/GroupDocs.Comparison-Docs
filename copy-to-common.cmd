call del /S /Q .\common\content\comparison\java\*
call del /S /Q .\common\content\comparison\net\*

call xcopy /s .\java\ .\common\content\comparison\java\
call xcopy /s .\net\ .\common\content\comparison\net\

REM PAUSE