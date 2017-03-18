//
//  MainViewController.swift
//  Demo-TableView
//
//  Created by Anand on 18/12/16.
//  Copyright © 2016 Anand. All rights reserved.
//  This is multiline table view demo easy to use.

import UIKit

class MainViewController: UITableViewController {

    fileprivate let array =
                [DetailModel(details: "Apples. It turns out that an apple a day might keep gum disease away. Apples have a hard fibrous skin, making them a good snack for in-between or after meals."),
                 DetailModel(details: "While it’s not a substitute for brushing and flossing, an apple can help keep your teeth clean after a meal."),
                 DetailModel(details: "The thick skin naturally scrapes away bacteria, and the increased saliva production washes away loose food particles."),
                 DetailModel(details: "Chewing the hard skin of an apple also stimulates the blood flow to your gums. This helps fight gum disease causing bacteria."),
                 DetailModel(details: "Even though apples have natural sugars in them, they stimulate saliva production. This helps reduce your mouth’s acidity and evens out the pH.")]
    
    fileprivate let CellIdentifier = "Cell"
    fileprivate let identifier = "gotoDetailView"
    
    
    //MARK:- Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = 44.0
        tableView.rowHeight = UITableViewAutomaticDimension
    }
   
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier, for: indexPath)
        
        // Set here label numbers og line and line break mode for multiline //
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.lineBreakMode = .byWordWrapping
        cell.textLabel?.text = array[indexPath.row].details
        return cell
    }
    
    //MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == identifier else {
            return
        }
        //Passing data here
        if let indexPath = self.tableView.indexPath(for: sender as! UITableViewCell) {
            let view = segue.destination as! DetailsViewController
            view.fruitBenifits = array[indexPath.row]
        }
    }

}
