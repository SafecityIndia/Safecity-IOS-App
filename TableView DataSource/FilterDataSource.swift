//
//  FilterDataSource.swift
//  SafeCity
//
//  Created by Aseem 13 on 07/06/17.
//  Copyright © 2017 Taran. All rights reserved.
//

import UIKit

class FilterDataSource: TableViewDataSource {

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let identifier : String = SwitchCellIdentifier(value: indexPath.section) else{
            fatalError("Cell identifier not provided")
        }
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: identifier , for: indexPath) as UITableViewCell
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        
        
        if let block = self.configureCellBlock , let item: Any = self.items?[0]{
            block(cell , item , indexPath)
        }
        return cell
    }
    
    func SwitchCellIdentifier(value : Int) -> String? {
        
        switch value {
        case 0,4,5:
            return FiltersIdentifiers.Map.getName()
        default:
            return FiltersIdentifiers(rawValue : value)?.getName()
        }
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        guard let item = items?[0] as? FilterModal else{return 1}
        
        switch section {
        case 0:
            return item.arrShowOnMap?.count ?? 1
        case 4:
            return item.arrReportContains?.count ?? 1
        case 5:
            return item.arrVerification?.count ?? 1
        default:
            return 1
        }
        
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        switch section {
        case 2:
            return nil
        default:
            let header = tableView.dequeueReusableCell(withIdentifier: "HeaderFilter") as? FiltersCell
            guard let arr = Arrays.FilterTitles.get() as? [String] else{return nil}
            header?.lblHeaderTitle?.text = arr[section]
            return header?.contentView
        }
        
        
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case 2:
            return 0.0
        default:
            return 40.0
        }
    }
    
    
    
    func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UIView(frame: CGRect(x: 0,y: 0,width: tableView.frame.size.width,height: 1))
        footerView.backgroundColor = UIColor.groupTableViewBackground
        return footerView
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1.0
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }

}

