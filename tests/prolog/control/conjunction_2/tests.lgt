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
		version is 1:1:0,
		author is 'Paulo Moura',
		date is 2020-06-23,
		comment is 'Unit tests for the ISO Prolog standard (,)/2 control construct.'
	]).

	% tests from the ISO/IEC 13211-1:1995(E) standard, section 7.8.5.4

	fails(iso_conjunction_2_01) :-
		{','(X=1, var(X))}.

	succeeds(iso_conjunction_2_02) :-
		{','(var(X), X=1)},
		X == 1.

	succeeds(iso_conjunction_2_03) :-
		{','(X = true, call(X))},
		X == true.

	% tests from the Logtalk portability work

	throws(lgt_conjunction_2_04, [error(type_error(callable,3),_), error(type_error(callable,(3,true)),_)]) :-
		% try to delay the error to runtime
		three(Three),
		{(Three, true)}.

	throws(lgt_conjunction_2_05, [error(type_error(callable,3),_), error(type_error(callable,(true,3)),_)]) :-
		% try to delay the error to runtime
		three(Three),
		{(true, Three)}.

	% auxiliary predicates

	three(3).

:- end_object.
