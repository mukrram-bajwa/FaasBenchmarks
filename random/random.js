'use strict';

/**
 *
 * Author: Mukrram Ur Rahman
 *
 * Description: In this simple example I am going to generate a random number based on
 * twister pseudorandom number generator.
 *
 */

var MersenneTwister = require('mersenne-twister');

exports.rand = function(event, context, callback) {
                
                    var generator = new MersenneTwister();
                    var max_rand = 0;
                    for(var i = 1; i < 60000000; i++) {
                        var tmp = generator.random_int31();
                        if(tmp > max_rand)
                            max_rand = tmp;
                    }
                    // This will be used for when we hook up API Gateway.
                    callback(null, { number :  tmp});
};