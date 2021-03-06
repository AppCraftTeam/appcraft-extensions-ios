//
//  NSAttributedString+RenderImage.swift
//  ACExtensions
//
//  Created by AppCraft LLC on 8/23/21.//

import UIKit

public extension NSAttributedString {
    
    private func getCGSize(maxWidth: CGFloat) -> CGSize {
        let size = self.boundingRect(with: CGSize(width: maxWidth, height: 1000.0),
                                     options: NSStringDrawingOptions.usesLineFragmentOrigin,
                                     context: nil).size
        return size
    }
    
    func renderAsImage(maxWidth: CGFloat) -> UIImage? {
        let size = self.getCGSize(maxWidth: maxWidth)
        
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        self.draw(in: CGRect(x: 0.0, y: 0.0, width: size.width, height: size.height))
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
    
}
