Red [
	Title: "Merger for AdditionalFilters"
	Author: "Crystal RainSlide"
]

make-metadata: function [
	metadata-series [series!]
	return: [object!]
] [
	ms: copy metadata-series
	make object! [
		title:       take ms
		description: take ms
		homepage:    take ms
		expire:      take ms
	]
]

rejoin-metadata: function [
	metadata [object!]
	suffix [string!]
	return: [string!]
] [
	rejoin [
		"! Title: "       metadata/title suffix LF
		"! Description: " metadata/description  LF
		"! Homepage: "    metadata/homepage     LF
		"! Expire: "      metadata/expire       LF
; Hey, how could you two managed to hold two different names on this tiny little timestamp.
		"! Last updated: "  ( to string! now/date ) LF ; uBlock filters
		"! Last Modified: " ( to string! now )      LF ; AdBlock Plus
	]
]

; For each file, the separator and all the text before it will be removed before merge.
comment {
"! ------------------------------------------------------------------------------\^"
}
separator: append ( append/dup "! " #"-" 78 ) LF

clean-ruleset: function [
	ruleset-str [string!]
][
	find/tail ruleset-str separator
]

merge-rulesets: function [
	ruleset-name [string!]
	metadata [object!]
] [

	ruleset-file: clean-path to file! :ruleset-name

	working-dir: dirize ruleset-file
	output-file: append ruleset-file ".txt"

	either exists? working-dir [
		prin "Start at " print to-local-file working-dir
	] [
		cause-error 'access 'cannot-open [ working-dir ]
	]

	output-result: rejoin-metadata metadata ruleset-name

	old-dir: what-dir
	change-dir working-dir

	; traverse the working directory
	foreach file read working-dir [
		either all [
			%.txt = suffix? file ; file's extention name matches *.txt
			output-file <> file  ; file is not output-file itself
		] [
			prin "Join " print file
			append output-result clean-ruleset read file
		] [
			prin "Ignore " print file
		]
	]

	change-dir old-dir

	; write the output
	; Till now, 2020-1-24, as far as I know, there is no offical way
	; to write a text file with specified line break, but this /binary
	; trick will write text file with LF perfectly.
	write/binary output-file to-binary output-result

	; This will use CRLF on Windows:
	; write output-file output-result

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

foreach ruleset [ "CN" "Intl" ] [
	merge-rulesets ruleset metadata-additional-filters
]
