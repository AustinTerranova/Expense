//
//  ActivityIndicatorViewController.swift
//  activity indicator
//
//  Created by Austin Terranova on 8/28/18.
//  Copyright © 2018 Austin Terranova. All rights reserved.
//

import UIKit

class ActivityIndicatorViewController: UIViewController {
    
    //var buttonClicked;
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
  
        
    }

    @IBOutlet weak var buttonTitle: UIButton!
    var button = true
    
    
    @IBAction func stopLoadingButton(_ sender: UIButton) {
        
        
        func toggleActivityState(_ sender:Any){
        
        }
        
        if (button){
            
            buttonTitle.setTitle("stop loading", for: .normal)
            activityIndicator.startAnimating()
            activityIndicator.isHidden = false
            button = false
        
       
        } else {
            buttonTitle.setTitle("start loading", for: .normal)
            activityIndicator.stopAnimating()
            activityIndicator.isHidden = true
            button = true
            
        }
        
    }
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
