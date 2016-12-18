//
//  DetailModel.swift
//  Demo-TableView
//
//  Created by Anand on 18/12/16.
//  Copyright © 2016 Anand. All rights reserved.
//

import Foundation

class DetailModel: NSObject{
    var details: String?
    
    init(details : String?) {
        self.details = details ?? ""
    }
}

