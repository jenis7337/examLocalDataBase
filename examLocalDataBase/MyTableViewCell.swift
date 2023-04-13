//
//  MyTableViewCell.swift
//  examLocalDataBase
//
//  Created by Jenish Navadiya on 12/04/23.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var idLable: UILabel!
    
    @IBOutlet weak var nameLable: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
