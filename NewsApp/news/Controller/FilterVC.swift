//
//  FilterVC.swift
//  news
//
//  Created by Vitya Mandryk on 26.06.2022
//

import UIKit

final class FilterVC: UIViewController {
    
    var request: String = ""
    @IBOutlet weak var filterTable: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        initUI()
    }
    
    private func initUI() {
        request = ""
        
        filterTable.dataSource = self
        filterTable.delegate = self
    }
    
}

extension FilterVC {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SelectFilterParametersVC {
            let cell = filterTable.cellForRow(at: filterTable.indexPathForSelectedRow!) as? FilterCell
            destination.filterType = cell?.filterTypeLbl.text ?? ""
        }else if let destination = segue.destination as? NewsVC {
            destination.appendRequest(request: self.request)
        }
        
    }
    
    @IBAction func unwindFromFilterVC(unwindSegue: UIStoryboardSegue){}
}

//MARK:- Data source & delegate extensions
extension FilterVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NetworkService.instance.filterTypes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: FilterCell.identifier) as? FilterCell {
            cell.updateCell(NetworkService.instance.filterTypes[indexPath.row])
            cell.accessoryType = .disclosureIndicator
            return cell
        }else {
            return FilterCell()
        }
    }
}
