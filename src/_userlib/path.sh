# 目的: ユーザディレクトリのパス管理。パスを変更するとき、ここを変更することで他のシェルも一括変更できる
declare -A Path;
Path=(
    ["Work"]="/tmp/work/"
    ["WorkMeta"]="/tmp/work/.meta/"
    ["SS"]="/tmp/work/SS/"
    ["Root"]="$HOME/root/"
    ["ShellScript"]="$HOME/root/script/sh/"
)
# for p in ${!Path[@]}; do { printf "%12s" "$p"; echo ": ${Path[$p]}"; } done

# 用途: 作業ファイル一式を配置する。（RAMディスクにする。Raspbianにおいて書込によるSDカード劣化防止対策）
GetWorkDir () { echo "/tmp/work/"; }
# 用途: settime.sh用一時ファイル配置など。
GetWorkMetaDir () { echo `GetWorkDir`".meta/"; }
# 用途: スクリーンショット画像を配置する
GetScreenShotDir () { echo `GetWorkDir`"SS/"; }
# 用途: ユーザが管理するディレクトリのルート
GetRootDir () { echo "$HOME/root/"; }
GetShellScriptDir () { echo `GetRootDir`"script/sh/"; }

