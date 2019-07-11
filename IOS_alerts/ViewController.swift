//
//  ViewController.swift
//  IOS_alerts
//
//  Created by Michael Lekrans on 2019-07-11.
//  Copyright © 2019 Michael Lekrans. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert(_ sender: Any) {
        // create alert
        let alert: UIAlertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
        // create action
        let action1:UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel) { (_:UIAlertAction) in
            print("cancel handler")
        }
        // add action
        alert.addAction(action1)
        // show alert
        self.present(alert, animated: true) {
            print("Alert handler")
        }
    }
    
    @IBAction func showAlertAsActionSheet(_ sender: Any) {
        let alert: UIAlertController = UIAlertController(title: "Title actionsheet", message: "Message actionsheet", preferredStyle: .actionSheet) // <- .actionSheet
        // create action
        let action1:UIAlertAction = UIAlertAction(title: "delete", style: .destructive) { (_:UIAlertAction) in
            print("delete handler actionsheet")
        }
        // add action
        alert.addAction(action1)
        // show alert
        self.present(alert, animated: true) {
            print("Alert handler ActionSheet")
        }
    }
}

