//
//  ViewController.swift
//  MythOrFact
//
//  Created by Nabil K on 2016-07-05.
//  Copyright © 2016 Nabil. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {
    
    var selectedCategory: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "categoryButton" {
            if let gameViewController = segue.destinationViewController as? GameViewController {
                gameViewController.selectedCategory = selectedCategory
            }
        }

    }
    
    
    @IBAction func firstCategoryButton(sender: UIButton) {
        selectedCategory = "cat1"
        performSegueWithIdentifier("categoryButton", sender: sender)
    }
    
    
    @IBAction func secondCategoryButton(sender: UIButton) {
    }
    
    
    @IBAction func thirdCategoryButton(sender: UIButton) {
    }

    @IBAction func fourthCategoryButton(sender: UIButton) {
    }
    
    
    @IBAction func randomButton(sender: UIButton) {
    }
    
    
}