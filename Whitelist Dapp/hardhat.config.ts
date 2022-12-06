import "@nomicfoundation/hardhat-toolbox";
require("dotenv").config({ path: ".env" });

const QUICKNODE_HTTP_URL = "https://soft-sly-butterfly.ethereum-goerli.discover.quiknode.pro/bd0608523a13f7675b2cf420c4e62a10bdedd082/";
const PRIVATE_KEY = "489252bbdad52917f4d17211034fa5bd68bb4c69ca9b257db4884c35b1bf78e2";

module.exports = {
  solidity: "0.8.9",
  networks: {
    goerli: {
      url: QUICKNODE_HTTP_URL,
      accounts: [PRIVATE_KEY],
    },
  },
};
//0x2B006A0f580B4b87B4c09630114545277AdF847F