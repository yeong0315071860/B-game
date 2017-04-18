<!DOCTYPE html>
<html>
<head>
	<style>
    	#countdown_box {
			font-size:236px;
            text-align:center;
		}
    </style>
</head>
<body>

	<div id="countdown_box"></div>

	<script>
		var countdown_timer = 3;
        var countdown_timeout;
      	var countdown_box = document.getElementById("countdown_box");
        
		function rand_num() {
    		return Math.floor((Math.random() * 4) + 1);
        }
        
    	function countdown_start() {
        	countdown_timer = 4;
            countdown_box.innerHTML = countdown_timer;
			countdown();            
        }
        
        function countdown() {
        	if (countdown_timer < 2) {
				var random_number = rand_num();
                var message;

				if (random_number == 1) {
                	message = "←";
                } else if (random_number == 2) {
                	message = "→";
                } else if (random_number == 3) {
                	message = "↑";
                } else if (random_number == 4) {
                	message = "↓";
                }
				countdown_box.innerHTML = message;

            } else {

              countdown_timeout = setTimeout("countdown()",1000);
              countdown_timer--;
              countdown_box.innerHTML = countdown_timer;
          	}
           
        }
        
        countdown_start();
        
    </script>


</body>
</html>








