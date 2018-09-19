//
//  ViewController.swift
//  LoadingUITest
//
//  Created by Andrew Dhan on 9/19/18.
//  Copyright © 2018 Andrew Liao. All rights reserved.
//

import UIKit
import LoadingUI

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Waiting"{
            let destinationVC = segue.destination as! LoadingViewController
            destinationVC.startAnimation()
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                destinationVC.dismiss(animated: true){}
            }
        }
    }
}

