//
//  ESPN.swift
//  Sports
//
//  Created by Akshay Srivatsan on 4/16/16.
//  Copyright © 2016 Akshay Srivatsan. All rights reserved.
//

import Foundation

class ESPN {
    static func getCurrentJSON(callback: [String:AnyObject]? -> ()) {
        NSURLSession.sharedSession().dataTaskWithURL(NSURL(string: "http://scores.espn.go.com/sports/scores/feed")!, completionHandler: {(data, response, error) -> Void in
            if error == nil && data != nil {
                do {
                    let json = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! [String:AnyObject]
                    callback(json)
                } catch {
                    callback(nil)
                }
            }
        }).resume()
    }
    
    static func getJSONForSport(sport: Int, callback: [AnyObject]? -> ()) {
        NSURLSession.sharedSession().dataTaskWithURL(NSURL(string: "http://scores.espn.go.com/sports/scores/feed")!, completionHandler: {(data, response, error) -> Void in
            if error == nil && data != nil {
                do {
                    let json = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! [String:AnyObject]
                    var arr = [AnyObject]()
                    for event in json["comments"] as! [AnyObject] {
                        if (event["sportId"] as? Int) == sport {
                            arr.append(event);
                        }
                    }
                    callback(arr)
                } catch {
                    callback(nil)
                }
            }
        }).resume()
    }
    
    static func getJSONForEvent(id: String, callback: ([AnyObject]?) -> ()) {
        NSURLSession.sharedSession().dataTaskWithURL(NSURL(string: "http://scores.espn.go.com/sports/scores/feed")!, completionHandler: {(data, response, error) -> Void in
            if error == nil && data != nil {
                do {
                    let json = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! [String:AnyObject]
                    var arr = [AnyObject]()
                    for event in json["comments"] as! [AnyObject] {
                        if (event["key"] as? String)?.rangeOfString(id) != nil {
                            arr.append(event);
                        }
                    }
                    callback(arr)
                } catch {
                    callback(nil)
                }
            }
        }).resume()
    }
    
    static func getCurrentGames(sport: String, callback: ([String: String]?) -> ()) {
        let url = "http://espn.go.com/" + sport + "/bottomline/scores"
        NSURLSession.sharedSession().dataTaskWithURL(NSURL(string: url)!, completionHandler: {(data, response, error) -> Void in
            if error == nil && data != nil {
                let eventURLs = String(data: data!, encoding: NSUTF8StringEncoding)?.componentsSeparatedByString("&" + sport + "_s_left")
                print("Hello")
                var retval = [String: String]()
                for url in eventURLs! {
                    let parts = url.componentsSeparatedByString("gameId=")
                    if parts.count < 2 {
                        continue;
                    }
                    let id = parts[1].componentsSeparatedByString("&mlb_s_count")[0]
                    let namePart = parts[0].componentsSeparatedByString("&mlb_s_right")[0]
                    let name = namePart.substringFromIndex(namePart.rangeOfString("=")!.endIndex).stringByReplacingPercentEscapesUsingEncoding(NSUTF8StringEncoding)!
                    if name.rangeOfString("FINAL") == nil {
                        retval.updateValue(name, forKey: id)
                    }
                }
                callback(retval)
            }
        }).resume()
    }

}