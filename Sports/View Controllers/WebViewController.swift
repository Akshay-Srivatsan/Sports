//
//  WebViewController.swift
//  Sports
//
//  Created by Aaron Brown on 4/16/16.
//  Copyright © 2016 Akshay Srivatsan. All rights reserved.
//

import UIKit

class WebViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var web_view: UIWebView!
    
    var html: String?
    var history: [String] = []
    var titleHistory: [String] = []
    var whichSport: String?
    
    let STYLE = "<style>* {line-height: 1.5em; font-family: sans-serif; font-size: 16pt} body{background-color: #DC6665; color: white} a {color: #20FFFF}</style>";
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        html = STYLE + html!
        web_view.loadHTMLString(html!, baseURL: nil)
        web_view.delegate = self;        //print(html!)
    }
    
    override func viewWillAppear(animated: Bool) {
        web_view.backgroundColor = UIColor.init(red: 220/255.0, green: 102/255.0, blue: 101/255.0, alpha: 1)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: UIWebViewDelegate
    
    func webViewDidStartLoad(webView: UIWebView) {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = true
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = false
    }
    
    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        if let component = request.URL!.lastPathComponent {
            if component == "APEIRON_GO_BACK" {
                if history.count > 0 {
                    html = history.popLast()
                    title = titleHistory.popLast()
                    web_view.loadHTMLString(html!, baseURL: nil)
                }
            }
            if var newHTML = ESPN.getDescription(whichSport!, title: component) {
                if let imageData = ESPN.getImage(whichSport!, title: component) {
                    newHTML += imageData
                }
                newHTML = STYLE + newHTML + "<br/><br/><a href=\"APEIRON_GO_BACK\">Back to \"\(title!)\"</a>"
                history.append(html!)
                titleHistory.append(title!)
                html = newHTML
                title = component
                web_view.loadHTMLString(html!, baseURL: nil)
            }
        }
        return true;
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
