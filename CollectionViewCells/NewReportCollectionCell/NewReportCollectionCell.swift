//
//  AddImageCollectionViewCell.swift
//  SafeCity
//
//  Created by Sierra 4 on 07/06/17.
//  Copyright © 2017 Taran. All rights reserved.
//

import UIKit

class NewReportCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var ImgAddPicture: UIImageView!
    
    @IBOutlet weak var btnAddImage: UIButton!
    
    var item : Any?{
        didSet{
            configure()
        }
    }
    
    func configure(){
        if let image = item as? UIImage{
            ImgAddPicture.image = image
        }else{
            ImgAddPicture.image = nil
        }
        
        
    }
}
