//
//  GameFeedTableViewController.swift
//  Sports
//
//  Created by Aaron Brown on 4/16/16.
//  Copyright © 2016 Akshay Srivatsan. All rights reserved.
//

import UIKit

class GameFeedTableViewController: UITableViewController
{
    @IBOutlet var table_view: UITableView!

    //var whichSport: String?
    var jsonInfo: [AnyObject]?
    var eventId: String?
    var segueRow: Int?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        ESPN.getJSONForEvent(eventId!, callback: cb)
    }
    
    func cb(arr: [AnyObject]?)
    {
        jsonInfo = arr;
        dispatch_async(dispatch_get_main_queue())
        {
            self.table_view.reloadData()
        }
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return jsonInfo?.count ?? 0
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("gameFeedCell", forIndexPath: indexPath) as! GameFeedTableViewCell

        // Configure the cell...
        let row = indexPath.row
        if (row < jsonInfo?.count ?? 0)
        {
            cell.feedLabel.text = jsonInfo![row]["title"] as? String
        }

        return cell
    }
    
    // Mark: - Table view delegate
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        segueRow = indexPath.row
        performSegueWithIdentifier("showWebView", sender: self)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if (segue.identifier == "showWebView")
        {
            // do something with dest view controller and html and the jsonInfo "title"
            let destVC = segue.destinationViewController as! WebViewController
            destVC.html = ESPN.addLinks((jsonInfo![segueRow!]["title"] as? String)!)
        }
    }
    

}
