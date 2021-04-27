//
//  ViewController.swift
//  ZXKitFPS
//
//  Created by Damon on 2021/4/27.
//

import UIKit

class ViewController: UIViewController {
    let fps = ZXKitFPS()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fps.start { (fps) in
            print(fps)
        }

    }


}

