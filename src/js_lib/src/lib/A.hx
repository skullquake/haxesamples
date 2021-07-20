package lib;
import js.jquery.JQuery;
@:expose // <- makes the class reachable from plain JavaScript
@:keep   // <- avoids accidental removal by dead code elimination
class A{
	static function main()new A();
	function new(){//ctor
		trace("DOM example");
		new JQuery(function(){
			trace("DOM ready");
			new JQuery(".container").html("<p>DOM ready</p>");
		});
	}
}
