## what I did :  

+ checked out sample contracts (basic level)
+ tried out sample contracts in Remix IDE
+ tried out my own sample contracts, those are :

	 
	contract Transaction{
	                     address _sender;
	                     uint _amount;
	                     mapping (address => uint) balance;
		             function Transaction(){
				               _sender = msg.sender;
		                }    
			 function amountTransfer(address _receiver,uint _amount{
				                  if(_sender.balance >= _amount){
				                     balance[msg.sender]-= _amount;
				                     balance[_receiver]+=_amount;
				                    } else return;
			      }
		} 
			 
			 

                
         contract Membership{
				 address public person;
				  uint c=0;
				  address[10] member_list;    
				  function Membership(){
				             person = msg.sender;
				             member_list[c] = person;
				               c+=1;
	                           }
                                 function newMember(address _person) returns (uint){
                                        if(_person == msg.sender) return;
				           else{
						uint i =0;
					        while(c<=member_list.length){
							while(i<=c){
								if (member_list[i]!=_person){
									    c++;											                    member_list[c]=_person;
				 				    }
				         	         }
			                         }
			                }
                               }  
		 } 
					 

