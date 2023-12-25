//
//  CalcViewController.swift
//  ABV
//
//  Created by Vic on 21.12.2023.
//

import UIKit

final class CalcViewController: UIViewController {
    
    private let abvValue = ""
    
    
    // MARK: - Segmented Control
    @IBOutlet var segmentControl: UISegmentedControl!
    
    // MARK: - Stack Views
    @IBOutlet var gravityStackView: UIStackView!
    @IBOutlet var sugarStackView: UIStackView!
    
    // MARK: - Gravity text fields
    @IBOutlet var originalGravityTextField: UITextField!
    @IBOutlet var finalGravityTextField: UITextField!
    @IBOutlet var gravityResulatTextField: UITextField!
    
    // MARK: - Sugar text fields
    @IBOutlet var initialSugarTextField: UITextField!
    @IBOutlet var finalSugarTextField: UITextField!
    @IBOutlet var sugarResultTextField: UITextField!
    
    // MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    // MARK: - Actions
    @IBAction func segmentControlAction(_ sender: UISegmentedControl) {
        if segmentControl.selectedSegmentIndex == 0 {
            // hide sugar
            // show gravity
            updateUI()
        } else {
            // hide gravity
            // show sugar
            updateUI()
        }
    }
    
    @IBAction func calculationButton(_ sender: UIButton) {
        if segmentControl.selectedSegmentIndex == 0 {
            if let og = originalGravityTextField.text {
                gravityResulatTextField.text = og
            }
        }
    }
    
    
    @IBAction func clearButtonAction(_ sender: UIButton) {
        if segmentControl.selectedSegmentIndex == 0 {
            originalGravityTextField.text = ""
            finalGravityTextField.text = ""
            gravityResulatTextField.text = ""
        } else {
            initialSugarTextField.text = ""
            finalSugarTextField.text = ""
            sugarResultTextField.text = ""
        }
    }
    
}


private extension CalcViewController {

    func setUI() {
        sugarStackView.isHidden = true
        gravityStackView.isHidden = false
        gravityResulatTextField.isEnabled = false
        sugarResultTextField.isEnabled = false
    }

    func updateUI() {
        sugarStackView.isHidden.toggle()
        gravityStackView.isHidden.toggle()
    }
}
