//
//  Data+GIFImage.swift
//  
//
//  Created by qihoo on 2022/11/18.
//

import Foundation
import ImageIO

extension Data {
    func imageAsyncSequence() throws -> CGImageSourceFrameSequence {
        return try CGImageSourceFrameSequence(data: self)
    }
}
