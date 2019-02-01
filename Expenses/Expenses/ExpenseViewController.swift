//
//  ExpenseViewController.swift
//  Expenses
//
//  Created by Austin Terranova on 1/25/19.
//  Copyright © 2019 Austin Terranova. All rights reserved.
//

import UIKit


class ExpenseViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    
    
    
    @IBOutlet weak var expenseTableView: UITableView!
    var expenses: [Expense]!
    
    
    let dateFormatter = DateFormatter()
    

    
    
    //dateFormatter.dateFormat = "MM/dd/yyyy HH:MM"
    //dateFormatter.timeStyle = "MM/dd/yyyy HH:MM"
    //var  = dateFormatter.date(from: "2016)
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return expenses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "expenseCell", for: indexPath) as! ExpenseTableViewCell
        let expense = expenses[indexPath.row]
        
        cell.textLabel?.text = expense.event
        cell.dateLabel.text = dateFormatter.string(from: expense.date)
        
        return cell
        }
        
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        dateFormatter.dateFormat = "MM/dd/yyyy HH:MM"
        let dinnerDateTime = dateFormatter.date(from: "06/01/2018 18:30")
        let officeDateTime = dateFormatter.date(from: "04/30/2018 12:17")
        let uberDateTime = dateFormatter.date(from: "04/30/2018 11:43")
        let coffeeDateTime = dateFormatter.date(from: "04/29/2018 8:45")
        
        expenses = [
            Expense(event: "Dinner", expense: 32.50 , date: dinnerDateTime!),
            Expense(event: "Dinner", expense: 32.50 , date: officeDateTime!),
            Expense(event: "Dinner", expense: 32.50 , date: uberDateTime!),
            Expense(event: "Dinner", expense: 32.50 , date: coffeeDateTime!),
        ]
        
        
   
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
