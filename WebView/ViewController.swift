//
//  ViewController.swift
//  WebView
//
//  Created by Ian Hanson on 11/6/17.
//  Copyright © 2017 Ian Hanson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = NSURL (string:  "https://www.google.com")
        let request = NSURLRequest (url:  url! as URL)
        
        self.webView.loadRequest (request as URLRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var webView:  UIWebView!
    
    @IBAction func buttonWebLink(_ sender: UIButton)
    {
        if let url = NSURL (string:  "https://www.google.com")
        {
            UIApplication.shared.openURL (url as URL)
        }
    }
}

