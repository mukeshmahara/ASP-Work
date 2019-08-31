public class Student{
    private string _firstName;
    private  string _lastName;
    
    

    public Student(string fname,string lname){
        _firstName =fname;
        _lastName= lname;

    }
    //Properties Getter/Setter

    public string FirstName{
        get{return _firstName;}
        set{_firstName = value;}
    }
    public string LastName{
        get{return _lastName;}
        set{_lastName = value;}
    }

    public string LastName1{get;set;}

    //Reaad only properties
    public string FullName{
        get{return $"{_firstName}  {_lastName}";}
    }
    // public string GetFullName()=> $"{_firstName}  {_lastName}"; 
}


