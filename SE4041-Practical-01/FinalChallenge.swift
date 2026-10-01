import Playgrounds

#Playground {
    
    // PART A
    
    let studentName: String = "Risini"
    let studentID: String = "IT23177178"
    let moduleCode: String = "SE4041"
    let assignmentMark: Double = 75.0
    let examMark: Double = 68.0
    var email: String?
    
    // PART B
    
    let finalMark = assignmentMark * 0.40 + examMark * 0.60
    
    // PART C
    
    let passed = finalMark >= 50
    
    // PART D
    
    // Test 01
    email = "ris@gmail.com"
    
    print("===============================")
    print(" STUDENT RESULT ")
    print("===============================")
    print("Student Name: \(studentName)")
    print("Student ID: \(studentID)")
    print("Module: \(moduleCode)")
    print(" ")
    print("Assignment Mark: \(assignmentMark)")
    print("Exam Mark: \(examMark)")
    print("Final Mark: \(finalMark)")
    print(" ")
    print("Passed: \(passed)")
    print(" ")
    
    if let email = email {
        print("Email: \(email)")
    } else {
        print("Email: Not Provided")
    }
    
    // Test 02
    email = nil
    
    let displayEmail = email ?? "Not Provided"
    
    print("===============================")
    print(" STUDENT RESULT ")
    print("===============================")
    print("Student Name: \(studentName)")
    print("Student ID: \(studentID)")
    print("Module: \(moduleCode)")
    print(" ")
    print("Assignment Mark: \(assignmentMark)")
    print("Exam Mark: \(examMark)")
    print("Final Mark: \(finalMark)")
    print(" ")
    print("Passed: \(passed)")
    print(" ")
    print("Email: \(displayEmail)")
}
