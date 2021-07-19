//
//  ViewController.swift
//  mario-kart
//
//  Created by Anna Taylor on 7/17/21.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func didPanKartView(_ sender: UIPanGestureRecognizer) {
        let location = sender.location(in: view)
        print("Location: x: \(location.x), y: \(location.y)")
        
        let kartView = sender.view!
        kartView.center = location
  
    }
    
    @IBAction func addPinchKart(_ sender: UIPinchGestureRecognizer) {
        
        let scale = sender.scale
        
        print("scale: \(scale)")
        
        let kartView = sender.view!
        kartView.transform = CGAffineTransform(scaleX: scale, y: scale)
        
    }
    
    @IBAction func didRotateKartView(_ sender: UIRotationGestureRecognizer) {
        
        let rotation = sender.rotation
        
        print("rotation \(rotation)")
        
        let kartView = sender.view!
        kartView.transform = CGAffineTransform(rotationAngle: rotation)
    }
    
    @IBAction func didTapKartView(_ sender: UITapGestureRecognizer) {
        
        print("Double tap recognized")
    }
    
}

