Red [
	Title: "Merger for AdditionalFilters"
	Author: "Crystal RainSlide"
]

comment { for each file, the splitter and those text before it will be removed
before merge. }
splitter: {
! Homepage: https://github.com/Crystal-RainSlide/AdditionalFiltersCN
}

; setup output
output-file: %all.txt ; to-file "all.txt"

comment {

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
			new-output-file: to-file input
			either (dir? output-file) [
				output-file: append (copy new-output-file) output-file
			] [
				output-file: copy new-output-file
			]
		]
	]
] [
	print "The output file variable is not a valid file!, check output-file"
]

}

output-result: copy append {! Title: AdditionalFiltersCN
! Expire: 7 days} splitter ; use the splitter for convenience

; traverse the working directory
foreach item read %. [
	if all [
		%.txt = suffix? item ; is *.txt
		output-file <> item  ; is not output-file itself
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

; write the output
write output-file output-result
