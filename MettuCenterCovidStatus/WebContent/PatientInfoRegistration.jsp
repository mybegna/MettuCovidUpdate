<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Mettu Center - Dashboard</title>

<!-- Custom fonts for this template-->

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.0/examples/checkout/">

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/form-validation.css" rel="stylesheet">

<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

	<%
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");
		if (session.getAttribute("role") == null) {
			response.sendRedirect("login.jsp");
		}
	%>
	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<jsp:include page="include/sidebarmenu.jsp"></jsp:include>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<!-- Registration form -->

			<div class="container">
				<div class="row no-gutters align-items-center">
					<div class="col-md-12 ">

						<h2>Patient Registration</h2>
						<hr>
					</div>
					<hr>
				</div>
				<%
					if (!(session.getAttribute("SuccessText") == null)) {
				%>
				<div class="alert alert-success">
					<strong>
						<c:out value="${SuccessText}"></c:out>
					</strong>

				</div>
				<%
					}else
					{
						%>
						<div class="row">
						<strong>
							
						</strong>

					</div><%
					}
				%>
				<div class="row">

					<div class="col-lg-12 mb-4">
						<form class="needs-validation" method="post"
							action="AddPatientInfoController">
							<div class="row">
								<div class="col-md-6 mb-3">
									<label for="firstName">First name</label> <input type="text"
										class="form-control" id="firstName" name="firstName"
										placeholder="" value="" required="">
									<div class="invalid-feedback">Valid first name is
										required.</div>
								</div>
								<div class="col-md-6 mb-3">
									<label for="middleName">Middle name</label> <input type="text"
										class="form-control" id="middileName" name="middleName"
										placeholder="" value="">
									<div class="invalid-feedback">Valid last name is
										required.</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-6 mb-3">
									<label for="lastName">Last name</label> <input type="text"
										class="form-control" id="lastName" name="lastName"
										placeholder="" value="" required="">
									<div class="invalid-feedback">Valid last name is
										required.</div>
								</div>
								<div class="col-md-3 mb-3">
									<label for="age">Age</label> <input type="number"
										class="form-control" id="age" name="age" placeholder=""
										required="" max="145">
									<div class="invalid-feedback">Valid Age.</div>
								</div>
								<div class="col-md-3 mb-3">
									<label for="state">Gender</label> <select
										class="custom-select d-block w-100" id="gender" name="gender"
										required="">
										<option value="">Choose...</option>
										<option>Male</option>
										<option>Female</option>


									</select>
									<div class="invalid-feedback">Please provide a valid
										Gender.</div>
								</div>
								<div class="col-md-6 mb-3">
									<label for="email">Email</label> <input type="email"
										class="form-control" id="email" name="email" placeholder="">
									<div class="invalid-feedback">Please enter email .</div>
								</div>
								<div class="col-md-6 mb-3">
									<label for="phoneNo">Phone Number</label> <input type="tel"
										class="form-control" id="phoneNo" name="phoneNo"
										placeholder="" value="" maxlength="10" required="">
									<div class="invalid-feedback">Valid phone no is required.</div>
								</div>

							</div>

							<div class="row">
								<div class="col-md-6 mb-3">
									<label for="address">Address</label> <input type="text"
										class="form-control" id="address" name="address"
										placeholder="" required="">
									<div class="invalid-feedback">Please enter address.</div>
								</div>
								<div class="col-md-3 mb-3">
									<label for="kebele">Kebele</label> <input type="text"
										class="form-control" id="kebele" name="kebele" placeholder=""
										required="">
									<div class="invalid-feedback">Please enter kebele.</div>
								</div>

								<div class="col-md-3 mb-3">
									<label for="woreda">Woreda</label> <input type="text"
										class="form-control" id="woreda" name="woreda" placeholder=""
										required="">
									<div class="invalid-feedback">Please enter address.</div>
								</div>

							</div>
							<div class="row">
								<div class="col-md-3 mb-3">
									<label for="zone">Zone</label> <input type="text"
										class="form-control" id="zone" name="zone" placeholder=""
										required="">
									<div class="invalid-feedback">Please enter address.</div>
								</div>
								<div class="col-md-3 mb-3">
									<label for="region">Region</label> <select
										class="custom-select d-block w-100" id="region" name="region"
										required="">
										<option value="">Choose...</option>
										<option>Addis Ababa</option>
										<option>Afar</option>
										<option>Amhara</option>
										<option>Benishangul Gumuz</option>
										<option>Dire Dawa</option>
										<option>Gambela</option>
										<option>Harari</option>
										<option>Oromia</option>
										<option>Somali</option>
										<option>Southern National</option>
										<option>Tigray</option>
									</select>
									<div class="invalid-feedback">Please provide a valid
										Region.</div>
								</div>



								<div class="col-md-3 mb-3">
									<label for="country">Country</label> <input type="text"
										class="form-control" id="country" name="country"
										placeholder="" required="">
									<div class="invalid-feedback">Please enter address.</div>
								</div>
								<div class="col-md-3 mb-3">
									<label for="citizenship">Citizenship</label> <input type="text"
										class="form-control" id="citizenship" name="citizenship"
										placeholder="" required="">
									<div class="invalid-feedback">Please enter citizenship.</div>
								</div>
							</div>



							<div class="row">
								<div class="col-md-6 mb-3">
									<label for="natureOfJob">Nature of Job</label> <input
										type="text" class="form-control" id="natureOfJob"
										name="natureOfJob" placeholder="" value="" required="">
									<div class="invalid-feedback">Valid Nature of job is
										required.</div>
								</div>
								<div class="col-md-6 mb-3">
									<label for="preDisease">Previous History of Disease </label> <input
										type="text" class="form-control" id="preDisease"
										name="preDisease" placeholder="" value="" required="">
									<div class="invalid-feedback">Valid disease is required.</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-6 mb-3">
									<label for="admittedOn">Admitted On</label> <input type="date"
										data-date-format="dd-mm-yyyy" class="form-control"
										id="admittedOn" name="admittedOn" placeholder="" value=""
										required="">
									<div class="invalid-feedback">Valid Date.</div>
								</div>
								<div class="col-md-6 mb-3">
									<label for="travelHistory">Travel History from Abroad</label> <input
										type="text" class="form-control" id="travelHistory"
										name="travelHistory" placeholder="" value="" required="">
									<div class="invalid-feedback">Valid Travel History is
										required.</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-6 mb-3">
									<label for="contactwithcase">Contact with confirmed
										cases</label> <select class="custom-select d-block w-100"
										id="contactWithCases" name="contactWithCases" required="">
										<option value="">Choose...</option>
										<option>Yes</option>
										<option>No</option>
									</select>
									<div class="invalid-feedback">Please provide a valid
										Reason.</div>
								</div>
								<div class="col-md-6 mb-3">
									<label for="presentStatus">Present Status of Patient
										cases</label> <select class="custom-select d-block w-100"
										id="presentStatus" name="presentStatus" required="">
										<option value="">Choose...</option>
										<option>Critical</option>
										<option>Died</option>
										<option>Normal</option>
										<option>Quarantined</option>
										<option>Recovered</option>
										<option>Returned to their country</option>


									</select>
									<div class="invalid-feedback">Please provide a valid
										Reason.</div>
								</div>
							</div>
							<hr class="mb-4">
							<div class="row">Emergency Contact</div>
							<div class="row">
								<div class="col-md-6 mb-3">
									<label for="emergencyName">Name</label> <input type="text"
										class="form-control" id="ecfirstName" name="ecfirstName"
										placeholder="" value="" required="">
									<div class="invalid-feedback">Valid name is required.</div>
								</div>
								<div class="col-md-6 mb-3">
									<label for="relationShip">Relationship</label> <select
										class="custom-select d-block w-100" id="relationShip"
										name="relationShip" required="">
										<option value="">Choose...</option>
										<option>Brother</option>
										<option>Colleague</option>
										<option>Father</option>
										<option>Friend</option>
										<option>Mother</option>
										<option>Neighborhood</option>
										<option>Sister</option>
										<option>Spouse</option>




									</select>
									<div class="invalid-feedback">Valid relationship is
										required.</div>
								</div>

							</div>

							<div class="mb-3">
								<label for="ecAddress">Address</label> <input type="text"
									class="form-control" id="ecAddress" name="ecAddress"
									placeholder="" required="">
								<div class="invalid-feedback">Please enter address.</div>
							</div>

							<div class="row">
								<div class="col-md-6 mb-3">
									<label for="ecPhoneNo">Phone Number</label> <input type="tel"
										class="form-control" id="ecPhoneNo" name="ecPhoneNo"
										placeholder="" value="" maxlength="10" required="">
									<div class="invalid-feedback">Valid phone no is required.</div>
								</div>
								<div class="col-md-6 mb-3">
									<label for="ecEmail">Email</label> <input type="email"
										class="form-control" id="ecEmail" name="ecEmail"
										placeholder="">
									<div class="invalid-feedback">Please enter valid email.</div>
								</div>


							</div>

							<hr class="mb-4">

							<div class="row">
								<div class="col-md-6 mb-3">
									<label for="allergies">List of Allergies </label> <input
										type="text" class="form-control" id="allergies"
										name="allergies" placeholder="" value="" required="">
									<div class="invalid-feedback">Enter list of allergies.</div>
								</div>
								<div class="col-md-6 mb-3">
									<label for="medications">List current medications</label> <input
										type="text" class="form-control" id="medications"
										name="medications" placeholder="">
									<div class="invalid-feedback">Please enter medications
										list.</div>
								</div>


							</div>
							List any Operations and date of each
							<div class="row">
								<div class="col-md-6 mb-3">
									<label for="operation1">Operation 1</label> <input type="text"
										class="form-control" id="operation1" name="operation1"
										placeholder="" value="">
									<div class="invalid-feedback">Enter operation name.</div>
								</div>
								<div class="col-md-6 mb-3">
									<label for="medications">Date of Operation</label> <input
										type="date" class="form-control" id="doo" name="doo1"
										placeholder="">
									<div class="invalid-feedback">Please enter Valid date.</div>
								</div>
								<div class="col-md-6 mb-3">
									<label for="operation2">Operation 2</label> <input type="text"
										class="form-control" id="operation2" name="operation2"
										placeholder="" value="">
									<div class="invalid-feedback">Enter operation name.</div>
								</div>
								<div class="col-md-6 mb-3">
									<label for="Date of operation">Date of Operation</label> <input
										type="date" class="form-control" id="doo" name="doo2"
										placeholder="">
									<div class="invalid-feedback">Please enter Valid date.</div>
								</div>
								<div class="col-md-6 mb-3">
									<label for="operation3">Operations 3</label> <input type="text"
										class="form-control" id="operation3" name="operation3"
										placeholder="" value="">
									<div class="invalid-feedback">Enter operation name.</div>
								</div>
								<div class="col-md-6 mb-3">
									<label for="doo">Date of Operation</label> <input type="date"
										class="form-control" id="doo" name="doo3" placeholder="">
									<div class="invalid-feedback">Please enter Valid date.</div>
								</div>


							</div>

							<hr class="mb-4">

							<div class="mb-3">
								<label for="familyMedical">Family Medical History</label> <input
									type="text" class="form-control" id="familyHistory"
									name="familyHistory" placeholder="" required="">
								<div class="invalid-feedback">Please enter medical
									history.</div>
							</div>
							<div class="row">
								<div class="col-md-6 mb-3">
									<label for="smoke">Do you smoke </label> <select
										class="custom-select d-block w-100" id="smoke" name="smoke"
										required="">
										<option value="">Choose...</option>
										<option>Yes</option>
										<option>No</option>
									</select>
									<div class="invalid-feedback">Please provide a valid
										Reason.</div>
								</div>
								<div class="col-md-6 mb-3">
									<label for="smoke">Any risk of being pregnant cases</label> <select
										class="custom-select d-block w-100" id="pregnantRisk"
										name="pregnantRisk" required="">
										<option value="">Choose...</option>
										<option>Yes</option>
										<option>No</option>
									</select>
									<div class="invalid-feedback">Please provide a valid
										Reason.</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-6 mb-3">

									<label for="symptoms">Symptoms cases</label>

									<div class="checkbox">
										<label><input type="checkbox" name="symptoms"
											value="High Fever">High Fever </label>
									</div>
									<div class="checkbox">
										<label><input type="checkbox" name="symptoms"
											value="Cough">Cough </label>
									</div>
									<div class="checkbox">
										<label><input type="checkbox" name="symptoms"
											value="Difficulty in breathing">Difficulty in
											breathing </label>
									</div>
									<div class="checkbox">
										<label><input type="checkbox" name="symptoms"
											value="Pressure in the chest">Pressure in the chest </label>
									</div>
									<div class="checkbox">
										<label><input type="checkbox" name="symptoms"
											value="Body aches">Body aches </label>
									</div>
									<div class="checkbox">
										<label><input type="checkbox" name="symptoms"
											value="Nasal Congestion">Nasal Congestion </label>
									</div>
									<div class="checkbox">
										<label><input type="checkbox" name="symptoms"
											value="Running nose">Running nose </label>
									</div>
									<div class="checkbox">
										<label><input type="checkbox" name="symptoms"
											value="Sore throat">Sore throat </label>
									</div>
									<div class="checkbox">
										<label><input type="checkbox" name="symptoms"
											value="Diarrhea">Diarrhea </label>
									</div>
								</div>
							</div>
							<hr class="mb-4">
							<div class="row">
								<div class="col-md-6 mb-3">

									<button class="btn btn-primary btn-lg btn-block" type="submit">Submit</button>

								</div>
								<div class="col-md-6 mb-3">


									<button class="btn btn-warning btn-lg btn-block" type="reset">Cancel</button>
								</div>
							</div>
						</form>
					</div>
				</div>



			</div>
			<!-- end of registration -->


			<!-- /.container-fluid -->

			<!-- End of Main Content -->
			<div class="row"></div>
			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Developed and maintained by Mettu University,
							Ethiopia</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->


			<!-- End of Content Wrapper -->


			<!-- End of Page Wrapper -->

			<!-- Scroll to Top Button-->
			<a class="scroll-to-top rounded" href="#page-top"> <i
				class="fas fa-angle-up"></i>
			</a>

			<!-- <!-- Logout Modal-->
			<!-- <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Ready to
								Leave?</h5>
							<button class="close" type="button" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">�</span>
							</button>
						</div>
						<div class="modal-body">Select "Logout" below if you are
							ready to end your current session.</div>
						<div class="modal-footer">
							<button class="btn btn-secondary" type="button"
								data-dismiss="modal">Cancel</button>
							<a class="btn btn-primary" href="login.html">Logout</a>
						</div>
					</div>
				</div>
			</div>
  -->
			<!-- Bootstrap core JavaScript-->
			<script src="vendor/jquery/jquery.min.js"></script>
			<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

			<!-- Core plugin JavaScript-->
			<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

			<!-- Custom scripts for all pages-->
			<script src="js/sb-admin-2.min.js"></script>

			<!-- Page level plugins -->
			<script src="vendor/chart.js/Chart.min.js"></script>

			<!-- Page level custom scripts -->
			<script src="js/demo/chart-area-demo.js"></script>
			<script src="js/demo/chart-pie-demo.js"></script>
			<!-- Bootstrap core JavaScript
    ================================================== -->
			<!-- Placed at the end of the document so the pages load faster -->
			<script src="js/jquery-3.2.1.slim.min.js.download"
				integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
				crossorigin="anonymous"></script>
			<script>
				window.jQuery
						|| document
								.write(
										'<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')
			</script>
			<script src="js/popper.min.js.download"></script>
			<script src="js/bootstrap.min.js.download"></script>
			<script src="js/holder.min.js.download"></script>
			<script>
				// Example starter JavaScript for disabling form submissions if there are invalid fields
								(
										function() {
											'use strict';

											window
													.addEventListener(
															'load',
															function() {
																// Fetch all the forms we want to apply custom Bootstrap validation styles to
																var forms = document
																		.getElementsByClassName('needs-validation');

																// Loop over them and prevent submission
																var validation = Array.prototype.filter
																		.call(
																				forms,
																				function(
																						form) {
																					form
																							.addEventListener(
																									'submit',
																									function(
																											event) {
																										if (form
																												.checkValidity() === false) {
																											event
																													.preventDefault();
																											event
																													.stopPropagation();
																										}
																										form.classList
																												.add('was-validated');
																									},
																									false);
																				});
															}, false);
										})();
			</script>
			<script>
				/* $("#datepicker").datepicker(); */

				$(document).ready(function() {
					$('#datepicker').datepicker({
						autoclose : true
					});

				});
			</script>
</body>

</html>