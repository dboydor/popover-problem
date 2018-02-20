//
//  ViewController.swift
//  popover-problem
//
//  Created by David Boyd on 2/20/18.
//  Copyright © 2018 David Boyd. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// --------------------------------------------
//  Creation factory
// --------------------------------------------
extension ViewController {
    static func create(_ id: String) -> ViewController {
        let storyboard = NSStoryboard(name: NSStoryboard.Name(rawValue: "Main"), bundle: nil)
        let identifier = NSStoryboard.SceneIdentifier(rawValue: id)
        guard let controller = storyboard.instantiateController(withIdentifier: identifier) as? ViewController else {
            fatalError("Where is ViewController? - Check Main.storyboard")
        }
        
        return controller
    }
}

