//
//  ViewController.swift
//  ReproducerApp
//

import UIKit

class ViewController: UIViewController {

  var reactViewController: ReactViewController?

  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = .systemBackground

    let button = UIButton()
    button.setTitle("Open React Native", for: .normal)
    button.setTitleColor(.systemBlue, for: .normal)
    button.setTitleColor(.blue, for: .highlighted)
    button.addAction(UIAction { [weak self] _ in
      if self?.reactViewController == nil {
        self?.reactViewController = ReactViewController()
      }
      if let reactViewController = self?.reactViewController {
        self?.present(reactViewController, animated: true)
      }
    }, for: .touchUpInside)

    button.translatesAutoresizingMaskIntoConstraints = false
    self.view.addSubview(button)
    NSLayoutConstraint.activate([
      button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
      button.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
      button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
      button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
    ])
  }
}
