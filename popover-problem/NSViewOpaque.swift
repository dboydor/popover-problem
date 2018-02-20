//
//  NSViewOpaque.swift
//  library-auto-renew
//
//  Created by David Boyd on 2/20/18.
//  Copyright © 2018 David Boyd. All rights reserved.
//
import AppKit

class NSViewOpaque: NSView {
    override func viewDidMoveToWindow() {
        guard let frameView = window?.contentView?.superview else { return }
        
        let backgroundView = NSViewOpaqueBackground(frame: frameView.bounds)
        backgroundView.alphaValue = 1.0
        backgroundView.autoresizingMask = [.width, .height]
        frameView.addSubview(backgroundView, positioned: .below, relativeTo: frameView)
        
        super.viewDidMoveToWindow()
    }
}

