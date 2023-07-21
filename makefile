ci: test markdownlint spell_check

test:
	pytest -v .circleci/

markdownlint:
	markdownlint .

spell_check:
	docker run --rm -ti -v $$(pwd):/workdir tmaier/markdown-spellcheck:latest --report --ignore-numbers --ignore-acronyms  "**/*.md"
