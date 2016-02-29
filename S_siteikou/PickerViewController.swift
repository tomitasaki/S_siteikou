//
//  ViewController.swift
//  UIKit011
//
import UIKit

class PickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var myUIPicker: UIPickerView = UIPickerView()
    var salarymanArr: NSArray = ["１年生","２年生","３年生"]
    var yakushokuArr: NSArray = ["１学期","２学期","３学期"]
    var kinmuchiArr: NSArray = ["中間","期末"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myUIPicker.frame = CGRectMake(0,0,self.view.bounds.width, 180.0)
        myUIPicker.delegate = self
        myUIPicker.dataSource = self
        self.view.addSubview(myUIPicker)
    }
    
    //表示列
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3
    }
    
    //表示個数
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if (component == 0){
            return salarymanArr.count
        }else if (component == 1){
            return yakushokuArr.count
        }else if (component == 2){
            return kinmuchiArr.count
        }
        return 0;
    }
    
    //表示内容
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String {
        
        if (component == 0){
            return salarymanArr[row] as! String
        }else if (component == 1){
            return yakushokuArr[row]as! String
        }else if (component == 2){
            return kinmuchiArr[row]as!  String
        }
        return "";
    }
    
    //選択時
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if (component == 0){
            print("列: \(row)")
            print("値: \(salarymanArr[row])")
        }else if (component == 1){
            print("列: \(row)")
            print("値: \(yakushokuArr[row])")
        }else if (component == 2){
            print("列: \(row)")
            print("値: \(kinmuchiArr[row])")
        }
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
