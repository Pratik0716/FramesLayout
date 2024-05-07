//
//  HeaderView.swift
//  FramesLayout
//
//  Created by orange on 29/04/24.
//

import UIKit

class HeaderView: UICollectionReusableView {

    // MARK: - IBOutlets
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var btnChangeLayout: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.setupUI()
    }
    
    // MARK: - Function
    func setupUI() {
        btnChangeLayout.cornerRadius = 10
        btnChangeLayout.backgroundColor = .lightGray
        
    }
    
}
