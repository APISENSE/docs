var targets;

function Targets() {
	this.androidBlock = document.getElementById('show-android');
	this.iosBlock = document.getElementById('show-ios');
	this.androidBtn = document.getElementById('android-btn');
	this.iosBtn = document.getElementById('ios-btn');
}

function displayAndroid() {
	targets.androidBlock.style.display = "block";
	targets.iosBlock.style.display = "none";

	targets.androidBtn.className = "btn btn-primary navbar-btn";
	targets.iosBtn.className = "btn btn-default navbar-btn";
}

function displayIOS() {
	targets.androidBlock.style.display = "none";
	targets.iosBlock.style.display = "block";

	targets.iosBtn.className = "btn btn-primary navbar-btn";
	targets.androidBtn.className = "btn btn-default navbar-btn";
}

$(document).ready(function() {
	targets = new Targets;
	displayAndroid();
});	