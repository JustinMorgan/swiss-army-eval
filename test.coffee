compile = require("./index.coffee")

one = compile("coffee", "do () -> 1 * 1")
two = compile("js", "(function(a, b) { return a - b; })()", 5, 3)
rex = compile("regex", "^[12]+$", "g")

console.log(one, two, rex);