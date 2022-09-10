set PRODUCT=comparison

call git submodule update --init --recursive
call git submodule foreach git pull origin master
xcopy de common\content\%PRODUCT%\de /s /e /Y /i
xcopy en common\content\%PRODUCT%\en /s /e /Y /i
xcopy ru common\content\%PRODUCT%\ru /s /e /Y /i
xcopy zh common\content\%PRODUCT%\zh /s /e /Y /i
xcopy multilanguage-config.toml common\
cd common
call hugo server --config config-geekdoc.toml,ignore-total-config.toml,show-feedback-config.toml,multilanguage-config.toml
REM call hugo server --bind=0.0.0.0 --baseURL=http://PUBLIC_IP -p 1313