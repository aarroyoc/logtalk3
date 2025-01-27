%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  Integration file for XSB
%  Last updated on April 17, 2018
%
%  This file is part of Logtalk <https://logtalk.org/>  
%  Copyright 1998-2022 Paulo Moura <pmoura@logtalk.org>
%  SPDX-License-Identifier: Apache-2.0
%
%  Licensed under the Apache License, Version 2.0 (the "License");
%  you may not use this file except in compliance with the License.
%  You may obtain a copy of the License at
%  
%      http://www.apache.org/licenses/LICENSE-2.0
%  
%  Unless required by applicable law or agreed to in writing, software
%  distributed under the License is distributed on an "AS IS" BASIS,
%  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%  See the License for the specific language governing permissions and
%  limitations under the License.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


:- import expand_atom/2 from standard.
% load Logtalk core files
:-	(	expand_atom('$LOGTALKHOME/adapters/xsb.pl', Adapter),
		reconsult(Adapter, [+optimize, -verbo]),
		expand_atom('$LOGTALKHOME/paths/paths.pl', Paths),
		reconsult(Paths, [+optimize, -verbo]),
		expand_atom('$LOGTALKHOME/integration/logtalk_comp_xsb.pl', Core),
		reconsult(Core, [+optimize, -verbo])
	).
