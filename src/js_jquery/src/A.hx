import js.jquery.JQuery;
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
