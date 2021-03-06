#!/bin/sh
#
# Copyright 2015 The SageTV Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

case $0 in
/*)
   sagepath="$0"
   ;;
*)
   sagepath="$PWD/$0"
   ;;
esac

sagepath=`dirname $sagepath`
echo Changing to SageTV directory $sagepath
cd $sagepath

export LD_LIBRARY_PATH=.
java -cp MiniClient.jar:gluegen-rt.jar:jogl.all.jar:nativewindow.all.jar:. sage.miniclient.MiniClient $1 $2 > /dev/null 2>&1
#java -cp MiniClient.jar:gluegen-rt.jar:jogl.all.jar:nativewindow.all.jar:. sage.miniclient.MiniClient $1 $2 > miniclient.log 2>&1

