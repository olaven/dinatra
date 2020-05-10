SHELL=/bin/bash
TARGET_SRC=$(shell shopt -s globstar && ls ./**/*.{ts,js,tsx} | grep -v ./vendor | grep -v ./testdata)

test:
	deno test --allow-net --allow-read 

lint:
	deno fmt --check $(TARGET_SRC)

fmt:
	deno fmt $(TARGET_SRC)

.PHONY: test lint format