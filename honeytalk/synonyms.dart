const maybe = {'maybe', 'try to', 'try', 'optional', 'optionally'};

const verify = {
  'verify',
  'verifying',
  'check',
  'checking',
  'assert',
  'asserting',
  'expect',
  'expecting',
  'test',
  'testing',
  'make sure',
  'making sure'
};

const see = {'see', 'seeing', 'look', 'looking', 'watch', 'watching'};

const set = {'set', 'setting', 'change', 'changing', 'update', 'updating'};

const store = {'store', 'storing', 'put', 'putting', 'save', 'saving'};

const wait = {'wait', 'waiting', 'delay', 'delaying', 'sleep', 'sleeping'};

const output = {
  'print',
  'printing',
  'output',
  'outputting',
  'message',
  'messaging'
};

const click = {
  'click',
  'clicking',
  'tap',
  'tapping',
  'touch',
  'touching',
  'press',
  'pressing',
  'push',
  'pushing',
  'hit',
  'hitting',
  'slam',
  'slamming'
};

const enter = {'enter', 'entering', 'type', 'typing', 'input', 'inputting'};

const swipe = {
  'swipe',
  'swiping',
  'slide',
  'sliding',
  'scroll',
  'scrolling',
  'drag',
  'dragging'
};

const error = {
  'error',
  'erroring',
  'fail',
  'failing',
  'exception',
  'throw',
  'throwing',
};

// Widgets

const widget = {'widget', 'widgets'};

const button = {'button', 'buttons', 'btn', 'btns'};

const link = {'link', 'links', 'hyperlink', 'hyperlinks'};

const textfield = {
  [
    {'text', 'input'},
    {'field', 'fields'}
  ],
  [
    'edit',
    {'text', 'texts'}
  ],
  'textfield',
  'textfields',
  'inputfield',
  'inputfields',
  'edittext',
  'edittexts'
};

const slider = {'slider', 'sliders'};

const image = {'image', 'images', 'picture', 'pictures', 'photo', 'photos'};

const checkbox = {
  [
    'check',
    {'box', 'boxes'}
  ],
  'checkbox',
  'checkboxes'
};

const sswitch = {'switch', 'switches'};

const header = {'header', 'headers'};

// Control

const iff = {'if'};

const then = {'then do', 'then', 'do'};

const elseIf = {'else if', 'elseif', 'elif'};

const elsee = {'else do', 'else', 'otherwise do', 'otherwise'};

const endIf = {'end if', 'endif', 'end'};

// Comparisons

const eq = {
  '==',
  '=',
  [
    {'equals', 'equal', 'eq'},
    {'to', ''},
  ],
};

const neq = {
  '!=',
  '<>',
  'neq',
};

const gte = {
  '>=',
  'gte',
  [
    {'greater than', 'greater', 'gt'},
    {'or', ''},
    {'equal', 'eq'},
    {'to', ''},
  ],
};

const gt = {
  '>',
  'gt',
  'greater than',
  'greater',
};

const lte = {
  '<=',
  'lte',
  [
    {'less than', 'less', 'lt'},
    {'or', ''},
    {'equal', 'eq'},
    {'to', ''},
  ],
};

const lt = {
  '<',
  'lt',
  'less than',
  'less',
};

const exists = {'exist', 'exists', 'existing', 'visible', 'there'};

const starts = {'start', 'starts', 'starting', 'begin', 'begins', 'beginning'};

const ends = {'end', 'ends', 'ending'};

const contains = {
  'contain',
  'contains',
  'containing',
  'include',
  'includes',
  'including',
};

const matches = {'match', 'matches', 'matching'};

// Expressions

const yes = {'yes', 'true'};

const no = {'no', 'false'};

const and = {'&&', '&', 'and'};

const or = {'||', '|', 'or'};

const not = {'!', 'not'};

const plus = {'+', 'plus'};

const minus = {'-', 'minus'};

const times = {'*', 'times', 'x'};

const divide = {'/', 'divided by'};

const pow = {'^', 'pow'};

const isAre = {'do', 'does', 'is', 'are', 'was', 'were'};

const isAreNot = {
  'do not',
  'does not',
  'is not',
  'are not',
  'was not',
  'were not',
  "don't",
  "doesn't",
  "isn't",
  "aren't",
  "wasn't",
  "weren't",
  'not'
};

//  Misc

const run = {
  'do',
  'run',
  'call',
  'invoke',
  'perform',
  'trigger',
  'exe',
  'exec',
  'execute',
  'eval'
};

const caseSensitive = {
  ['case', 'sensitive'],
  'case-sensitive'
};

const caseInsensitive = {
  ['case', 'insensitive'],
  'case-insensitive',
  ['ignore', 'case']
};

const exactly = {'exactly', 'exact'};

const left = {'left'};

const right = {'right'};

const top = {'top', 'upper', 'up'};

const bottom = {'bottom', 'lower', 'down'};

const topLeft = {
  [
    {'top', 'upper'},
    {'-', ''},
    {'left'}
  ],
  ['left', 'top']
};

const topRight = {
  [
    {'top', 'upper'},
    {'-', ''},
    {'right'}
  ],
  ['right', 'top']
};

const bottomLeft = {
  [
    {'bottom', 'lower'},
    {'-', ''},
    {'left'}
  ],
  ['left', 'bottom']
};

const bottomRight = {
  [
    {'bottom', 'lower'},
    {'-', ''},
    {'right'}
  ],
  ['right', 'bottom']
};

const length = {'length', 'number', 'count', 'size'};

const character = {'character', 'characters', 'char', 'chars'};

const word = {'word', 'words'};

const line = {'line', 'lines'};

const of = {'of', 'from', 'in'};
