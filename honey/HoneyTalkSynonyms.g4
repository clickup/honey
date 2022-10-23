grammar HoneyTalkSynonyms;

// Actions

verify:
	'verify'
	| 'verifying'
	| 'check'
	| 'checking'
	| 'assert'
	| 'asserting'
	| 'expect'
	| 'expecting'
	| 'test'
	| 'testing'
	| 'make' 'sure'
	| 'making' 'sure';

see:
	'see'
	| 'seeing'
	| 'look'
	| 'looking'
	| 'watch'
	| 'watching';

set:
	'set'
	| 'setting'
	| 'change'
	| 'changing'
	| 'update'
	| 'updating';

store:
	'store'
	| 'storing'
	| 'put'
	| 'putting'
	| 'save'
	| 'saving';

wait:
	'wait'
	| 'waiting'
	| 'delay'
	| 'delaying'
	| 'sleep'
	| 'sleeping';

print:
	'print'
	| 'printing'
	| 'output'
	| 'outputting'
	| 'message'
	| 'messaging';

click:
	'click'
	| 'clicking'
	| 'tap'
	| 'tapping'
	| 'touch'
	| 'touching'
	| 'press'
	| 'pressing'
	| 'push'
	| 'pushing'
	| 'hit'
	| 'hitting'
	| 'slam'
	| 'slamming';

enter:
	'enter'
	| 'entering'
	| 'type'
	| 'typing'
	| 'input'
	| 'inputting';

swipe:
	'swipe'
	| 'swiping'
	| 'slide'
	| 'sliding'
	| 'scroll'
	| 'scrolling'
	| 'drag'
	| 'dragging';

// Widgets

widget: 'widget' | 'widgets';

button: 'button' | 'buttons' | 'btn' | 'btns';

link: 'link' | 'links' | 'hyperlink' | 'hyperlinks';

textfield: ('text' | 'input') ('field' | 'fields')
	| 'edit' ('text' | 'texts')
	| 'textfield'
	| 'textfields'
	| 'inputfield'
	| 'inputfields'
	| 'edittext'
	| 'edittexts';

slider: 'slider' | 'sliders';

image:
	'image'
	| 'images'
	| 'picture'
	| 'pictures'
	| 'photo'
	| 'photos'
	| 'icon'
	| 'icons';

checkbox: 'check' ('box' | 'boxes') | 'checkbox' | 'checkboxes';

sswitch: 'switch' | 'switches';

header: 'header' | 'headers';

exists: // Expressions
	'exist'
	| 'exists'
	| 'existing'
	| 'visible'
	| 'there';

starts:
	'start'
	| 'starts'
	| 'starting'
	| 'begin'
	| 'begins'
	| 'beginning';

ends: 'end' | 'ends' | 'ending';

contains:
	'contain'
	| 'contains'
	| 'containing'
	| 'include'
	| 'includes'
	| 'including';

matches: 'match' | 'matches' | 'matching';

// Misc

character: 'character' | 'characters' | 'char' | 'chars';

word: 'word' | 'words';

line: 'line' | 'lines';

of: 'of' | 'from' | 'in';

isAre: 'is' | 'are' | 'does';

isAreNot:
	'is' 'not'
	| 'isn\'t'
	| 'are' 'not'
	| 'aren\'t'
	| 'does' 'not'
	| 'doesn\'t';