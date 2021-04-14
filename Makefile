all:
	cp TD0_master.ipynb TD_py/TD0_py
	cp TD1_master.ipynb TD_py/TD1_py
	cp TD2_master.ipynb TD_py/TD2_py
	cp TD3_master.ipynb TD_py/TD3_py
	cp TD4_master.ipynb TD_py/TD4_py
	cp TD5_master.ipynb TD_py/TD5_py
	(cd TD_py && $(MAKE) $(MFLAGS) )

clean:
	rm TD_py/TD0_py/TD0_master.ipynb
	rm TD_py/TD1_py/TD1_master.ipynb 
	rm TD_py/TD2_py/TD2_master.ipynb 
	rm TD_py/TD3_py/TD3_master.ipynb 
	rm TD_py/TD4_py/TD4_master.ipynb 
	rm TD_py/TD5_py/TD5_master.ipynb
	(cd TD_py && $(MAKE) $(MFLAGS) clean)





