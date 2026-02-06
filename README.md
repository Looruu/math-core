Math Core Portfolio
Sistema Modular Matemático en Solidity
https://img.shields.io/badge/Solidity-0.8.24-blue https://img.shields.io/badge/Hardhat-Framework-yellow https://img.shields.io/badge/Version-v1.0-green https://img.shields.io/badge/License-MIT-brightgreen
📌 Descripción
Math Core Portfolio es un sistema matemático modular desarrollado en Solidity. Su objetivo es construir una base sólida para cálculos matemáticos dentro del ecosistema Web3, demostrando:
Arquitectura limpia y escalable
Uso de librerías matemáticas puras
Integración entre módulos
Buenas prácticas de desarrollo
Testing profesional con Hardhat
Esta es la versión 1 (v1) de un proyecto que evolucionará hacia modelos matemáticos avanzados, probabilidad, estadística y análisis cuantitativo.
🎯 Motivación del Proyecto
La motivación principal es el aprendizaje profundo y la construcción de bases sólidas para el ecosistema descentralizado que está naciendo.
Este proyecto nace con tres objetivos claros:
Comprender matemáticas fundamentales aplicadas a contratos inteligentes
Preparar una arquitectura modular que pueda crecer en complejidad
Sentar las bases para futuros modelos cuantitativos, probabilísticos y estadísticos
Esta calculadora modular es solo el primer paso de un camino que incluye álgebra avanzada, probabilidad, estadística y modelos cuantitativos aplicados a Web3.
🧱 Arquitectura del Proyecto
Código
math-core-portfolio/
├── contracts/
│ ├── MathLib.sol
│ ├── MathCore.sol
│ └── ComplexSystem.sol
├── scripts/
│ └── deploy.mjs
├── test/
│ ├── MathCore.test.js
│ └── ComplexSystem.test.js
├── hardhat.config.mjs
└── README.md
📚 Contratos
🔹 MathLib.sol
Librería matemática pura con operaciones seguras:
Suma
Resta
Multiplicación
División
Potencias
🔹 MathCore.sol
Motor matemático que expone funciones puras basadas en MathLib.
🔹 ComplexSystem.sol
Ejemplo de arquitectura componible que implementa la fórmula:
Código
(x + y)^2 - (x * y)
🧪 Tests incluidos
Validación matemática
Casos límite
Integración entre módulos
Fórmulas complejas
Comportamiento determinista
🚀 Instalación
bash
git clone https://github.com/tuusuario/math-core-portfolio
cd math-core-portfolio
npm install
🧪 Ejecutar Tests
bash
npx hardhat test
🚀 Despliegue en red local
Inicia un nodo local:
bash
npx hardhat node
En otra terminal:
bash
npx hardhat run scripts/deploy.mjs --network localhost
🛣️ Roadmap (v1 → v5)
v1 — Fundamentos matemáticos (actual)
Librería matemática pura (MathLib)
Motor matemático (MathCore)
Sistema compuesto (ComplexSystem)
Tests unitarios y arquitectura modular
v2 — Álgebra avanzada
Matrices
Vectores
Determinantes
Operaciones lineales
v3 — Probabilidad
Distribuciones básicas
Variables aleatorias
Funciones de densidad
Generadores pseudoaleatorios on-chain
v4 — Estadística
Media, varianza, desviación estándar
Correlaciones
Regresiones simples
Series temporales básicas
v5 — Modelos cuantitativos
Modelos predictivos on-chain
Indicadores financieros
Simulaciones Monte Carlo
Sistemas híbridos off-chain/on-chain
🖼️ Añadir imágenes (opcional)
md
![Banner del Proyecto](./assets/banner.png)
📄 Licencia
MIT License.
