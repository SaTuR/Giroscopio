//
//  ViewController.swift
//  gyro
//
//  Created by Integro on 10/04/17.
//  Copyright © 2017 nextu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var orientationImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GyroManager.instance.start(updateHandler: { (data, error) in
    
            
            let rz = (data?.rotationRate.z)!*0.2
            let rx = (data?.rotationRate.x)!*20.0
            let ry = (data?.rotationRate.y)!*20.0
            
            
            self.orientationImage.transform = CGAffineTransform(translationX: CGFloat(ry), y: CGFloat(rx)).rotated(by: CGFloat(-rz))
        
            
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

