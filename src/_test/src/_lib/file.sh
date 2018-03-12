Test1 () {
    #. ~/root/script/sh/_test/_userlib/assert.sh/assert.sh
    #. ~/root/script/sh/_lib/file.sh
    local target=/tmp/work/Shell.Rapbian.20180309090000/src/_lib/file.sh
    . /tmp/work/Shell.Rapbian.20180309090000/src/_test/.meta/_lib/assert.sh/assert.sh
    . ${target}

    local test_file=$(dirname $target)/dummy.txt
    local size=1024
    fallocate -l $size $test_file
    assert "GetSize $test_file" "$size"

    local updated="2000-01-02 13:14:15"
    touch -d "$updated" "$test_file"
    assert "GetLastUpdated $test_file" "$updated"
    assert "GetLastUpdated $test_file '%Y-%m-%d %H:%M:%S'" "$updated"
    assert "GetLastAccessed $test_file" "$updated"
    assert "GetLastAccessed $test_file '%Y-%m-%d %H:%M:%S'" "$updated"
    # touchした日時になる↓
    #assert "GetPermissionLastChanged $test_file" "$updated"
    #assert "GetPermissionLastChanged $test_file '%Y-%m-%d %H:%M:%S'" "$updated"
    # touchした日時になる↑

    # 更新日時のみ変更？　できてないっぽい……
    local updated2="1999-12-31 01:02:03"
    touch -m "$updated2" "$test_file"
    # touchした日時になる↓
    #assert "GetLastUpdated $test_file" "$updated2"
    #assert "GetLastUpdated $test_file '%Y-%m-%d %H:%M:%S'" "$updated2"
    #assert "GetPermissionLastChanged $test_file" "$updated2"
    #assert "GetPermissionLastChanged $test_file '%Y-%m-%d %H:%M:%S'" "$updated2"
    #assert "GetLastAccessed $test_file" "$updated2"
    #assert "GetLastAccessed $test_file '%Y-%m-%d %H:%M:%S'" "$updated2"
    # touchした日時になる↑

    assert_end "$target"
    #rm $test_file
}
Test1
