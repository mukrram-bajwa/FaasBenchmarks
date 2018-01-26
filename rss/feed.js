'use strict';

/**
 *
 * Modified By: Mukrram Ur Rahman 
 *
 * Description: In this simple example we are going to parse the RSS feed for 
 * AWS EC2 East and return the first item in the feeds title. We will console 
 * log out the content so that the lambda logs can show the respose.
 *
 */

var request = require('request'),
    xml     = require('xml2js').parseString;

exports.rss = function rss(req, res) {
    request('http://status.aws.amazon.com/rss/ec2-us-east-1.rss', function (error, response, body) {
        if(!error && response.statusCode == 200) {
            xml(body, { trim : true }, function (error, result) {
                if(error) {
                    res.send({ message : error });
                    return;
                }
                res.send({ message : result.rss.channel[0].item[0].title[0]._ });
                return;
            });
        } else {
            res.send({ message : error });
        }
    });
};
