document.addEventListener("DOMContentLoaded", () => {
    const btn = document.getElementById("computeBtn");
    const resultBox = document.getElementById("result");

    btn.addEventListener("click", () => {
        const x = parseFloat(document.getElementById("x").value);
        const y = parseFloat(document.getElementById("y").value);

        if (isNaN(x) || isNaN(y)) {
            resultBox.textContent = "Por favor introduce valores válidos.";
            resultBox.style.color = "#EF4444";
            return;
        }

        // Fórmula: (x + y)^2 - (x * y)
        const sum = x + y;
        const squared = Math.pow(sum, 2);
        const product = x * y;
        const result = squared - product;

        resultBox.textContent = `Resultado: ${result}`;
        resultBox.style.color = "#10B981";
    });
});
