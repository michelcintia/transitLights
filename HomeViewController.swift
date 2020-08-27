//
//  ViewController.swift
//  transitLights
//
//  Created by Cintia Michel on 9/8/20.
//  Copyright © 2020 Cintia Michel. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBAction func nexViewButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "SecondViewSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

