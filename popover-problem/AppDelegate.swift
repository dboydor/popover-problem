//
//  AppDelegate.swift
//  popover-problem
//
//  Created by David Boyd on 2/20/18.
//  Copyright © 2018 David Boyd. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    private let statusItem = NSStatusBar.system.statusItem(withLength:NSStatusItem.squareLength)
    private let popover = NSPopover()
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        if let button = statusItem.button {
            button.image = NSImage(named:NSImage.Name("StatusBarButtonImage"))
            button.action = #selector(togglePopover(_:))
        }
        
        popover.contentViewController = ViewController.create("ViewController")
        popover.animates = false
    }
    
    @objc func togglePopover(_ sender: Any?) {
        if popover.isShown {
            closePopover(sender: sender)
        } else {
            showPopover(sender: sender)
        }
    }
    
    func showPopover(sender: Any?) {
        if let button = statusItem.button {
            NSRunningApplication.current.activate(options: NSApplication.ActivationOptions.activateIgnoringOtherApps)
            
//            if let popoverView = popover.contentViewController?.view.superview {
//                popoverView.wantsLayer = true
//                popoverView.layer?.backgroundColor = NSColor.red.withAlphaComponent(1.0).cgColor
//            }

            popover.show(relativeTo: button.bounds, of: button, preferredEdge: NSRectEdge.minY)
        }
    }
    
    func closePopover(sender: Any?) {
        popover.performClose(sender)
    }
}

