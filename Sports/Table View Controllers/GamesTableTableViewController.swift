//
//  GamesTableTableViewController.swift
//  Sports
//
//  Created by Aaron Brown on 4/16/16.
//  Copyright © 2016 Akshay Srivatsan. All rights reserved.
//

import UIKit

class GamesTableTableViewController: UITableViewController
{
    @IBOutlet var table_view: UITableView!
        
    var gameData: [String: String]?
    var whichSport: String?
    var segueRow: Int?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
       /* ESPN.getJSONForSport(GamesTableTableViewController.BASEBALL_ID) { (a: [AnyObject]?) -> () in
            self.jsonInfo = a
            print(self.jsonInfo)
        }*/
        
        if (whichSport == HomeViewController.BASEBALL_ID)
        {
            ESPN.getCurrentGames(HomeViewController.BASEBALL_ID, callback: cb)
            title = "Baseball"
        }
        else if (whichSport == HomeViewController.SOCCER_ID)
        {
            ESPN.getCurrentGames(HomeViewController.SOCCER_ID, callback: cb)
            title = "Soccer"
        }
        else if (whichSport == HomeViewController.BASKETBALL_ID)
        {
            ESPN.getCurrentGames(HomeViewController.BASKETBALL_ID, callback: cb)
            title = "Basketball"
        }
        else if (whichSport == HomeViewController.HOCKEY_ID)
        {
            ESPN.getCurrentGames(HomeViewController.HOCKEY_ID, callback: cb)
        }
        table_view.backgroundColor = UIColor.init(red: 220/255.0, green: 102/255.0, blue: 101/255.0, alpha: 1)
    }
    
    func cb(dict: [String: String]?)
    {
        gameData = dict
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

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        // #warning Incomplete implementation, return the number of rows
        return max(gameData?.count ?? 1, 1)
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("gameCell", forIndexPath: indexPath) as! GamesTableViewCell

        // Configure the cell...
        let row = indexPath.row
       
        if (row < gameData?.count)
        {
            cell.gameLabel.text = ESPN.fixText(gameData?[Array(gameData!.keys)[row]])
        }
        else
        {
            cell.gameLabel.text = "No Games Right Now"
        }
        
        return cell
    }
    

   // MARK: - Table view deleate
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        segueRow = indexPath.row
        let cell = tableView.dequeueReusableCellWithIdentifier("gameCell", forIndexPath: indexPath) as! GamesTableViewCell
        if (cell.gameLabel.text != "No Games Right Now")
        {
            performSegueWithIdentifier("showGameFeed", sender: self)
        }
        else
        {
            cell.highlighted = false
            table_view.reloadData()
        }
        
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if (segue.identifier == "showGameFeed")
        {
            let destVC = segue.destinationViewController as! GameFeedTableViewController
            destVC.eventId = Array(gameData!.keys)[segueRow!]
            destVC.whichSport = whichSport;
        }
    }

}
