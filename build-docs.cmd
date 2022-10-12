set PRODUCT=comparison

call git submodule update --init --recursive
call git submodule foreach git pull origin master
xcopy en common\content\en /s /e /Y /i
xcopy ru common\content\ru /s /e /Y /i
xcopy multilanguage-config.toml common\
cd common
call hugo server --config config-geekdoc.toml,ignore-total-config.toml,show-feedback-config.toml,multilanguage-config.toml
REM call hugo server --bind=0.0.0.0 --baseURL=http://PUBLIC_IP -p 1313