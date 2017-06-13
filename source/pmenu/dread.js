autowatch = 1;

// Simple ECMA5 hash table
Hash = function(oSource){
  for(sKey in oSource) if(Object.prototype.hasOwnProperty.call(oSource, sKey)) this[sKey] = oSource[sKey];
};
Hash.prototype = Object.create(null);

var oHash = new Hash({foo: 'bar'});
/*
oHash.foo === 'bar'; // true
oHash['foo'] === 'bar'; // true
oHash['meow'] = 'another prop'; // true
oHash.hasOwnProperty === undefined; // true
Object.keys(oHash); // ['foo', 'meow']
post(oHash instanceof Hash); // true

*/
function newline() {
	post('\n');
}

/*
var d = new Dict("foo");
post(d.getnames());
newline();
post(d.getkeys());
newline();
*/
//post(d.gettype("contents"));
//newline();
/*
var n = d.get("contents");
for(var j in n) {
	
	post(n[j]);
	newline();
}
*/