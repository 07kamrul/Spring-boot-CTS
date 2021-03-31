
<!-- start: Common Header -->
<jsp:include page="/WEB-INF/view/common/commonheader.jsp" />
<!-- end: Common Header -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="cts" uri="/WEB-INF/custom.tld"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<link rel="stylesheet"
	href="vendor/jquery-file-upload/css/jquery.ctsfileuploade.css"
	media="all" />
<style>
input.money-field {
	text-align: right;
}

.table.no-border tr td, .table.no-border tr th {
	border-width: 0;
}

.basic-alignment-fixed {
	
}

.agent-align-top-fixed {
	margin-top: -20px;
}

@media ( min-width :768px) {
	.basic-alignment-fixed {
		margin-right: -26px !important;
		margin-left: -25px !important;
	}
}

@media ( min-width :768px) {
	.remove-bottom-align {
		padding-bottom: 5px !important;
	}
}
</style>
<div class="wrap-content container" id="container">

	<jsp:include page="/WEB-INF/view/common/breadcrumb.jsp" />

	<div class="container-fluid container-fullw bg-white">
		<cts:AjaxForm action="" dataHandler="showMessage"
			cssClass="ajax wizard-form contactForm1"
			formEnctype="multipart/form-data">
			<!-- formData.append('ids', ["3c791b1e-c55e-4283-b7ff-faa4dac21a7b"]); -->
			<div class="denotes-required">denotes a required field</div>
			<div class="tabbable">
				<ul class="nav nav-tabs tab-padding tab-space-3 tab-blue"
					id="myTab4">
					<li class="active"><a data-toggle="tab"
						href="#panel_abs_basic"> Basic </a></li>
					<li><a data-toggle="tab" href="#panel_abs_attachment">
							Attachment </a></li>
					<li><a data-toggle="tab" href="#panel_abs_accounting">
							Accounting </a></li>
				</ul>
				<div class="tab-content">

					<div id="panel_abs_basic" class="tab-pane fade active in">
						<div
							class="container-fluid container-fullw bg-white padding-top-5 remove-bottom-align">
							<div class="row basic-alignment-fixed">

								<div class="col-md-6">
									<!-- Company-------------------------------------- -->
									<div class="row margin-bottom-5">
										<div class="col-md-12">
											<div class="form-group">
												<cts:Label name="Company" labelFor="companyCode" />
												<cts:Select name="companyCode" cssClass=""
													list="${data.companyCodes}" value="${data.companyCode}" />
												<input type="hidden" id="companyName" value=""
													name="companyName">
											</div>
										</div>
									</div>
									<!--Product Standard cash Deposit-------------------------------------- -->
									<div class="row margin-bottom-5">
										<div class="col-md-12">
											<div class="form-group">
												<cts:Label name="Product" labelFor="productCode" />
												<cts:Select name="productCode" cssClass=""
													list="${data.products}" value="${data.products }" />
												<input type="hidden" id="productName" value=""
													name="productName">
											</div>
										</div>
									</div>
									<!-- Transaction Code-------------------------------------- -->
									<!-- Date Today-------------------------------------- -->
									<div class="row margin-bottom-5">
										<div class="col-md-6">
											<div class="form-group">
												<cts:Label name="Transaction Reference"
													labelFor="transactionRef" />
												<cts:TextBox name="transactionRef" value="(Auto)"
													cssClass="numeric dirty-check" maxlength="10"
													readonly="readonly" />
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<cts:Label name="Transaction Date"
													labelFor="transactionDate" />
												<div class="input-group input-daterange">
													<input type="text" class="form-control text-center"
														id="transactionDate" name="transactionDate" value=""
														readonly="readonly" cssClass="alpha-numeric dirty-check">
												</div>
											</div>
										</div>
									</div>
									<!--Transaction Type-------------------------------------- -->
									<!--Amount BDT-------------------------------------- -->
									<div class="row margin-bottom-5">
										<div class="col-md-6">
											<div class="form-group">
												<cts:Label name="Transaction Type"
													labelFor="transactionType" />
												<cts:Select name="transactionType"
													cssClass="transactionType" list="${data.transtypes}"
													value="${data.transtype }" />
												<input type="hidden" id="transactionTypeId" value=""
													name="transactionTypeId"> <input type="hidden"
													id="transactionTypeName" value=""
													name="transactionTypeName">

											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<cts:Label name="Amount" labelFor="transactionAmount" />
												<cts:TextBox name="transactionAmount"
													cssClass="required dirty-check transactionAmount money text-right"
													maxlength="30" value="0.00" />
											</div>
										</div>
									</div>

									<!--Check #T-------------------------------------- -->
									<div class="row margin-bottom-5 resources">
										<div class="col-md-6">
											<div class="form-group">
												<label for="bankCode" class="control-label">Bank
													Name</label> <select id="bankCode" name="bankCode"
													class="form-control sync-option-text sync-option-text required">
													<option value="-1" selected="selected">--SELECT--</option>
												</select> <input type="hidden" id="bankName" value="" name="bankName">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="branchCode" class="control-label">Branch</label>
												<select id="branchCode" name="branchCode"
													class="form-control sync-option-text sync-option-text">
													<option value="-1" selected="selected">--SELECT--</option>
												</select> <input type="hidden" id="branchName" value=""
													name="branchName">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<cts:Label name="Cheque Number" labelFor="chequeNumber" />
												<cts:TextBox name="chequeNumber"
													cssClass="alpha-numeric dirty-check chequeNumber"
													maxlength="30" />
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<cts:Label name="Cheque Date" labelFor="chequeDate" />
												<div class="input-group input-daterange">
													<input type="text"
														class="form-control date-input chequeDate" id="chequeDate"
														name="chequeDate" value=""> <span
														class="input-group-addon datepicker width-38"><i
														class="glyphicon glyphicon-calendar"></i></span>
												</div>
											</div>
										</div>

									</div>
									<!--Date OTP-------------------------------------- -->
									<div class="row margin-bottom-5"></div>
									<!--Description-------------------------------------- -->
									<div class="row margin-bottom-10">
										<div class="col-md-12">
											<div class="form-group">
												<cts:Label name="Description" labelFor="cheque" />
												<cts:TextArea name="description"
													cssClass="dirty-check padding-10 resize-none txtarea min-height-155"
													value="Deposit Your Balance" />
											</div>
										</div>
									</div>
									<div class="row margin-top-5">
										<div class="col-md-12">
											<div class="row">
												<div class="col-md-12">
													<strong class="text-dark">Instruction </strong>
												</div>
											</div>
											<div class="row">
												<div class="col-md-12">
													<div class="">
														<strong class="text-dark">The following services
															will be covered under Agent Banking: </strong></br> <i><strong
															class="text-dark">1 :</strong> Collection of small value
															cash deposits and cash withdrawals (ceiling should be
															determined by BB from time to time ). </br> <strong
															class="text-dark"> 2 :</strong> Inward foreign remittance
															disbursement. </br> <strong class="text-dark"> 3 :</strong>
															Facilitating small value loan disbursement and recovery
															of loans, installments. </br> <strong class="text-dark">
																4 :</strong> Facilitating utility bill payment. </br> <strong
															class="text-dark"> 5 :</strong> Cash payment under social
															safety net programme of the Government. </br> <strong
															class="text-dark"> 6 :</strong> Facilitating fund
															transfer(ceiling should be determined by BB from time to
															time) etc.</i>
													</div>
												</div>
											</div>

										</div>
									</div>
								</div>
								<!----------------------- Right Side -------------------------------------- -->
								<div class="row hidden">
									<div class="col-md-6 col-sm-12 col-lg-6 col-xs-6 hidden">
										<div class="table-responsive">
											<div id="leftShowFpData" class="dataTables_wrapper no-footer">

											</div>
										</div>
									</div>
									<div class="col-md-6 col-sm-12 col-lg-6 col-xs-6 hidden">
										<div class="table-responsive">
											<div id="rightShowFpData"
												class="dataTables_wrapper no-footer"></div>
										</div>
									</div>
								</div>
								<!-- ============================================== -->
								<div class="col-md-6">
									<div class="row">
										<div class="col-md-12">
											<fieldset style="padding: 20px !important;">
												<legend>
													Customer &nbsp;(Cr.)&nbsp;
													<cts:TooltipBtn title="Employee Search"
														cssClass="btn btn-find" spanClass="fa fa-search"
														id="btnEmployee" />

													<cts:TooltipBtn title="Varify Biometric"
														cssClass="btn btn-find" spanClass="fa fa-search"
														id="varifyBiometricEmployee" />
												</legend>
												<div class="row">
													<div class="col-md-8">
														<div class="customer_information">
															<strong class="text-dark text-bold customerName">${data.customer.firstName}</strong>

															<address style="margin-top: 5px;">
																<strong class="text-dark">Address:</strong> <span
																	class="customerAddress">${data.customer.addr}</span> <br>
																<strong class="text-dark">Phone:</strong> <span
																	class="customerPhone">${data.customer.phoneRes}</span>
																<br> <strong class="text-dark">E-mail:</strong> <a
																	href="mailto:#" class="customerEmail">
																	${data.customer.email} </a> <input type="hidden"
																	id="customerId" value="" name="customerId"> <input
																	type="hidden" id="customerCode" value=""
																	name="customerCode"> <input type="hidden"
																	id="customerName" value="" name="customerName">
																<input type="hidden" id="customerAddress" value=""
																	name="customerAddress"> <input type="hidden"
																	id="customerPhone" value="" name="customerPhone">
																<input type="hidden" id="customerEmail" value=""
																	name="customerEmail">
															</address>
														</div>
													</div>
													<div class="col-md-4 text-right customerImage">
														<img class="margin-bottom-15"
															src="/assets/images/no-profile-img.gif" alt="" id="blah"
															class="optional customerImage" style="height: 100px;">
													</div>
												</div>


												<div class="row customerAccountTable">
													<div class="col-md-12">
														<table class="table table-condensed emp-selection-table"
															style="margin-top: -5px;">
															<thead>
																<tr>
																	<th>Bank Account</th>
																	<th class="text-center">Type</th>
																</tr>
															</thead>
															<!-- <tbody> 
															<c:forEach var="acctype1"
																items="${data.customerAccountList}">
																<tr>
																	<td>
																		<div class="row" id="agentBankAcc">
																			<div class="col-md-12">
																				<div class="form-group margin-bottom-0">
																					<div
																						class="clip-radio radio-primary optional margin-bottom-0 margin-top-0">
																						<c:choose>
																							<c:when
																								test="${acctype1.subLedgerTypeName eq 'SB'}">
																								<input id="${acctype1.accountName }"
																									checked="checked" name="customerAccount"
																									class="customerAccount" type="radio"
																									value="${acctype1.accountName }">
																								<label for="${acctype1.accountName }"
																									class="control-label dirty-check">${acctype1.accountName }</label>
																								<div id="acctype1_hidden_data">
																									<input type="hidden" id="customerAccountName"
																										name="customerAccountName"
																										value="${acctype1.subLedgerTypeName }">
																									<input type="hidden" id="customerAccountType"
																										name="customerAccountType"
																										value="${acctype1.subLedgerTypeName }">
																								</div>
																							</c:when>
																							<c:otherwise>
																								<input id="${acctype1.accountName }"
																									name="customerAccount" class="customerAccount"
																									type="radio" value="${acctype1.accountName }">
																								<label for="${acctype1.accountName }"
																									class="control-label dirty-check">${acctype1.accountName }</label>
																							</c:otherwise>
																						</c:choose>
																					</div>
																				</div>
																			</div>
																		</div>
																	</td>
																	<td class="text-center" class="acc_type1_type">${acctype1.subLedgerTypeName}</td>
																</tr>
															</c:forEach>
															</tbody> --%>
															
															
															<!-- -----------Kamrul----------- -->
															<tbody class="customerAccountDetails">



															</tbody>

															<!-- ----------------------------------- -->

														</table>
													</div>
												</div>
											</fieldset>
										</div>

									</div>
									<!-- -------------------AGENT ---------------- -->
									<div class="row">
										<div class="col-md-12 agent-align-top-fixed">
											<fieldset style="padding: 20px !important;">
												<legend> Agent &nbsp;(Dr.)&nbsp; </legend>
												<div class="row">
													<div class="col-md-8">
														<div class="agent_information">
															<strong class="text-dark text-bold agentName">${data.agent.firstName}</strong>

															<address style="margin-top: 5px;">
																<strong class="text-dark">Address:</strong> <span
																	class="agentAddress">${data.agent.addr}</span><br>
																<strong class="text-dark">Phone:</strong> <span
																	class="agentPhone">${data.agent.phoneRes} </span><br>
																<strong class="text-dark">E-mail:</strong> <a href="#"
																	class="agentEmail"> ${data.agent.email} </a> <input
																	type="hidden" id="agentId" value="" name="agentId">
																<input type="hidden" id="agentCode" value=""
																	name="agentCode"> <input type="hidden"
																	id="agentName" value="" name="agentName"> <input
																	type="hidden" id="agentAddress" value=""
																	name="agentAddress"> <input type="hidden"
																	id="agentPhone" value="" name="agentPhone"> <input
																	type="hidden" id="agentEmail" value=""
																	name="agentEmail">
															</address>
														</div>
													</div>
													<div class="col-md-4 text-right">
														<img src="/assets/images/no-profile-img.gif" alt=""
															id="blah" class="optional agentImage"
															style="height: 100px;">
													</div>
												</div>

												<div class="row" id="agentBankAcc">
													<div class="col-md-12">
														<table
															class="table table-condensed emp-selection-table agent-table"
															style="margin-top: -5px;">
															<thead>
																<tr>
																	<th>Bank Account</th>
																	<th class="text-right">Balance</th>
																	<th class="text-center">CRY</th>
																	<th class="text-center">Type</th>
																</tr>
															</thead>
															<tbody>
																<c:forEach var="acctype2"
																	items="${data.agentAccountList}">
																	<tr>
																		<td>
																			<div class="row" id="agentBankAcc">
																				<div class="col-md-12">
																					<div class="form-group margin-bottom-0">
																						<div
																							class="clip-radio radio-primary optional margin-bottom-0 margin-top-0">
																							<c:choose>
																								<c:when
																									test="${acctype2.subLedgerTypeName eq 'CD'}">
																									<input id="${acctype2.accountName }"
																										checked="checked" name="agentAccount"
																										class="agentAccount" type="radio"
																										value="${acctype2.accountName }">
																									<label for="${acctype2.accountName }"
																										class="control-label dirty-check">${acctype2.accountName }</label>

																									<div id="acctype2_hidden_data">
																										<input type="hidden" id="agentAccountName"
																											name="agentAccountName"
																											value="${acctype2.subLedgerTypeName }">
																										<input type="hidden" id="agentAccountAmount"
																											name="agentAccountAmount"
																											value="${acctype2.doaCurrencyCode}">
																										<input type="hidden" id="agentAccountCurrency"
																											name="agentAccountCurrency"
																											value="${acctype2.doaCurrencyName}">
																										<input type="hidden" id="agentAccountType"
																											name="agentAccountType"
																											value="${acctype2.subLedgerTypeName}">
																									</div>

																								</c:when>
																								<c:otherwise>
																									<input id="${acctype2.accountName }"
																										name="agentAccount" class="agentAccount"
																										type="radio" value="${acctype2.accountName }">
																									<label for="${acctype2.accountName }"
																										class="control-label dirty-check">${acctype2.accountName }</label>
																								</c:otherwise>
																							</c:choose>
																						</div>
																					</div>
																				</div>
																			</div>
																		</td>
																		<td class="text-right"><span>${acctype2.doaCurrencyCode}</span></td>
																		<td class="text-center">${acctype2.doaCurrencyName}</td>
																		<td class="text-center">${acctype2.subLedgerTypeName}</td>
																	</tr>
																</c:forEach>
															</tbody>
														</table>
													</div>
												</div>
											</fieldset>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- --------------___ATTACHMENT SECTION_____------------------ -->
					<div id="panel_abs_attachment" class="tab-pane fade">
						<div id="step-4">
							<jsp:include page="/WEB-INF/view/cbs_abs/common/attachment.jsp" />
						</div>
					</div>
					<!-- 
						cbsDebitAcc cbsDebitName cbsDebitAmt cbsDebitZero
						cbsCreditAcc cbsCreditName cbsCreditZero cbsCreditAmt
						
						cbsFinalDebit
						cbsFinalCredit
						---------------------------------
						glDebitAcc glDebitName glDebitAmt glDebitZero
						glCreditAcc glCreditName glCreditZero glCreditAmt 
						
						glFinalDebit
						glFinalCredit
						-->
					<!-- --------------ACCOUNTING SECTION ----------------- -->
					<div id="panel_abs_accounting" class="tab-pane fade">
						<div class="row">
							<div class="col-md-6">
								<div class="row">
									<div class="col-md-12">
										<fieldset style="padding: 20px !important;">
											<legend> CBS Posting &nbsp;&nbsp; </legend>
											<div class="row" id="agentBankAcc">
												<div class="col-md-12">
													<table
														class="table table-condensed emp-selection-table no-border table-borderless"
														style="margin-top: -5px;" cellspacing="5">
														<thead>
															<tr>
																<th>Account Number</th>
																<th>Account Name</th>
																<th class="text-right">Debit</th>
																<th class="text-right">Credit</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td id="cbsDebitAcc"></td>
																<td id="cbsDebitName"></td>
																<td id="cbsDebitAmt" class="align-right"></td>
																<td id="cbsDebitZero" class="text-right"></td>
															</tr>
															<tr>
																<td id="cbsCreditAcc"></td>
																<td id="cbsCreditName"></td>
																<td id="cbsCreditZero" class="text-right"><b></b></td>
																<td id="cbsCreditAmt" class="text-right"></td>
															</tr>
															<tr>
																<td id=""></td>
																<td id=""></td>
																<td id="cbsFinalDebit"
																	class="text-right money text-bold"
																	style="background-color: #ECDAD6;"><b></b></td>
																<td id="cbsFinalCredit"
																	class="text-right money text-bold"
																	style="background-color: #ECDAD6;"><b></b></td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</fieldset>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="row">
									<div class="col-md-12">
										<fieldset style="padding: 20px !important;">
											<legend> GL Posting &nbsp;&nbsp; </legend>
											<div class="row" id="agentBankAcc">
												<div class="col-md-12">
													<table
														class="table table-condensed emp-selection-table no-border table-borderless"
														style="margin-top: -5px;" cellspacing="5">
														<thead>
															<tr>
																<th>GL Number</th>
																<th>GL Name</th>
																<th class="text-right">Debit</th>
																<th class="text-right">Credit</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td class="glDebitAcc" id="glDebitAcc"></td>
																<td id="glDebitName"></td>
																<td id="glDebitAmt" class="text-right">0.00</td>
																<td id="glDebitZero" class="text-right">0.00</td>
															</tr>
															<tr>
																<td class="agentGlAccNumber" id="glCreditAcc"></td>
																<td id="glCreditName"></td>
																<td id="glCreditZero" class="text-right">0.00</td>
																<td id="glCreditAmt" class="text-right">0.00</td>
															</tr>
															<tr>
																<td id=""></td>
																<td id=""></td>
																<td id="glFinalDebit" class="text-right text-bold"
																	style="background-color: #ECDAD6;"><b></b></td>
																<td id="glFinalCredit" class="text-right text-bold"
																	style="background-color: #ECDAD6;"><b></b></td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</fieldset>
									</div>
								</div>
							</div>
							<!-- ---------------------Practice -->
							<div class="col-md-6">
								<div class="row">
									<%-- 	<c:forEach var="aaa" items="${data.products}">
										<c:out value="${aaa.key}"></c:out>
										</br>
										<c:out value="${aaa.value}"></c:out>
									</c:forEach> --%>
								</div>
								<!-- -------------Practice -->
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row margin-top-30 margin-bottom-30">
				<div class="col-md-8">
					<jsp:include page="../../../common/footerbuttons.jsp" />
				</div>
				<div class="col-md-4">
					<c:choose>
						<c:when test="${data.wfExists=='true'}">
							<cts:Submit cssClass="save pull-right" name="&nbsp;Save Draft"
								spanClass="save" />
						</c:when>
						<c:otherwise>
							<cts:Submit cssClass="save pull-right" spanClass="save"
								name="&nbsp;Save" />
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</cts:AjaxForm>
	</div>
