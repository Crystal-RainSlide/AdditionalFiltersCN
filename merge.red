Red [
	title: "Merge for AdditionalFilters"
	author: "Crystal RainSlide"
]
; do %/D/Work/Project/AdditionalFiltersCN/merge.red

comment { for each file, the splitter and those text before it will be removed
before merge. }
splitter: {
! Homepage: https://github.com/Crystal-RainSlide/AdditionalFiltersCN

}

; setup output
output-file: %all.txt ; to-file "all.txt"

either file? output-file [
	if exists? output-file [
		if "y" <> lowercase ask rejoin [
			to-string to-local-file output-file
			" is already existed, do you want to override it?"
			" (Y or y for Yes, any other input for No): "
		] [
			print rejoin [
				"Please input another path to save."
				" Will auto append the file name when input is a dir,"
				" but won't check existence again: "
			]
			output-file: to-file input
			if dir? output-file [
				output-file: append copy new-path output-file
			]
		]
	]
] [
	print "The output file variable is not a valid file!, check output-file"
]

output-result: copy append {! Title: AdditionalFiltersCN
! Expire: 7 days} splitter ; use the splitter for convenience

; traverse the working directory
foreach item read %. [
	if all [
		%.txt = suffix? item ; is *.txt
		output-file <> item  ; is not output-file
	] [
		append output-result remove split read item splitter
	]
]

; write the output
write output-file output-result
