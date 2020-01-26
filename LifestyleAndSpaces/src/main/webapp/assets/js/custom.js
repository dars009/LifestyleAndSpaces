/*  ******** Image Preview Code ******** */
function preview_images() {
	var total_file = document.getElementById("images").files.length;
	for (var i = 0; i < total_file; i++) {
		$('#image_preview').append(
				"<div class='col-md-2'><img class='img-responsive' src='"
				+ URL.createObjectURL(event.target.files[i])
				+ "'></div>");
	}
}

/*  ******** Move to next tab ******** */
$('.next').click(function() {
	$('.nav-tabs > .active').next('li').find('a').trigger('click');
});

$('.back').click(function() {
	$('.nav-tabs > .active').prev('li').find('a').trigger('click');
});







/*  ******** Alert Dialog Box JS  ******** */
$('#savebtn').on('click',function() {



	// call in if condition....................

	var flag = false;

	$('input:invalid,select:invalid').each(function() {
		var $closest = $(this).closest('.tab-pane');
		var id = $closest.attr('id');

		$("#"+document.querySelectorAll(":invalid")[1].id).focus();
		
		//$("#"+document.querySelectorAll(":invalid")[1].id).closest(".form-group").css("border", "1px solid red");
		
		$('.nav a[href="#' + id + '"]').tab('show');
		//	return false;
		flag = true;
	});
	
	

	if(flag == false)
	{
		$('body')
		.alertBox(
				{
					title : 'We have received your details. <br> Our representative will get back to you shortly. <br> If you wish to upload property details yourself, <br> click <b>Continue</b>.', //Confirm alert Message
					continuebtn : 'Continue',
					lCallback : function() {

						$('.nav-tabs > .active').next('li').find('a').trigger('click');
					},
					confirmbtn : 'Confirm',
					rCallback : function() {
						var form = document.getElementById("basicdetform");
						var mobnum = document.getElementById("usermobile").value.length;

						if(mobnum != 10)
						{
							$("#usermobile").closest(".input-group").css("border", "1px solid red");
							return false;
						}
						else
						{
							form.submit();
							//window.location = "index.jsp";
						}
					}
				})
	}
}) // save button onclick close