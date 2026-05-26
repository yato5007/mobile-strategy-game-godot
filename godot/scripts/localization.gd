extends Node

var locale: String = "en"
var strings = {
	"en": {
		"title": "Banner of the Majlis",
		"subtitle": "Council of Claims",
		"play": "PLAY",
		"mode_select": "Select Game Mode",
		"mode_ffa": "FFA • 1v1v1v1",
		"mode_2v2": "2 vs 2 • Team Battle",
		"phase_opening": "Opening Council",
		"phase_rising": "Rising Debate",
		"phase_final": "Final Petition",
		"phase_reveal": "Final Majlis Reveal",
		"your_claim": "Your Claim",
		"seal_commit": "✦ Seal Commit (Lock Your Plan)",
		"winner": "wins the Majlis!",
		"claim_banner": "Your Claim Banner",
	},
	"ar": {
		"title": "راية المجلس",
		"subtitle": "مجلس المطالبات",
		"play": "▶ العب",
		"mode_select": "اختر وضع اللعب",
		"mode_ffa": "الكل ضد الكل 1v1v1v1",
		"mode_2v2": "فريق ضد فريق • 2v2",
		"phase_opening": "مجلس الافتتاح",
		"phase_rising": "المداولة المتصاعدة",
		"phase_final": "العرائض الختامية",
		"phase_reveal": "الكشف الختامي للمجلس",
		"your_claim": "مطالبتك",
		"seal_commit": "✦ الختم (أغلق خطتك)",
		"winner": "يفوز بالمجلس!",
		"claim_banner": "راية مطالبتك",
	}
}

func tr(key: String) -> String:
	if strings.has(locale) and strings[locale].has(key):
		return strings[locale][key]
	if strings["en"].has(key):
		return strings["en"][key]
	return key

func set_locale(loc: String):
	if strings.has(loc):
		locale = loc
