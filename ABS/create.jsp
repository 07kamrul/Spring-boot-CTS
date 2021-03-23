

<div class="row center">
	<h1>Hello Kitty</h1>


	<label for="branch_name">Bank Name:</label> <input type="text"
		id="branch_name" name="branch_name" value=""> <br> <label
		for="bank_list">Bank List:</label> <select id="bank_list"
		name="bank_list"
		class="form-control sync-option-text sync-option-text">
		<option value="-1" selected="selected">--SELECT--</option>
	</select> <br>
	<button onclick="submitFunction()">Submit</button>


</div>

<div class="row">
	<h2>Show values</h2>
	<p id="bankName"></p>
	<p id="bankListName"></p>
	<p id="altWorkstationLocation"></p>

</div>
<script src="/assets/js/my_api.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>
	//InitHeadlers();
	var pageUrl = "/cbs/abs/abs_deposit2/";

	function getBankBranch() {

		$.get(pageUrl + "getBankBranch/", {
			async : false,
			_csrf : "${_csrf.token}"
		}, function(data, status) {

			var bankList = data.bankList;
			$('#bank_list').empty();
			$.each(data.bankList, function(i, p) {
				$('#bank_list').append(

				$('<option value="'+i+'">' + p + '</option>'));
			});

		});

	}
	getBankBranch();

	function submitFunction() {
		var bankName = document.getElementById("branch_name").value;
		var bankList = document.getElementById("bank_list");
		var bankListValue = bankList.options[bankList.selectedIndex].text;
		//debugger;
		var data = {
			apiKey : "ZWR1Y2l0aW9uQkRBMTIzNDU2Nzg5",
			ids : [ "3c791b1e-c55e-4283-b7ff-faa4dac21a7b" ],
			username : bankName,
			companyName : bankListValue
		}
		var data2 = JSON.stringify(data);
		var url = "http://192.168.100.122:9016/get_employee_by_id";
		postMethod(url, data2);
	}

	function postMethod(url, data2) {
		$.ajax({
			type : "POST",
			contentType : "application/json",
			url : url,
			data : data2,
			headers : {
				'latLng' : '23.7682614,90.4170818'
			},
			dataType : 'json',
			success : function(data) {
				try {
					successMethod(data);
				} catch (e) {
					console.log(e);
				}
			},
			error : function(res, status) {//debugger;
				ShowErrorMsg("Error!",
						"Something went worng, Please try again..");
				console.log(status, res);
				console.log("Error!", res.responseJSON.message[0]);
			}
		});
	}
	function successMethod(response) {
		var response = response;

		if (response.responseCode == 200) {

			var data = response.data;

			var bankName = data.username;
			var bankListName = data.companyName;
			var altWorkstationLocation = data.altWorkstationLocation;

			if (data) {
				//	debugger;
				showFunction(bankName, bankListName, altWorkstationLocation);
				//	ShowSuccessMsg("Success", "Save successful");

			} else {
				//ShowErrorMsg("Error", "Failed to save");
			}
			//end loop for device 
		} else {
			//ShowErrorMsg("Error", "Failed to save");
		}
	}

	function showFunction(bankName, bankListName, altWorkstationLocation) {
		document.getElementById("bankName").innerHTML = bankName;
		document.getElementById("bankListName").innerHTML = bankListName;
		document.getElementById("altWorkstationLocation").innerHTML = altWorkstationLocation
	}
</script>
