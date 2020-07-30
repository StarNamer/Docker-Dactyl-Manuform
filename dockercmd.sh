cat Manuform.clj | lein repl && \
#
for filename in things/*.scad; 
	do openscad -o ${filename%.scad}.stl $filename
done