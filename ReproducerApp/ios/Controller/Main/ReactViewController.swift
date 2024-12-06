//
//  ReactViewController.swift
//  ReproducerApp
//

import UIKit
import React_RCTAppDelegate

class ReactViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()

    if let viewFactory = (RCTSharedApplication()?.delegate as? RCTAppDelegate)?.rootViewFactory {
        let initialProperties: [String: Any] = [
            "userId": 123,
            "userName": "User Teste"
        ]

        self.view = viewFactory.view(withModuleName: "ReproducerApp", initialProperties: initialProperties)
    } else {
        print("Factory não foi configurada corretamente.")
    }
  }
}
