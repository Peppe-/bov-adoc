rm -r ad/*
rm -r html/*
cp -r docbook/img ad/img
cp -r docbook/img html/img
for file in docbook/*.xml; do ruby docbookrx.rb $file > ad/`basename $file .xml`.ad;done
for file in ad/*.ad; do asciidoctor -D html $file ;done
