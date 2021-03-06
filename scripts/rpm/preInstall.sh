#!/bin/sh

################################################################################
# Copyright 2016 Sparta Systems, Inc
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
# implied.
#
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

USER=holdmail
GROUP=holdmail
HOME=/opt/holdmail

/usr/bin/getent group ${GROUP} || /usr/sbin/groupadd -r ${GROUP}
/usr/bin/getent passwd ${USER} || /usr/sbin/useradd -r -d ${HOME} -g ${GROUP} -s /sbin/nologin ${USER}

echo "Installing Holdmail:"
echo "  - added user '${USER}' in group '${GROUP}' with homedir '${HOME}'"

