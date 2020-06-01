//
//  HeaderImagesCell.swift
//  BusinessDirectory
//
//  Created by Aseem 13 on 28/12/16.
//  Copyright © 2016 Taran. All rights reserved.
//

import UIKit

class HeaderImagesCell: UICollectionViewCell {

    @IBOutlet weak var imageViewCover: UIImageView!

    func configureCell(img : String?){
        
        if let image = img, let url = URL(string: image){
            imageViewCover?.kf.setImage(with: url)
        }
        
    }
    
    func configure(item : HomeListModal?){
        
        if let image = item?.imageUrl, let url = URL(string: image){
            imageViewCover?.kf.setImage(with: url)
            
        }else if let thumb = item?.thumb, let url = URL(string: thumb){
            imageViewCover?.kf.setImage(with: url)
        }
        
    }
    

}
