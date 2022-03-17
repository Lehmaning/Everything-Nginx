read -p "输入卡片代码，请：" code
if [ -n "`echo $code|grep qqdocurl`" ]; then
                                code=$(echo $code|sed "s/.*\"qqdocurl\":\"//")
elif [ -n "`echo $code|grep jumpUrl`" ]; then
                                code=$(echo $code|sed "s/.*\"jumpUrl\":\"//")
fi
echo "提取到以下链接："
echo $code|sed "s/\",\".*//"
