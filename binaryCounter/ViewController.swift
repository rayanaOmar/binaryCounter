//
//  ViewController.swift
//  binaryCounter
//
//  Created by admin on 13/12/2021.
//

import UIKit

class ViewController: UIViewController, CustomCellDelegate {
 
    var totalNumber: Int = 0
    let mathPower:[Int] = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var totalNumberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func plus(value: Int) {
        totalNumber += value
        totalNumberLabel.text = "The Total: \(totalNumber)"
    }
    
    func mins(value: Int) {
        totalNumber -= value
        totalNumberLabel.text = "The Total: \(totalNumber)"
        
    }
}

extension  ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        mathPower.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell
        
        cell.numberLabel.text = "\(pow(10, mathPower [indexPath.row]))"
        
        cell.delegate = self
        return cell
    }
}

