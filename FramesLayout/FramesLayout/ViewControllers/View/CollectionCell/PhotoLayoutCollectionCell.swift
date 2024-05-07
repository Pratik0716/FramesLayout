//
//  PhotoLayoutCollectionCell.swift
//  FramesLayout
//
//  Created by orange on 29/04/24.
//

import UIKit

class PhotoLayoutCollectionCell: UICollectionViewCell {
    
    // MARK: - IBOutlets
    @IBOutlet weak var collageView: UIView!
    @IBOutlet weak var collageImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }

}
