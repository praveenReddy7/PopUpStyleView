//
//  ViewController.swift
//  PopUpStyleView
//
//  Created by praveen on 10/16/18.
//  Copyright © 2018 DemoApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor =  .red
        // Do any additional setup after loading the view, typically from a nib.
        
        let button = UIButton(type: UIButtonType.roundedRect)
        button.frame = CGRect(x: 0, y: 0, width: 300, height: 44)
        button.center = self.view.center
        button.setTitleColor(.white, for: UIControlState.normal)
        button.setTitle("Click here", for: UIControlState.normal)
        button.addTarget(self, action: #selector(popupButtonTapped(_:)), for: UIControlEvents.touchUpInside)
        view.addSubview(button)
        
    }

    @objc func popupButtonTapped(_ sender: UIButton) {
        let detailView = DetailView()
        detailView.modalPresentationStyle = .overCurrentContext
        detailView.modalTransitionStyle = .crossDissolve
        self.present(detailView, animated: true, completion: nil)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}



















