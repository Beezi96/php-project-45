install:
	composer install

brain-games:
	./bin/brain-games.php

validate:
	composer validate

.PHONY: lint
lint:
	composer exec --verbose phpcs -- --standard=PSR12 src bin

.PHONY: lint-fix
lint-fix:
	-composer exec --verbose phpcbf -- --standard=PSR12 src bin
