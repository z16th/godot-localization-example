extends RichTextLabel

export var translation_key := ""

func _ready():
	GameManager.connect("locale_updated",self,"on_locale_updated")
	set_localized_text()

func on_locale_updated(_locale):
	set_localized_text()

func set_localized_text():
	if translation_key != "":
		text = tr(translation_key)
