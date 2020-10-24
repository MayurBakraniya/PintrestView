//
//  CollectionViewCell.swift
//  PintrestView
//
//  Created by MAC on 23/10/20.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

   
    @IBOutlet weak var imgWidth: NSLayoutConstraint!
    @IBOutlet weak var imgHeight: NSLayoutConstraint!
    @IBOutlet weak var imgData: UIImageView!
    
    @IBOutlet weak var lblText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
