%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  
%  This file is part of Logtalk <https://logtalk.org/>  
%  Copyright 1998-2018 Paulo Moura <pmoura@logtalk.org>
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
		version is 1.3,
		author is 'Paulo Moura',
		date is 2018/05/24,
		comment is 'Unit tests for the "user" built-in object.'
	]).

	% basic properties

	test(user_01) :-
		current_object(user).

	test(user_02) :-
		object_property(user, built_in).

	test(user_03) :-
		object_property(user, static).

	test(user_04) :-
		(	current_logtalk_flag(threads, supported) ->
			object_property(user, threaded)
		;	true
		).

	test(user_05) :-
		object_property(user, context_switching_calls).

	test(user_06) :-
		object_property(user, dynamic_declarations).

	test(user_07) :-
		\+ object_property(user, complements).

	% unlike other objects, the value of the "events" compiler option
	% is not fixed but depends on the current default value of the flag

	test(user_08) :-
		set_logtalk_flag(events, allow),
		object_property(user, events).

	test(user_09) :-
		set_logtalk_flag(events, deny),
		\+ object_property(user, events).

	% implemented protocols

	test(user_10) :-
		setof(Protocol-Scope, implements_protocol(user, Protocol, Scope), List),
		List == [expanding-(public), forwarding-(public)].

:- end_object.
