//
//  LifeDetailsViewController.swift
//  Renamer
//
//  Created by Allison Gallant on 9/4/16.
//  Copyright © 2016 Allison Whilden. All rights reserved.
//

import UIKit

class LifeDetailsViewController: UIViewController {
    
    // MARK: Properties
    
    @IBOutlet weak var titleUILabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    /*
     This value is passed by 'LifeTableViewController' in 'prepareForSegue(_:sender:)'
    */
    var lifeItem: LifeItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Remove padding from descriptionTextView
        descriptionTextView.textContainer.lineFragmentPadding = 0
        descriptionTextView.textContainerInset = UIEdgeInsetsZero
        
        if let lifeItem = lifeItem {
            titleUILabel.text = lifeItem.itemName
            descriptionTextView.text = lifeItem.itemDescription
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
