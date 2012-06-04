var app = UIATarget.localTarget();
var target = UIATarget.localTarget();

var target = app.frontMostApp().mainWindow();
var DELAY=2;

UIALogger.logStart("SimpleUI - BVT");
UIALogger.logMessage("Model: " + app.model());
UIALogger.logMessage("Name : " + app.name());

//target.logElementTree();


UIATarget.localTarget().delay(DELAY);
target.logElementTree();
UIALogger.logMessage("Sign-in");
var nameTextField = target.textFields()[0];
nameTextField.setValue("qa-androidprem05@rhapsody.lan");
UIATarget.localTarget().delay(DELAY);

