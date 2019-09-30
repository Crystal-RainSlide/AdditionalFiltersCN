Red [
	Title: "Merger for AdditionalFilters"
	Author: "Crystal RainSlide"
]

dir-whitelist: [
	%Intl/
	; %Mobile/
]

dir-str-map: make map! [
	%.       "CN"
	%Intl/   "Intl"
	; %Mobile/ " Mobile"
]

dirs: append [%.] collect [
	foreach item read %. [
		if all[
			dir? item
			find dir-whitelist item
		] [ keep item ]
	]
]

dirs

strs: make object! [
	title: "! Title: AdditionalFilters"
	title/cn:     append title "CN"
	title/intl:   append title "Intl"
	title/Mobile: append title " Mobile"
	other: {
! Expire: 7 days
! Homepage: https://github.com/Crystal-RainSlide/AdditionalFiltersCN
}
]



; setup output
output-file: %all.txt ; to-file "all.txt"

; Build the header of output-result, use the splitter for convenience
output-result: copy append strs splitter

; traverse the working directory
foreach item read %. [
	if all [
		%.txt = suffix? item ; is *.txt
		output-file <> item  ; is not output-file itself
	] [ ; append the parsed string to the tail of output-result
		append output-result (
			replace/case ( read item ) splitter
		)
	]
]

; write the output
write output-file output-result
