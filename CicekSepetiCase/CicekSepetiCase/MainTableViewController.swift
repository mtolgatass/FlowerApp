//
//  MainTableViewController.swift
//  CicekSepetiCase
//
//  Created by Tolga Taş on 17.07.2019.
//  Copyright © 2019 Tolga Taş. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    var productArray : [Product]?{
        didSet{
            if isViewLoaded{
                tableView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }
    
    func fetchData(){
            _ = WebServiceImp.shared.fetchData().done{ result in
                let dataToShow = FilterHelper.shared.filterData(answer: result)
                self.productArray = dataToShow
        }
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ProductsTableViewCell", for: indexPath) as? ProductsTableViewCell else{fatalError()}
        
        cell.setupCell(product: productArray?[indexPath.row])
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productArray?.count ?? 0
    }
}
