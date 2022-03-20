read -p "输入短链接，请：" url
[[ $url != "" ]] && curl "https://unshorten.me/s/$url"
