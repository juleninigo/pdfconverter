#!/bin/sh
echo "Mondongo"


libreoffice --headless --convert-to pdf:writer_pdf_Export /pdfs/*.docx --outdir /pdfs/
