SRC=./src/lib/A.hx
HTML=./res/index.html
INDEX=./res/index.js
JQUERY=./res/jquery.js
FAVICON=./res/favicon.ico
HAXE=haxe
MINIFY=minify 
PORT=8080
default:serve
./out/index.html:$(HTML)
	@cp $(HTML) ./out/index.html
./out/index.js:$(INDEX)
	@cp $(INDEX) ./out/index.js
./out/jquery.js:$(JQUERY)
	@cp $(JQUERY) ./out/jquery.js
./out/favicon.ico:$(FAVICON)
	@cp $(FAVICON) ./out/favicon.ico
./out/lib/a.js:$(SRC)
	-@mkdir -p ./out
	-@mkdir -p ./out/lib
	@$(HAXE) ./build.hxml
minify:./out/index.html ./out/index.js ./out/lib/a.js ./out/jquery.js ./out/favicon.ico
	$(MINIFY) -r ./out/ -o ./out/
serve:minify 
	@http-server -p $(PORT) ./out
.phony:clean
clean:
	@rm -rf ./out
