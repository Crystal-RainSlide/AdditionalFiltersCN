Red [
	Title: "Merger for AdditionalFilters"
	Author: "Crystal RainSlide"
]

make-metadata: function [
	metadata-series [series!]
	return: [object!]
][
	ms: copy metadata-series
	make object! [
		title:       take ms
		description: take ms
		homepage:    take ms
		expire:      take ms
	]
]

parse-metadata: function [
	metadata [object!]
	suffix [string!]
	return: [string!]
][
	rejoin [
		"! Title: "       metadata/title suffix LF
		"! Description: " metadata/description  LF
		"! Homepage: "    metadata/homepage     LF
		"! Expire: "      metadata/expire       LF
		"! Last Modified: " ( to string! now )  LF ; For AdBlock Plus
	]
]

; For each file, the separator and all the text before it will be removed before merge.
comment {
"! ------------------------------------------------------------------------------\^"
}
separator: append ( append/dup "! " #"-" 78 ) LF

clean-ruleset: function [
	"Remove the header from a ruleset"
	ruleset-str [string!]
	return: [string!]
][
	result: find/tail ruleset-str separator
	either result <> none
		[ return result ]
		[ return ruleset-str ]
]

build-ruleset: function [
	ruleset-dir [string!]
	ruleset-name [string!]
	metadata [object!]
][

	; "CN" -> %/<current dir>/CN
	ruleset-bare-path: clean-path to file! :ruleset-dir

	ruleset-dir: dirize ruleset-bare-path        ; %/<cd>/CN -> %/<cd>/CN/
	output-file: append ruleset-bare-path ".txt" ; %/<cd>/CN -> %/<cd>/CN.txt

	; check & log ruleset-dir
	either exists? ruleset-dir
		[ prin "Start at " print to-local-file ruleset-dir ]
		[ cause-error 'access 'cannot-open [ ruleset-dir ] ]

	; prepare merged-ruleset string
	merged-ruleset: parse-metadata metadata ruleset-name

	; cd & traverse ruleset-dir
	saved-dir: what-dir
	change-dir ruleset-dir

	parse-file: function [ file [file!] ][
		either all [
			%.txt = suffix? file ; file's extention name matches *.txt
			output-file <> file  ; file is not output-file itself
		][
			prin "	Add " print file
			append merged-ruleset clean-ruleset read file
		][
			prin "	Ignore " print file
		]
	]

	foreach depth-1 read ruleset-dir [
		either not dir? depth-1
		[ parse-file depth-1 ]
		[ foreach depth-2 read depth-1 [
			insert depth-2 depth-1
			either not dir? depth-2
			[ parse-file depth-2 ]
			[ prin "	Ignore deep dir " print depth-2 ] ; Stop at depth 2
		] ]
	]

	change-dir saved-dir

	; write the output
	; As far as I know, there is no offical way to specify line break when
	; writing a text file. but /binary will write them with LF anyway.
	write/binary output-file to-binary merged-ruleset

	; This will use CRLF on Windows:
	; write output-file merged-ruleset

	print "End"

]

metadata-additional-filters: make-metadata [
	"AdditionalFilters"

	{
!     Additional Filters for browser extension based adblockers like
!         https://github.com/gorhill/uBlock
!     mainly for Chinese sites, including some obvious trackers
!     which should be found & listed & blocked YEARS ago.}

	https://github.com/Crystal-RainSlide/AdditionalFiltersCN

	"7 days"
]
foreach ruleset [ "CN" "Intl" "Game" ]
	[ build-ruleset ruleset ruleset metadata-additional-filters ]

build-ruleset "RainSlide" "" make-metadata [
	"RainSlide's Custom Rules"
	"Some custom rules excluded from AdditionalFiltersCN."
	https://github.com/Crystal-RainSlide/AdditionalFiltersCN
	"7 days"
]
