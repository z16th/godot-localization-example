extends Button

export var locale_key := "en"

func _on_pressed():
	assert(locale_key, "ERROR: Locale Key needed")
	GameManager.set_locale(locale_key)
