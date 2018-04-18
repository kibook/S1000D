PDF_PARAMS+=-param generate.highlights 0
PDF_PARAMS+=-param generate.table.of.contents 0
PDF_PARAMS+=-stringparam front.matter.info.codes '001 009'
PDF_PARAMS+=-param ulink.show 0

PMC=PMC-S1000D-B6865-01000-00_001-00_EN-US
SRC=csdb/$(PMC).XML
PDF=$(PMC).pdf

$(PDF): $(SRC)
	s1kd-flatten -x -I csdb $(SRC) | s1kd2pdf -o $(PDF) - $(PDF_PARAMS)

clean:
	rm -f PMC-S1000D-B6865-01000-00_001-00_EN-US.pdf
