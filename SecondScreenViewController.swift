//
//  SecondScreenViewController.swift
//  transitLights
//
//  Created by Cintia Michel on 10/8/20.
//  Copyright © 2020 Cintia Michel. All rights reserved.
//


import UIKit

class SecondScreenViewController: UIViewController {
    

    @IBOutlet weak var greenLabel: UILabel!
    private var currentlyButtonTapped: Int = 0
    
    
    
    // back button
    @IBAction func backButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "HomeSegue", sender: self)
    }
    
    //buttonsLights
    
    @IBAction func pictureButtonPressed(_ sender: UIButton) {
        if self.currentlyButtonTapped == 0{
            greenLabel.text = "Oops, wrong order. Lights do not change from Red to Red, please try again."
        }else{
            greenLabel.text = "Red light on: This tells drivers to stop."
        }
        
        if self.currentlyButtonTapped == 3{
            greenLabel.text = "Oops, wrong order. Lights do not change from Green to Red directly, please try again."
        }
        pictureImageView.image = UIImage(named: "red-sign")
        
        
        self.currentlyButtonTapped = sender.tag
    }
    
    @IBAction func SecondPictureButtonPressed(_ sender: UIButton) {
        if self.currentlyButtonTapped == 0{
            greenLabel.text = "Oops, wrong order. Lights does not change from Red to Yellow, try again"
        }else{
            greenLabel.text = "Yellow light on: This tells drivers to stop when it is safe to, because the light is about to turn red."
        }
        pictureImageView.image = UIImage(named: "yellow-sign")

        
       self.currentlyButtonTapped = sender.tag
    }
    @IBAction func ThirdPictureButtonPressed(_ sender: UIButton) {
        if self.currentlyButtonTapped == 2{
            greenLabel.text = "Oops, wrong order. Lights do not change from Yellow to Green, please try again."
        }else{
            greenLabel.text = "Green light on: This means the driver can start driving or keep driving."
        }
        
         pictureImageView.image = UIImage(named: "green-sign")
        self.currentlyButtonTapped = sender.tag
        
    }
    
    //image connector
    @IBOutlet weak var pictureImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
