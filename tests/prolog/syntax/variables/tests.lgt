%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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


:- object(tests,
	extends(lgtunit)).

	:- info([
		version is 1:0:0,
		author is 'Paulo Moura',
		date is 2014-11-07,
		comment is 'Unit tests for the ISO Prolog standard variable syntax.'
	]).

	% tests from the ISO/IEC 13211-1:1995(E) standard, section 6.3.2

	succeeds(iso_variable_01) :-
		^^set_text_input('A. '),
		{read(T)},
		var(T).

	succeeds(iso_variable_02) :-
		^^set_text_input('_A. '),
		{read(T)},
		var(T).

	succeeds(iso_variable_03) :-
		^^set_text_input('_. '),
		{read(T)},
		var(T).

	succeeds(iso_variable_04) :-
		^^set_text_input('\'A\'. '),
		{read(T)},
		nonvar(T).

	succeeds(iso_variable_05) :-
		^^set_text_input('\'_A\'. '),
		{read(T)},
		nonvar(T).

	cleanup :-
		^^clean_text_input.

:- end_object.
