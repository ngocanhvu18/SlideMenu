//
//  MasterViewController.swift
//  SlideMenu
//
//  Created by NgocAnh on 5/22/18.
//  Copyright © 2018 NgocAnh. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {
    
  
    
    @IBOutlet weak var greenView: UIView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func animateButton(_ sender: UIButton) {
        UIView.animate(withDuration: 1, animations: {
            self.greenView.backgroundColor = .brown
//            self.greenView.frame.size.width += 10
//            self.greenView.frame.size.height += 10
            self.greenView.frame.origin.y += 20
        }) { _ in
            UIView.animate(withDuration: 1, delay: 0.25, options: [.autoreverse, .repeat], animations: {
                self.greenView.frame.origin.y -= 20
                
            })
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
