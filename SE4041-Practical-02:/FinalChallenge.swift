
// Name: W P R Senara
// Student ID: IT23177178
// Module: SE4041 - Mobile Application Design and Development
// Practical_02 - FinalChallenge.swift

import Foundation
import Playgrounds

func gradeForMark(_ mark: Int) -> String {
   switch mark {
   case 80...100:
       return "A"
   case 75..<80:
       return "A-"
   case 70..<75:
       return "B+"
   case 65..<70:
       return "B"
   case 60..<65:
       return "B-"
   case 55..<60:
       return "C+"
   case 45..<55:
       return "C"
   case 40..<45:
       return "C-"
   case 0..<40:
       return "F"
   default:
       return "Invalid"
   }
}

#Playground {
   // Part A - Store Student Marks
   let studentMarks: [String: Int] = [
       "Amal": 72,
       "Nimali": 45,
       "Ruwan": 68,
       "Sanduni": 90,
       "Kasun": 38
   ]

   // Part D - Passed Students
   var passedStudents: [String] = []

   // Part E - Unique Grades
   var gradesAwarded: Set<String> = []

   // Additional Challenge - Count Passes and Fails
   var passCount = 0
   var failCount = 0

   print("==================================")
   print("       STUDENT PERFORMANCE")
   print("==================================")

   // Parts B, C, D and E - Display and Process Grades
   for name in studentMarks.keys.sorted() {
       guard let mark = studentMarks[name] else {
           continue
       }

       let grade = gradeForMark(mark)

       print("\(name) - \(mark) - \(grade)")

       gradesAwarded.insert(grade)

       if mark >= 50 {
           passedStudents.append(name)
           passCount += 1
       } else {
           failCount += 1
       }
   }

   // Part D - Display Passed Students
   print("----------------------------------")
   print("Passed Students:")

   for name in passedStudents {
       print(name)
   }

   // Part E - Display Unique Grades
   print("----------------------------------")
   print("Grades Awarded:")

   for grade in gradesAwarded.sorted() {
       print(grade)
   }

   // Part F - Calculate Class Average
   print("----------------------------------")

   let values = Array(studentMarks.values)
   let total = values.reduce(0, +)

   let average = values.isEmpty
       ? 0.0
       : Double(total) / Double(values.count)

   print("Class Average:", average)

   // Part G - Highest and Lowest Marks
   print("Highest Mark:", values.max() ?? 0)
   print("Lowest Mark:", values.min() ?? 0)

   // Additional Challenge - Search for a Student
   let searchName = "Amal"

   if let searchedMark = studentMarks[searchName] {
       print("\(searchName)'s mark is \(searchedMark)")
   } else {
       print("Student not found")
   }

   // Additional Challenge - Display Pass and Fail Counts
   print("Passed:", passCount)
   print("Failed:", failCount)
}

