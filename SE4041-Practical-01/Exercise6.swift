import Playgrounds

#Playground {
    
    var middleName: String? = nil
    print(middleName as Any)
    
    var studentName: String? = "Kamal"
    print(studentName!)
    
    
    var studentName1: String? = nil
    
    if let name = studentName1{
        print("Student Name: \(name)")
    } else {
        print("Student name is not available")
    }
    
    var firstName: String? = "Kamal"
    var lastName: String? = nil
    
    if let first = firstName, let last = lastName {
    print("Full Name: \(first) \(last)")
    } else {
    print("Complete name is not available")
    }
    
    var nickname: String? = nil
    let displayName = nickname ?? "No Nickname"
    print(displayName)
    
    var nickname1: String? = "kama"
    let displayName1 = nickname1 ?? "No Nickname"
    print(displayName1)
    
    //Activity
    
    var firstName1: String? = "Kamal"
    var lastName1: String? = "Perera"
    var email: String? = nil
    
    // 1. Safely unwrap firstName and lastName & 2. Display the full name.
    
    if let first = firstName1, let last = lastName1 {
        print("Full name: \(first) \(last)")
    }else {
        print("Complete name is not available")
    }
    
    // 3. Display the email address.
    print("Email: \(email)")
    
    // 4. If no email exists, display:
    let displayemail = email ?? "No Email provided."
    print(displayemail)
}
