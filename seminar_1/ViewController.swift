//
//  ViewController.swift
//  seminar_1
//
//  Created by seif on 2023-09-08.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(normalizeGrades())
        // Do any additional setup after loading the view.
    }

    func normalizeGrades() -> [String:Double]{
        ios.students = [
            Student(grades: [3.51,10,9], fullName: "aaa"),
            Student(grades: [7,8,7.5], fullName: "bbb")
        ]
        var normGrades: Dictionary<String, Double> = [:]
        let maxAverage = ios.getMaxAverage()
        for student in ios.students{
            normGrades[student.fullName] = (student.getGrade() / maxAverage) * 10
        }
        return normGrades
    }

}
