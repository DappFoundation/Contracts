pragma solidity 0.7.0;

contract CarrotFight {
    uint internal yieldSize;
    bool internal harvest;
    uint256 public carrots;
    
    modifier rabitSpawnOccurs(){
        if (carrots >= 0) {
         _;
        }
    }
    
    //Grow Carrots: Yields carrots
    function GrowCarrots(uint _yieldSize) public {
        yieldSize = _yieldSize;
        carrots = carrots + _yieldSize * 5;
        harvest = true;
    }
    
    //Rabits eat carrots 
    function RabitAttack() public rabitSpawnOccurs {
        if(harvest == true){
            carrots = carrots - (yieldSize * 2);
            harvest = false;
        }else{
            carrots = carrots - (yieldSize / 2);
        }
    }
}
