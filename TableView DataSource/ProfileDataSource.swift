//
//  Profile.swift
//  SafeCity
//
//  Created by Sierra 4 on 12/06/17.
//  Copyright © 2017 Taran. All rights reserved.
//

import Foundation
import UIKit

class ProfileDataSource: TableViewDataSource {
 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let identifier = cellIdentifier else{
            fatalError("Cell identifier not provided")
        }
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: identifier.rawValue , for: indexPath) as UITableViewCell
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        
        
        if let block = self.configureCellBlock ,  let item: Any = self.items?[indexPath.section]{
            block(cell , item , indexPath)
        }
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let items = items else{return 0}
        return (items[section] as AnyObject).count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.items?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UIView()
        let footerChildView = UIView(frame: CGRect(x: 60, y: 0, width: tableView.frame.width - 60, height: 1))
        footerChildView.backgroundColor = #colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)
        footerView.addSubview(footerChildView)
        return footerView
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1
    }
    
    
}



