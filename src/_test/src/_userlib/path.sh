#. ~/root/script/sh/_test/_userlib/assert.sh/assert.sh
. /tmp/work/Shell.Rapbian.20180309090000/src/_test/.meta/_lib/assert.sh/assert.sh
. ~/root/script/sh/_userlib/path.sh

#assert ${Path[Work]}
#assert ${Path[WorkMeta]}
#assert ${Path[SS]}
#assert ${Path[Root]}
#assert ${Path[ShellScript]}
# got nothing なぜ？ ↓
#assert ${Path[Work]} "/tmp/work/"
#assert "${Path[WorkMeta]}" "/tmp/work/.meta/"
#assert "${Path['SS']}" "/tmp/work/SS/"
#assert "${Path[Root]}" "$HOME/root/"
#assert "${Path[ShellScript]}" "$HOME/root/script/sh/"
# got nothing なぜ？ ↑

assert "GetWorkDir" "/tmp/work/"
assert "GetWorkMetaDir" "/tmp/work/.meta/"
assert "GetScreenShotDir" "/tmp/work/SS/"
assert "GetRootDir" "$HOME/root/"
assert "GetShellScriptDir" "$HOME/root/script/sh/"

assert_end "_userlib/path.sh"

