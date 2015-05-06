compile = require("./index.coffee")

add = compile("coffee", "(a, b) -> a + b", {bare: true})
console.log("CoffeeScript:\n " + add)       #> function(a, b) { return a + b; };
console.log(">", add(2, -1))                #> 1

subtract = compile("js", "a - b", "a", "b")
console.log("\nJavaScript:\n " + subtract)  #> function(a, b) { use strict"; return (a - b); };
console.log(">", subtract(5, 3))            #> 2

rex = compile("regex", "^[123]+$", "ig")
console.log("\nRegExp:\n " + rex)           #> /^[123]+$/gi
console.log(">", "3".match(rex))            #> 3
