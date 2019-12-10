//
//  ViewController.swift
//  ShadowCornerLayer
//
//  Created by Suresh Shiga on 10/12/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var layerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupLayer()
    }

    private func setupLayer() {
    
        let layer = CAShapeLayer()
        
        let path = UIBezierPath(roundedRect: self.layerView.bounds, byRoundingCorners: [.bottomLeft, .bottomRight, .topLeft, .topRight], cornerRadii: CGSize(width: 10.0, height: 10.0))
        layer.path = path.cgPath
        layer.fillColor = UIColor.orange.cgColor
//        layer.strokeColor = UIColor.white.cgColor
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.shadowPath = path.cgPath
        layer.shadowOpacity = 0.5
        layer.shadowRadius = 10.0
        
        self.layerView.layer.insertSublayer(layer, at: 0)
        
    }

}

