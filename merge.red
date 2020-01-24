Red [
	Title: "Merger for AdditionalFilters"
	Author: "Crystal RainSlide"
]

dirs: [ "CN" "Intl" ]

; setup working directory and output file
; working-dir: %CN/
; output-file: %all.txt ; to-file "all.txt"

merge: func [
	working-dir [file!]
	output-file [file!]
] [

	unless dir? :working-dir [
		working-dir: %.
	]
	if dir? :output-file [
		output-file: %all.txt
	]

	comment { for each file, the splitter and all the text before it will be removed
before merge. }
	splitter: {^/! Homepage: https://github.com/Crystal-RainSlide/AdditionalFiltersCN^/}

	output-result: copy append {! Title: AdditionalFiltersCN^/! Expire: 7 days} splitter

	old-dir: what-dir
	change-dir working-dir
	
	; traverse the working directory
	foreach item read working-dir [
		if all [
			%.txt = suffix? item ; file's extention name matches *.txt
			output-file <> item  ; file is not output-file itself
		] [
			; read file into string
			; split it with the splitter
			; remove the 1st part, or the part before the splitter
			; append the parsed string to the tail of output-result
			append output-result (
				remove (
					split ( read item ) splitter
				)
			)
		]
	]

	change-dir old-dir

	; write the output
	write output-file output-result

]

foreach item dirs [
	item: clean-path to-file item
	merge ( dirize item ) ( append item ".txt" )
]
