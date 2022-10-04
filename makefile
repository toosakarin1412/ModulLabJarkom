modul:
	cd Modul\ 1 && pdflatex -jobname="Modul1" -output-directory=../build/ doc.tex
	cd Modul\ 2 && pdflatex -jobname="Modul2" -output-directory=../build/ doc.tex
	cd Modul\ 3 && pdflatex -jobname="Modul3" -output-directory=../build/ doc.tex
	cd Modul\ 4 && pdflatex -jobname="Modul4" -output-directory=../build/ doc.tex
	cd Modul\ 5 && pdflatex -jobname="Modul5" -output-directory=../build/ doc.tex
	cd Modul\ 6 && pdflatex -jobname="Modul6" -output-directory=../build/ doc.tex

	cd build/ && rm *.aux
	cd build/ && rm *.log
