//
//  QADataSource.swift
//  SafeCity
//
//  Created by Aseem 13 on 19/07/17.
//  Copyright © 2017 Taran. All rights reserved.
//

import UIKit

class QADataSource: TableViewDataSource {

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
        
        switch value {
        case 0:
            return QAIdentifiers.Question.rawValue
        default:
            return QAIdentifiers.Answer.rawValue
        }
        
        
        
    }

}
