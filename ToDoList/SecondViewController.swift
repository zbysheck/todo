//
//  SecondViewController.swift
//  ToDoList
//
//  Created by appacmp on 19/07/15.
//  Copyright (c) 2015 appcamp. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    @IBOutlet weak var itemSTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsMgr.count()
    
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
        let cell : UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle,reuseIdentifier: "CellID")
    
        cell.textLabel!.text = itemsMgr.items[indexPath.row].name
    
        return cell
    }
}