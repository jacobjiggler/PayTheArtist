  $(function () {

	  //to be changed to bootsrap syntax
		$(".Mission-header").click(function(){
			$(".Mission").fadeIn();
		}); 
		$(".About-header").click(function(){
			$(".About").fadeIn();
		}); 
		$(".FAQ-header").click(function(){
			$(".FAQ").fadeIn();
		}); 	
		$(".Contact-header").click(function(){
			$(".Contact").fadeIn();
		}); 
		$(".Legal-header").click(function(){
			$(".Legal").fadeIn();
		}); 
		$(".close").click(function(){
			$(".Mission").fadeOut();
			$(".About").fadeOut();
			$(".FAQ").fadeOut();
			$(".Contact").fadeOut();
			$(".Legal").fadeOut();
			//this can be done a lot easier.
		}); 					

});