//
//  StepperViewController.swift
//  ProgressStepper
//
//  Created by Austin Terranova on 9/20/18.
//  Copyright © 2018 Austin Terranova. All rights reserved.
//

import UIKit

class StepperViewController: UIViewController {
    
    @IBOutlet weak var stepper: UIProgressView!
    @IBOutlet weak var progress: UIStepper!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func updateProgress(_ sender: Any) {
       stepper.setProgress(Float(progress.stepValue), animated: true)
        
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
