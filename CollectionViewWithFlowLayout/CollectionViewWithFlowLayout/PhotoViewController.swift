//
//  ViewController.swift
//  CollectionViewWithFlowLayout
//
//  Created by Brahmastra on 11/11/22.
//  Copyright © 2022 Brahmastra. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {
    @IBOutlet weak var PhotoCollectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension PhotoViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        photoData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotoCell.reuseidentifier, for: indexPath) as!PhotoCell
       // cell.backgroundColor = .red

        let photoName = photoData[indexPath.row].photoName
        
        
        
        cell.displayPhotos(PhotoName: photoName)
        return cell
    }
    
    
}
