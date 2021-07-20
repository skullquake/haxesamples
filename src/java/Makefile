SRC=./src/A.hx
HAXE=haxe
default:runjava
run:
	@$(HAXE) -cp ./src -main A --interp
./out/java/a.class:$(SRC)
	-@mkdir -p ./out/java
	@haxe -D no-compliation -java ./out/java/ -cp ./src -main A
runjava:./out/java/a.class
	java -cp ./out/java A
