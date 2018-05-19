//
//  ViewController.swift
//  SlideMenu
//
//  Created by NgocAnh on 5/19/18.
//  Copyright © 2018 NgocAnh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sideView: UIView!
    @IBOutlet weak var coverButton: UIButton!
    @IBOutlet weak var leftConstraintSlideMenu: NSLayoutConstraint!
    
    var isOpenSlideMenu: Bool = false {
        didSet {
            leftConstraintSlideMenu.constant = isOpenSlideMenu ? 0 : (-UIScreen.main.bounds.width * 2/3) - 20
            coverButton.isHidden = !isOpenSlideMenu
            UIView.animate(withDuration: 0.35) {
                self.view.layoutIfNeeded()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // đổ bóng
        sideView.layer.shadowColor = UIColor.black.cgColor
        sideView.layer.shadowOpacity = 0.8
        sideView.layer.shadowOffset =  CGSize(width: 5, height: 0)
        // vi tri kéo view.
        leftConstraintSlideMenu.constant = (-UIScreen.main.bounds.width * 2/3) - 20
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // tắt bật
    @IBAction func onlickMenuButton(_ sender: UIBarButtonItem) {
        isOpenSlideMenu = !isOpenSlideMenu
    }
    
    @IBAction func onlickCoverButton(_ sender: UIButton) {
        isOpenSlideMenu = !isOpenSlideMenu
    }
}

