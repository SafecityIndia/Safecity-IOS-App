//
//  EventDetailDataSource.swift
//  TicketManagement
//
//  Created by Aseem 13 on 26/12/16.
//  Copyright © 2016 Taran. All rights reserved.
//

import UIKit

class EventDetailDataSource: TableViewDataSource {
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let identifier : String = SwitchCellIdentifier(value: indexPath.row) else{
            fatalError("Cell identifier not provided")
        }
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: identifier , for: indexPath) as UITableViewCell
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        if let block = self.configureCellBlock , let item: Any = self.items?[indexPath.row]{
            block(cell , item , indexPath as IndexPath?)
        }
        return cell
    }
    
    func SwitchCellIdentifier(value  : Int) -> String? {
        
        switch value {
        case 0,1:
            return EventDetailIdentifiers(rawValue: value)?.getName()
        default:
            return EventDetailIdentifiers.Comments.getName()
        }
       
    }
    
}
