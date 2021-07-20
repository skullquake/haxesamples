SRC=./src/A.hx
HTML=./res/index.html
JQUERY=./res/jquery.js
FAVICON=./res/favicon.ico
HAXE=haxe
MINIFY=minify 
PORT=8080
default:serve
./out/js/index.html:$(HTML)
	@cp $(HTML) ./out/js/index.html
./out/js/jquery.js:$(JQUERY)
	@cp $(JQUERY) ./out/js/jquery.js
./out/js/favicon.ico:$(FAVICON)
	@cp $(FAVICON) ./out/js/favicon.ico
./out/js/a.js:$(SRC)
	-@mkdir -p ./out/js
	@$(HAXE) -js ./out/js/a.js -cp ./src -main A -dce full
minify:./out/js/a.js ./out/js/index.html ./out/js/jquery.js ./out/js/favicon.ico
	$(MINIFY) -r ./out/js/ -o ./out/js/
serve:minify 
	@http-server -p $(PORT) ./out/js
.phony:clean
clean:
	@rm -rf ./out
