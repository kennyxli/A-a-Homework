document.addEventListener("DOMContentLoaded", function(){
    const canvas = document.getElementById("mycanvas");
    canvas.width = 500;
    canvas.height = 500;
    const ctx = canvas.getContext("2d");

    ctx.fillStyle = "red";
    ctx.fillRect(0,0,500,500);

    ctx.beginPath();
    ctx.arc(100, 100, 100, 0, 2*Math.PI,true);
    ctx.strokeStyle = "blue";
    ctx.lineWidth = 5;
    ctx.stroke();

    ctx.beginPath();
    ctx.moveTo(75,50);
    ctx.lineTo(100,50);
    ctx.lineTo(100,25);
    ctx.lineTo(75, 50);
    ctx.strokeStyle = "blue";
    ctx.lineWidth = 5;
    ctx.stroke();
    
});
