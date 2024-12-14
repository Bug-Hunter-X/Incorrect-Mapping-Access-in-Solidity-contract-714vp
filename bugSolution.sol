```solidity
function transfer(address to, uint amount) public {
  require(balanceOf[msg.sender] >= amount, "Insufficient balance");
  balanceOf[msg.sender] -= amount;
  balanceOf[to] += amount;
  emit Transfer(msg.sender, to, amount);
}

function balanceOf(address account) public view returns (uint) {
  return balanceOf_[account]; // Correct access to mapping
}

mapping(address => uint) internal balanceOf_;
event Transfer(address indexed from, address indexed to, uint amount);
```