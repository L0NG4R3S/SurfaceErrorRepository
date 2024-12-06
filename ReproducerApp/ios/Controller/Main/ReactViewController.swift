//
//  ReactViewController.swift
//  ReproducerApp
//

import UIKit
import React_RCTAppDelegate

class ReactViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()

    guard let bridge = (RCTSharedApplication()?.delegate as? RCTAppDelegate)?.bridge else {
        print("Bridge não foi inicializada ainda.")
        return
    }

    if let viewFactory = (RCTSharedApplication()?.delegate as? RCTAppDelegate)?.rootViewFactory {
        let initialProperties: [String: Any] = [
            "userId": 123,
            "userName": "User Teste"
        ]

        self.view = viewFactory.view(withModuleName: "HelloWorld", initialProperties: initialProperties)
    } else {
        print("Factory não foi configurada corretamente.")
    }
  }
}
