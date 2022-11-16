pragma solidity >=0.5.0 <=0.9.0;
    
contract student {
    struct studData{
        uint rollno;
        string f_name;
        string l_name;
        uint marks;
    }
    //studData[] xyz;
    mapping(uint => studData) link;
    studData newstudent;
    function addStudent(uint _rollno, string memory _f_name, string memory _l_name, uint _marks) public payable {
        newstudent.rollno = _rollno;
        newstudent.f_name = _f_name;
        newstudent.l_name = _l_name;
        newstudent.marks = _marks;
        link[newstudent.rollno] = newstudent;
        //xyz[newstudent.rollno] = newstudent;
    }

    function showStudent(uint _rollno) public view returns(studData memory){
        return link[_rollno];
        //return xyz[_rollno];
    }
}
