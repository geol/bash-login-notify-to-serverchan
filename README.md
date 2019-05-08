# bash-login-notify-to-serverchan
远程ssh登陆服务器时，自动通过Server酱推送通知到微信。
局域网登陆不进行通知，并且在bash登陆页面显示“局域网登陆”。脚本根据我的实际情况运行，即当登陆ip为“192.168”开头时，不进行微信通报。如若你的局域网网段不同可自行修改。

方法：
1. 下载脚本到你的本地并chmod u+x /脚本的路径/脚本.sh
2. 修改bash环境:
echo ". /脚本的路径/脚本.sh" >> ~/.bash_profile
