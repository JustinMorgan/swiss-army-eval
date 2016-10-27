# swiss-army-eval

Evaluate code from different languages and return JS objects. More versatile and slightly gentler than JavaScript's `eval`.

## Usage
    
```
compile('coffee', '2 + -1')                 #> 1
compile("coffee", "(a, b) -> a + b")        #> function(a, b) { return a + b; }
compile("coffee", "(a, b) -> a + b")(2, -1) #> 1

compile('js', "5 - 3")                                  #> 2
compile("js", "function(a, b) { return a - b; }")       #> function(a, b) { return a - b; }
compile("js", "function(a, b) { return a - b; }")(5, 3) #> 2

compile("regex", "^[123]+$", "ig")           #> /^[123]+$/gi
compile("regex", "^[123]+$", "ig").exec('3') #> 3
```
  
    
## About

- GitHub: https://github.com/JustinMorgan/swiss-army-eval
- NPM: https://www.npmjs.com/package/swiss-army-eval
- Author: Justin Morgan (https://github.com/JustinMorgan)
- License: Swiss-Army Eval is licensed under the [MIT][mit] license.

[mit]: http://opensource.org/licenses/mit-license.php
