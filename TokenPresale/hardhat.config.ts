import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";
import'@openzeppelin/hardhat-upgrades';
import "@nomicfoundation/hardhat-chai-matchers";
import "@nomiclabs/hardhat-etherscan";
import 'hardhat-deploy';


const config: HardhatUserConfig = {
  solidity: "0.8.17",
};

export default config;
