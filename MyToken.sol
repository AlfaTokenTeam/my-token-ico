pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract MyToken is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function MyToken(address _owner)  UpgradeableToken(_owner) {
    name = "MyToken";
    symbol = "MTK";
    totalSupply = 100000000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}