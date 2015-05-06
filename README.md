# Swiss Army Eval

Evaluates code from different languages into JS objects. More versatile and slightly gentler than JavaScript's `eval`.

## Usage
    
```
var add = compile("coffee", "(a, b) -> a + b", {bare: true}) 
//> function(a, b) { return a + b; }

add(2, -1);                                   
//> 1

var subtract = compile("js", "a - b", "a", "b"); 
//> function(a, b) { use strict"; return (a - b); }

subtract(5, 3);                     
//> 2

var rex = compile("regex", "^[123]+$", "ig"); 
//> /^[123]+$/gi

"3".match(rex);
//> ["3"]
```
  
    
## About

- GitHub Project: https://github.com/JustinMorgan/swiss-army-eval
- Author: Justin Morgan (https://github.com/JustinMorgan)
- License: MIT