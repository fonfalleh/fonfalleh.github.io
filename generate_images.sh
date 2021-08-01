src=src/graphviz/

for file in $(find ${src} -name \*.gv) # Find all .gv-files under src/graphviz and loop through them as $file
do
  outpath=${file#${src}}  # Strips src/graphviz/ from path
  outfile=${outpath%.gv}.svg # Strips file extension .gv and adds .svg
  dot -Tsvg "$file" -oimages/"${outfile%.gv}" # Generates graph as .svg
done