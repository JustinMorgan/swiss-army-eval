coffee = require "coffee-script"

compilers =
  RegExp: (pattern, flags) -> new RegExp pattern, flags
  CoffeeScript: (code, opts) -> coffee.eval "'use strict' \n#{code}", opts
  JavaScript: (code, args...) -> Function args..., "'use strict'; \nreturn (#{code});"

module.exports =
  (language, code, opts...) ->
    language = switch language.toLowerCase()
      when "regex", "regexp" then "RegExp"
      when 'coffee', 'coffeescript' then "CoffeeScript"
      when 'javascript', 'js' then "JavaScript"
      else throw "I don't think I know #{language}."
    try
      compilers[language] code, opts...
    catch e
      console.error e
      throw "That doesn't look like #{language} to me, buddy."