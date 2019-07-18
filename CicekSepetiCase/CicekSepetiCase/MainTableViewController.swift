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
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ProductsTableViewCell", for: indexPath) as? ProductsTableViewCell else{fatalError()}
        
        cell.label?.text = productArray?[indexPath.row].name
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return productArray?.count ?? 0
    }
}
