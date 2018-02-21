//
//  NSButtonOpaque.swift
//  popover-problem
//
//  Created by David Boyd on 2/21/18.
//  Copyright © 2018 David Boyd. All rights reserved.
//

import Cocoa

class NSProgressIndicatorOpaque: NSProgressIndicator {
    override func draw(_ dirtyRect: NSRect) {
        NSColor.controlBackgroundColor.withAlphaComponent(1.0).setFill()
        self.bounds.fill()

        super.draw(dirtyRect)
    }
}
