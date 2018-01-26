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

exports.md5 = function md5(req, res) {
        
        var uri = event.uri;      

        request.get(uri, function (error, response, body) {
    		if (!error && response.statusCode == 200) {
    			if(error) {
                    res.send({ message : error });
                    return;
                }
        		var data = new Buffer(body).toString();
        		var hash = md5(data);
        		rs.send({ imageHash : hash });
                return;
    		} else {
    			res.send({ message : error });
    		}
		});
};