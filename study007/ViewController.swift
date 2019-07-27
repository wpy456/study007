//
//  ViewController.swift
//  study007
//
//  Created by PeiYu Wang on 2019/7/27.
//  Copyright © 2019 PeiYu Wang. All rights reserved.
//打开模态视图传递参数

import UIKit

class ViewController: UIViewController {
//    @IBOutlet weak var label: UILabel!
//    @IBOutlet weak var button: UIButton!
//
    var label:UILabel!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label=UILabel(frame: CGRect(x: 40, y: 100, width: 240, height: 44))
        label.text="";
        self.view.addSubview(label)
        
        let button=UIButton(frame: CGRect(x: 40, y: 180, width: 240, height: 44))
        button.backgroundColor=UIColor.black
        button.setTitle("打开新视图控制器", for: UIControl.State())
        button.addTarget(self, action: #selector(openNewViewController), for: .touchUpInside)
        self.view.addSubview(button)
        
        
    }

    @objc func openNewViewController() {
        let newViewController=NewViewController()
        newViewController.labelTxt="传递的参数"
        newViewController.viewController=self
        self.present(newViewController,animated: true,completion: nil)
    }
    
}

