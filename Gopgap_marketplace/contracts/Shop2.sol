pragma solidity >=0.5.0;        
contract Shop{                          // สร้าง contract ขื่อ shop โดยใช้ contract ขื่อ Token จาก

    struct user {                       // 
        string fullname;                // อิคคิว
        string tel;                     // 080-928-380
        string location;                // sakjfpfap[]
        uint durian;                    // 00
        uint coconut;                   // 00
        uint pomelo;                    // 00
        uint fruit1;                    // 00
        uint fruit2;                    // 00
        uint fruit3;                    // 00
        uint fruit4;                    // 00
    }

    struct balance {                       
        uint amount;                  
    }

    mapping (address => balance) balanceMap;
    mapping (address => user) userMap;
    uint[] stock = [100,200,300,100,100,100,100]; // เก็บว่ามีผลไม้ในสต๊อกเท่าไร
    address owner = 0xD1FAaF20F63c679bB5A481bEb5352B0f1746FEC1;
    
    
    function setbalance(address _wallet,uint _value) public {
        balanceMap[_wallet].amount = _value;                
    }

    function getBalance() public view returns (uint){
        uint256 userbalance = balanceMap[msg.sender].amount;
        return (userbalance);   
    }

    function buyDurian(address _wallet,string memory _fullname,string memory _tel,string memory _location) public {
        balanceMap[_wallet].amount -= 30;
        balanceMap[owner].amount += 30;
        userMap[_wallet].fullname = _fullname;
        userMap[_wallet].tel = _tel;
        userMap[_wallet].location = _location;
        userMap[_wallet].durian += 1;
        stock[0] -= 1;
    }

    function buyCoconut(address _wallet,string memory _fullname,string memory _tel,string memory _location) public {
        balanceMap[_wallet].amount -= 1;
        balanceMap[owner].amount += 1;
        userMap[_wallet].fullname = _fullname;
        userMap[_wallet].tel = _tel;
        userMap[_wallet].location = _location;
        userMap[_wallet].coconut += 1;
        stock[1] -= 1;
    }

    function buypomelo(address _wallet,string memory _fullname,string memory _tel,string memory _location) public {
        balanceMap[_wallet].amount -= 2;
        balanceMap[owner].amount += 2;
        userMap[_wallet].fullname = _fullname;
        userMap[_wallet].tel = _tel;
        userMap[_wallet].location = _location;
        userMap[_wallet].pomelo += 1;
        stock[2] -= 1;
    }
    
    function buyfruit1(address _wallet,string memory _fullname,string memory _tel,string memory _location) public {
        balanceMap[_wallet].amount -= 2;
        balanceMap[owner].amount += 2;
        userMap[_wallet].fullname = _fullname;
        userMap[_wallet].tel = _tel;
        userMap[_wallet].location = _location;
        userMap[_wallet].fruit1 += 1;
        stock[3] -= 1;
    }
    
    function buyfruit2(address _wallet,string memory _fullname,string memory _tel,string memory _location) public {
        balanceMap[_wallet].amount -= 2;
        balanceMap[owner].amount += 2;
        userMap[_wallet].fullname = _fullname;
        userMap[_wallet].tel = _tel;
        userMap[_wallet].location = _location;
        userMap[_wallet].fruit2 += 1;
        stock[4] -= 1;
    }
    
    function buyfruit3(address _wallet,string memory _fullname,string memory _tel,string memory _location) public {
        balanceMap[_wallet].amount -= 2;
        balanceMap[owner].amount += 2;
        userMap[_wallet].fullname = _fullname;
        userMap[_wallet].tel = _tel;
        userMap[_wallet].location = _location;
        userMap[_wallet].fruit3 += 1;
        stock[5] -= 1;
    }
    
    function buyfruit4(address _wallet,string memory _fullname,string memory _tel,string memory _location) public {
        balanceMap[_wallet].amount -= 2;
        balanceMap[owner].amount += 2;
        userMap[_wallet].fullname = _fullname;
        userMap[_wallet].tel = _tel;
        userMap[_wallet].location = _location;
        userMap[_wallet].fruit4 += 1;
        stock[6] -= 1;
    }

    function setuserzero(address _wallet) public {
        userMap[_wallet].durian = 0;
        userMap[_wallet].coconut = 0;
        userMap[_wallet].pomelo = 0;
        userMap[_wallet].fruit1 = 0;
        userMap[_wallet].fruit2 = 0;
        userMap[_wallet].fruit3 = 0;
        userMap[_wallet].fruit4 = 0;
    }

    function getdurianstock() public view returns (uint){            
        uint durianstock = stock[0];
        return (durianstock);                                                              
    }

    function getcoconutstock() public view returns (uint){            
        uint coconutstock = stock[1];
        return (coconutstock);                                                              
    }

    function getpomelostock() public view returns (uint){            
        uint pomelostock = stock[2];
        return (pomelostock);                                                              
    }
    
    function getpomelostock() public view returns (uint){            
        uint fruit1 = stock[3];
        return (fruit1);                                                              
    }
    
    function getpomelostock() public view returns (uint){            
        uint fruit2 = stock[4];
        return (fruit2);                                                              
    }
    
    function getpomelostock() public view returns (uint){            
        uint fruit3 = stock[5];
        return (fruit3);                                                              
    }
    
    function getpomelostock() public view returns (uint){            
        uint fruit4 = stock[6];
        return (fruit4);                                                              
    }

    function setstock(uint _dstock,uint _cstock,uint _pstock,,uint _1stock,,uint _2stock,,uint _3stock,,uint _4stock) public  {
        stock[0] += _dstock;
        stock[1] += _cstock;
        stock[2] += _pstock;
        stock[3] += _pstock;
        stock[4] += _pstock;
        stock[5] += _pstock;
        stock[6] += _pstock;
    }
    
    
}
