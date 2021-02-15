//
//  DataCellTVCell.swift
//  TestDemo
//
//  Created by shivendra pandey on 15/02/21.
//  Copyright © 2021 shivendra pandey. All rights reserved.
//

import UIKit

class DataCellTVCell: UITableViewCell {
    
    @IBOutlet weak var lbl_header: UILabel!
    @IBOutlet weak var lbl_title: UILabel!
    @IBOutlet weak var lbl_desc: UILabel!
    @IBOutlet weak var layoutConstraint_lbl_titleBottom: NSLayoutConstraint!
    @IBOutlet weak var layoutConstraint_lbl_headerBottom: NSLayoutConstraint!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


