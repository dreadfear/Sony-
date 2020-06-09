module.exports = {

	theme: {
		container: {
			center: true,
			padding: "15px"
		},
		//breakkpoint
		screens: {
			sm: {
				min: "576px"
			},

			md: {
				min: "768px"
			},

			lg: {
				min: "1024.1px"
			},

			xl: {
				min: "1280px"
			}
		},
		inset: {
			"0": "0",
			"50": "50%",
			"100": "100%"
		},
		fontSize: {
			"48": "3rem",
			"44": "2.75rem",
			"42": "2.625rem",
			"40": "2.5rem",
			"36": "2.25rem",
			"32": "2rem",
			"30": "1.875rem",
			"28": "1.75rem",
			"26": "1.625rem",
			"24": "1.5rem",
			"22": "1.375rem",
			"20": "1.25rem",
			"18": "1.125rem",
			"17": "1.0625‬rem",
			"16": "1rem",
			"15": "0.9375rem",
			"14": "0.875rem",
			"13": "0.8125‬rem",
			"12": "0.75rem",
			"11": "0.6875‬rem"
		},
		colors: {
			primary: {
				'1': '#2c3e50',
				'2': '#35495e',
			},

			azure: {
				'1': '#e1f0f5',
				'2': '#7ac3d3',
				'3': '#f3f6fb',
				'4': '#f1f9fb'
			},

			blue: "#1b79a7",
			grey: "#333333",
			'grey-2': "#4a4a4a",
			dove: "#666666",
			dusty: "#999999",
			black: "#000000",
			white: "#ffffff",
			yellow: "#ffd200"
		},
		extend: {
			spacing: {
				'14': '3.5rem',
				'15': '3.75rem',
				'18': '4.5rem',
				'22': '5.5rem',
				'26': '6.5rem',
				'28': '7rem',
				'30': '7.5rem',
				
			  }
		},
	},
	corePlugins: {
		container: false,
		translate: false,
		gridTemplateColumns: false,
		gridTemplateRows: false,
		gridAutoFlow: false,
		gridRow: false,
		gridRowStart: false,
		gridRowEnd: false,
		gridColumn: false,
		gridColumnStart: false,
		gridColumnStartEnd: false,
		backgroundAttachment: false,
		boxShadow: false,
		rotate: false,
		order: false,
		transformOrigin: false,
		transitionProperty: false,
		transitionTimingFunction: false,
		transitionDuration: false,
		skew: false,
		scale: false,
		borderColor: false,
		accessibility: false,
		alignSelf: false,
		appearance: false,
		borderCollapse: false,
		borderStyle: false,
		fill: false,
		flexShrink: false,
		flexGrow: false,
		float: false,
		fontFamily: false,
		letterSpacing: false,
		maxWidth: false,
		objectPosition: false,
		resize: false,
		stroke: false,
		wordBreak: false,
		placeholderColor: false,
		objectFit: false,
		objectPosition: false,
		minHeight: false,
		maxHeight: false,
		minWidth: false,
		maxWidth: false,
	},

	variants: {
		padding: ['responsive'],
		margin: [],
		backgroundColor: [],
		borderColor: [],
		boxShadow: [],
		fontWeight: [],
		opacity: ['hover'],
		outline: [],
		textColor: ['hover'],
		textDecoration: ['hover'],
		backgroundPosition: [],
		backgroundRepeat: [],
		backgroundColor: [],
		backgroundSize: ['responsive'],
		borderStyle: [],
		borderColor: ['hover', 'focus'],
		borderWidth: [],
		borderRadius: [],
		cursor: ['hover'],
		zIndex: [],
		gap: [],
		lineHeight: ['responsive'],
		listStylePosition: [],
		listStyleType: [],
		fontSize: ['responsive'],
		cursor: [],
		opacity: [],
		textDecoration: [],
		translate: [],
		transitionDuration: [],
		transitionProperty: [],
		transitionTimingFunction: [],
		transformOrigin: [],
		gap: [],
		lineHeight: [],
		height: [],
		whitespace: [],

	},
	plugins: [
		function ({
			addUtilities,
			config
		}) {
			addUtilities({
				//Translate tranform
				".translate-50": {
					transform: "translate(-50%,-50%)"
				},
				".translate-x-50": {
					transform: "translateX(-50%)"
				},
				".translate-y-50": {
					transform: "translateY(-50%)"
				},
				".translate-x-100": {
					transform: "translateX(-100%)"
				},
				".translate-y-100": {
					transform: "translateY(-100%)"
				},
				".translate-0": {
					transform: "translate(0)"
				},
				//Transition
				".transition": {
					transition: ".3s all ease-in-out"
				},
				".transition-opacity": {
					transition: "opacity .3s ease-in-out"
				},
				".transition-cubic": {
					transition: "all .8s cubic-bezier(.68,-.55,.265,1.55)"
				},
				".transition-transform": {
					transition: "transform .3s ease-in-out"
				}
				// before after variable
			});
		}
	]
}