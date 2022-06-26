//
//  StoredCell.swift
//  news
//
//  Created by Vitya Mandryk on 26.06.2022.
//

import UIKit

class StoredCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var sourceLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    func updateCell(article: News) {
        titleLabel?.text = article.title ?? ""
        descriptionLabel?.text = article.overview ?? ""
        sourceLabel?.text = article.postedBy ?? ""
        authorLabel?.text = article.author ?? ""
    }
}
