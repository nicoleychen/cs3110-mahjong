build:
	dune build

play: build
	OCAMLRUNPARAM=b dune exec bin/main.exe

zip:
	rm -f cs3110-mahjong.zip
	zip -r cs3110-mahjong.zip . -x@exclude.lst

clean:
	dune clean
	rm -f adventure.zip

doc:
	dune build @doc
