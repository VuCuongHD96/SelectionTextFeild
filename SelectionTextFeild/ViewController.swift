//
//  ViewController.swift
//  SelectionTextFeild
//
//  Created by Work on 11/05/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var selectionView: UIView!
    @IBOutlet private weak var selectedView: UIView!
    @IBOutlet private weak var childLabel: UILabel!
    @IBOutlet private weak var selectedStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture1 = UITapGestureRecognizer(target: self, action: #selector(selectionViewAction))
        selectionView.addGestureRecognizer(tapGesture1)

        
        let tapGesture2 = UITapGestureRecognizer(target: self, action: #selector(childLabelAction))
        selectedView.addGestureRecognizer(tapGesture2)
        
        setupSelectedView()
    }
    
    private func setupSelectedView() {
        selectedStackView.layer.borderColor = UIColor.lightGray.cgColor
        selectedStackView.layer.borderWidth = 1
        selectedStackView.layer.cornerRadius = 5
    }

    @objc private func selectionViewAction() {
        print("--- debug --- selectedView 2 ")
    }

    @objc private func childLabelAction() {
        print("--- debug --- childLabelAction 1 ")
    }
    
    @IBAction func bookAction(_ sender: Any) {
        print("--- debug --- bookAction 3 ")
    }
}
