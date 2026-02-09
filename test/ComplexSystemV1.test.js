const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("ComplexSystemV1", function () {
    let mathCore, complexV1;

    beforeEach(async () => {
        const MathCore = await ethers.getContractFactory("MathCore");
        mathCore = await MathCore.deploy();

        const ComplexV1 = await ethers.getContractFactory("ComplexSystemV1");
        complexV1 = await ComplexV1.deploy(mathCore.target);
    });

    it("Debe calcular (x + y)^2 - (x * y)", async () => {
        const x = 5;
        const y = 3;

        const result = await complexV1.computeComplexFormula(x, y);

        // (5 + 3)^2 - (5 * 3) = 64 - 15 = 49
        expect(result).to.equal(49);
    });

    it("Debe calcular x^3 + y^3", async () => {
        const x = 2;
        const y = 3;

        const result = await complexV1.sumOfCubes(x, y);

        // 2^3 + 3^3 = 8 + 27 = 35
        expect(result).to.equal(35);
    });

    it("Debe calcular el promedio simple", async () => {
        const a = 10;
        const b = 20;

        const result = await complexV1.simpleAverage(a, b);

        expect(result).to.equal(15);
    });
});
