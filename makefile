# 定义新的PDF文件名 (不带.pdf后缀)
NEW_FILENAME_BASE = CV


# 原始的tex文件名
TEX_SOURCE = CV.tex

# 默认目标，当你只输入 'make' 时会执行这个
all: $(NEW_FILENAME_BASE).pdf

# 编译生成新文件名的PDF
$(NEW_FILENAME_BASE).pdf: $(TEX_SOURCE)
	xelatex -jobname="$(NEW_FILENAME_BASE)" $(TEX_SOURCE)
	xelatex -jobname="$(NEW_FILENAME_BASE)" $(TEX_SOURCE)
	xelatex -jobname="$(NEW_FILENAME_BASE)" $(TEX_SOURCE)


# 清理规则
clean:
	find . -name '*.aux' -print0 | xargs -0 rm -rf
	rm -rf *.log *.lot *.out *.toc *.bbl *.blg *.thm *.nav *.xml *.snm *.bcf
	# 同时清理新旧两种可能的PDF文件名，以及新jobname产生的辅助文件
	rm -f CV-ch.pdf $(NEW_FILENAME_BASE).pdf
	find . -name '$(NEW_FILENAME_BASE).aux' -print0 | xargs -0 rm -rf