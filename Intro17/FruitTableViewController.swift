//
//  FruitTableViewController.swift
//  Intro17
//
//  Created by SwiftiCode on 11/8/16.
//  Copyright © 2016 SwiftiCode. All rights reserved.
//

import UIKit

class FruitTableViewController: UITableViewController {
    
    // MARK: Properties
    struct Fruit {
        var fruitName: String
        var fruitPicture: UIImage
    }
    
    var fruitCollection = [Fruit]()
    
    
    // MARK: Load Sample Fruit
    func loadSampleFruit() {
        
        let fruit1 = Fruit(fruitName: "Apple", fruitPicture: UIImage(named: "apple")!)
        let fruit2 = Fruit(fruitName: "Orange", fruitPicture: UIImage(named: "orange")!)
        let fruit3 = Fruit(fruitName: "Lemon", fruitPicture: UIImage(named: "lemon")!)
        let fruit4 = Fruit(fruitName: "Lime", fruitPicture: UIImage(named: "lime")!)
        let fruit5 = Fruit(fruitName: "Grapes", fruitPicture: UIImage(named: "grapes")!)
        let fruit6 = Fruit(fruitName: "Star Fruit", fruitPicture: UIImage(named: "starfruit")!)
        
        fruitCollection += [fruit1, fruit2, fruit3, fruit4, fruit5, fruit6]

    }
    
    // MARK: Default Template
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        loadSampleFruit()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return fruitCollection.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myFruitCell", for: indexPath) as! FruitTableViewCell

        // Configure the cell...
        let fruit = fruitCollection[indexPath.row]
        
        cell.cellFruitImageView.image = fruit.fruitPicture
        cell.cellFruitLabel.text = fruit.fruitName

        return cell
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
