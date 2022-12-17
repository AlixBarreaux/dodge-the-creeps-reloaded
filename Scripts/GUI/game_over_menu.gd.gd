extends Panel
class_name GameOverMenu


# ----------------- DECLARE VARIABLES -----------------

# ---------------------- RUN CODE ---------------------


func _ready() -> void:
	self.hide()


# ----------------- DECLARE FUNCTIONS -----------------


func _on_PlayAgainButton_pressed() -> void:
	self.hide()
	Events.emit_signal("game_started")
	return


func _on_QuitToMainMenuButton_pressed() -> void:
	self.hide()
	Events.emit_signal("main_menu_requested")
	return


func _on_GameOverMenu_visibility_changed() -> void:
	if self.visible:
		Global.can_pause_menu_show = false