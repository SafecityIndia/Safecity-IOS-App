//
//  FilterActivityDataSource.swift
//  SafeCity
//
//  Created by Sierra 4 on 19/06/17.
//  Copyright © 2017 Taran. All rights reserved.
//

import UIKit

class FilterActivityDataSource: TableViewDataSource {
    
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
        return FiltersActivityIdentifiers(rawValue: value)?.getName()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        guard let item = items?[0] as? FilterActivityModal else{return 1}
        
        switch section {
        case 0:
            return item.arrShowOnFeeds?.count ?? 1
            
        default:
            return 1
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        
        switch section {
        case 1:
            return nil
        default:
            let header = tableView.dequeueReusableCell(withIdentifier: "HeaderFilter") as? FiltersCell
            guard let arr = Arrays.FilterActivityTitles.get() as? [String] else{return nil}
            header?.lblHeaderTitle?.text = arr[section]
            return header?.contentView
        }
        
        
        
        
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case 1:
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
}

