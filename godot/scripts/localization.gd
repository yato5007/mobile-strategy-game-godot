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
		"play_again": "Play Again",
		"back_menu": "Back to Main Menu",
		"final_title": "Final Majlis Reveal",
		"standings": "Final Standings",
		"claim": "Claim",
		"p1": "Player 1",
		"p2": "Player 2",
		"p3": "Player 3",
		"p4": "Player 4",
		"obj_gain": "Gain Council Favor",
		"obj_support": "Support Ally Influence",
		"obj_counter": "Counter Rival Claim",
		"phase_complete": "Phase Complete",
		"match_ended": "Match Over",
		"council_title": "مجلس المطالبة",
		"act_opening": "Opening Council · Phase {phase}",
		"act_rising": "Rising Debate · Phase {phase}",
		"act_final": "Final Petition · Phase {phase}",
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
		"play_again": "العب مرة أخرى",
		"back_menu": "العودة للقائمة الرئيسية",
		"final_title": "الكشف الختامي للمجلس",
		"standings": "الترتيب النهائي",
		"claim": "مطالبة",
		"p1": "اللاعب 1",
		"p2": "اللاعب 2",
		"p3": "اللاعب 3",
		"p4": "اللاعب 4",
		"obj_gain": "اكتساب حظوة المجلس",
		"obj_support": "دعم نفوذ الحليف",
		"obj_counter": "مواجهة مطالبة الخصم",
		"phase_complete": "اكتملت الجولة",
		"match_ended": "انتهت المباراة",
		"council_title": "مجلس المطالبة",
		"act_opening": "مجلس الافتتاح · المرحلة {phase}",
		"act_rising": "المداولة المتصاعدة · المرحلة {phase}",
		"act_final": "العرائض الختامية · المرحلة {phase}",
	}
}

func get_string(key: String) -> String:
	if strings.has(locale) and strings[locale].has(key):
		return strings[locale][key]
	if strings["en"].has(key):
		return strings["en"][key]
	return key

func set_locale(loc: String):
	if strings.has(loc):
		locale = loc
