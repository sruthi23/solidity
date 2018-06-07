## What I did & doing

+ working on a Escrow contract 
```
 pragma solidity ^0.4.0;
 contract Adminsetup{  
 address admin = msg.sender;     
     modifier onlyAdmin{         
            require(msg.sender==admin);
            _;
      }    
    function newAdmin(address _newadmin) public
        onlyAdmin{
            admin = _newadmin;
    }
    
}

contract Arbitersetup is Adminsetup{
        address arbiter;
        function Arbitersetup(address _arbiter) public{
        if(msg.sender == admin){
            arbiter = _arbiter;
        }
     } 
}

    contract Escrow is Adminsetup,Arbitersetup{
    
    // address arbiter;
  
    address buyer;
    address seller;
    
    // address admin = msg.sender;
    
    bool sellerflag = false;
    bool buyerflag = false;
    function Escrow(address _seller,address _buyer) public {
              
        /*if(admin == msg.sender){
            
            arbiter = _arbiter;
        }*/
        
        seller = _seller;
        buyer = _buyer;
    } 
    
    /*  function adminSetup(address _newadmin) public {
        
        if(msg.sender == admin){
            admin = _newadmin;
        }
        
    }
    function arbiterSetup(address _arbiter) public {
        
        if(admin == msg.sender){
            
            arbiter = _arbiter;
        }
        
    }*/
    
    function payToArbiter(uint _amount) public {
        if(msg.sender == seller){
            arbiter.transfer(_amount);
            sellerflag = true;
            }   
    }
    function payToSeller(uint _amount,bool flag) public{
        if(sellerflag == true){
            if(msg.sender == buyer){
                seller.transfer(_amount);
            }       
        }
        
        if(flag==true){
            selfdestruct(seller);
        }
        
    }
    
  function confirm() public
  {
      if(msg.sender == buyer){ 
          
          buyerflag = true;
          payToSeller(0,buyerflag);
      }
  }
} 
 ```
+  references
1. https://en.wikipedia.org/wiki/Escrow
2. https://blog.localethereum.com/how-our-escrow-smart-contract-works/
3. https://gist.github.com/bitgord/abf55f9db4fa49333ae165768daef227
