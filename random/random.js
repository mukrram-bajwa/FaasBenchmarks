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

exports.rand = function rand (req, res) {
	var generator = new MersenneTwister();
    var max_rand = 0;
    for(var i = 1; i < 1000000; i++) {
    	var tmp = generator.random_int31();
        if(tmp > max_rand)
        	max_rand = tmp;
    }
    res.write({ number :  tmp});
    res.end();
};