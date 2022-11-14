//
//  PhotoCell.swift
//  CollectionViewWithFlowLayout
//
//  Created by Brahmastra on 11/11/22.
//  Copyright © 2022 Brahmastra. All rights reserved.
//

import UIKit

class PhotoCell: UICollectionViewCell {
    
    static let reuseidentifier:String = "PhotoCell"
    
    @IBOutlet weak var imageView: UIImageView!
    func displayPhotos(PhotoName:String)
    {
        self.imageView.image = UIImage(named:PhotoName)
    
    }
    
}
