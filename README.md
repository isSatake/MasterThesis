Master Thesis
=====================================

最新版PDF
-----
https://issatake.github.io/MasterThesis/main.pdf

PDFの生成
-----

    % make

または

    % platex -kanji=utf8 main
    % pbibtex -kanji=utf8 main
    % platex -kanji=utf8 main
    % platex -kanji=utf8 main
    % dvipdfmx -p a4 main
