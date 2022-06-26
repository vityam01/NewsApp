//
//  FilterCell.swift
//  news
//
//  Created by Vitya Mandryk on 26.06.2022
//

import UIKit

class FilterCell: UITableViewCell {
    @IBOutlet weak var filterTypeLbl: UILabel!
    
    func updateCell(_ type: String) {
        filterTypeLbl.text = type
    }
    
}
