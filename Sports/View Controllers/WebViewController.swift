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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        web_view.loadHTMLString(html!, baseURL: nil)
        web_view.delegate = self;
        //print(html!)
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
                    web_view.loadHTMLString(html!, baseURL: nil)
                }
            }
            if var newHTML = ESPN.getDescription(HomeViewController.BASEBALL_ID, title: component) {
                newHTML += "<br/><br/><a href=\"APEIRON_GO_BACK\">Go Back</a>"
                history.append(html!)
                html = newHTML
                web_view.loadHTMLString(html!, baseURL: nil)
            } else if var newHTML = ESPN.getDescription(HomeViewController.SOCCER_ID, title: component) {
                newHTML += "<br/><br/><a href=\"APEIRON_GO_BACK\">Go Back</a>"
                history.append(html!)
                html = newHTML
                web_view.loadHTMLString(html!, baseURL: nil)
//                web_view.loadHTMLString("We do not have a definition for that at this time.", baseURL: nil)
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
