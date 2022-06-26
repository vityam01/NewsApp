//
//  StoredNewsVC.swift
//  news
//
//  Created by Vitya Mandryk on 26.06.2022.
//

import Foundation
import UIKit
import CoreData

final class StoredNewsVC: UIViewController {
    
    @IBOutlet weak var storedLyst: UITableView!
    
    private var news = [News]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }
    
    private func initUI() {
        storedLyst.delegate = self
        storedLyst.dataSource = self
        requsetData()
    }
    
    private func requsetData() {
        let fetchRequest: NSFetchRequest<News> = News.fetchRequest()
        
        do {
            let new = try PersistenceServce.context.fetch(fetchRequest)
            self.news = new
            self.storedLyst.reloadData()
        } catch {}
    }
    
}


extension StoredNewsVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: StoredCell.identifier) as? StoredCell else { return UITableViewCell() }
            cell.updateCell(article: news[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
}
