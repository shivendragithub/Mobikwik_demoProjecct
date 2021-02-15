//
//  DataTVC.swift
//  TestDemo
//
//  Created by shivendra pandey on 15/02/21.
//  Copyright © 2021 shivendra pandey. All rights reserved.
//

import UIKit

class DataTVC: UITableViewController {

    var data = [ServiceM]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "DataCellTVCell", for: indexPath) as? DataCellTVCell {
            let indexData = data[indexPath.row]
            cell.lbl_header.text = indexData.header
            cell.lbl_title.text = indexData.title
            cell.lbl_desc.text = indexData.desc

            if (indexData.header.count == 0) || indexData.title.count == 0{
                cell.layoutConstraint_lbl_headerBottom.constant = 0.0
            }
            else{
                cell.layoutConstraint_lbl_headerBottom.constant = 10.0
            }
            
            if indexData.title.count == 0 || indexData.desc.count == 0 {
                cell.layoutConstraint_lbl_titleBottom.constant = 0.0
            }else{
                cell.layoutConstraint_lbl_titleBottom.constant = 10.0
            }

            return cell
        }
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}




