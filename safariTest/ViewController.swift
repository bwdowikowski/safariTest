//
//  ViewController.swift
//  safariTest
//
//  Created by Blazej Wdowikowski on 10/25/16.
//  Copyright © 2016 Blazej Wdowikowski. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        setupSafariViewController()
    }
    
    private func setupSafariViewController() {
        let url = NSURL(string:"https://dribbble.com/oauth/authorize?scope=public+write+comment&client_id=<client_id>&redirect_uri=inbbbox://oauth")
        let vc = SFSafariViewController(URL: url!)
        self.presentViewController(vc, animated: true, completion: nil)
    }

}

