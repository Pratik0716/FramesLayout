//
//  LayoutModel.swift
//  PhotoFrameDownloader
//
//  Created by orange on 06/03/24.
//

import Foundation
import UIKit

enum LayoutType {
    case layout1
    case layout2
    case layout3
    case layout4
    case layout5
    case layout6
    case layout7
    case layout8
    case layout9
    case layout10
    case layout11
    case layout12
    
    func compositionalLayout() -> NSCollectionLayoutSection {
        switch self {
        case .layout1:
            return CompositionalLayouts.shared.layout1()
        case .layout2:
            return CompositionalLayouts.shared.layout2()
        case .layout3:
            return CompositionalLayouts.shared.layout3()
        case .layout4:
            return CompositionalLayouts.shared.layout4()
        case .layout5:
            return CompositionalLayouts.shared.layout5()
        case .layout6:
            return CompositionalLayouts.shared.layout6()
        case .layout7:
            return CompositionalLayouts.shared.layout7()
        case .layout8:
            return CompositionalLayouts.shared.layout8()
        case .layout9:
            return CompositionalLayouts.shared.layout9()
        case .layout10:
            return CompositionalLayouts.shared.layout10()
        case .layout11:
            return CompositionalLayouts.shared.layout11()
        case .layout12:
            return CompositionalLayouts.shared.layout12()
        }
    }
}

struct SectionLayoutModel {
    var numberOfImage : Int
    var sectionIndex : Int
    var layoutType : NSCollectionLayoutSection
    
}

struct LayoutModel {
    var numberOfImage : Int
    var sectionIndex : Int
    var imageType : UIImage
    var layoutType : NSCollectionLayoutSection
    
}
