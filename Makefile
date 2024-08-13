
#To run, type:
#make deploy

#Note: makefiles requre 'real' tabs not tabs expanded into spaces


#To edit:
#In vim, set expandtab!
deploy: server.py
	@echo "Rebuilding the build/ dir"
	python server.py build
	cp -r build/* docs
	git add ./build/*
	git add ./docs/*
	git commit -m "Rebuilt page"
	git push origin main 	
	@echo "Done"

.PHONY	build docs 
