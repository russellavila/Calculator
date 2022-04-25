//
//  CalculatorViewController.swift
//  RussellAvila_Calculator
//
//  Created by Consultant on 4/23/22.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var calcText: UILabel!
    
    @IBOutlet weak var ACButton: UIButton!
    @IBOutlet weak var plusminusButton: UIButton!
    @IBOutlet weak var percentButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var deciButton: UIButton!
    @IBOutlet weak var equalButton: UIButton!
    
    var operators = [Character]()
    var numbers = [Double]()
    var answer : Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        calcText.layer.borderWidth = 3.0
        calcText.layer.borderColor = UIColor.red.cgColor
        
        ACButton.addTarget(self, action: #selector(ACAction(_:)), for: .touchUpInside)
        plusminusButton.addTarget(self, action: #selector(plusminusAction(_:)), for: .touchUpInside)
        percentButton.addTarget(self, action: #selector(percentAction(_:)), for: .touchUpInside)
        divideButton.addTarget(self, action: #selector(divideAction(_:)), for: .touchUpInside)
        sevenButton.addTarget(self, action: #selector(sevenAction(_:)), for: .touchUpInside)
        eightButton.addTarget(self, action: #selector(eightAction(_:)), for: .touchUpInside)
        nineButton.addTarget(self, action: #selector(nineAction(_:)), for: .touchUpInside)
        multiplyButton.addTarget(self, action: #selector(multiplyAction(_:)), for: .touchUpInside)
        fourButton.addTarget(self, action: #selector(fourAction(_:)), for: .touchUpInside)
        fiveButton.addTarget(self, action: #selector(fiveAction(_:)), for: .touchUpInside)
        sixButton.addTarget(self, action: #selector(sixAction(_:)), for: .touchUpInside)
        minusButton.addTarget(self, action: #selector(minusAction(_:)), for: .touchUpInside)
        oneButton.addTarget(self, action: #selector(oneAction(_:)), for: .touchUpInside)
        twoButton.addTarget(self, action: #selector(twoAction(_:)), for: .touchUpInside)
        threeButton.addTarget(self, action: #selector(threeAction(_:)), for: .touchUpInside)
        plusButton.addTarget(self, action: #selector(plusAction(_:)), for: .touchUpInside)
        zeroButton.addTarget(self, action: #selector(zeroAction(_:)), for: .touchUpInside)
        deciButton.addTarget(self, action: #selector(deciAction(_:)), for: .touchUpInside)
        equalButton.addTarget(self, action: #selector(equalAction(_:)), for: .touchUpInside)
    }
    
    @objc func ACAction(_ sender:UIButton!)
        {
            calcText.text = "0"
        }
    
    @objc func plusminusAction(_ sender:UIButton!)
        {
            var isReversed = 0
            
            if (calcText.text == "0"){
            calcText.text = "0"
            }
            
            if (calcText.text?.first == "-" && isReversed == 0){
            calcText.text?.removeFirst()
            isReversed = 1
            }
            
            if (calcText.text != "0" && isReversed == 0){
            calcText.text = "-" + calcText.text!
            isReversed = 1
            }
            
        }
    
    @objc func percentAction(_ sender:UIButton!)
        {
            var percentage : Double? = Double(calcText.text!)
            percentage = (percentage ?? 0) / 100
            //calcText.text = String(Double(percentage ?? 0))
            
            //if is a double, return a double, else return an int
            if (floor(percentage ?? 0) == percentage){
                calcText.text = String(Int(percentage ?? 0))
            }
            
            if (floor(percentage ?? 0) != percentage){
                calcText.text = String(Double(percentage ?? 0))
            }
        }
    
    @objc func divideAction(_ sender:UIButton!)
        {
            numbers.append(Double(calcText.text ?? "0") ?? 0)
            operators.append("/")
            calcText.text = "0"
        }
    
    @objc func sevenAction(_ sender:UIButton!)
        {
            if (calcText.text != "0"){
                calcText.text? += "7"
            }
            
            if (calcText.text == "0" || answer != 0){
            calcText.text = "7"
            answer = 0
            }
        }
    
    @objc func eightAction(_ sender:UIButton!)
        {
            if (calcText.text != "0"){
                calcText.text? += "8"
            }
            
            if (calcText.text == "0" || answer != 0){
            calcText.text = "8"
            answer = 0
            }
        }
    
    @objc func nineAction(_ sender:UIButton!)
        {
            if (calcText.text != "0"){
                calcText.text? += "9"
            }
            
            if (calcText.text == "0" || answer != 0){
            calcText.text = "9"
            answer = 0
            }
        }
    
    @objc func multiplyAction(_ sender:UIButton!)
        {
            numbers.append(Double(calcText.text ?? "0") ?? 0)
            operators.append("x")
            calcText.text = "0"
        }
    
    @objc func fourAction(_ sender:UIButton!)
        {
            if (calcText.text != "0"){
                calcText.text? += "4"
            }
            
            if (calcText.text == "0" || answer != 0){
            calcText.text = "4"
            answer = 0
            }
        }
    
    @objc func fiveAction(_ sender:UIButton!)
        {
            if (calcText.text != "0"){
                calcText.text? += "5"
            }
            
            if (calcText.text == "0" || answer != 0){
            calcText.text = "5"
            answer = 0
            }
        }
    
    @objc func sixAction(_ sender:UIButton!)
        {
            if (calcText.text != "0"){
                calcText.text? += "6"
            }
            
            if (calcText.text == "0" || answer != 0){
            calcText.text = "6"
            answer = 0
            }
        }
    
    @objc func minusAction(_ sender:UIButton!)
        {
            numbers.append(Double(calcText.text ?? "0") ?? 0)
            operators.append("-")
            calcText.text = "0"
        }
    
    @objc func oneAction(_ sender:UIButton!)
        {
            if (calcText.text != "0"){
                calcText.text? += "1"
            }
            
            if (calcText.text == "0" || answer != 0){
            calcText.text = "1"
            answer = 0
            }
        }
    
    @objc func twoAction(_ sender:UIButton!)
        {
            if (calcText.text != "0"){
                calcText.text? += "2"
            }
            
            if (calcText.text == "0" || answer != 0){
            calcText.text = "2"
            answer = 0
            }
        }
    
    @objc func threeAction(_ sender:UIButton!)
        {
            if (calcText.text != "0"){
                calcText.text? += "3"
            }
            
            if (calcText.text == "0" || answer != 0){
            calcText.text = "3"
            answer = 0
            }
        }
    
    @objc func plusAction(_ sender:UIButton!)
        {
            numbers.append(Double(calcText.text ?? "0") ?? 0)
            operators.append("+")
            calcText.text = "0"
        }
    
    @objc func zeroAction(_ sender:UIButton!)
        {
            if (calcText.text != "0"){
                calcText.text? += "0"
            }
            
            if (calcText.text == "0" || answer != 0){
            calcText.text = "0"
            answer = 0
            }
        }
    
    @objc func deciAction(_ sender:UIButton!)
        {
            if (calcText.text == "0" || answer != 0){
            calcText.text = "0."
            answer = 0
            }
            
            if ((calcText.text?.contains("."))) != true{
            calcText.text = calcText.text! + "."
            }
        }
    
    @objc func equalAction(_ sender:UIButton!)
        {
            var index = 0
            
            numbers.append(Double(calcText.text ?? "0") ?? 0)
            
            for _ in numbers{
                var x : Double = 0
                var y : Double = 0
                
                x = numbers[index]
                
                if (index > 0){
                    x = answer
                }
                
                if (index < numbers.count - 1){
                y = numbers[index+1]
                    
                    if operators[index] == "+"{
                        answer = x + y
                    }
                    
                    if operators[index] == "-"{
                        answer = x - y
                    }
                    
                    if operators[index] == "x"{
                        answer = x * y
                    }
                    
                    if operators[index] == "/"{
                        answer = x / y
                    }
                }
                
                index += 1
            }
            
            //if is a double, return a double, else return an int
            if (floor(answer) == answer){
                calcText.text = String(Int(answer))
            }
            
            if (floor(answer) != answer){
                calcText.text = String(Double(answer))
            }
            
            //reset arrays
            numbers.removeAll()
            operators.removeAll()
        }
}
