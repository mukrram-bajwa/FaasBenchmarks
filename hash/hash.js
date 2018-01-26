'use strict';

/**
 *
 * Author: Mukrram Ur Rahman
 *
 * Description: In this example I am going to get an image from the uri passed as an argument
 * and going to generate hash value.
 *
 */

var request = require('request').defaults({ encoding: null }),
	md5 = require("md5");

exports.md5 = function(event, context, callback) {
        
        var uri = event.uri;      

        request.get(uri, function (error, response, body) {
    		if (!error && response.statusCode == 200) {
    			if(error) {
                    // This will be used for when we hook up API Gateway.
                    context.done(null, { message : error });
                    return;
                }
        		var data = new Buffer(body).toString();
        		var hash = md5(data);
        		context.done(null, { imageHash : hash });
                return;
    		} else {
    			// This will be used for when we hook up API Gateway.
            	context.done(null, { message : error });
    		}
		});
};