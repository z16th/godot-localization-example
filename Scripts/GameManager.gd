extends Node

# I'm a Singleton script, check Project > Project Settings > Autoload (tab)
# You can learn more about me here: https://docs.godotengine.org/en/stable/tutorials/scripting/singletons_autoload.html
# ... and here: https://gameprogrammingpatterns.com/singleton.html

signal locale_updated

var locale := "en" setget set_locale

func set_locale(new_locale:String):
	locale = new_locale
	TranslationServer.set_locale(locale)
	emit_signal("locale_updated",locale)
