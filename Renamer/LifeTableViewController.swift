//
//  LifeTableViewController.swift
//  Renamer
//
//  Created by Allison Gallant on 9/4/16.
//  Copyright © 2016 Allison Whilden. All rights reserved.
//

import UIKit

class LifeTableViewController: UITableViewController {
    
    // MARK: Properties
    
    var lifeItems: [LifeItem] = []
    
    func loadInitialData() {
        lifeItems = [
            LifeItem(itemName: "Job HR Department", itemDescription: "Name on record for your job"),
            LifeItem(itemName: "Updated W-4 Form", itemDescription: "Need to update your W-4 Form"),
            LifeItem(itemName: "School", itemDescription: "Inform the registrar's office of your name change. Testing what a two line description might look like.", required: "Marriage certificate")
        ]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadInitialData()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lifeItems.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("ListPrototypeCell")! as! LifeTableViewCell
        let lifeItem = lifeItems[indexPath.row]
        
        // Downcast from UILabel? to UILabel
//        let cell = tempCell.textLabel as UILabel!
//        cell.text = lifeItem.itemName
        cell.titleLabel.text = lifeItem.itemName
        cell.descriptionLabel.text = lifeItem.itemDescription
        
        return cell
        
//        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

//        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
