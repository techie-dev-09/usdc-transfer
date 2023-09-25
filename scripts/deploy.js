const hre = require("hardhat");

async function main() {
  console.log("deploying...");
  const USDCInteraction = await hre.ethers.getContractFactory(
    "USDCInteraction"
  );
  const usdcInteraction = await USDCInteraction.deploy();

  await usdcInteraction.deployed();

  console.log("USDC Interaction contract deployed: ", usdcInteraction.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
