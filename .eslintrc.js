module.exports = {
	"env": {
		"browser": true,
		"es6": true
	},
	"extends": "eslint:recommended",
	"parserOptions": {
		"ecmaVersion": 6,
		"sourceType": "module",
		"ecmaFeatures": {
			"jsx": true
		}
	},
	"rules": {
		"indent": [
			"error",
			"tab"
		],
		"linebreak-style": [
			"error",
			"unix"
		],
		"semi": [
			"error",
			"always"
		],
		"no-console": [
			"error",
			{
				allow: [
					"log",
					"warn",
					"error"
				]
			}
		],
		"no-unused-vars": [
			"error",
			{
				"vars": "local"
			}
		]
	}
};
