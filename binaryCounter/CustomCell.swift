//
//  CustomCell.swift
//  binaryCounter
//
//  Created by admin on 13/12/2021.
//

import UIKit

class CustomCell: UITableViewCell {
    
    //delegate call
    var delegate: CustomCellDelegate?
    

    @IBOutlet weak var numberLabel: UILabel!
    
    @IBAction func minsAction(_ sender: UIButton) {
        delegate?.mins(value: Int(numberLabel.text!)!)
    }
    
    
    @IBAction func plusAction(_ sender: UIButton) {
        
        delegate?.plus(value: Int(numberLabel.text!)!)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
