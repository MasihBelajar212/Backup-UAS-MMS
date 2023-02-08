//
//  FruitTableViewCell.swift
//  SemuaSegar
//
//  Created by made on 08/02/23.
//

import UIKit

class FruitTableViewCell: UITableViewCell {

    @IBOutlet weak var fruitNameLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
