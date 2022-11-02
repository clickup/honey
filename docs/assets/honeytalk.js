Prism.languages.honeytalk = {
  'boolean': {
    'pattern': /\b((yes|true)|(no|false))\b/i,
  },
  'property': {
    'pattern': /\$\b[a-zA-Z][a-zA-Z0-9]*\b/,
  },
  'keyword': {
    'pattern': /\b(if|(then\s+do|then|do)|(else\s+if|elseif|elif)|(else\s+do|else|otherwise\s+do|otherwise)|(end\s+if|endif|end))|(maybe|try\s+to|try|optional|optionally)\b/i,
  },
  'function': {
    'pattern': /\b((verify|verifying|check|checking|assert|asserting|expect|expecting|test|testing|make\s+sure|making\s+sure)|(see|seeing|look|looking|watch|watching)|(set|setting|change|changing|update|updating)|(store|storing|put|putting|save|saving)|(wait|waiting|delay|delaying|sleep|sleeping)|(print|printing|output|outputting|message|messaging)|(click|clicking|tap|tapping|touch|touching|press|pressing|push|pushing|hit|hitting|slam|slamming)|(enter|entering|type|typing|input|inputting)|(swipe|swiping|slide|sliding|scroll|scrolling|drag|dragging)|(error|erroring|fail|failing|exception|throw|throwing))\b/i,
  },
  'operator': {
    'pattern': /\b((&&|&|and)|(\|\||\||or)|(!|not)|(do|does|is|are|was|were)|(do\s+not|does\s+not|is\s+not|are\s+not|was\s+not|were\s+not|don't|doesn't|isn't|aren't|wasn't|weren't|not))|((==|=|(equals|equal|eq)(\s+to)?)|(!=|<>|neq)|(>=|gte|(greater\s+than|greater|gt)(\s+or)?\s+(equal|eq)(\s+to)?)|(>|gt|greater\s+than|greater)|(<=|lte|(less\s+than|less|lt)(\s+or)?\s+(equal|eq)(\s+to)?)|(<|lt|less\s+than|less))|((\+|plus)|(-|minus)|(\*|times|x)|(\/|divided\s+by)|(\^|pow))\b/i,
    'greedy': true,
  },
  'symbol': {
    'pattern': /\b((widget|widgets)|(button|buttons|btn|btns)|(link|links|hyperlink|hyperlinks)|((text|input)\s+(field|fields)|edit\s+(text|texts)|textfield|textfields|inputfield|inputfields|edittext|edittexts)|(slider|sliders)|(image|images|picture|pictures|photo|photos)|(check\s+(box|boxes)|checkbox|checkboxes)|(switch|switches)|(header|headers))\b/i,
  },
  'string': {
		pattern: /"[^"\\r\n]*"/,
		greedy: true
	},
  'number': {
    'pattern': /\b\d+(\.\d+)?\b/i,
  },
};