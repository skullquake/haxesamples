class A{
	static function main(){
		{//implicit
			var a=["foo","bar","baz"];
			trace(a);
		}
		{//explicit
			var a:Array<String>=["foo","bar","baz"];
			trace(a);
		}
		{//comprehensions
			var a=[for(i in 0...5)i];
			trace(a);
		}
		{//evens
			var a=[for(i in 0...5)i*2];
			trace(a);
		}
		{//chars
			var a=[for(c in 65...70)String.fromCharCode(c)];
			trace(a);
		}
		{//bits
			var a=1;
			var b=[while(a<=64)a=a*2];
			trace(b);
		}
		{//add elements
			//insert
			var a:Array<String>=[];
			a.insert(0,"foo");
			trace(a);
			//prepend
			a.unshift("bar");
			trace(a);
			//push
			a.push("baz");
			trace(a);
			//concatentate with array
			a=a.concat(["lorem","ipsum"]);
			trace(a);
		}
		{//remove elements
			var a:Array<String>=[];
			a.push("foo");
			a.push("bar");
			a.push("baz");
			trace(a);
			a.splice(1,1);
			trace(a);
			var b=a.pop();
			trace(a);
			var c=a.shift();
			trace(b);
			trace(c);
		}
		{//retrieve elements
			var a:Array<String>=["foo","bar","baz","qux","foo"];
			trace(a);
			//first
			var b=a[0];
			//last
			var c=a[a.length-1];
			//first of foo in value
			var d=a[a.indexOf("foo")];
			//last of foo in value
			var e=a[a.lastIndexOf("foo")];
		}
		{//iteration
			var a:Array<String>=["foo","bar","baz","qux","klutz"];
			for(b in a){
				trace('${b}');
			}
			for(b in 0...a.length){
				trace('${b}: ${a[b]}');
			}
		}
		{//copy
			var a:Array<Int>=[0,1,2,3];
			var b=a.copy();
			trace(a);
			trace(b);
		}
		{//filter
			/* ??? -> ???
			var a:Array<String>=["foo","bar","baz","qux","klutz"];
			var b=a.filter(c -> c=="foo");
			trace(a);
			trace(b);
			*/
		}
		{//map
			/* ??? -> ???
			var a:Array<Stirng>=["foo","bar","baz"];
			var b=a.map(c->c.toUpperCase());
			*/
		}
		{//map on comprehension
			var a:Array<String>=["foo","bar","baz"];
			var b:Array<String>=[for(c in a)c.toUpperCase()];
			trace(a);
			trace(b);
		}
		{//translate with map
			var a:Array<String>=["1.1","2.2","3.3"];
			var b:Array<Float>=a.map(Std.parseFloat);
			trace(a);
			trace(b);
		}
		{//reverse
			var a:Array<Int>=[0,1,2,3];
			var b=a.copy();
			b.reverse();
			trace(a);
			trace(b);
		}
		{//sort
			var a:Array<Int>=[1,3,2,4];
			trace(a);
			a.sort(function(b,c)return b-c);
			trace(a);
		}
		{//display
			var a:Array<Int>=[1,3,2,4];
			var b:String=a.join("_");
			trace(a);
			trace(b);
		}
		{//array of arrays
			var a:Array<Array<Int>>=[[1,2],[3,4],[5,6],[7,8]];
			trace(a);
		}
		{//array of array comprehension
			var a:Array<Array<Array<Int>>>=[for(x in 0...2)[for(y in 0...3)[for (z in 0...3)0]]];
			trace(a);
		}
		{//array of array access
			var a:Array<Array<Int>>=[[1,2],[3,4],[5,6],[7,8]];
			trace(a[0][0]);
			trace(a[0][1]);
			trace(a[1][0]);
			trace(a[1][1]);
			trace(a[2][0]);
			trace(a[2][1]);
			trace(a[3][0]);
			trace(a[3][1]);
		}
	}
}
