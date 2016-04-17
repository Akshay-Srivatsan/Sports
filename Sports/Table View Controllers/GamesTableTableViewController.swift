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
    var whichSport: Int?
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
        
        ESPN.getCurrentGames("mlb", callback: cb)
        
    }
    
    func cb(dict: [String: String]?)
    {
        gameData = dict
        table_view.reloadData()
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
        return gameData?.count ?? 0
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("gameCell", forIndexPath: indexPath) as! GamesTableViewCell

        // Configure the cell...
        let row = indexPath.row
       
        if (row < gameData?.count)
        {
            cell.gameLabel.text = gameData?[Array(gameData!.keys)[row]]
        }
        
        return cell
    }
    

   // MARK: - Table view deleate
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        segueRow = indexPath.row
        performSegueWithIdentifier("showGameFeed", sender: self)
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if (segue.identifier == "showGameFeed")
        {
            let destVC = segue.destinationViewController as! GameFeedTableViewController
            destVC.whichSport = whichSport
            destVC.eventId = Array(gameData!.keys)[segueRow!]
        }
    }

}
