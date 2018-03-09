#!/bin/bash

. ~/root/script/sh/_userlib/path.sh
. ~/root/script/sh/_lib/path.sh
#. /tmp/work/Shell.Rapbian.20180308095717/src/_userlib/path.sh
#. /tmp/work/Shell.Rapbian.20180308095717/src/_lib/path.sh

onetime=$(Join $(GetShellScriptDir) /_framework/onetime.sh)
settime=$(Join $(GetShellScriptDir) ./settime.sh)
$onetime $settime
unset onetime
unset settime
