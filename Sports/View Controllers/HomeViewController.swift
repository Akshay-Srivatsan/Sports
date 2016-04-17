//
//  HomeViewController.swift
//  Sports
//
//  Created by Aaron Brown on 4/16/16.
//  Copyright © 2016 Akshay Srivatsan. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController
{
    
    // Names
    static let BASEBALL_ID = "mlb"
    static let SOCCER_ID = "soccer"
    static let BASKETBALL_ID = "nba"
    
    @IBAction func baseballButtonPressed(sender: AnyObject)
    {
        performSegueWithIdentifier("showBaseball", sender: self)
    }
    
    @IBAction func soccerButtonPressed(sender: AnyObject)
    {
        performSegueWithIdentifier("showSoccer", sender: self)
    }
    @IBAction func basketballButtonPressed(sender: AnyObject)
    {
        performSegueWithIdentifier("showBasketball", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let destVC = segue.destinationViewController as! GamesTableTableViewController
        if (segue.identifier == "showBaseball")
        {
            destVC.whichSport = HomeViewController.BASEBALL_ID
        }
        else if (segue.identifier == "showSoccer")
        {
            destVC.whichSport = HomeViewController.SOCCER_ID
        }
        else if (segue.identifier == "showBasketball")
        {
            destVC.whichSport = HomeViewController.BASKETBALL_ID
        }
    }
    

}
