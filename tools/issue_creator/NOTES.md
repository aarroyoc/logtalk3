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


`issue_creator`
===============

This is a complementary tool for the `lgtunit` tool for automatically
creating bug report issues for failed tests in GitHub or GitLab servers.


Requirements
------------

This tool requires that the GitHub and GitLab CLIs be installed. For the
installation instructions see:

- GitHub: https://cli.github.com
- GitLab: https://glab.readthedocs.io


Loading
-------

This tool can be loaded using the query:

	| ?- logtalk_load(issue_creator(loader)).


Usage
-----

To use this tool, simply load it and if necessary define the `issue_server`
Logtalk flag. The possible values for this flag are the atoms `github` (the
default value) and `gitlab`. The `logtalk_tester` automation script accepts
a `-b` option for automatically use this tool. For example:

	$ logtalk_tester -p gnu -b github

In this case, the script must be called from a git repo directory or one of
its sub-directories. Moreover, prior to running the tests, the CLI must be
used to authenticate and login to the server where the bug report issues will
be created:

- GitHub: `gh auth login`
- GitLab: `glab auth login`

See the CLIs documentation for details.


Known issues
------------

This tool is in an early stage of development and changes are to be expected.
Your feedback is most appreciated.