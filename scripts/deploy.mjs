const { ethers } = require("hardhat");

async function main() {
    console.log("🚀 Deploying MathCore...");

    // Deploy MathCore
    const MathCore = await ethers.getContractFactory("MathCore");
    const mathCore = await MathCore.deploy();
    await mathCore.waitForDeployment();

    console.log("📌 MathCore deployed at:", mathCore.target);

    // Deploy ComplexSystemV1
    console.log("🚀 Deploying ComplexSystemV1...");
    const ComplexV1 = await ethers.getContractFactory("ComplexSystemV1");
    const complexV1 = await ComplexV1.deploy(mathCore.target);
    await complexV1.waitForDeployment();

    console.log("📌 ComplexSystemV1 deployed at:", complexV1.target);

    // Deploy ComplexSystemV2
    console.log("🚀 Deploying ComplexSystemV2...");
    const ComplexV2 = await ethers.getContractFactory("ComplexSystemV2");
    const complexV2 = await ComplexV2.deploy(mathCore.target);
    await complexV2.waitForDeployment();

    console.log("📌 ComplexSystemV2 deployed at:", complexV2.target);

    console.log("\n🎉 Deploy completo!");
    console.log("----------------------------------------");
    console.log("MathCore:        ", mathCore.target);
    console.log("ComplexSystemV1: ", complexV1.target);
    console.log("ComplexSystemV2: ", complexV2.target);
    console.log("----------------------------------------");
}

// Manejo de errores
main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});
