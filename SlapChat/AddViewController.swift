//
//  AddViewController.swift
//  SlapChat
//
//  Created by Elli Scharlin on 7/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
let dataStore = DataStore.sharedDataStore
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var textFieldToAdd: UITextField!
    @IBAction func addBttnTapped(sender: AnyObject) {
        if let textToAdd = textFieldToAdd.text {
            dataStore.generateMessageData(textToAdd)
        }
        
        dataStore.saveContext()
        self.dismissViewControllerAnimated(true, completion: nil)
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
