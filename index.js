/*
Dependencies
 */
 var CoffeeScript= require("coffee-script");

 // Register CoffeeScript if exits
 if(CoffeeScript.register) CoffeeScript.register();

/*
Exports
 */
module.exports = require('./lib/mailNormalizer');
