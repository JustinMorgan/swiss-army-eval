compile = require("./index.coffee")

console.log "--- CoffeeScript ---"
add = compile("coffee", "(a, b) -> a + b")

console.log "2 + -1: #{compile('coffee', '2 + -1')}" #> 2 + -1: 1
console.log "add: #{add}"                            #> add: function(a, b) { return a + b; }
console.log "add(2, -1): #{add(2, -1)}"              #> add(2, -1): 1

console.log "---JavaScript ---"
subtract = compile("js", "function(a, b) { return a - b; }")

console.log "5 - 3: #{compile('js', "5 - 3")}"
console.log "subtract: #{subtract}"             #> subtract: function(a, b) { return a - b; }
console.log "subtract(5, 3): #{subtract(5, 3)}" #> subtract(5, 3): 2

console.log "--- RegExp ---"
regex = compile("regex", "^[123]+$", "ig")
console.log "regex: #{regex}"                     #> regex: /^[123]+$/gi
console.log "regex.exec('3'): #{regex.exec('3')}" #> regex.exec('3'): 3
