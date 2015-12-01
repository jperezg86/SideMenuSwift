//
//  ViewController.swift
//  SideMenu
//
//  Created by Jose Manuel Perez on 12/1/15.
//  Copyright © 2015 tecprosolutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    
    @IBOutlet var openButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        openButton.target = self.revealViewController()
        openButton.action = Selector("revealToggle:")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

