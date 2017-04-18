<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/base.css">
	<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
	<title></title>
</head>
<body>
	<div class="map" id="map">
		
	</div>
	<canvas id="mapcanvas" width="1200" height="533" style="background: #fff">
		请使用chrome或者firefox浏览器
	</canvas>

	<script type="text/javascript">
		window.onload = function(){
			var canvas = document.getElementById('mapcanvas');
			var ctx = canvas.getContext('2d');
			var arr = [
				[440,17],
				[182,186],
				[407,104],
				[621,367],
				[827,82],
				[884,279],
				[1034,143],
				[965,433]

			];
			for(var i=0;i<arr.length;i++){
				var x = arr[i][0],y=arr[i][1],r=3,r2=6;
				created(x,y,r,ctx);
				created2(x,y,r2,ctx);
			}

			var points = [
				{startX:182,startY:186},
				{startX:407,startY:104},
				{startX:440,startY:17}
			]
			for(var i = 0 ; i< points.length; i++){
				var point = points[i];
				console.log(point)
				setInterval(function() {
				  ctx.strokeStyle = "red";
				  ctx.moveTo(point.startX, point.startY);
				  ctx.lineTo(point.startX1, point.startY1); 
				  ctx.stroke();
				  console.log(point.startX)
				 }, 500)
			}
			//drawDashLine(context,440,17,182,186,5);  	//1-2	
			//drawDashLine(context,407,104,182,186,5);
		}

		function created(x,y,r,ctx){
			ctx.beginPath();
			ctx.strokeStyle="#bc1515";
			ctx.arc(x, y, r, 0, 2*Math.PI);
			ctx.stroke();
			ctx.fillStyle = '#bc1515';
			ctx.closePath();
			ctx.fill();
		}

		function created2(x,y,r,ctx){
			ctx.beginPath();
			ctx.strokeStyle="#bc1515";
			ctx.arc(x, y, r, 0, 2*Math.PI);
			ctx.stroke();
			ctx.fillStyle = 'rgba(0,0,0,0)';
			ctx.closePath();
			ctx.fill();
		}

		





























		//求斜边长度  
function getBeveling(x,y) {  
    return Math.sqrt(Math.pow(x,2)+Math.pow(y,2));  
}  
  
function drawDashLine(context,x1,y1,x2,y2,dashLen)  {  
    dashLen = dashLen === undefined ? 5 : dashLen;  
    //得到斜边的总长度  
    var beveling = getBeveling(x2-x1,y2-y1);  
    //计算有多少个线段  
    var num = Math.floor(beveling/dashLen);  
      
    for(let i = 0 ; i < num; i++) {  
    		context[i%2 == 0 ? 'moveTo' : 'lineTo'](x1+(x2-x1)/num*i,y1+(y2-y1)/num*i);  
    }  
    context.stroke();  
}  
  
	</script>
</body>
</html>