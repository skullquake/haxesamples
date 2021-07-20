package lib;
import js.jquery.JQuery;
@:expose // <- makes the class reachable from plain JavaScript
@:keep   // <- avoids accidental removal by dead code elimination
class B{
	static function main()new B();
	function new(){//ctor
		trace("DOM example2");
		new JQuery(function(){
			trace("DOM ready2");
			new JQuery(".container").html("<p>DOM ready2</p>");
		});
	}
}
