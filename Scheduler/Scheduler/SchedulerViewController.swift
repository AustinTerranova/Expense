//
//  SchedulerViewController.swift
//  Scheduler
//
//  Created by Austin Terranova on 11/1/18.
//  Copyright © 2018 Austin Terranova. All rights reserved.
//

import UIKit

class SchedulerViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let now = Date()
    var cal = Calendar.current
    let dateFormatter = DateFormatter()
    var dateComponents = DateComponents()
    
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        dateFormatter.dateFormat = "MM-dd-yyyy"
        dateComponents.year = cal.component(.year, from: now)
        dateComponents.month = cal.component(.month, from: now)
        dateComponents.day = 1
        dateFormatter.locale = Locale(identifier: "en_US")

        // Do any additional setup after loading the view.
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
