SRC=./src/A.hx
HAXE=haxe
default:runpython
run:
	@$(HAXE) -cp ./src -main A --interp
./out/python/a.py:$(SRC)
	-@mkdir -p ./out/python
	@haxe -python ./out/python/a.py -cp ./src -main A
runpython:./out/python/a.py
	@python ./out/python/a.py
