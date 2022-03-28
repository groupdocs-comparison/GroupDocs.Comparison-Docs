set PRODUCT=comparison

call git submodule update --init --recursive
call git submodule foreach git pull origin master
xcopy java common\content\%PRODUCT%\java /s /e /Y /i
xcopy net common\content\%PRODUCT%\net /s /e /Y /i
xcopy _index.md common\content\%PRODUCT% 
cd common
call hugo server
REM call hugo server --bind=0.0.0.0 --baseURL=http://PUBLIC_IP:1313