//
//  ESPN.swift
//  Sports
//
//  Created by Akshay Srivatsan on 4/16/16.
//  Copyright © 2016 Akshay Srivatsan. All rights reserved.
//

import Foundation

class ESPN {
    
    
    
    static let terms = [ "Appeal",  "At Bat",  "Balk",  "Ball",  "Base",  "Base Coach",  "Base on Balls",  "Bases Loaded",  "Batter",  "Batter's Box",  "Bunt",  "Catch",  "Catcher",  "Catcher's Interference",  "Count",  "Dead Ball",  "Double Play",  "Dugout",  "Fair Ball",  "Fair Territory",  "Fielder",  "Fielder's Choice",  "Fly Ball",  "Force Play",  "Foul Ball",  "Foul Territory",  "Foul Tip",  "Ground Ball",  "Infielder",  "Infield Fly",  "Inning",  "Live Ball",  "Line Drive",  "Manager",  "Obstruction",  "Offense",  "Offensive Interference",  "Out",  "Outfielder",  "Pitch",  "Pitcher",  "Run",  "Run-Down",  "Runner",  "Safe",  "Squeeze Play",  "Strike",  "Strike Zone",  "Suspended Game",  "Tag",  "Tag Up",  "Triple Play",  "Wild Pitch",  "Single",  "Double",  "Triple",  "Home Run",  "Grand Slam",  "Error",  "Run Batted In",  "Hit",  "Run Scored",  "Strike Out",  "Batting Average",  "On Base Percentage",  "Slugging Percentage",  "On Base Plus Slugging",  "Innings Pitched",  "Earned Runs",  "Earned Runs Average",  "Umpire",  "Pinch Hitter",  "Pinch Runner",  "Relief Pitcher",  "Stolen Base",  "Stole",  "Lined out",  "Popped out",  "Homered",  "Tripled",  "Double",  "Singled",  "Pitching",  "Catching",  "Reached",  "Relieved",  "Grounded out",  "Walked",  "Struck out",  "Flied out",  "Hit for",  "HR",  "iBB",  "BB",  "AB",  "RBI",  "H",  "R",  "SO",  "BA",  "Avg",  "OBP",  "SLG",  "OPS",  "IP",  "ER",  "ERA"]
    
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
                    let name = namePart.substringFromIndex(namePart.rangeOfString("=")!.endIndex).stringByRemovingPercentEncoding
                    if name!.rangeOfString("FINAL") == nil || id == "360416125" {
                        retval.updateValue(name!, forKey: id)
                    }
                }
                callback(retval)
            }
        }).resume()
    }
    
    static func addLinks(inputText: String) -> String {
        var text = inputText;
        var retval = "";
        while text != "" {
            var matched = false;
            print(text)
            for term in terms {
                let matchRange = text.lowercaseString.rangeOfString(term.lowercaseString)
                if matchRange?.startIndex == text.startIndex {
                    if (matchRange?.endIndex != text.endIndex && text[matchRange!.endIndex] != " ") {
                        continue
                    }
                    let rawTerm = text.substringWithRange(matchRange!)
                    text.removeRange(matchRange!)
                    text.removeRange(Range(start: text.startIndex, end: text.startIndex.successor()))
                    let html = "<a href=\"\(term)\">\(rawTerm)</a>"
                    retval += html
                    matched = true
                    break
                }
            }
            print(matched)
            if (!matched) {
                if let nextSpace = text.rangeOfString(" ") {
                    retval += text.substringToIndex(nextSpace.endIndex);
                    text.removeRange(Range(start: text.startIndex, end: nextSpace.endIndex))
                } else {
                    retval += text
                    text = ""
                }
            }
        }
        return retval;
    }



}