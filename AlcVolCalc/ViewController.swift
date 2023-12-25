//
//  ViewController.swift
//  AlcVolCalc
//
//  Created by Vic on 14.11.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var initDensityField: UITextField!
    @IBOutlet var finDensityField: UITextField!
    
    @IBOutlet var getResultLabel: UILabel!
    
    @IBOutlet var getResultButton: UIButton!
    @IBOutlet var clearButton: UIButton!
    
    @IBOutlet var calcView: UIView!
    @IBOutlet var resultView: UILabel!
    
    private var initDensity: Double = 0.0
    private var finalDensity: Double = 0.0
    
    var initDensityValue = 0.0
    var finDensityValue = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultView.layer.cornerRadius = 90
        getResultButton.layer.cornerRadius = 10
        clearButton.layer.cornerRadius = 10
        
        calcView.layer.cornerRadius = 10
    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func getResultButton(_ sender: UIButton) {
        
        if let initDens = initDensityField.text {
            initDensity = Double(initDens) ?? 0.0
        }
        if let finDens = finDensityField.text {
            finalDensity = Double(finDens) ?? 0.0
        }
        
        switch initDensity {
                        case 0.50...0.99:
                            initDensityValue = 0.0
                        case 1.0...1.49:
                            initDensityValue = 0.25
                        case 1.5...1.99:
                            initDensityValue = 0.50
                        case 2.0...2.49:
                            initDensityValue = 0.75
                        case 2.50...2.99:
                            initDensityValue = 1.0
                        case 3.0...3.49:
                            initDensityValue = 1.25
                        case 3.5...3.99:
                            initDensityValue = 1.5
                        case 4.0...4.49:
                            initDensityValue = 1.75
                        case 4.5...4.99:
                            initDensityValue = 2.0
                        case 5.0...5.49:
                            initDensityValue = 2.25
                        case 5.50...5.99:
                            initDensityValue = 2.5
                        case 6.0...6.49:
                            initDensityValue = 2.75
                        case 6.5...6.99:
                            initDensityValue = 3.0
                        case 7.0...7.49:
                            initDensityValue = 3.25
                        case 7.5...7.99:
                            initDensityValue = 3.5
                        case 8.0...8.49:
                            initDensityValue = 3.75
                        case 8.50...8.99:
                            initDensityValue = 4.0
                        case 9.0...9.49:
                            initDensityValue = 4.25
                        case 9.5...9.87:
                            initDensityValue = 4.5
                        case 9.88...10.24:
                            initDensityValue = 4.75
                        case 10.25...10.74:
                            initDensityValue = 5.0
                        case 10.75...11.24:
                            initDensityValue = 5.25
                        case 11.25...11.74:
                            initDensityValue = 5.5
                        case 11.75...12.24:
                            initDensityValue = 5.75
                        case 12.25...12.74:
                            initDensityValue = 6.0
                        case 12.75...13.24:
                            initDensityValue = 6.25
                        case 13.25...13.37:
                            initDensityValue = 6.50
                        case 13.38...13.99:
                            initDensityValue = 6.75
                        case 14.0...14.49:
                            initDensityValue = 7.0
                        case 14.5...14.99:
                            initDensityValue = 7.25
                        case 15.0...15.37:
                            initDensityValue = 7.5
                        case 15.38...15.74:
                            initDensityValue = 7.75
                        case 15.75...16.24:
                            initDensityValue = 8.0
                        case 16.25...16.74:
                            initDensityValue = 8.25
                        case 16.75...17.24:
                            initDensityValue = 8.5
                        case 17.25...17.74:
                            initDensityValue = 8.75
                        case 17.75...18.49:
                            initDensityValue = 9.0
                        case 18.50...18.74:
                            initDensityValue = 9.25
                        case 18.75...19.12:
                            initDensityValue = 9.5
                        case 19.13...19.49:
                            initDensityValue = 9.75
                        case 19.5...19.99:
                            initDensityValue = 10.0
                        case 20.0...20.49:
                            initDensityValue = 10.25
                        case 20.5...20.99:
                            initDensityValue = 10.5
                        case 21.0...21.49:
                            initDensityValue = 10.75
                        case 21.5...21.99:
                            initDensityValue = 11.0
                        case 22.0...22.49:
                            initDensityValue = 11.25
                        case 22.5...23.12:
                            initDensityValue = 11.5
                        case 23.13...23.24:
                            initDensityValue = 11.75
                        case 23.25...23.74:
                            initDensityValue = 12.0
                        case 23.75...24.24:
                            initDensityValue = 12.25
                        case 24.25...24.49:
                            initDensityValue = 12.5
                        case 24.5...24.99:
                            initDensityValue = 12.75
                        case 25.0...25.49:
                            initDensityValue = 13.0
                        case 25.5...25.99:
                            initDensityValue = 13.25
                        case 26.0...26.49:
                            initDensityValue = 13.5
                        case 26.5...26.74:
                            initDensityValue = 13.75
                        case 26.75...27.24:
                            initDensityValue = 14.0
                        case 27.25...27.74:
                            initDensityValue = 14.25
                        case 27.75...28.19:
                            initDensityValue = 14.5
                        case 28.2...28.79:
                            initDensityValue = 14.75
                        default:
                            initDensityValue = 0
                        }
        
        switch finalDensity {
                        case 0.50...0.99:
                            finDensityValue = 0.0
                        case 1.0...1.49:
                            finDensityValue = 0.25
                        case 1.5...1.99:
                            finDensityValue = 0.50
                        case 2.0...2.49:
                            finDensityValue = 0.75
                        case 2.50...2.99:
                            finDensityValue = 1.0
                        case 3.0...3.49:
                            finDensityValue = 1.25
                        case 3.5...3.99:
                            finDensityValue = 1.5
                        case 4.0...4.49:
                            finDensityValue = 1.75
                        case 4.5...4.99:
                            finDensityValue = 2.0
                        case 5.0...5.49:
                            finDensityValue = 2.25
                        case 5.50...5.99:
                            finDensityValue = 2.5
                        case 6.0...6.49:
                            finDensityValue = 2.75
                        case 6.5...6.99:
                            finDensityValue = 3.0
                        case 7.0...7.49:
                            finDensityValue = 3.25
                        case 7.5...7.99:
                            finDensityValue = 3.5
                        case 8.0...8.49:
                            finDensityValue = 3.75
                        case 8.50...8.99:
                            finDensityValue = 4.0
                        case 9.0...9.49:
                            finDensityValue = 4.25
                        case 9.5...9.87:
                            finDensityValue = 4.5
                        case 9.88...10.24:
                            finDensityValue = 4.75
                        case 10.25...10.74:
                            finDensityValue = 5.0
                        case 10.75...11.24:
                            finDensityValue = 5.25
                        case 11.25...11.74:
                            finDensityValue = 5.5
                        case 11.75...12.24:
                            finDensityValue = 5.75
                        case 12.25...12.74:
                            finDensityValue = 6.0
                        case 12.75...13.24:
                            finDensityValue = 6.25
                        case 13.25...13.37:
                            finDensityValue = 6.50
                        case 13.38...13.99:
                            finDensityValue = 6.75
                        case 14.0...14.49:
                            finDensityValue = 7.0
                        case 14.5...14.99:
                            finDensityValue = 7.25
                        case 15.0...15.37:
                            finDensityValue = 7.5
                        case 15.38...15.74:
                            finDensityValue = 7.75
                        case 15.75...16.24:
                            finDensityValue = 8.0
                        case 16.25...16.74:
                            finDensityValue = 8.25
                        case 16.75...17.24:
                            finDensityValue = 8.5
                        case 17.25...17.74:
                            finDensityValue = 8.75
                        case 17.75...18.49:
                            finDensityValue = 9.0
                        case 18.50...18.74:
                            finDensityValue = 9.25
                        case 18.75...19.12:
                            finDensityValue = 9.5
                        case 19.13...19.49:
                            finDensityValue = 9.75
                        case 19.5...19.99:
                            finDensityValue = 10.0
                        case 20.0...20.49:
                            finDensityValue = 10.25
                        case 20.5...20.99:
                            finDensityValue = 10.5
                        case 21.0...21.49:
                            finDensityValue = 10.75
                        case 21.5...21.99:
                            finDensityValue = 11.0
                        case 22.0...22.49:
                            finDensityValue = 11.25
                        case 22.5...23.12:
                            finDensityValue = 11.5
                        case 23.13...23.24:
                            finDensityValue = 11.75
                        case 23.25...23.74:
                            finDensityValue = 12.0
                        case 23.75...24.24:
                            finDensityValue = 12.25
                        case 24.25...24.49:
                            finDensityValue = 12.5
                        case 24.5...24.99:
                            finDensityValue = 12.75
                        case 25.0...25.49:
                            finDensityValue = 13.0
                        case 25.5...25.99:
                            finDensityValue = 13.25
                        case 26.0...26.49:
                            finDensityValue = 13.5
                        case 26.5...26.74:
                            finDensityValue = 13.75
                        case 26.75...27.24:
                            finDensityValue = 14.0
                        case 27.25...27.74:
                            finDensityValue = 14.25
                        case 27.75...28.19:
                            finDensityValue = 14.5
                        case 28.2...28.79:
                            finDensityValue = 14.75
                        default:
                            finDensityValue = 0
                        }
        
        let finalResult = initDensityValue - finDensityValue
        getResultLabel.text = "Alcohol volume is \(finalResult)%"
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            return finDensityField.resignFirstResponder()
        }
    }
    
    @IBAction func clearButton(_ sender: UIButton) {
        initDensityField.text = ""
        finDensityField.text = ""
        getResultLabel.text = ""
    }
    
    
}
