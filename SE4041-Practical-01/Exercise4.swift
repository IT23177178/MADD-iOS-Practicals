import Playgrounds

#Playground {
    
    let mark = 72
    
    print(mark == 72)
    print(mark != 72)
    print(mark > 50)
    print(mark < 50)
    print(mark >= 50)
    print(mark <= 100)
    
    let mark1 = 68
    let submittedAssignment = true
    
    let passed = mark >= 50 && submittedAssignment
    
    print(passed)
    
    let hasStudentID = false
    let hasTemporaryPass = true
    
    let canEnter = hasStudentID || hasTemporaryPass
    
    print (canEnter)
    
    let isAbsent = false
    
    print (!isAbsent)
    
    //Activity
    
    let examMark = 60
    let attendance = 85
    
    let eligible = examMark >= 50 && attendance >= 80
    
    print (eligible)
    
}
