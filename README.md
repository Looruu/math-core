# ComplexSystem - Sistema Modular Basado en Solidity

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## 🔹 Descripción

**ComplexSystem** es un **contrato inteligente modular** escrito en Solidity, diseñado para demostrar una arquitectura componible y escalable.  

Este sistema utiliza **MathCore** como motor matemático central, permitiendo realizar operaciones complejas de forma segura y reutilizable.  

El contrato está pensado como un ejemplo de **diseño modular**, ideal para desarrolladores que quieran construir sistemas inteligentes escalables y fáciles de mantener.

---

## 🔹 Arquitectura


- **ComplexSystem**: Contrato principal que expone la funcionalidad compleja y depende de MathCore.  
- **MathCore**: Librería de funciones matemáticas reutilizables (suma, resta, multiplicación, potencia, etc.).  

Esta separación permite **modularidad**, **reutilización de código** y **actualizaciones independientes** de cada módulo.

---

## 🔹 Funcionalidades Principales

### computeComplexFormula

```solidity
function computeComplexFormula(uint256 x, uint256 y) external returns (uint256)
```
Calcula la fórmula arbitraria: ```(x + y)^2 - (x * y)```




