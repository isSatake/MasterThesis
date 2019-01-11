all:
	platex    -kanji=utf8 main
	pbibtex   -kanji=utf8 main
	platex    -kanji=utf8 main
	platex    -kanji=utf8 main
	dvipdfmx  -p a4 main
	# github pagesでpdfを見れるようにする
	mv main.pdf docs/main.pdf
	# 「QuartzフィルタをPDF書類に適用」というautometor workflowを改造したものを実行
	# docs/main.pdfを圧縮するように設定しているので、この環境が変わると動かない
	automator reduce_pdf_file_size.workflow
	open docs/main.pdf

clean:
	/bin/rm -f *~ *.log *.dvi *.blg *.aux *.out *.bbl *.lot *.toc *.lof *.pdf
