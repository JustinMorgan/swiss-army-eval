compile = require("./index.coffee")

coffee = compile("coffee", "(a, b) -> a + b", {bare: true})
console.log("CoffeeScript:", coffee.toString()) #> function(a, b) { return a + b; };
console.log(">", coffee(2, -1))                 #> 1

js = compile("js", "a - b", "a", "b")
console.log("\nJavaScript:", js.toString()) #> function(a, b) { use strict"; return (a - b); };
console.log(">", js(5, 3))                  #> 2

rex = compile("regex", "^[123]+$", "ig")
console.log("\nRegExp:", rex)             #> /^[123]+$/gi
console.log(">", +("3".match(rex)[0]))    #> 3
