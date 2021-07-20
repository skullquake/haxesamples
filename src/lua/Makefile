SRC=./src/A.hx
HAXE=haxe
default:runlua
run:
	@$(HAXE) -cp ./src -main A --interp
./out/lua/a.lua:$(SRC)
	-@mkdir -p ./out/lua
	@haxe -lua ./out/lua/a.lua -cp ./src -main A
runlua:./out/lua/a.lua
	@lua ./out/lua/a.lua
