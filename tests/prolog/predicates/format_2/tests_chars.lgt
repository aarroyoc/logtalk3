
:- set_prolog_flag(double_quotes, chars).


:- object(tests_chars,
	extends(lgtunit)).

	:- info([
		version is 1:11:2,
		author is 'Paulo Moura',
		date is 2022-02-01,
		comment is 'Unit tests for the de facto Prolog standard format/2 built-in predicate with format strings specified using lists of chars.'
	]).

	:- include(tests).

:- end_object.


:- if(current_logtalk_flag(prolog_dialect, xsb)).
	% workaround XSB atom-based module system
	:- import(from(/(format,2), format)).
:- endif.
