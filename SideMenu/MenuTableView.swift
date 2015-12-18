//
//  MenuTableView.swift
//  SideMenu
//
//  Created by Jose Manuel Perez on 12/1/15.
//  Copyright © 2015 tecprosolutions. All rights reserved.
//

import Foundation

class MenuTableView: UITableViewController {
    var menuItems = [String]()
    
    override func viewDidLoad() {
        menuItems = ["Opcion 1","Opcion 2","Opcion 3"]
        let headerView  = MenuHeaderView(frame: CGRect(x: 0.0, y: 0.0, width: 380, height: 130))
        self.tableView.tableHeaderView = headerView

    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = menuItems[indexPath.row]
        return cell
    }
}
