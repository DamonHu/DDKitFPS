//
//  ViewController.swift
//  ZXKitFPS
//
//  Created by Damon on 2021/4/27.
//

import UIKit
import ZXKitCore

class ViewController: UIViewController {
    let fps = ZXKitFPS()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        fps.start { (fps) in
//            print(fps)
//        }
        self.createUI()
        fps.registZXKitPlugin()
    }
    
    func createUI() {
        self.view.backgroundColor = UIColor.white
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        button.backgroundColor = UIColor.red
        self.view.addSubview(button)
        button.addTarget(self, action: #selector(_click), for: .touchUpInside)
    }

    @objc func _click() {
        ZXKit.show()
    }


}

