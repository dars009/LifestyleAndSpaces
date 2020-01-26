$(window).load(function() {
	$("#property_feature").hide();
	$("#pricedetails").hide();
	$("#rentdetails").hide();
	$("#bedroom").hide();
	$("#balconies").hide();
	$("#bathrooms").hide();
	$("#furnished_status").hide();
	$("#floor_no").hide();
	$("#total_floor").hide();
	$("#parking").hide();
	$("#carpet_area").hide();
	$("#super_buit_up_area").hide();
	$("#personal_washroom").hide();
	$("#covered_area").hide();
	$("#pantry").hide();
	$("#floor_allowed").hide();
	$("#width_of_road_facing_the_plot").hide();
	$("#plotting_done").hide();
	$("#plot_area").hide();
	$("#plot_length").hide();
	$("#plot_breath").hide();
	$("#availability").hide();
	$("#additional_details").hide();
});

//property type drop down
	$("#proptype") 
	.change(function(){ 
		var propertytype = $("#proptype").val();
		var propertyfor = $('input[name=property_for]:checked').length;
		var usrtype = $('input[name=usr_type]:checked').length;
		var proptypesalerent = $('input[name=property_for]:checked').val();
		//alert(propertytype);
		//alert(propertyfor);
		//alert(usrtype);
		//alert(proptypesalerent);

		if (propertyfor == 0 || usrtype == 0) {
			$("#property_feature").hide();
			$("#pricedetails").hide();
			$("#rentdetails").hide();
			$("#bedroom").hide();
			$("#balconies").hide();
			$("#bathrooms").hide();
			$("#furnished_status").hide();
			$("#floor_no").hide();
			$("#total_floor").hide();
			$("#parking").hide();
			$("#carpet_area").hide();
			$("#super_buit_up_area").hide();
			$("#personal_washroom").hide();
			$("#covered_area").hide();
			$("#pantry").hide();
			$("#floor_allowed").hide();
			$("#width_of_road_facing_the_plot").hide();
			$("#plotting_done").hide();
			$("#plot_area").hide();
			$("#plot_length").hide();
			$("#plot_breath").hide();
			$("#availability").hide();
		} 
		else
		{

			if ( (propertyfor == 1 && usrtype == 1) && (propertytype == "Multistorey Apartment" || propertytype == "Residential House" || propertytype == "Villa" || propertytype == "Penthouse" ))
			{
				
				//check property is for Sale or Rent
				if(proptypesalerent == "Sale")
				{
					$("#pricedetails").show();
					$("#rentdetails").hide();
				}
				
				if(proptypesalerent == "Rent")
				{
					$("#pricedetails").hide();
					$("#rentdetails").show();
				}
				
				$("#property_feature").show();
				$("#availability").show();
				$("#bedroom").show();
				$("#balconies").show();
				$("#bathrooms").show();
				$("#furnished_status").show();
				$("#floor_no").show();
				$("#total_floor").show();
				$("#parking").show();
				$("#carpet_area").show();
				$("#super_buit_up_area").show();
				$("#personal_washroom").hide();
				$("#covered_area").hide();
				$("#pantry").hide();
				$("#floor_allowed").hide();
				$("#width_of_road_facing_the_plot").hide();
				$("#plotting_done").hide();
				$("#plot_area").hide();
				$("#plot_length").hide();
				$("#plot_breath").hide();
			}else if ((propertyfor == 1 && usrtype == 1) && (propertytype == "Residential Plot" ))
			{
				//check property is for Sale or Rent
				if(proptypesalerent == "Sale")
				{
					$("#pricedetails").show();
					$("#rentdetails").hide();
				}
				
				if(proptypesalerent == "Rent")
				{
					$("#pricedetails").hide();
					$("#rentdetails").show();
				}
				
				$("#property_feature").show();
				$("#bedroom").hide();
				$("#balconies").hide();
				$("#bathrooms").hide();
				$("#furnished_status").hide();
				$("#floor_no").hide();
				$("#total_floor").hide();
				$("#parking").show();
				$("#carpet_area").hide();
				$("#super_buit_up_area").hide();
				$("#personal_washroom").show();
				$("#covered_area").hide();
				$("#pantry").show();
				$("#floor_allowed").hide();
				$("#width_of_road_facing_the_plot").hide();
				$("#plotting_done").hide();
				$("#plot_area").show();
				$("#plot_length").show();
				$("#plot_breath").show();
				$("#prefertent").hide();
				$("#addrooms").hide();
				$("#carparking_coverno").hide();
				$("#open_parkingno").hide();
				$("#nothingtodisp").show();
				$("#flooringdetl").hide();
				$("#amenitiesdetl").hide();
				$("#age_of_construction").hide();
				$("#possession_status").hide();				
			}else if ( (propertyfor == 1 && usrtype == 1) && (propertytype == "Commercial Office Space" ))
			{
				//check property is for Sale or Rent
				if(proptypesalerent == "Sale")
				{
					$("#pricedetails").show();
					$("#rentdetails").hide();
				}
				
				if(proptypesalerent == "Rent")
				{
					$("#pricedetails").hide();
					$("#rentdetails").show();
				}
				
				$("#property_feature").show();
				$("#bedroom").hide();
				$("#balconies").hide();
				$("#bathrooms").hide();
				$("#furnished_status").hide();
				$("#floor_no").show();
				$("#total_floor").show();
				$("#parking").show();
				$("#carpet_area").show();
				$("#super_buit_up_area").show();
				$("#personal_washroom").show();
				$("#covered_area").show();
				$("#pantry").show();
				$("#floor_allowed").show();
				$("#width_of_road_facing_the_plot").show();
				$("#plotting_done").hide();
				$("#plot_area").show();
				$("#plot_length").show();
				$("#plot_breath").show();
				$("#prefertent").hide();
				$("#addrooms").hide();
				$("#carparking_coverno").show();
				$("#open_parkingno").show();
				$("#nothingtodisp").show();
				$("#flooringdetl").hide();
				$("#amenitiesdetl").hide();
				$("#construction_type").show();
				$("#age_of_construction").show();
				$("#possession_status").show();
				$("#available_from").show();
			}else if ( (propertyfor == 1 && usrtype == 1) && (propertytype == "Commercial Shop" ))
			{
				//check property is for Sale or Rent
				if(proptypesalerent == "Sale")
				{
					$("#pricedetails").show();
					$("#rentdetails").hide();
				}
				
				if(proptypesalerent == "Rent")
				{
					$("#pricedetails").hide();
					$("#rentdetails").show();
				}
				
				$("#property_feature").show();
				$("#bedroom").hide();
				$("#balconies").hide();
				$("#bathrooms").hide();
				$("#furnished_status").hide();
				$("#floor_no").show();
				$("#total_floor").show();
				$("#parking").show();
				$("#carpet_area").show();
				$("#super_buit_up_area").show();
				$("#personal_washroom").show();
				$("#covered_area").show();
				$("#pantry").hide();
				$("#floor_allowed").show();
				$("#width_of_road_facing_the_plot").show();
				$("#plotting_done").hide();
				$("#plot_area").show();
				$("#plot_length").show();
				$("#plot_breath").show();
				$("#prefertent").hide();
				$("#addrooms").hide();
				$("#nothingtodisp").show();
				$("#carparking_coverno").show();
				$("#open_parkingno").show();
				$("#flooringdetl").hide();
				$("#amenitiesdetl").hide();
				$("#construction_type").show();
				$("#age_of_construction").show();
				$("#possession_status").show();
				$("#available_from").show();
			}else if ( (propertyfor == 1 && usrtype == 1) && (propertytype == "Commercial Showroom" ))
			{
				//check property is for Sale or Rent
				if(proptypesalerent == "Sale")
				{
					$("#pricedetails").show();
					$("#rentdetails").hide();
				}
				
				if(proptypesalerent == "Rent")
				{
					$("#pricedetails").hide();
					$("#rentdetails").show();
				}
				
				$("#property_feature").show();
				$("#bedroom").hide();
				$("#balconies").hide();
				$("#bathrooms").hide();
				$("#furnished_status").hide();
				$("#floor_no").show();
				$("#total_floor").show();
				$("#parking").show();
				$("#carpet_area").show();
				$("#super_buit_up_area").show();
				$("#personal_washroom").show();
				$("#covered_area").show();
				$("#pantry").show();
				$("#floor_allowed").show();
				$("#width_of_road_facing_the_plot").show();
				$("#plotting_done").hide();
				$("#plot_area").show();
				$("#plot_length").show();
				$("#plot_breath").show();
				$("#prefertent").hide();
				$("#addrooms").hide();
				$("#nothingtodisp").show();
				$("#carparking_coverno").show();
				$("#open_parkingno").show();
				$("#flooringdetl").hide();
				$("#amenitiesdetl").hide();
				$("#construction_type").show();
				$("#age_of_construction").show();
				$("#possession_status").show();
				$("#available_from").show();
			}else if ( (propertyfor == 1 && usrtype == 1) && (propertytype == "Commercial Land" ))
			{
				//check property is for Sale or Rent
				if(proptypesalerent == "Sale")
				{
					$("#pricedetails").show();
					$("#rentdetails").hide();
				}
				
				if(proptypesalerent == "Rent")
				{
					$("#pricedetails").hide();
					$("#rentdetails").show();
				}
				
				$("#property_feature").show();
				$("#bedroom").hide();
				$("#balconies").hide();
				$("#bathrooms").hide();
				$("#furnished_status").hide();
				$("#floor_no").hide();
				$("#total_floor").hide();
				$("#parking").show();
				$("#carpet_area").hide();
				$("#super_buit_up_area").hide();
				$("#personal_washroom").show();
				$("#covered_area").hide();
				$("#pantry").show();
				$("#floor_allowed").hide();
				$("#width_of_road_facing_the_plot").hide();
				$("#plotting_done").hide();
				$("#plot_area").show();
				$("#plot_length").show();
				$("#plot_breath").show();
				$("#prefertent").hide();
				$("#addrooms").hide();
				$("#nothingtodisp").show();
				$("#roadfacing_direction").hide();
				$("#carparking_coverno").show();
				$("#open_parkingno").show();
				$("#flooringdetl").hide();
				$("#amenitiesdetl").hide();
				$("#construction_type").show();
				$("#age_of_construction").hide();
				$("#possession_status").show();
				$("#available_from").show();
			}else if ( (propertyfor == 1 && usrtype == 1) && (propertytype == "Industrial Land" ))
			{
				//check property is for Sale or Rent
				if(proptypesalerent == "Sale")
				{
					$("#pricedetails").show();
					$("#rentdetails").hide();
				}
				
				if(proptypesalerent == "Rent")
				{
					$("#pricedetails").hide();
					$("#rentdetails").show();
				}
				
				$("#property_feature").show();
				$("#bedroom").hide();
				$("#balconies").hide();
				$("#bathrooms").hide();
				$("#furnished_status").hide();
				$("#floor_no").hide();
				$("#total_floor").hide();
				$("#parking").show();
				$("#carpet_area").hide();
				$("#super_buit_up_area").hide();
				$("#personal_washroom").show();
				$("#covered_area").hide();
				$("#pantry").show();
				$("#floor_allowed").hide();
				$("#width_of_road_facing_the_plot").hide();
				$("#plotting_done").hide();
				$("#plot_area").show();
				$("#plot_length").show();
				$("#plot_breath").show();
				$("#prefertent").hide();
				$("#addrooms").hide();
				$("#nothingtodisp").show();
				$("#roadfacing_direction").hide();
				$("#carparking_coverno").show();
				$("#open_parkingno").show();
				$("#flooringdetl").hide();
				$("#amenitiesdetl").hide();
				$("#construction_type").show();
				$("#age_of_construction").hide();
				$("#possession_status").show();
				$("#available_from").show();
			}else if ( (propertyfor == 1 && usrtype == 1) && (propertytype == "Warehouse/Godown" ))
			{
				//check property is for Sale or Rent
				if(proptypesalerent == "Sale")
				{
					$("#pricedetails").show();
					$("#rentdetails").hide();
				}
				
				if(proptypesalerent == "Rent")
				{
					$("#pricedetails").hide();
					$("#rentdetails").show();
				}
				
				$("#property_feature").show();
				$("#bedroom").hide();
				$("#balconies").hide();
				$("#bathrooms").hide();
				$("#furnished_status").hide();
				$("#floor_no").hide();
				$("#total_floor").hide();
				$("#parking").show();
				$("#carpet_area").show();
				$("#super_buit_up_area").hide();
				$("#personal_washroom").show();
				$("#covered_area").hide();
				$("#pantry").show();
				$("#floor_allowed").hide();
				$("#width_of_road_facing_the_plot").hide();
				$("#plotting_done").hide();
				$("#plot_area").show();
				$("#plot_length").show();
				$("#plot_breath").show();
				$("#prefertent").hide();
				$("#addrooms").hide();
				$("#nothingtodisp").show();
				$("#roadfacing_direction").hide();
				$("#carparking_coverno").show();
				$("#open_parkingno").show();
				$("#flooringdetl").hide();
				$("#amenitiesdetl").hide();
				$("#construction_type").show();
				$("#age_of_construction").hide();
				$("#possession_status").show();
				$("#available_from").show();
			}else if ( (propertyfor == 1 && usrtype == 1) && (propertytype == "Agricultural Land" ))
			{
				//check property is for Sale or Rent
				if(proptypesalerent == "Sale")
				{
					$("#pricedetails").show();
					$("#rentdetails").hide();
				}
				
				if(proptypesalerent == "Rent")
				{
					$("#pricedetails").hide();
					$("#rentdetails").show();
				}
				
				$("#property_feature").show();
				$("#bedroom").hide();
				$("#balconies").hide();
				$("#bathrooms").hide();
				$("#furnished_status").hide();
				$("#floor_no").hide();
				$("#total_floor").hide();
				$("#parking").show();
				$("#carpet_area").show();
				$("#super_buit_up_area").hide();
				$("#personal_washroom").show();
				$("#covered_area").hide();
				$("#pantry").show();
				$("#floor_allowed").hide();
				$("#width_of_road_facing_the_plot").hide();
				$("#plotting_done").hide();
				$("#plot_area").show();
				$("#plot_length").show();
				$("#plot_breath").show();
				$("#prefertent").hide();
				$("#addrooms").hide();
				$("#nothingtodisp").show();
				$("#roadfacing_direction").hide();
				$("#carparking_coverno").show();
				$("#open_parkingno").show();
				$("#flooringdetl").hide();
				$("#amenitiesdetl").hide();
				$("#construction_type").show();
				$("#age_of_construction").hide();
				$("#possession_status").show();
				$("#available_from").show();
			}
			
		}
	});
	
	//validation for input fields
	$('#usermobile').bind('input propertychange', function() {
		var filteredText = $(this).val().replace(/[^\d]/gi, '');
		$(this).val(filteredText);
	});

	$("#usermobile").on("keypress keyup",function(){
		if($(this).val() == '0'){
			$(this).val('');  
		}
	});
	
	$('#pincode').bind('input propertychange', function() {
		var filteredText = $(this).val().replace(/[^\d]/gi, '');
		$(this).val(filteredText);
	});

	$('#balconies').bind('input propertychange', function() {
		var filteredText = $(this).val().replace(/[^\d]/gi, '');
		$(this).val(filteredText);
	});

	$('#bathrooms').bind('input propertychange', function() {
		var filteredText = $(this).val().replace(/[^\d]/gi, '');
		$(this).val(filteredText);
	});

	$('#floorno').bind('input propertychange', function() {
		var filteredText = $(this).val().replace(/[^\d]/gi, '');
		$(this).val(filteredText);
	});

	$('#totalfloor').bind('input propertychange', function() {
		var filteredText = $(this).val().replace(/[^\d]/gi, '');
		$(this).val(filteredText);
	});
		
	$('#carpetarea').bind('input propertychange', function() {
		var filteredText = $(this).val().replace(/[^\d]/gi, '');
		$(this).val(filteredText);
	});
	
	$('#superbuituparea').bind('input propertychange', function() {
		var filteredText = $(this).val().replace(/[^\d]/gi, '');
		$(this).val(filteredText);
	});
	
	$('#coveredarea').bind('input propertychange', function() {
		var filteredText = $(this).val().replace(/[^\d]/gi, '');
		$(this).val(filteredText);
	});
	
	$('#widthofroadfacingtheplot').bind('input propertychange', function() {
		var filteredText = $(this).val().replace(/[^\d]/gi, '');
		$(this).val(filteredText);
	});
	
	$('#plotarea').bind('input propertychange', function() {
		var filteredText = $(this).val().replace(/[^\d]/gi, '');
		$(this).val(filteredText);
	});
	
	$('#plotlength').bind('input propertychange', function() {
		var filteredText = $(this).val().replace(/[^\d]/gi, '');
		$(this).val(filteredText);
	});
	
	$('#plotbreath').bind('input propertychange', function() {
		var filteredText = $(this).val().replace(/[^\d]/gi, '');
		$(this).val(filteredText);
	});
	
	$('#expectedprice').bind('input propertychange', function() {
		var filteredText = $(this).val().replace(/[^\d]/gi, '');
		$(this).val(filteredText);
	});
	$('#othercharge').bind('input propertychange', function() {
		var filteredText = $(this).val().replace(/[^\d]/gi, '');
		$(this).val(filteredText);
	});

	$('#monthlyrent').bind('input propertychange', function() {
		var filteredText = $(this).val().replace(/[^\d]/gi, '');
		$(this).val(filteredText);
	});

	$('#securityamt').bind('input propertychange', function() {
		var filteredText = $(this).val().replace(/[^\d]/gi, '');
		$(this).val(filteredText);
	});

	$('#carparkingcoverno').bind('input propertychange', function() {
		var filteredText = $(this).val().replace(/[^\d]/gi, '');
		$(this).val(filteredText);
	});

	$('#openparkingno').bind('input propertychange', function() {
		var filteredText = $(this).val().replace(/[^\d]/gi, '');
		$(this).val(filteredText);
	});
	
	$('#floor_allowed').bind('input propertychange', function() {
		var filteredText = $(this).val().replace(/[^\d]/gi, '');
		$(this).val(filteredText);
	});
	
	/* number to word convert js */
	function convertNumberToWords(amount) {
		var words = new Array();
		words[0] = '';
		words[1] = 'One';
		words[2] = 'Two';
		words[3] = 'Three';
		words[4] = 'Four';
		words[5] = 'Five';
		words[6] = 'Six';
		words[7] = 'Seven';
		words[8] = 'Eight';
		words[9] = 'Nine';
		words[10] = 'Ten';
		words[11] = 'Eleven';
		words[12] = 'Twelve';
		words[13] = 'Thirteen';
		words[14] = 'Fourteen';
		words[15] = 'Fifteen';
		words[16] = 'Sixteen';
		words[17] = 'Seventeen';
		words[18] = 'Eighteen';
		words[19] = 'Nineteen';
		words[20] = 'Twenty';
		words[30] = 'Thirty';
		words[40] = 'Forty';
		words[50] = 'Fifty';
		words[60] = 'Sixty';
		words[70] = 'Seventy';
		words[80] = 'Eighty';
		words[90] = 'Ninety';
		amount = amount.toString();
		var atemp = amount.split(".");
		var number = atemp[0].split(",").join("");
		var n_length = number.length;
		var words_string = "";
		if (n_length <= 9) {
			var n_array = new Array(0, 0, 0, 0, 0, 0, 0, 0, 0);
			var received_n_array = new Array();
			for (var i = 0; i < n_length; i++) {
				received_n_array[i] = number.substr(i, 1);
			}
			for (var i = 9 - n_length, j = 0; i < 9; i++, j++) {
				n_array[i] = received_n_array[j];
			}
			for (var i = 0, j = 1; i < 9; i++, j++) {
				if (i == 0 || i == 2 || i == 4 || i == 7) {
					if (n_array[i] == 1) {
						n_array[j] = 10 + parseInt(n_array[j]);
						n_array[i] = 0;
					}
				}
			}
			value = "";
			for (var i = 0; i < 9; i++) {
				if (i == 0 || i == 2 || i == 4 || i == 7) {
					value = n_array[i] * 10;
				} else {
					value = n_array[i];
				}
				if (value != 0) {
					words_string += words[value] + " ";
				}
				if ((i == 1 && value != 0) || (i == 0 && value != 0 && n_array[i + 1] == 0)) {
					words_string += "Crores ";
				}
				if ((i == 3 && value != 0) || (i == 2 && value != 0 && n_array[i + 1] == 0)) {
					words_string += "Lakhs ";
				}
				if ((i == 5 && value != 0) || (i == 4 && value != 0 && n_array[i + 1] == 0)) {
					words_string += "Thousand ";
				}
				if (i == 6 && value != 0 && (n_array[i + 1] != 0 && n_array[i + 2] != 0)) {
					words_string += "Hundred and ";
				} else if (i == 6 && value != 0) {
					words_string += "Hundred ";
				}
			}
			words_string = words_string.split("  ").join(" ");
		}
		return words_string;
	}
	/* number to word convert js */
