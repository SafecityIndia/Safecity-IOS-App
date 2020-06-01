//
//  SafeListCell.swift
//  SafeCity
//
//  Created by Aseem 13 on 17/07/17.
//  Copyright © 2017 Taran. All rights reserved.
//

import UIKit
protocol DelegateContact {
    func deletePressed(indexapth : IndexPath, type : List)
}

class SafeListCell: UICollectionViewCell {
    
    @IBOutlet weak var lblUserName: UILabel!
    @IBOutlet weak var imgUser: UIImageView!
    @IBOutlet weak var btnDelete: UIButton!
    var indexpath = IndexPath()
    var delegate : DelegateContact?
    var type = List.Safelist
    
    var modal : ContactModal?{
        didSet{
            configure()
        }
    }
    
    
    func configure(){
        
        lblUserName?.text = modal?.name
        btnDelete?.isHidden = type == .Carelist
        
        if let image = modal?.image, let url = URL(string: image){
            imgUser?.kf.setImage(with: url, placeholder: #imageLiteral(resourceName: "ic_profile_circle"), options: nil, progressBlock: nil, completionHandler: nil)
        }

    }
    
    //MARK: - Button Actions
    
    @IBAction func btnDelete(_ sender: UIButton) {
        
        delegate?.deletePressed(indexapth: indexpath, type : type)
    }
    
}
