//
//  ViewController.swift
//  zoomexe
//
//  Created by Payal on 25/01/20.
//  Copyright © 2020 mokshitpu. All rights reserved.
//CGAffineTransform.identity is the default transform and resets the image to its orignal position.

import UIKit

class ViewController: UIViewController {

    var imageZoomed = false
    
    @IBOutlet var tapGesture: UITapGestureRecognizer!
    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tapGesture.numberOfTapsRequired = 1
        
    }

    @IBAction func tapImage(_ sender: UITapGestureRecognizer) {
        if (!imageZoomed) {
            scaleImageUp()
            imageZoomed = true
        }
       
        else {
        normalizeImage()
            imageZoomed = false
        }
    }
    func scaleImageUp() {
        image.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        imageZoomed = true
        
        
//        image.frame = CGRect(x : 0,
//                             y : view.bounds.size.height / 2 - (image.frame.size.height * 1.5) / 2,
//                             width :image.frame.size.width * 1.5,
//                             height : image.frame.size.height * 1.5) }
//
        
      
    }
        func normalizeImage() {
            
            image.transform = CGAffineTransform.identity
            imageZoomed = false
            
            
//            let imgHeight = image.frame.size.height / 1.5
//            let imgWidth = image.frame.size.width / 1.5
//
//            image.frame = CGRect(x : 0,
//                                 y : view.bounds.size.height / 2 - imgHeight / 2,
//                                width: imgWidth,
//                               height: imgHeight)
//
        
    }
}

