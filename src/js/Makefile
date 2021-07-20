SRC=./src/A.hx
HAXE=haxe
default:runjs
run:
	@$(HAXE) -cp ./src -main A --interp
./out/js/a.js:$(SRC)
	-@mkdir -p ./out/js
	@haxe -js ./out/js/a.js -cp ./src -main A
runjs:./out/js/a.js
	@node ./out/js/a.js
