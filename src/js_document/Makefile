SRC=./src/A.hx
HTML=./res/index.html
FAVICON=./res/favicon.ico
HAXE=haxe
PORT=8080
default:serve
./out/js/index.html:$(HTML)
	@cp $(HTML) ./out/js/index.html
./out/js/favicon.ico:$(FAVICON)
	@cp $(FAVICON) ./out/js/favicon.ico
./out/js/a.js:$(SRC)
	-@mkdir -p ./out/js
	@$(HAXE) -js ./out/js/a.js -cp ./src -main A -dce full
serve:./out/js/a.js ./out/js/index.html ./out/js/favicon.ico
	@http-server -p $(PORT) ./out/js
.phony:clean
clean:
	@rm -rf ./out
