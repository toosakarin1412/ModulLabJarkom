jml = 9
no = 0

.SILENT modul:
	if [ $(no) -eq 0 ]; then \
		for i in {1..$(jml)}; do \
			cd "Modul$$i" && pdflatex -jobname="Modul$$i" -output-directory=../build/ doc.tex; cd ..;\
		done; \
	else \
		cd Modul$(no) && pdflatex -jobname="Modul${no}" -output-directory=../build/ doc.tex;\
	fi

	printf "\n"

	cd build/ && rm *.aux
	cd build/ && rm *.log
	cd build/ && rm *.out

	printf "\nBUILD COMPLETE\n"

uas :
	cd UAS && pdflatex -jobname="UAS" -output-directory=../build/ doc.tex
	cd build/ && rm *.aux
	cd build/ && rm *.log

	printf "\nBUILD COMPLETE\n"