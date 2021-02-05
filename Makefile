regen:
	./regenerate_links.sh
	git add README.md
	git commit -m 'Updated links'
	git push