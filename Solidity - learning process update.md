what I did & doing :

> - Read solidity document, about sample smart contracts.
> - checked with Remix - browser solidity compiler
> - tried out sample contracts published in github

>>###### contract Greeter{
   address creator;
   string greeting;

   >>function Greeter(string _greeting)public{
       creator = msg.sender;
        greeting = _greeting;
    }
>> function greet()constant public returns(string)
{
        return greeting;
}

>>function setGreeting(string _newgreeting) public{
    greeting = _newgreeting;
}
function kill() public
{
    if(msg.sender==creator)
    selfdestruct(creator);
}

> - trying to understand the working of "Ballot" contract in the documentation
