# Swiss Army Eval

Evaluates code from different languages into JS objects. More versatile and slightly gentler than JavaScript eval.

### Usage
    
    var one = compile("coffee", "do () -> 1 * 1");
    //one === 1
    
    var two = compile("js", "(function(a, b) { return a - b; })()", 5, 3);
    //two === 2
    
    var rex = compile("regex", "^[123]+$", "g");
    //rex is equivalent to /^[123]+$/g