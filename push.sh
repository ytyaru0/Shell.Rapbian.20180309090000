username=ytyaru0
echo "$username/$(basename $(cd $(dirname $0); pwd))"
echo "--------------------"
[ ! -d ".git" ] && git init
git add -n .
echo "--------------------"
echo 上記でいいならcommit message入力。ダメならEnterキー押下。
read answer
if [ -n "$answer" ]; then
    git add .
    git commit -m "$answer"
    password=`bash ./get_password.sh $username`
    before="	url = https://github.com/"
    after="		url = https://${username}:${password}@github.com/"
    config=".git/config"
    cp "$config" "$config.BAK"
    sed -e "s%$before%$after%" "$config.BAK" > "$config"
    #sed -e "s%$before%$after%" ".git/config"
    rm ".git/config.BAK"
    git push origin
fi

