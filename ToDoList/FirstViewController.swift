//
//  FirstViewController.swift
//  ToDoList
//
//  Created by appacmp on 19/07/15.
//  Copyright (c) 2015 appcamp. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController{

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        itemsTableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        
        return true
    }
    
    @IBAction func addItemButton(sender: UIButton) {
        itemsMgr.addItem(nameTextField.text, details: detailsTextField.text)
    }

}

