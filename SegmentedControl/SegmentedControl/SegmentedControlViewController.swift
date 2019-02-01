//
//  SegmentedControlViewController.swift
//  SegmentedControl
//
//  Created by Austin Terranova on 9/4/18.
//  Copyright © 2018 Austin Terranova. All rights reserved.
//

import UIKit

class SegmentedControlViewController: UIViewController {

    @IBOutlet weak var segmentedColors: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.red
        
        

        // Do any additional setup after loading the view.
    }

        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        @IBAction func segmentedControl(_ sender: UISegmentedControl) {
            
            if(segmentedColors.selectedSegmentIndex == 0){
                segmentedColors.setTitle("red", forSegmentAt: 0)
                self.view.backgroundColor = UIColor.red
                
            }
            else if (segmentedColors.selectedSegmentIndex == 1){
                segmentedColors.setTitle("blue", forSegmentAt: 1)
                self.view.backgroundColor = UIColor.blue
                
                
                
            }
            else if (segmentedColors.selectedSegmentIndex == 2){
                segmentedColors.setTitle("green", forSegmentAt: 2)
                self.view.backgroundColor = UIColor.green
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
