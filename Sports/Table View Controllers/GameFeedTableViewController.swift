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

    var whichSport: String?
    var jsonInfo: [AnyObject]?
    var eventId: String?
    var segueRow: Int?
    var timer = NSTimer()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        ESPN.getJSONForEvent(eventId!, callback: cb)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        timer = NSTimer.scheduledTimerWithTimeInterval(5, target: self, selector: Selector("reloadPlayByPlay"), userInfo: nil, repeats: true)
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        timer.invalidate()
    }
    
    func cb(arr: [AnyObject]?)
    {
        jsonInfo = arr;
        dispatch_async(dispatch_get_main_queue())
        {
            self.table_view.reloadData()
        }
    }
    
    func reloadPlayByPlay() {
        ESPN.getJSONForEvent(eventId!, callback: cb)
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
            cell.feedLabel.text = ESPN.fixText(jsonInfo![row]["title"] as? String)
            cell.feedLabel.lineBreakMode = NSLineBreakMode.ByWordWrapping
            cell.feedLabel.numberOfLines = 0
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
            destVC.html = ESPN.addLinks(whichSport!, inputText: (jsonInfo![segueRow!]["title"] as? String)!)
            destVC.whichSport = whichSport
            destVC.title = "Info"
        }
    }
    

}
