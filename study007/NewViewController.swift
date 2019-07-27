//
//  NewViewController.swift
//  study007
//
//  Created by PeiYu Wang on 2019/7/27.
//  Copyright © 2019 PeiYu Wang. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {
    var labelTxt=""
    var viewController:ViewController?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor=UIColor.green
        
        let label=UILabel(frame: CGRect(x: 40, y: 100, width: 240, height: 44))
        label.text=labelTxt;
        self.view.addSubview(label)
        
        let button=UIButton(frame: CGRect(x: 40, y: 180, width: 240, height: 44))
        button.backgroundColor=UIColor.black
        button.setTitle("关闭", for: UIControl.State())
        button.addTarget(self, action: #selector(dismissSelf), for: .touchUpInside)
        self.view.addSubview(button)
        

    }
    
    @objc func dismissSelf(){
        viewController?.label.text="返回的参数"
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
