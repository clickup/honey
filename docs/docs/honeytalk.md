Honey tests are written in a natural test language called "HoneyTalk" which looks like English. There are many built-in actions, modifiers, and functions but the language is fully extensible and you can easily define custom functions in Dart and (soon) HoneyTalk itself.

A test consists of a number of statements that are executed one after another. If any statement fails, the test will abort immediately. If all statements are successful, the test is passed.

# 1. Interactions with the UI

Since the app has many interactions with asynchronous resources (like network requests or the file system), loading indicators are displayed throughout the app. To make tests predictable and independent of the network quality, Honey will rerun failed UI interactions a number of times.

## Click & Tap
The click action will try to find the specified target widget and issue a click event. All widgets can be tapped regardless of their type or Semantics configuration. You can use "click" and "tap" interchangeably.

Options: `left`, `right`, `double`, `long`

```
click "login"
```
or
```
tap on the "login" button
```
or
```
tap the third image
```
or
```
double click the button in the center of the screen
```
or
```
right click the image in the top left corner of the "select task" list
```
or
```
long tap the focused text field
```
or
```
tap the "logo" image with offset "0.2, 0.2"
```
or
```
click at "0.5, 0.5"
```
or
```
click at "140, 280"
```

## Swipe
The swipe action will try to find the specified target widget and issue a swipe event. All widgets can be tapped regardless of their type or Semantics configuration. You can use "swipe", "slide" and "scroll" interchangeably.

There are 4 types of swipe `left` (default), `right` , `up` , `down`

You have to specify how many points / how long swipe should be by using 
`by {number}`  notation 

Example:
swipe left "Today" by 300

Entering text
Use the enter command to enter text in a text field. If no target field is specified, the text will be entered in the focused text field.

enter "user@clickup.com" into "email"
or
enter myVariable
or
enter the value of "textfield1" into "textfield2"
or
enter the first character of the second word of "some random words" into the text field

TODO: entering keys like "tab" or "backspace"

# 2. Verifications

Until now we did not actually test anything. The point of end-to-end tests is to verify that certain actions a user would take lead to the desired state of the app.

Seeing widgets
Use the "see" or "look at" action to make sure a certain widget exists. You can add references and conditions to the widget to make sure the widget is in the correct location and state.
```
see "login"
```
or
```
look at the link "terms & conditions"
```
or
```
see a "back" button
```
or
```
see the "logout" button below the "user info" widget
```

Verifying expressions
Any expression that returns true or false can be verified.
```
verify that someVariable = "5"
```
or
```
verify that the length of the value of the text field is 0
```
or
```
verify that there are no images
```
or
```
verify that "some very long text" does not contain "abc"
```
or
```
verify that the "login" button is not visible
```


# 3. Finding widgets on the screen

Honey uses the Flutter Semantics tree to find visible widgets. The Semantics tree is intended for accessibility services like voice-over.

## Content
The easiest way to find a widget is by some text it contains. For example:
```
click on "login"
```
will tap the first widget on the screen that contains the text 
"login" (or "Login" or "LOGin"). 

To find widgets with correct casing use

```
click on case sensitive "login"
```

If you want to make sure that the widget does not contain any other text use
click on exactly "login"

## Type
There are more ways to find the correct widget. Every widget has one or more types that can be used to find a specific widget:
- widget (every widget is a "widget")
- button
- link
- text field
- slider
- image
- list
- checkbox
- switch
- header
```
tap on the button
```
will tap on the first button on the screen
```
tap on the button "login"
```
will tap on the first button that contains the word "login"


## Attributes
You can further refine your search by specifying one or more attributes. There are many built-in but it's also possible to define custom attributes in Dart.
```
tap on the focused text field
```
or
```
tap the unchecked checkbox
```
or
```
enter "some text" into the first enabled text field
```


## References
Sometimes it's hard to determine a unique way to address a widget. You can use relative references to other widgets. You can combine up to three references.
```
tap on the button below the image "logo"
```
or
```
click the checkbox at the center of the screen
```
or
```
tap the widget at the bottom left corner of the scrollable "my modal"
```

## Filters
Filters are the most powerful way to specify a target widget. The given expression will be evaluated on each widget to determine whether it matches your search.
```
tap on the button where value is not "Create task"
```
or
```
verify that a textfield where value > 20 exists
```
or
```
look at the second image where tooltip contains "logo"
```

# 4. Variables

HoneyTalk allows you to create variables that can either contain values or widgets.

```
put the button "delete" into deleteButton
tap on deleteButton
```

or

```
put the value of the focused text field into emailVar
tap on "next"
verify that the label of the "email" widget is emailVar
```

like all other identifiers, variables are case insensitive so you can for example use EMAIL instead of email.

# 5. Functions 

It is possible to call dart functions from inside the HoneyTalk! If you need to specify action executed on dart side you can do it! you can even pass parameters!

If you want to have callable dart function, first you need to create it under your dart project. 

```dart
Future<EvaluatedExpr> autoLogin() {
  //Do your api call here and store the result 
  return empty();
}
```

Expose map of functions for Honey: 
```dart
final customFunctions = <String, HoneyFunction>{
  'autoLogin' : autoLogin ,
}
```

Pass it to Honey during initialization
```dart
HoneyWidgetsBinding.ensureInitialized(
      customFunctions: customFunctions,
);
```
Now you can call it from your `*.honey` file!  
```
autoLogin()

tap "Action" button
verify "New note" is visible
```

# 6. Condition statements

Some of test scenarios have to fulfill different requirements, e.g if something is visible you should go this way otherwise you should take another.

To solve this problem you should use condition statements. you can use classic `if-else`  notation: 
```
if "button" is visible then
  print "hello"
else
  print "world"
endif
```
You can also use multiple else if  statements: 
```
if true then
  print "hello"
else if false then
  print "abc"
else if true then
  print "world"
else
  print "bye"
endif
```
You can even do nested if statements
```
 if "MyWidget" is visible then
   if "MyWidgetInside" is visible then
     print "hello"
   else
     print "world"
   endif
else if "ListView" is visible then
   if "Item2" is visible then
      print "HELLO"
   else
      print "WORLD"
    endif
else
  print "bye"
endif
```




