# Swiss Army Eval

Evaluates code from different languages into JS objects. More versatile and slightly gentler than JavaScript's `eval`.

## Usage
    
```
var coffee = compile("coffee", "(a, b) -> a + b", {bare: true}) //> function(a, b) { return a + b; };
console.log(coffee(2, -1))                                      //> 1

var js = compile("js", "a - b", "a", "b"); //> function(a, b) { use strict"; return (a - b); };
console.log(js(5, 3));                     //> 2

var rex = compile("regex", "^[123]+$", "ig"); //> /^[123]+$/gi
console.log(+("3".match(rex)[0]));            //> 3
```
    
##About

- GitHub Project: https://github.com/JustinMorgan/swiss-army-eval
- Author: Justin Morgan (https://github.com/JustinMorgan)
- License: MIT