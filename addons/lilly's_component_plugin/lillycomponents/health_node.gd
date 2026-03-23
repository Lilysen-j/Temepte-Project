extends Node

class_name HealthComponent
## when hp 0 or below, to dust it goes
signal to_dust
@export var hp = 10

func taken_damage(damage:int) -> void:
	hp -= damage
	print(str(hp))
	check_damage()
	
func check_damage() -> void:
	if hp <= 0:
		to_dust.emit()
		
