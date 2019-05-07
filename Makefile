REPORTER = spec
MOCHA_OPTS = --ui bdd -c -r ts-node/register tests/**/*.ts

all: test

test:
		clear
		@echo Starting test *******************************************
		@./node_modules/mocha/bin/mocha \
		--reporter $(REPORTER) \
		$(MOCHA_OPTS) \
		tests/*.ts
		@echo Ending test
clean:
		rm -rf lib/
build:
		make clean && npm run build

.PHONY: test clean build
