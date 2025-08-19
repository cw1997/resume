# use XeLaTeX engine
$pdflatex = 'xelatex --synctex=1 %O %S';

# output PDF files
$pdf_mode = 1;

# set non-interactive mode for CI/CD
$silent = 1;
$interaction = 'nonstopmode';

# auto cleanup temporary files
$clean_ext = 'aux bbl blg idx ind log out toc acr acrd aux acrg alg glg glo gls ist lof lot nav snm synctex.gz run.xml';
$cleanup_includes_cusdep_generated = 1;

# custom compile rule for PDF
$preview_mode = 0;
$pdf_previewer = 'start open %O %S';