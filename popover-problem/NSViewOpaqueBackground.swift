//
//  NSViewOpaqueBackground.swift
//  library-auto-renew
//
//  Created by David Boyd on 2/20/18.
//  Copyright © 2018 David Boyd. All rights reserved.
//
import AppKit

class NSViewOpaqueBackground: NSView {
    override var isOpaque: Bool {
        return true
    }
    
    override func draw(_ dirtyRect: NSRect) {
        NSColor.red.setFill()
        self.bounds.fill()
    }
}
