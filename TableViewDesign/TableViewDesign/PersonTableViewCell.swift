//
//  PersonTableViewCell.swift
//  TableViewDesign
//
//  Created by Rabin on 04/01/23.
//

import UIKit

class PersonTableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelPersonName: UILabel!
    @IBOutlet weak var viewInCell: UIView!
    @IBOutlet weak var imageViewInCell: UIImageView!
    
    var isSelect = false
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
