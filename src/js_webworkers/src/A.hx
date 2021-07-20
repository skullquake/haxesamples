import js.jquery.JQuery;
class A{
	static function write(msg){
		new JQuery(function(){
			new JQuery(".container").text(
				new JQuery(".container").text()+
				msg
			);
		});
	}
	static public function main(){
		trace("DOM example");
		if(try js.Browser.document==null catch(e:Dynamic)true)
			initAsWorker();
		else
			initAsParent();
	}
	//================================================================================
	//initialization
	static var workerScope:js.html.DedicatedWorkerGlobalScope;
	static function initAsWorker(){
		//Find the worker "self"
		workerScope=untyped self;
		workerScope.onmessage=onMessageFromParent;
	}
	static function initAsParent(){
		//Find the path of the currently running script
		var scriptPath=cast(js.Browser.document.currentScript,js.html.ScriptElement).src;
		//Create the worker
		var worker=new js.html.Worker(scriptPath);
		//Setup the parent message handler
		worker.onmessage=onMessageFromWorker;
		//create 64MB data to play with
		var uint8View=new js.html.Uint8Array(new js.html.ArrayBuffer(1024*1024*64));
		for(i in 0...uint8View.length)uint8View[i]=i;
		trace('Original data: ['+uint8View.subarray(0,3)+'...]');
		start=Date.now().getTime();
		worker.postMessage(uint8View.buffer,[uint8View.buffer]);
	}
	static var start:Float=0;
	//================================================================================
	//Message handlers for processing data
	//Handle message passed from parent to worker
	static function onMessageFromParent(e:js.html.MessageEvent){
		trace('Worker received data from Client: '+e.data);
		var uint8View=new js.html.Uint8Array(cast e.data);
		//Do fancy stuff with data
		//Here we just add one to each array item
		for(i in 0 ... uint8View.length)uint8View[i]+=1;
		workerScope.postMessage(uint8View.buffer,[uint8View.buffer]);
	}
	//Handle message passed from worker to parent
	static function onMessageFromWorker(e:js.html.MessageEvent){
		trace('Parent received data from Worker: '+e.data);
		trace('Roundtrip time: '+(Date.now().getTime()-start)+' ms');
		var uint8View=new js.html.Uint8Array(cast e.data);
		trace('Data altered by worker: '+uint8View.subarray(0,3)+'...]');
	}
}
