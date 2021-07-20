import js.Browser.document;
class A{
	static function main()new A();
	function new(){//ctor
		trace("DOM example");
		document.addEventListener("DOMContentLoaded",function(event){
			trace("DOM ready");
			var p=document.createParagraphElement();//p
			p.innerText="DOM ready";
			document.querySelector(".container").appendChild(p);
		});
	}
}
