SRC=./src/A.hx
HAXE=haxe
default:runcpp
run:
	@$(HAXE) -cp ./src -main A --interp
./out/cpp/A:
	-@mkdir -p ./out/cpp
	@haxe -cpp ./out/cpp -cp ./src -main A
runcpp:./out/cpp/A
	@./out/cpp/A
