//
//  NewReportDataSource.swift
//  SafeCity
//
//  Created by Sierra 4 on 10/06/17.
//  Copyright © 2017 Taran. All rights reserved.
//

import Foundation
import UIKit

class NewEventDataSource: TableViewDataSource {
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let identifier : String = SwitchCellIdentifier(value: indexPath.section) else{
            fatalError("Cell identifier not provided")
        }
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: identifier , for: indexPath) as UITableViewCell
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        
        
        if let block = self.configureCellBlock , let item: Any = self.items?[indexPath.section]{
            block(cell , item , indexPath)
        }
        return cell
    }
    
    func SwitchCellIdentifier(value : Int) -> String? {
        return NewEventsIdentifiers(rawValue: value)?.getName()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.items?.count ?? 0
    }
}

