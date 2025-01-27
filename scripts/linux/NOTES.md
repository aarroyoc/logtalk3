________________________________________________________________________

This file is part of Logtalk <https://logtalk.org/>  
Copyright 1998-2022 Paulo Moura <pmoura@logtalk.org>  
SPDX-License-Identifier: Apache-2.0

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
________________________________________________________________________


This directory contains files used when building Linux RPM packages.

The `build_rpm.sh` shell script makes the following assumptions:

(1) The `~/.rpmmacros` configuration file contains the definition:
 
	%packager      Paulo Moura <pmoura@logtalk.org>
	%distribution  Logtalk.org
	%vendor        Logtalk.org
	%_topdir       %(echo $HOME)/rpmbuild
	%_tmppath     /var/tmp

(2) The `~/rpmbuild` directory structure already exists. The command
`rpmdev-setuptree` can be used to create these structure. In alternative,
the directory structure can be manually created using the commands:

	$ cd $HOME
	$ mkdir rpmbuild
	$ cd rpmbuild
	$ mkdir RPMS SOURCES SPECS SRPMS BUILD

The necessary `logtalk.spec` file is generated by the `build_rpm.sh`
shell script by processing the `logtalk.spec.in` file.
