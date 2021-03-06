//
//  UICollectionView+RegisterClasses.swift
//  ACExtensions
//
//  Created by AppCraft LLC on 8/23/21.
//

import UIKit

public extension UICollectionView {
    
    func registerCellClass(_ cellClass: AnyClass) {
        let identifier = String.className(cellClass)
        
        self.register(cellClass, forCellWithReuseIdentifier: identifier)
    }
    
    func registerCellNib(_ cellClass: AnyClass) {
        let identifier = String.className(cellClass)
        let nib = UINib(nibName: identifier, bundle: nil)
        
        self.register(nib, forCellWithReuseIdentifier: identifier)
    }
    
}
