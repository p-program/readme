now := $(shell date)

auto_commit: pull
	git add .
	hugo -D
	git commit -am "$(now)"	
	git push
	# sub module
	cp -r public/ ../p-program.github.io/
	cd ../p-program.github.io && make

clean:
	git rm -r --cached .
	git add .
	git commit -am "clean"
	git push

release:
	hugo -D

pull:	
	git pull

update_theme:
	cd themes/axiom && git pull origin master
	# git submodule update --remote --rebase
	# git submodule update --remote themes/axiom

run:
	hugo -D
	hugo server -D

new:
	hugo new content/post/$post.md
	mkdir -p static/image/post/$post