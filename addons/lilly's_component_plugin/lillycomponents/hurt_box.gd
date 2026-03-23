extends Area2D

class_name HurtBox


@export var damage:int = 0
@export var popupDamage:bool = true

func _ready() -> void:
	$".".area_entered.connect(_on_area_entered)
	# how many   people do i need to f
func _on_area_entered(area:Area2D) -> void:
	
		if area is HitBox:
			area.taken_damage(damage)
		if popupDamage == true:
			var popUpText:FloatingText = preload("res://FloatingText.tscn").instantiate()
			popUpText.direction = Vector2(0,-10)
			popUpText.text = str(damage)
			popUpText.fit_content = true
			print("damaged by " + str(damage))
			add_child(popUpText)
			
# uwuaahaa
