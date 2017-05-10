//
//  UIFontUtility.swift
//
//  Created by Sun, Cong on 5/10/17.
//  Copyright © 2017 Sun, Cong. All rights reserved.
//

extension UIFont {
    var isBold: Bool {
        return fontDescriptor.symbolicTraits.contains(.traitBold)
    }
    
    var isItalic: Bool {
        return fontDescriptor.symbolicTraits.contains(.traitItalic)
    }
    
    func boldFont() -> UIFont {
        
        guard !self.isBold else { return self }
        var symboliticTraits = self.fontDescriptor.symbolicTraits
        symboliticTraits.insert(.traitBold)
        if let newFontDescriptor = self.fontDescriptor.withSymbolicTraits(symboliticTraits) {
            return UIFont(descriptor: newFontDescriptor, size: self.pointSize)
        } else {
            return self
        }
    }
    
    func italicFont() -> UIFont {
        
        guard !self.isItalic else { return self }
        var symboliticTraits = self.fontDescriptor.symbolicTraits
        symboliticTraits.insert(.traitItalic)
        if let newFontDescriptor = self.fontDescriptor.withSymbolicTraits(symboliticTraits) {
            return UIFont(descriptor: newFontDescriptor, size: self.pointSize)
        } else {
            return self
        }
    }
}

    
