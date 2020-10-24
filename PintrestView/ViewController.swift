//
//  ViewController.swift
//  PintrestView
//
//  Created by MAC on 23/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let imgArray = [#imageLiteral(resourceName: "image6"),#imageLiteral(resourceName: "image5"),#imageLiteral(resourceName: "image3"),#imageLiteral(resourceName: "image4"),#imageLiteral(resourceName: "image1"),#imageLiteral(resourceName: "image1"),#imageLiteral(resourceName: "image3"),#imageLiteral(resourceName: "image7"),#imageLiteral(resourceName: "image3")]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
    }


}

extension ViewController : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.imgData.image = imgArray[indexPath.row]
        cell.clipsToBounds = true
        cell.layer.cornerRadius = 15
        cell.imgHeight.constant = 300
        cell.imgWidth.constant = 150
        
       
        if indexPath.row == 2{
            cell.imgHeight.constant = 150
            cell.imgWidth.constant = 350
        }else if indexPath.row == 5{
            cell.imgHeight.constant = 150
            cell.imgWidth.constant = 350
        }else if indexPath.row == 6{
            cell.imgHeight.constant = 170
            cell.imgWidth.constant = 170
        }else if indexPath.row == 7{
            cell.imgHeight.constant = 170
            cell.imgWidth.constant = 170
        }else if indexPath.row == 8{
            cell.imgHeight.constant = 150
            cell.imgWidth.constant = 355
        }else{
            cell.imgHeight.constant = 300
            cell.imgWidth.constant = 170
        }
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
}
