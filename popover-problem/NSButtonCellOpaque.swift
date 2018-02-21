//
//  NSButtonOpaque.swift
//  popover-problem
//
//  Created by David Boyd on 2/21/18.
//  Copyright © 2018 David Boyd. All rights reserved.
//

import Cocoa

class NSButtonCellOpaque: NSButtonCell {
    override func draw(withFrame cellFrame: NSRect, in controlView: NSView) {
        NSColor.controlBackgroundColor.withAlphaComponent(1.0).setFill()
        cellFrame.fill()
        
        super.draw(withFrame: cellFrame, in: controlView)
    }
}
