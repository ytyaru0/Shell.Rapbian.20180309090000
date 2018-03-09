. /tmp/work/_test/.meta/_lib/assert.sh/assert.sh
#~/root/script/sh/_test/.meta/_lib/assert.sh/assert.sh
. /tmp/work/_lib/path.sh

ext=sh
without_ext=settime
filename="$without_ext.$ext"
dirname="/tmp/script/sh"
#dirname="~/root/script/sh/"
filepath="$dirname/$filename"
#echo "Test data: $filepath"

assert "GetExt $filepath" "$ext"
assert "GetFilenameWithoutExt $filepath" "$without_ext"
assert "GetFilename $filepath" "$filename"
assert "GetHiddenFilename $filepath" ".$without_ext"
assert "GetParent $filepath" "$dirname"
assert "GetParent $dirname" "`dirname $dirname`"
#GetChildren はファイル状況によって変わるため確定できずテスト不能
assert_end "_lib/path.sh Filenames"

file=a.txt
for dir in '/tmp' '/tmp/work' '~/root'
do
    expected="$dir/$file"
    assert "Join '$dir' '$file'" "$expected"
    assert "Join '$dir/' '$file'" "$expected"
    assert "Join '$dir' '/$file'" "$expected"
    assert "Join '$dir/' '/$file'" "$expected"
    assert "Join '$dir//' '$file'" "$expected"
    assert "Join '$dir' '//$file'" "$expected"
    assert "Join '$dir//' '//$file'" "$expected"
    assert "Join '$dir///' '$file'" "$expected"
    assert "Join '$dir' '///$file'" "$expected"
    assert_end "_lib/path.sh Join $dir"
done

