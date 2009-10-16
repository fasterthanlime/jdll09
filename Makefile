all: allpng allsvg

help:
	@echo "You can export png or svg"
	@echo "Try: 'make allpng' to export with dot, neato, twopi and fdp in png"
	@echo "Try: 'make allsvg' to export with dot, neato, twopi and fdp in svg"
	@echo "try: 'make XY' where X is neato, twopi, dot or fdp and Y is svg or png"
	@echo "example: make neatosvg export with neato in svg"
	@echo "'make clean' to cleanup directory"
	@echo "'make' with no argument will export in every formats with every graphviz algos"

allpng: dotpng neatopng fdppng circopng twopipng

allsvg: dotsvg neatosvg fdpsvg circosvg twopisvg

dotpng:
	dot -Tpng plan.dot > plan_dot_tmp.png
	dot -Tpng -Estyle=invis plan.dot > plan_dot_no_edges.png
	convert plan_dot_tmp.png \( plan_dot_no_edges.png -background black -shadow 50x3+0+5 \) +swap -background white -layers merge +repage plan_dot.png
	rm -f plan_dot_tmp.png plan_dot_no_edges.png

dotsvg:
	dot -Tsvg plan.dot > plan_dot.svg


fdppng:
	fdp -Tpng plan.dot > plan_fdp_tmp.png
	fdp -Tpng -Estyle=invis plan.dot > plan_fdp_no_edges.png
	convert plan_fdp_tmp.png \( plan_fdp_no_edges.png -background black -shadow 50x3+0+5 \) +swap -background white -layers merge +repage plan_fdp.png
	rm -f plan_fdp_tmp.png plan_fdp_no_edges.png
fdpsvg:
	fdp -Tsvg plan.dot > plan_fdp.svg


neatopng:
	neato -Tpng plan.dot > plan_neato_tmp.png
	neato -Tpng -Estyle=invis plan.dot > plan_neato_no_edges.png
	convert plan_neato_tmp.png \( plan_neato_no_edges.png -background black -shadow 50x3+0+5 \) +swap -background white -layers merge +repage plan_neato.png
	rm -f plan_neato_tmp.png plan_neato_no_edges.png
neatosvg:
	neato -Tsvg plan.dot > plan_neato.svg

circopng:
	circo -Tpng plan.dot > plan_circo_tmp.png
	circo -Tpng -Estyle=invis plan.dot > plan_circo_no_edges.png
	convert plan_circo_tmp.png \( plan_circo_no_edges.png -background black -shadow 50x3+0+5 \) +swap -background white -layers merge +repage plan_circo.png
	rm -f plan_circo_tmp.png plan_circo_no_edges.png
circosvg:
	circo -Tsvg plan.dot > plan_circo.svg

twopipng:
	twopi -Tpng plan.dot > plan_twopi_tmp.png
	twopi -Tpng -Estyle=invis plan.dot > plan_twopi_no_edges.png
	convert plan_twopi_tmp.png \( plan_twopi_no_edges.png -background black -shadow 50x3+0+5 \) +swap -background white -layers merge +repage plan_twopi.png
	rm -f plan_twopi_tmp.png plan_twopi_no_edges.png
twopisvg:
	twopi -Tsvg plan.dot > plan_twopi.svg

clean:
	rm -rf *.png
	rm -rf *.svg
