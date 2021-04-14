PYDIRS =  \
	TD0_py \
	TD1_py\
	TD2_py \
	TD3_py \
	TD4_py \
	TD5_py \

PYDIRS0 =  \
	TD1_py\
	TD2_py \
	TD3_py \
	TD4_py \
	TD5_py \

python::
	for i in $(PYDIRS) ;\
	do \
		(cd $$i && echo "making $@ in $$i " && \
		$(MAKE) $(MFLAGS) ); \
	   	IER=$$? &&\
	   	case $$IER in\
	    	0) ;;\
	    	*) echo "Cannot make $@ in sub directory $$d";\
	       	  exit $$IER;;\
	   	esac;\
	done


net::
	for i in $(PYDIRS) ;\
	do \
		(cd $$i && echo "making $@ in $$i " && \
		$(MAKE) $(MFLAGS) net); \
	   	IER=$$? &&\
	   	case $$IER in\
	    	0) ;;\
	    	*) echo "Cannot make $@ in sub directory $$d";\
	       	  exit $$IER;;\
	   	esac;\
	done

spanmake::
	for i in $(PYDIRS0) ;\
	do \
		cp TD0_py/Makefile $$i; \
	done


clean ::
	for i in $(PYDIRS) ;\
	do \
		(cd $$i && echo "making $@ in $$i " && \
		$(MAKE) $(MFLAGS) clean); \
	   	IER=$$? &&\
	   	case $$IER in\
	    	0) ;;\
	    	*) echo "Cannot make $@ in sub directory $$d";\
	       	  exit $$IER;;\
	   	esac;\
	done
	rm *~

