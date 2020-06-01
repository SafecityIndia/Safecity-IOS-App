//
//  HeatMapCollectionCell.swift
//  SafeCity
//
//  Created by Aseem 13 on 23/06/17.
//  Copyright © 2017 Taran. All rights reserved.
//

import UIKit

class HeatMapCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var tagListView: JCTagListView!
    
    @IBOutlet weak var constraintCatHeight: NSLayoutConstraint!
    @IBOutlet weak var lblTtile: UILabel!
    @IBOutlet weak var lblPost: ExpandableLabel!
    
    var item : Any?{
        didSet{
            configure()
        }
    }
    
    //MARK: - Update Cells
    func configure(){
        
        guard let item = item as? POIItem else{return}
        lblPost?.text = item.modal.desc
        lblTtile?.text = item.modal.title
        
        updateTags()
        
        
    }
    
        
    //MARK: - Create Tags
    
    func updateTags(){
        
        let tags = setTagsData()
        tagListView?.tags = NSMutableArray(array: tags)
        
        if tags.count != 0{
            
            let ht = JCCollectionViewTagFlowLayout().calculateContentHeight(tags)[0] as? CGFloat
            constraintCatHeight?.constant = (ht ?? 0) - 4
            tagListView?.collectionView.reloadData()
        }else{constraintCatHeight?.constant = 0}
        
    }
    
    
    func setTagsData() -> [String] {
        
        var tags = [String]()
        guard let item = item as? POIItem else{return []}
        
        if let categories = item.modal.reportCategories, categories.count > 0{
            
            for item in categories {
                tags.append(/item.uppercased().truncate(length: 24))
            }
        }
        
        guard let count = JCCollectionViewTagFlowLayout().calculateContentHeight(tags)[1] as? Int else {return []}
        
        if (item.modal.userExpandTags == "0"){
            
            var arrActualTags = [String]()
            for index in 0..<count{
                arrActualTags.append(tags[index])
            }
            if tags.count > 1 { arrActualTags.append("+\(tags.count-count)")}
            return arrActualTags
        }else{
            return tags
        }
        
    }
    
    
}
