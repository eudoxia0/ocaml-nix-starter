BIN := hello
.PHONY: test clean

default: $(BIN)

$(BIN):
	dune build
	cp _build/default/bin/main.exe hello

test:
	dune test

clean:
	dune clean
	rm -f $(BIN)
