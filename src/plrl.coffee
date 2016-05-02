i = require('i')()
converter = require 'number-to-words'

module.exports = ->
    switch arguments.length
        when 2 then [quantity, singularNoun] = arguments
        when 3 then [prefix, quantity, singularNoun] = arguments
        else throw new Error "Expects 2 or 3 arguments"

    noun = if quantity is 1 then i.singularize singularNoun else i.pluralize singularNoun
    quantityWord = if quantity <= 10 then converter.toWords quantity else quantity

    if prefix in ['is', 'are']
        if quantity is 0
            "are no #{noun}"
        else if quantity is 1
            "is #{quantityWord} #{noun}"
        else
            "are #{quantityWord} #{noun}"
    else
        "#{quantityWord} #{noun}"
