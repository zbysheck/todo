//
//  ItemManager.swift
//  ToDoList
//
//  Created by appacmp on 19/07/15.
//  Copyright (c) 2015 appcamp. All rights reserved.
//

import Foundation

var itemsMgr: ItemsManager = ItemsManager()

struct item {
    var name = ""
    var details = ""
}

class ItemManager : NSObject {
    
    var items = [item]()
    
    func addItem(name: String, details: String){
        items.append(item(name: name, details: details))
        
    }
}