</div>


<script src="vendor/jquery-file-upload/jquery.ctsfileuploader_common.js"></script>
<script src="/assets/js/deposit_withdrawal.js"></script>
<script src="/assets/js/abs/abs_common.js"></script>

<!-- start: Common Footer -->
<jsp:include page="/WEB-INF/view/common/commonfooter.jsp" />
<!-- end: Common Footer -->
<script>
	
</script>


<script>
	InitHandlers();
	//accountTabDataGenerate();
	$('.customerAccountTable').hide();
	var pageUrl = "/cbs/abs/abs_deposit/";

	$(".btn-save").click(function(event) {

		//stop submit the form, we will post it manually.
		event.preventDefault();

		// Get form
		var form = $('.contactForm1')[0];

		// Create an FormData object 
		var data = new FormData(form);

		// If we have to add an extra field for the FormData
		data.append("apiKey", "ZWR1Y2l0aW9uQkRBMTIzNDU2Nzg5");

		// disabled the submit button
		//$("#btnSubmit").prop("disabled", true);
		debugger;
		$.ajax({
			type : "POST",
			enctype : 'multipart/form-data',
			url : "http://localhost:9016/get_employee_by_id",
			data : data,
			processData : false,
			contentType : false,
			cache : false,
			timeout : 600000,
			headers : {
				'latLng' : '23.7682614,90.4170818'
			},
			success : function(data) {
				console.log('Submission was successful.');
				console.log("success data", data);
			},
			error : function(data) {
				console.log('An error occurred.');
				console.log("Error data", data);
			},
		});

	});

	/*     var frm = $('.contactForm1');

	 frm.submit(function (e) {
	 e.preventDefault();
	 var formData = new FormData(e.target);
	 console.log("ids",formData.get('ids'));
	 debugger;

	 var data={
	 "apiKey":"ZWR1Y2l0aW9uQkRBMTIzNDU2Nzg5",
	 "ids":["3c791b1e-c55e-4283-b7ff-faa4dac21a7b"],
	 "username":"Bank name",
	 "companyName":"Bank branch"
	 }
	 data=JSON.stringify(data);
	 var url="http://localhost:9016/get_employee_by_id";
	 $.ajax({
	 type : "POST",
	 contentType: "application/json",
	 url : url,
	 data: formData,
	 headers: { 'latLng': '23.7682614,90.4170818' },
	 dataType : 'json',
	 success: function (data) {
	 console.log('Submission was successful.');
	 console.log("success data",data);
	 },
	 error: function (data) {
	 console.log('An error occurred.');
	 console.log("Error data",data);
	 },
	 });
	 });
	 */
	/* 
		customerId
		customerCode
		customerName
		customerAddress
		customerPhone
		customerEmail 
	 */

	/* 	.customer_information .customerName
		.customer_information .customerAddress
		.customer_information .customerPhone
		.customer_information .customerEmail 
	 */

	//------------- Set Data to hidden field : end -----------------------------------
	generateHiddenFieldData();

	$("#custAcc").text(
			$("#customerBankAcc input[name='customerAccount']:checked").val());
	$("#custName").text($(".customerName").text());
	$("#agAcc").text(
			$("#agentBankAcc input[name='agentAccount']:checked").val());
	$("#agName").text($(".agentName").text());

	//------------- Get Today from common.js
	$("#transactionDate").val(GetToday());
	$(".chequeNumber").removeClass('required');
	$(".chequeDate").removeClass('required');

	//------------- Cheque Date Validation previous 6 months from current date
	function setCurrentDateWithDatePicker(idOrClass) {

		$(idOrClass).datepicker({
			format : 'dd-M-yyyy',
			startDate : '-6m',
			endDate : '0m', //'+2d' | '-2m' | '-25y' | new Date()
			autoclose : true

		}).datepicker("setDate", "now");

	}

	$('.resources').hide();
	//var select = this.value;

	//------------------ Transaction Type Change------------------------
	var showHideCashCheque = $('.transactionType');

	showHideCashCheque.change(function() {
		var selectedValue = $(this).val();
		//------------- For Hide And Show-------------------------------
		if (selectedValue.toUpperCase() == 'CHEQUE') {

			$(".chequeNumber").addClass('required');
			$(".chequeDate").addClass('required');
			$('.agent-table').hide(500);
			$('.resources').show(500);
			setCurrentDateWithDatePicker("#chequeDate");

			getBankBranch();
			ajaxPostCallById(selectedValue); //------------- ajax call (get) dynamic attachment
			generateHiddenFieldData();
		} else if (selectedValue.toUpperCase() == 'CASH') {

			$(".chequeNumber").removeClass('required');
			$(".chequeDate").removeClass('required');
			$(".chequeNumber").removeClass('required');
			$('.resources').hide(500);
			$('.agent-table').show(500);
			$('.customerAccountTable').show(500);
			$('.chequeNumber').val("");

			// -------------------- set data to hidden field
			ajaxPostCallById(selectedValue);//------------- ajax call (get) dynamic attachment
			accountTabDataGenerate(); //------------------- Generate Account Debit Credit Data
			generateHiddenFieldData();
		}

	});

	//------------- Ajax call To get Attachment by doaTypeCode ---------------------------

	//----------- 4 major field of attachment, define with there id/class name as variable

	var minAttachment = ".minimum-no-attachment";
	var maxAttachment = ".maximum-no-attachment";
	var reqFiles = ".requiredAttachment";
	var dropdownAttachment = "#drop_attachment";

	function ajaxPostCallById(doaTypeCode) {

		$.get(pageUrl + "getAttachment/", {
			trans_type_code : doaTypeCode.toUpperCase(),
			async : false,
			_csrf : "${_csrf.token}"
		}, function(data, status) {

			var dropData = data.dropDown;
			var dropDataRemoveLastComma = dropData.substring(0,
					dropData.length - 1);
			var dropDown = dropDataRemoveLastComma.split(',');

			$(minAttachment).text(data.reqFiles);
			$(maxAttachment).text(data.maxFiles);

			if (data.reqFilesNames == "") {
				$(reqFiles).text("N/A");
			} else {
				var requiredFiles = data.reqFilesNames;
				$(reqFiles).text(requiredFiles.replace(/,(\s+)?$/, ''));
			}

			$.each(dropDown, function(i, p) {
				$(dropdownAttachment).append(
						$('<option></option>').val(p).html(p));
			});
		});
	}

	var selectedVal = $(".transactionType").val();
	ajaxPostCallById(selectedVal);

	//----------------- Get Bank And Branch -----------------------------------------------
	//-------- on change: bankCode field
	var filterBranchForBank = jQuery('#bankCode');

	filterBranchForBank.change(function() {

		var bankCode = $(this).val();
		//accountTabDataGenerate(); //------------------- Generate Account Debit Credit Data

		$.get(pageUrl + "getBranchByBankCode/", {
			bankCode : bankCode,
			async : false
		}, function(data, status) {

			var branchList = data.branchList;
			$('#branchCode').empty();

			$('#branchCode').append(
					$('<option selected></option>').val("Any Branch").html(
							"Any Branch"));
			$.each(data.branchList, function(i, p) {
				$('#branchCode').append($('<option></option>').val(i).html(p));
			});

			generateHiddenFieldData();
			accountTabDataGenerate();
		});

	});

	//-------- on change: branchCode field
	var branchField = jQuery('#branchCode');

	branchField.change(function() {
		generateHiddenFieldData();
	});
	//----------------------------------------- Get all bank and (branch for first bank): start -----------------------------------------
	function getBankBranch() {
		$
				.get(
						pageUrl + "getBankBranch/",
						{
							async : false,
							_csrf : "${_csrf.token}"
						},
						function(data, status) {

							var bankList = data.bankList;
							var branchList = data.branchList;

							$('#bankCode').empty();
							$.each(data.bankList, function(i, p) {
								$('#bankCode').append(
										$('<option value="'+i+'">' + p
												+ '</option>'));
							});

							$('#branchCode').empty();
							$('#branchCode')
									.append(
											$('<option selected value="Any Branch">Any Branch</option>'));
							$.each(data.branchList, function(i, p) {
								$('#branchCode').append(
										$('<option value="'+i+'">' + p
												+ '</option>'));
							});

							generateHiddenFieldData();
							accountTabDataGenerate(); //------------------- Generate Account Debit Credit Data
						});
	}

	//----------------------------------------- Get all bank and (branch for first bank): start
	//----------------------------------------------------------------------------------
	var checkDate = $(".chequeDate").val();

	$(".chequeDate").click(function() {
		var selectedValue = $(this).val();
	});

	$(".customerAccount").click(
			function() {
				var customerAccountType = getRadioCheckedAccountType(
						"customerAccount", 2);
				$("#acctype1_hidden_data #customerAccountType").val(
						customerAccountType);
				generateHiddenFieldData();
				accountTabDataGenerate();
			});

	$(".agentAccount").click(
			function() {
				var agentAccountAmount = getRadioCheckedAccountType(
						"agentAccount", 2);
				var agentAccountCurrency = getRadioCheckedAccountType(
						"agentAccount", 3);
				var agentAccountType = getRadioCheckedAccountType(
						"agentAccount", 4);

				$("#acctype2_hidden_data #agentAccountAmount").val(
						agentAccountAmount);
				$("#acctype2_hidden_data #agentAccountCurrency").val(
						agentAccountCurrency);
				$("#acctype2_hidden_data #agentAccountType").val(
						agentAccountType);

				generateHiddenFieldData();
				accountTabDataGenerate();
			});

	$("#customerBankAcc").find("input").each(function(index, element) {
		if (element.value == "SB") {
			$("#SB").attr('checked', true);
		}
	});

	$("#agentBankAcc").find("input").each(function(index, element) {
		if (element.value == "CD") {
			$("#agentBankAcc #CD").attr('checked', true);
		}
	});

	$("#btnEmployee")
			.on(
					"click",
					function() {
						var code = $('#companyCode').val();
						var customer_fundamental_type = "Customer";

						//ShowModal("crm/clc/customer_verification/create?action_type_code=SELECT&actioncallback=loadEmployee2");
						ShowModal("crm/clc/banking_customer/quicksearchbcustomershow?action_type_code=SELECT&actioncallback=loadEmployee&companyCode="
								+ code
								+ "&customer_fundamental_type="
								+ customer_fundamental_type);
					});

	$("#varifyBiometricEmployee")
			.on(
					"click",
					function() {

						var code = $('#companyCode').val();

						//ShowModal("hrm/ed/employee/quicksearchemployeeshow?action_type_code=SELECT&actioncallback=loadEmployee&companyCode="+ code);
						ShowModal("crm/clc/customer_verification/create?action_type_code=SELECT&actioncallback=loadEmployee2");
					});

	function loadEmployee(emp) {

		var customer = JSON.parse(unescape(emp));
		console.log(customer);

		var customerName = customer.entityName;
		/* var customer_address = customer.entityAddress; */
		var customerAddress = customer.districtName;
		var customerPhone = customer.mobile;
		var customerEmail = customer.email;
		var customerImageId = customer.id;

		if (customerPhone == '') {
			customerPhone = customer.phone;
		}

		$(".customerName").text(customerName);
		$(".customerAddress").text(customerAddress);
		$(".customerPhone").text(customerPhone);
		$(".customerEmail").text(customerEmail);
		$(".customerImage img").attr(
				"src",
				"assets/images/company/CTS/emp/photo/" + customerImageId
						+ ".jpg");

		$('.customerAccountTable').show(500);

		$("#customerId").val(customerImageId);
		$("#customerCode").val(customer.entityCode);

		loadBankAccount(customer.entityCode);

		generateHiddenFieldData();
		accountTabDataGenerate();
		HideModal('search-modal');

	}

	/* ------------------------Kamrul Hasan------------------- */
	/* ------------------------Bank Account------------------- */

	function loadBankAccount(entityCode) {

		$
				.get(
						pageUrl + "getCustomerBankAccount/",
						{
							entityCode : entityCode,
							async : false
						},
						function(data, status) {

							for (var i = 0; i < data.length; i++) {
								/* 		var accountInfoHtml = '<tr><td>' + data[i].accountNumber
												+ '</td>';
										accountInfoHtml += '<td>' + data[i].entityFundamentalType + '</td>';
										accountInfoHtml += '</tr>';
								 */

								var accountInfoHtml = '<tr><td><div class="row"><div class="col-md-12"><div class="form-group margin-bottom-0">';
								accountInfoHtml += '<div class="clip-radio radio-primary optional margin-bottom-0 margin-top-0 ">';
								if (i == 0) {
									accountInfoHtml += '<input id="{$data[i].accountNumber}" checked="checked" name="customer_account" class="customer_account" type="radio" value="{$data[i].accountNumber}">';

								} else {
									accountInfoHtml += '<input id="{$data[i].accountNumber}" name="customer_account" class="customer_account" type="radio" value="{$data[i].accountNumber}">';

								}

								accountInfoHtml += ' <label for="{$data[i].accountNumber}" class="control-label dirty-check">'
										+ data[i].accountNumber + '</label> ';
								accountInfoHtml += '</div></div></div></div></td>	<td class="text-center">'
										+ data[i].productSubgroupName
										+ '</td></tr>'

								$('.customerAccountDetails').append(
										accountInfoHtml);

							}

						});

	}
	/* -------------------------Bank Account------------------------------ */

	$.each($('td.money:not(.money-linked)'), function(i, item) {
		var res = FormatMoney($(this).val());
		$("#finalCredit b").text(res);

	});

	//------------ Testing Perpouse. Should REMOVE Later.
	$(".submitButton").click(function() {
		var trans_type = $('.transactionType').val();
		console.log("Submitted ------------ " + trans_type.toUpperCase());
		generateHiddenFieldData();
	});

	function showMessage(data) {
		var priv = data.data.privCode;
		if (data.outcome == 'success') {
			ShowSuccessMsg('Saved successfully', data.message);
			isDirty = false;
			LoadMainContent(pageUrl + "show/" + data.id + "/" + data.mode
					+ '/CREATE/?priv_code=' + priv);
		} else {
			ShowErrorMsg('Unsuccessful', 'Failed');
		}
	}
</script>

<!-- Git Push Time : 20 Dec, 08:00 PM -->