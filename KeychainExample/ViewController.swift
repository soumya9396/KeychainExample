//
//  ViewController.swift
//  KeychainExample
//
//  Created by Soumitra Bera on 01/05/22.
//

import UIKit
import KeychainSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setValueToKeychain()
        getValueFromKeychain()
    }
    private func setValueToKeychain() {
        let keychain = KeychainSwift()
        keychain.set("Hello", forKey: "Title")
    }
    private func getValueFromKeychain() {
        let keychain = KeychainSwift()
        print(keychain.allKeys)
        print(keychain.get("Title") as Any)
    }

}

