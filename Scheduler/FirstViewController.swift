//
//  FirstViewController.swift
//  Scheduler
//
//  Created by Vishnu Thiagarajan on 9/15/16.
//  Copyright © 2016 Vishnu Thiagarajan. All rights reserved.
//

import UIKit
import Firebase

class FirstViewController: UIViewController {

    @IBOutlet weak var FirstDescription: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let rootRef = FIRDatabase.database().reference()
        rootRef.observeEventType(.Value, withBlock: {
            snapshot in
            //print("\(snapshot.key) -> \(snapshot.value)")
            if let a = snapshot.value{
                self.FirstDescription.text = "Description: " + (a as! String)
            }
        })
        rootRef.setValue("Do you data? You'll love Firebase.")
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

