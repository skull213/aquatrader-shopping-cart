	// $(function(){
	// 	$("#navHandle").on("click",function(){
	// 		$(".container nav").slideToggle();
	// 	});
	// });


$(function(){
	// var contentLoad = function(e){
	// 	e.preventDefault();

	// 	var url = $(this).attr("href");

	// 	History.pushState(null,null,url);

	// 	// var spinner = new Spinner().spin();
	// 	// $(".main.group").append(spinner.el);

	// 	// $.get(url,function(data){
	// 	//  	$(".main.group").empty().append(data);
	// 	// });
		

	// };

	 
 //    History.Adapter.bind(window,'statechange',function(){ 
 //        var state = History.getState(); 
 //        var spinner = new Spinner().spin();
 //        $(".main.group").append(spinner.el);

 //        $.get(state.url,function(data){

	// 	 	$(".main.group").empty().append(data);
	// 	});
    
 //    });

	
	// $("nav a").on("click", contentLoad);
	// $("main.group").on("click",".pagination a",contentLoad)

	$("[data-field]").on("click",function(){

		var url = window.location.href;
		var options = {
			type:"textarea",
			cssclass:"editable",
			submitdata:{
				_method:"PUT",
				_token:$("#token").text(),
				field: $(this).attr("data-field")
			},
			submit: "OK"
		};
		$(this).editable(url,options);
	});

//tinymce.init--------------------------------------------------------------
	
	$(document).on("DOMNodeInserted",function(e){
		
		if($(e.target).hasClass("editable")){

			tinymce.editor=[] //remove any existing references

			tinymce.init({selector:'.editable textarea'});
		}
		
	});
	
});