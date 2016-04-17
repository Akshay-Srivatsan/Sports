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
    static let FOOTBALL: Int = 0
    static let BASKETBALL = 1
    static let HOCKEY = 2
    static let SOCCER = 3
    
    var whichSport: Int?
    var footballGames: [String]? = ["49ers v Seahawks", "Packers v Vikings"]
    var basketballGames: [String]? = ["Warriors v Spurs", "Celtics v Magic"]
    var hockeyGames: [String]? = ["Sharks v People", "Hockey v Player", "AND ANOTHER GAME"]
    var soccerGames: [String]? = ["Earthquakes v Real Madrid", "Liverpool v Manchester United"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
        if (whichSport == GamesTableTableViewController.FOOTBALL)
        {
            return footballGames?.capacity ?? 0
        }
        else if (whichSport == GamesTableTableViewController.BASKETBALL)
        {
            return basketballGames?.capacity ?? 0
        }
        else if (whichSport == GamesTableTableViewController.HOCKEY)
        {
            return hockeyGames?.capacity ?? 0
        }
        else if (whichSport == GamesTableTableViewController.SOCCER)
        {
            return soccerGames?.capacity ?? 0
        }
        else
        {
            // Error - No sport selected
            return 0
        }
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("gameCell", forIndexPath: indexPath) as! GamesTableViewCell

        // Configure the cell...
        let row = indexPath.row
        
        if (whichSport == GamesTableTableViewController.FOOTBALL)
        {
            cell.gameLabel.text = footballGames?[row] ?? "Error"
        }
        else if (whichSport == GamesTableTableViewController.BASKETBALL)
        {
            cell.gameLabel.text = basketballGames?[row] ?? "Error"
        }
        else if (whichSport == GamesTableTableViewController.HOCKEY)
        {
            cell.gameLabel.text = hockeyGames?[row] ?? "Error"
        }
        else if (whichSport == GamesTableTableViewController.SOCCER)
        {
            cell.gameLabel.text = soccerGames?[row] ?? "Error"
        }

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
