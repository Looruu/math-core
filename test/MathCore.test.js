import { expect } from "chai";
import hardhat from "hardhat";

const { ethers } = hardhat;

describe("MathCore", function () {
  let mathCore;

  beforeEach(async function () {
    const MathCore = await ethers.getContractFactory("MathCore");
    mathCore = await MathCore.deploy();
    await mathCore.waitForDeployment();
  });

  describe("Operaciones básicas", function () {
    it("Debe sumar correctamente", async function () {
      const result = await mathCore.add(5, 7);
      expect(result).to.equal(12);
    });

    it("Debe restar correctamente", async function () {
      const result = await mathCore.sub(10, 3);
      expect(result).to.equal(7);
    });

    it("Debe fallar si la resta es negativa", async function () {
      await expect(mathCore.sub(3, 10)).to.be.revertedWith("MathLib: resta negativa");
    });

    it("Debe multiplicar correctamente", async function () {
      const result = await mathCore.mul(4, 6);
      expect(result).to.equal(24);
    });

    it("Debe dividir correctamente", async function () {
      const result = await mathCore.div(20, 5);
      expect(result).to.equal(4);
    });

    it("Debe fallar si se divide por cero", async function () {
      await expect(mathCore.div(10, 0)).to.be.revertedWith("MathLib: division por cero");
    });
  });

  describe("Potencias", function () {
    it("Debe calcular potencias correctamente", async function () {
      const result = await mathCore.pow(2, 5);
      expect(result).to.equal(32);
    });
  });
});
