//
//  ActivityDataSource.swift
//  SafeCity
//
//  Created by Aseem 13 on 04/07/17.
//  Copyright © 2017 Taran. All rights reserved.
//

import UIKit

class ActivityDataSource: TableViewDataSource {

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let identifier : ActivityIdentifiers = SwitchCellIdentifier(value: indexPath.row) else{
            fatalError("Cell identifier not provided")
        }
        
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: identifier.rawValue , for: indexPath) as UITableViewCell
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        
        if let block = self.configureCellBlock , let item: Any = self.items?[indexPath.row]{
            block(cell , item , indexPath as IndexPath?)
        }
        return cell
    }
    
    func SwitchCellIdentifier(value  : Int) -> ActivityIdentifiers? {
        
        guard let items = items, let type = ActivityType(rawValue: /(items[value] as? ActivityModal)?.type) else{return .place}
        
        switch type {
            
        case .Report:
            return .report
        case .SafetyTip:
            return .safetyTip
        case .Survey:
            return .survey
        case .following:
            return .followed
        case .blogLiked:
            return .liked
        case .eventGoing:
            return .joined
        case .eventCommented, .blogCommented:
            return .commented
        case .safelistPush, .adminSend, .subAdminPush:
            return .safelistPush
        default:
            return .place
        }
    }
}


enum ActivityType : String{
    case Report
    case SafetyTip
    case Survey
    case following = "Started Following"
    case eventGoing = "Event Joined"
    case eventCommented = "Event Commented"
    case blogCommented = "Blog Commented"
    case blogLiked = "Blog Liked"
    case adminSend = "Safecity"
    case subAdminPush = "Safecity Subadmin"
    case safelistPush = "Safelist Push"
    case place
}
