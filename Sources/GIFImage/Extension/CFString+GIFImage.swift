//
//  File.swift
//  
//
//  Created by qihoo on 2022/11/18.
//

import Foundation
import ImageIO

extension CFString {
    var asKey: UnsafeMutableRawPointer {
        return Unmanaged.passUnretained(self).toOpaque()
    }
}
