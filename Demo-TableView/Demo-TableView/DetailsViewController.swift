//
//  DetailsViewController.swift
//  Demo-TableView
//
//  Created by Anand on 18/12/16.
//  Copyright © 2016 Anand. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    var fruitBenifits: DetailModel?
    @IBOutlet weak var labelBenitits: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelBenitits.text = fruitBenifits?.details ?? ""
    }

}
