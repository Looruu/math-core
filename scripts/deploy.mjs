import hardhat from "hardhat";
const { ethers } = hardhat;

async function main() {
  console.log("🚀 Iniciando despliegue...");

  // 1. Desplegar MathCore
  const MathCore = await ethers.getContractFactory("MathCore");
  const mathCore = await MathCore.deploy();
  await mathCore.waitForDeployment();

  const mathCoreAddress = await mathCore.getAddress();
  console.log(`📘 MathCore desplegado en: ${mathCoreAddress}`);

  // 2. Desplegar ComplexSystem usando MathCore
  const ComplexSystem = await ethers.getContractFactory("ComplexSystem");
  const complexSystem = await ComplexSystem.deploy(mathCoreAddress);
  await complexSystem.waitForDeployment();

  const complexSystemAddress = await complexSystem.getAddress();
  console.log(`📙 ComplexSystem desplegado en: ${complexSystemAddress}`);

  console.log("✨ Despliegue completado con éxito.");
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
