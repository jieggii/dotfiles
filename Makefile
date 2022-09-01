all: add

add:
	dcfg add

clean:
	dcfg clean

push:
	git add .
	git commit
	git push
