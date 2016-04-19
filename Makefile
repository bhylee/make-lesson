# analysis.zip: isles.dat abyss.dat last.dat
analysis.zip: *.dat wordcount.py
#	zip analysis.zip isles.dat abyss.dat last.dat
	zip $@ $^

.PHONY: dats
dats: isles.dat abyss.dat last.dat

# count words
isles.dat: books/isles.txt wordcount.py
	# python wordcount.py books/isles.txt isles.dat
	python wordcount.py $< $@


abyss.dat: books/abyss.txt wordcount.py
	# python wordcount.py books/abyss.txt abyss.dat
	python wordcount.py $< $@

last.dat: books/last.txt wordcount.py
	# python wordcount.py books/last.txt last.dat
	python wordcount.py $< $@

.PHONY: clean
clean: 
	rm -f *.dat *.zip