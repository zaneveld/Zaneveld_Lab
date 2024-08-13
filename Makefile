
#To run, type:
#make build

#Note: makefiles requre 'real' tabs not tabs expanded into spaces


#To edit:
#In vim, set expandtab!
build: server.py
	@echo "Rebuilding the build/ dir"
	python server.py build
	cp -r build/* docs
	git add ./build/*
	git add ./docs/*
	git commit -m "Rebuilt page"
	
	@echo "Done" 
