package unit.issues;

class Issue3396 extends Test {
	function test() {
        var r = null;
        var f = function(arr:Array<Dynamic>) return r;
		var f2 = function(arr:Array<Dynamic>):Void {}
        Reflect.makeVarArgs(f);
        Reflect.makeVarArgs(f2);
		var s:String = f([]);
		unit.TestType.typedAs(r, (r:String));
		unit.TestType.typedAs(f2([]), (null:Void));
	}
}