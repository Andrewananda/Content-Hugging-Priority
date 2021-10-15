//
//  ViewController.swift
//  Content Hugging Priority
//
//  Created by Andrew Ananda on 15/10/2021.
//

import UIKit

class ViewController: UIViewController {
    
    private let label1 : UILabel = {
        let label = UILabel()
        label.text = "Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello v Hello Hello"
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 50)
        label.backgroundColor = .systemGreen
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let label2 : UILabel = {
        let label = UILabel()
        label.text = "World"
        label.numberOfLines = 0
        label.backgroundColor = .systemPink
        label.font = .systemFont(ofSize: 50)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(label1)
        view.addSubview(label2)
        
        NSLayoutConstraint.activate([
            label1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            label1.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            label1.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            label1.bottomAnchor.constraint(equalTo: label2.topAnchor),
            
            label2.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            label2.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            label2.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
             
        ])
        
        label1.setContentHuggingPriority(.defaultLow, for: .vertical)
        label2.setContentHuggingPriority(.defaultHigh, for: .vertical)
    }


}

