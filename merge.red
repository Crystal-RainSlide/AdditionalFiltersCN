Red [
	Title: "Merger for AdditionalFilters"
	Author: "Crystal RainSlide"
]

merge-rulesets: function [
	ruleset-name [string!]
	metadata [object!]
] [

	ruleset-file: clean-path to file! :ruleset-name

	working-dir: dirize ruleset-file
	output-file: append ruleset-file ".txt"

	unless exists? working-dir [
		cause-error 'access 'cannot-open [ working-dir ]
	]

	; later, for each file, the splitter and all the text before it
	; will be removed before merge.
	comment {
"! ------------------------------------------------------------------------------\^"
	}
	splitter: append ( append/dup "! " #"-" 78 ) LF


	; TODO: test if metadata exists
	; before rejoin-ing it into the metadata header of output-result
	output-result: rejoin [
		"! Title: "       metadata/title ruleset-name LF
		"! Description: " metadata/description LF
		"! Homepage: "    metadata/homepage LF
		"! Expire: "      metadata/expire LF
; Hey, how could you two managed to hold two different formats on a tiny timestamp.
		; uBlock filters
		"! Last updated: "  ( to string! now/date ) LF
		; AdBlock Plus
		"! Last Modified: " ( to string! now ) LF
	]

	old-dir: what-dir
	change-dir working-dir

	; traverse the working directory
	foreach item read working-dir [
		if all [
			%.txt = suffix? item ; file's extention name matches *.txt
			output-file <> item  ; file is not output-file itself
		] [ ; for each file:
			; read file into string
			temp: read item
			; split it into 2 parts with the splitter
			temp: split temp splitter
			; remove the 1st part, or the part before the splitter
			temp: remove temp
			; append the parsed string to the tail of output-result
			append output-result temp
		]
	]

	change-dir old-dir

	; write the output
	; Till now, 2020-1-24, as far as I know, there is no offical way
	; to write a text file with specified line break,
	; but this /binary trick will write text file with LF perfectly.
	write/binary output-file to-binary output-result

	; This will use CRLF on Windows:
	; write output-file output-result

]

metadata-additional-filters: make object! [

	title: "AdditionalFilters"
	description: {
!     Additional Filters for browser extension based adblockers like
!         https://github.com/gorhill/uBlock
!     mainly for Chinese sites, including some obvious trackers
!     which should be found & listed & blocked YEARS ago.}

	homepage: "https://github.com/Crystal-RainSlide/AdditionalFiltersCN"
	expire: "7 days"

]

foreach ruleset [ "CN" "Intl" ] [
	merge-rulesets ruleset metadata-additional-filters
]
