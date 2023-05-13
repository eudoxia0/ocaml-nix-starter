BIN := hello
SRC := lib/*.ml* bin/*.ml dune-project Makefile

.PHONY: test clean

default: $(BIN)

$(BIN): $(SRC)
	dune build
	cp _build/default/bin/main.exe $(BIN)

test:
	dune test

clean:
	dune clean
	rm -f $(BIN)
