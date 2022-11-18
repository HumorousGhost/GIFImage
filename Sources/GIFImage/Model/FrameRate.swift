//
//  FrameRate.swift
//  
//
//  Created by qihoo on 2022/11/18.
//

import Foundation

public enum FrameRate {
    case dynamic
    case limited(fps: Int)
    case `static`(fps: Int)
}
