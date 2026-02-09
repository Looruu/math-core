const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("ComplexSystemV2", function () {
    let mathCore, complexV2;

    beforeEach(async () => {
        const MathCore = await ethers.getContractFactory("MathCore");
        mathCore = await MathCore.deploy();

        const ComplexV2 = await ethers.getContractFactory("ComplexSystemV2");
        complexV2 = await ComplexV2.deploy(mathCore.target);
    });

    it("Debe calcular interés compuesto", async () => {
        const principal = ethers.parseEther("1000"); // 1000 * 1e18
        const rate = ethers.parseEther("0.05");      // 5%
        const periods = 2;

        const result = await complexV2.compoundInterest(principal, rate, periods);

        // Fórmula aproximada: 1000 * (1.05)^2 = 1102.5
        expect(Number(ethers.formatEther(result))).to.be.closeTo(1102.5, 0.01);
    });

    it("Debe calcular la métrica de riesgo", async () => {
        const variance = 16; // sqrt(16) = 4
        const exposure = 10;

        const result = await complexV2.riskMetric(variance, exposure);

        expect(result).to.equal(40);
    });

    it("Debe calcular precio ajustado por liquidez", async () => {
        const basePrice = ethers.parseEther("2"); // 2 * 1e18
        const liquidity = 25; // sqrt(25) = 5

        const result = await complexV2.liquidityAdjustedPrice(basePrice, liquidity);

        // 2 * 5 = 10
        expect(Number(ethers.formatEther(result))).to.equal(10);
    });

    it("Debe calcular combinaciones nCr", async () => {
        const result = await complexV2.portfolioCombinations(5, 2);

        // 5C2 = 10
        expect(result).to.equal(10);
    });

    it("Debe calcular promedio seguro", async () => {
        const result = await complexV2.safeAveragePrice(10, 20);

        expect(result).to.equal(15);
    });
});
