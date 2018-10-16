//
//  DetailViewController.swift
//  PopUpStyleView
//
//  Created by praveen on 10/16/18.
//  Copyright © 2018 DemoApps. All rights reserved.
//

import UIKit

class DetailView: UIViewController {
    var titleLabel = UILabel()
    var companyCodeLabel = UILabel()
    var fiscalPeriodLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let blurredView = UIVisualEffectView()
        blurredView.translatesAutoresizingMaskIntoConstraints = false
        blurredView.effect = UIBlurEffect(style: .dark)
        view.addSubview(blurredView)
        blurredView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        blurredView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        blurredView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        blurredView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        let contentView = UIView()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.layer.cornerRadius = 4
        contentView.backgroundColor = .white
        blurredView.contentView.addSubview(contentView)
        contentView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        contentView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        contentView.heightAnchor.constraint(equalToConstant: 240).isActive = true

        if UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.pad {
            contentView.widthAnchor.constraint(equalToConstant: 400).isActive = true
        } else {
            contentView.widthAnchor.constraint(equalToConstant: 310).isActive = true
        }
        contentView.layoutIfNeeded()
        
        let topPath = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: contentView.frame.width, height: 50), byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 4, height: 4))
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = topPath.cgPath
        shapeLayer.fillColor = UIColor.orange.cgColor
        contentView.layer.addSublayer(shapeLayer)
        
        let dismissButton = UIButton(type: .roundedRect)
        dismissButton.translatesAutoresizingMaskIntoConstraints = false
        dismissButton.setTitle("ok", for: UIControlState.normal)
        dismissButton.setTitleColor(.orange, for: UIControlState.normal)
        dismissButton.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        dismissButton.addTarget(self, action: #selector(dismissButtonTapped(_:)), for: UIControlEvents.touchUpInside)
        contentView.addSubview(dismissButton)
        dismissButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        dismissButton.widthAnchor.constraint(equalToConstant: 80).isActive = true
        dismissButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8).isActive = true
        dismissButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font = UIFont.systemFont(ofSize: 18, weight: UIFont.Weight.semibold)
        titleLabel.textAlignment = .center
        titleLabel.textColor = .white
        titleLabel.text = "Title Here"
        contentView.addSubview(titleLabel)
        titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        let codeSubTitle = UILabel()
        codeSubTitle.translatesAutoresizingMaskIntoConstraints = false
        codeSubTitle.font = UIFont.systemFont(ofSize: 16)
        codeSubTitle.text = "Sub Title 1"
        codeSubTitle.textColor = .gray
        contentView.addSubview(codeSubTitle)
        codeSubTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8).isActive = true
        codeSubTitle.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4).isActive = true
        codeSubTitle.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        
        companyCodeLabel.translatesAutoresizingMaskIntoConstraints = false
        companyCodeLabel.font = UIFont.systemFont(ofSize: 16)
        companyCodeLabel.textColor = .black
        contentView.addSubview(companyCodeLabel)
        companyCodeLabel.text = "text 1"
        companyCodeLabel.leadingAnchor.constraint(equalTo: codeSubTitle.leadingAnchor).isActive = true
        companyCodeLabel.topAnchor.constraint(equalTo: codeSubTitle.bottomAnchor).isActive = true
        companyCodeLabel.heightAnchor.constraint(equalTo: codeSubTitle.heightAnchor).isActive = true
        
        let dateSubTitle = UILabel()
        dateSubTitle.translatesAutoresizingMaskIntoConstraints = false
        dateSubTitle.font = UIFont.systemFont(ofSize: 16)
        dateSubTitle.text = "Sub Title 2"
        dateSubTitle.textColor = .gray
        contentView.addSubview(dateSubTitle)
        dateSubTitle.leadingAnchor.constraint(equalTo: codeSubTitle.leadingAnchor).isActive = true
        dateSubTitle.topAnchor.constraint(equalTo: companyCodeLabel.bottomAnchor).isActive = true
        dateSubTitle.heightAnchor.constraint(equalTo: codeSubTitle.heightAnchor).isActive = true
        
        fiscalPeriodLabel.translatesAutoresizingMaskIntoConstraints = false
        fiscalPeriodLabel.font = UIFont.systemFont(ofSize: 16)
        fiscalPeriodLabel.textColor = .black
        contentView.addSubview(fiscalPeriodLabel)
        fiscalPeriodLabel.text = "text 2"
        fiscalPeriodLabel.leadingAnchor.constraint(equalTo: codeSubTitle.leadingAnchor).isActive = true
        fiscalPeriodLabel.topAnchor.constraint(equalTo: dateSubTitle.bottomAnchor).isActive = true
        fiscalPeriodLabel.heightAnchor.constraint(equalTo: codeSubTitle.heightAnchor).isActive = true
        
    }
    
    @objc func dismissButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
