//
//  PaletteContainer.swift
//  KhromaPal
//
//  Created by mac on 14-10-14.
//  Copyright (c) 2014年 RayWenderlich. All rights reserved.
//

import Foundation

@objc protocol PaletteDisplayContainer {
    func rwt_currentlyDisplayedPalette() -> ColorPalette?
}
