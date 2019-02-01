//
//  SliderViewController.swift
//  Slider
//
//  Created by Austin Terranova on 9/20/18.
//  Copyright © 2018 Austin Terranova. All rights reserved.
//

import UIKit

class SliderViewController: UIViewController {

   
    @IBOutlet weak var currentSliderInfo: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func slider(_ sender: UISlider) {
        
        currentSliderInfo.text = String(sender.value)
    }
    
    

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
