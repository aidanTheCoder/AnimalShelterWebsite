function selectAll(source, type) {
	selectAllThatApplyBoxes = document.getElementsByName(type);
	for(var i = 0, n = selectAllThatApplyBoxes.length; i < n; ++i)
		selectAllThatApplyBoxes[i].checked = source.checked;
}

function isChecked(name) {
	var choices = document.getElementsByName(name);
	for(var i = 0, n = choices.length; i < n; ++i)
		if(choices[i].checked)
			return true;
}

function validDate(date) {
	var today = new Date;
	var enteredDate = new Date(date);
	if(enteredDate.getFullYear() > today.getFullYear())
		return false;
	else if(enteredDate.getFullYear() == today.getFullYear()) 
		if(enteredDate.getMonth() > today.getMonth())
			return false;
		else if(enteredDate.getMonth() == today.getMonth())
			return !(enteredDate.getDate() > today.getDate());
		else
			return true;
	else
		return true;	
}

function checkMissingAnimalForm(formObj) {
	var goodEmail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	var goodPhone = /^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/im;
	if(!goodEmail.test(missing_animal_form.userEmail.value)) {
		alert("Invalid email entered");
		return false;
	} else if(missing_animal_form.userEmail.value 
				!= missing_animal_form.confirmEmail.value) {
		alert("Emails do not match");
		return false;
	} else if(!isChecked("color")) {
		alert("No color selected");
		return false;
	} else if (!isChecked("animalType")) {
		alert("No type selected");
		return false;
	} else if(!isChecked("size")) {
		alert("No size is selected");
		return false;
	} else if(!isChecked("age")) {
		alert("No age is selected");
		return false;
	} else if(!isChecked("neuetered")) {
		alert("No fixed status selected");
		return false;
	} else if(!isChecked("gender")) {
		alert("No gender selected");
		return false;
	} else if(missing_animal_form.last_location.value == '') {
		alert("No last known location entered");
		return false;
	} else if(!goodPhone.test(missing_animal_form.phoneNumber.value)) {
		alert("Invalid phone number format");
		return false;	
	} else if(missing_animal_form.address.value == '') {
		alert("No address entered");
		return false;
	} else if(missing_animal_form.last_day_seen.value == '') {
		alert("Date cannot be blank");
		return false;
	} else if(!validDate(missing_animal_form.last_day_seen.value)) {
		alert("Invalid date");
		return false;
	} else if(missing_animal_form.breed.value == 'Select a breed') {
		alert("No breed selected");
		return false;
	} else {
		return true;
	}
}

function populateDropdown(animalArray, dropDownID) {
	var selectItem = document.getElementById(dropDownID);
	document.getElementById(dropDownID).innerHTML = null;
	for(var i = 0; i < animalArray.length; ++i) {
		var newItem = document.createElement("option");
		newItem.textContent = animalArray[i];
		newItem.value = animalArray[i];
		selectItem.add(newItem);
	}
}

var dogs = ['Not selected', 'poodle', 'beagle', 'pug',
	'german shepard', 'mix', 'pitbull', 'terrier', 'boxer',
	'chihuahua', 'maltese', 'labrador', 'husky', 'bull dog',
	'not listed/unknown'];	
var cats = ['Not selected', 'domestic shorthair', 'siamese',
	'domestic mediumhair', 'american shorthair', 'tabby', 'bombay',
	'not listed/unknown'];
var other = ['Not selected', 'Mustang', 'Arabian', 'quarterhorse',
	'appaloosa', 'not listed/unknown'];
	
function chooseBreed(animalType) {
	if(animalType == 'dog')
		populateDropdown(dogs, 'breed');
	else if(animalType == 'cat')
		populateDropdown(cats, 'breed');
	else if(animalType == 'other')
		populateDropdown(other, 'breed');
}

function getBreed() {
	var selected = document.getElementsByName('breed')[0].value;
	dogs[0] = selected;
	cats[0] = selected;
	other[0] = selected;
}
