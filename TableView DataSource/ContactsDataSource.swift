//
//  ContactsDataSource.swift
//  SafeCity
//
//  Created by Aseem 13 on 12/06/17.
//  Copyright © 2017 Taran. All rights reserved.
//

import UIKit

class ContactsDataSource: TableViewDataSource {

    var searching = Bool()
    
    init(items : Array<Any>? , height : CGFloat , tableView : UITableView? , cellIdentifier : CellName?, searching : Bool) {
        
        super.init(items: items, height: height, tableView: tableView, cellIdentifier: cellIdentifier)
        self.searching = searching
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let identifier : String = SwitchCellIdentifier(value: indexPath.row) else{
            fatalError("Cell identifier not provided")
        }
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: identifier , for: indexPath) as UITableViewCell
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        
        
        if let block = self.configureCellBlock , let item: Any = self.items?[indexPath.row]{
            block(cell , item , indexPath)
        }
        return cell
    }
    
    func SwitchCellIdentifier(value : Int) -> String? {
        
        if searching{
             return ContactIdentifiers.contact.getName()
        
        }else{
            switch value {
            case 0,1,2:
                return ContactIdentifiers(rawValue: value)?.getName()
            default:
                return ContactIdentifiers.contact.getName()
            }

        }
        
        
        
        
    }


}
