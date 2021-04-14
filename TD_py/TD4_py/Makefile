SHELL=/bin/sh

HERE=$(shell pwd)
DOC=$(shell basename $(HERE) | sed 's/_py//')
NAMETD=$(shell echo "$(DOC)" | sed -e s/TD/td-/g)
WEBLOCATION=/home/bl/Cermics/www/decision-incertain/$(NAMETD)
CERMICS=195.221.193.114

# Set path for nsp
# for mac
# NSP=/Applications/Nsp.app/Contents/MacOS/Nsp #-nw # -nw ne marche pas sur mac
# for linux
NSP=nsp -nw 

all: $(DOC).ipynb $(DOC)_corrige.ipynb
#	unison-2.32.52 -batch

$(DOC).ipynb: $(DOC)_master.ipynb
	$(NSP) -e 'filename="$(HERE)/$(DOC)";exec("$(HERE)/../bin/question.sci");quit;'

$(DOC)_corrige.ipynb: $(DOC)_master.ipynb
	$(NSP) -e 'filename="$(HERE)/$(DOC)";exec("$(HERE)/../bin/corrige.sci");quit;'

net: $(DOC)_corrige.ipynb $(DOC).ipynb
	scp $(DOC).ipynb $(DOC)_corrige.ipynb bl@$(CERMICS):/u/cermics/n/bl/www/decision-incertain/$(NAMETD)

clean:
	\rm -f $(DOC).ipynb $(DOC)_corrige.ipynb
	\rm -f *~

#cp $(DOC).ipynb ~/Cermics/www/decision-incertain/$(NAMETD)
#cp $(DOC)_corrige.ipynb ~/Cermics/www/decision-incertain/$(NAMETD)
