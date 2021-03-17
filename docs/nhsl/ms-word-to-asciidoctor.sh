#!/bin/bash

outline_docx='nhsl-outline.docx'
text_docx='nhsl-Part III-text.docx'
figures_docx='nhsl-Part III- Figures.docx'

outline_adoc="${outline_docx%.docx}.adoc"
text_adoc="${text_docx%.docx}.adoc"
figures_adoc="${figures_docx%.docx}.adoc"

final_adoc=nhsl-demo.adoc

docx_to_adoc() {
  input_docx="$1"
  output_adoc="$2"

  echo "Converting \"$input_docx\" to \"$output_adoc\"..."

  docker run --rm --volume "`pwd`:/data" \
    --user `id -u`:`id -g` pandoc/core \
    "$input_docx" \
    -f docx -t asciidoc \
    --wrap=none --markdown-headings=atx \
    --extract-media=extracted-media \
    -o "$output_adoc"
}

docx_to_adoc "$outline_docx" "$outline_adoc"
docx_to_adoc "$text_docx"    "$text_adoc"
docx_to_adoc "$figures_docx" "$figures_adoc"


# Fix References (FIXME)

#perl -pi -e 's/(References)([A-Z][a-z-]+, [A-Z.]+|———\.)/== $1\n\n$2/g' "$text_adoc"
#perl -pi -e 's/(\.)([A-Z][a-z-]+, [A-Z.]+|———\.)/$1\n\n$2/g' "$text_adoc"

perl -pi.bak -e 's/(References)([A-Za-z-]+\.|———\.)/== $1\n\n$2/g' "$text_adoc"
perl -pi -e 's/(\.)([A-Z][A-Za-z-,. ]+\.|———\.) ([12][0-9]{3}\.)/$1\n\n$2 $3/g' "$text_adoc"

mkdir media

for ext in png tiff; do
  for i in extracted-media/media/*.tiff; do
    convert $i media/$(basename $i .tiff).jpg
  done
done

cat "$outline_adoc" "$text_adoc" > "$final_adoc"

cp -av "$final_adoc" "${final_adoc}.orig"
