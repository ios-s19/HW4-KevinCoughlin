//
//  TableViewCell.swift
//  HW4
//
//  Created by Coughlin, Kevin P (cough003) on 4/5/19.
//  Copyright © 2019 Kevin Coughlin. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var cellTitleLabel: UILabel!
    @IBOutlet weak var cellImageView: UIImageView!
    
    func setCell(cell: Cell){
        cellImageView.image = cell.image
        cellTitleLabel.text = cell.title
    }
}
