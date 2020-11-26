//
//  ViewController.swift
//  UibezierPath
//
//  Created by Hovo on 7/29/20.
//  Copyright © 2020 Hovo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        let width: CGFloat = 240.0
        let height: CGFloat = 140.0

        let demoView = Demo(frame: CGRect(x: self.view.frame.size.width/2 - width/2,
                                          y: self.view.frame.size.height/2 - height/2,
                                          width: width,
                                          height: height))

        self.view.addSubview(demoView)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }
    
}
