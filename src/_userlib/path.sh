# 目的: パスが変更されたとき、ここを変更することでほかのファイルも一括して変更できる

# 用途: 作業ファイル一式を配置する。（RAMディスクにする。Raspbianにおいて書込によるSDカード劣化防止対策）
function GetWorkDir () {
    echo "/tmp/work/"
}
# 用途: settime.sh用一時ファイル配置など。
function GetWorkMetaDir () {
    echo `GetWorkDir`".meta/"
}
# 用途: _userlib/が参照しうるルートディレクトリ
function GetRootDir () {
    echo "$HOME/root/"
    #echo `eval "~/root/"` # ~/root/ だと展開されない。 eval, bash -c だと「ディレクトリです」と怒られる 
    #echo "/tmp/work/Shell.Rapbian.20180308095717/src/"
}
function GetShellScriptDir () {
    echo `GetRootDir`"script/sh/"
    #echo `GetRootDir`
}

