document.getElementById("computeBtn").addEventListener("click", () => {
    const x = Number(document.getElementById("x").value);
    const y = Number(document.getElementById("y").value);

    if (isNaN(x) || isNaN(y)) {
        alert("Por favor ingresa ambos valores.");
        return;
    }

    // Simulación de la función computeComplexFormula
    function computeComplexFormula(x, y) {
        const sum = x + y;
        const squared = Math.pow(sum, 2);
        const product = x * y;
        return squared - product;
    }

    const result = computeComplexFormula(x, y);
    document.getElementById("result").textContent = result;
});
