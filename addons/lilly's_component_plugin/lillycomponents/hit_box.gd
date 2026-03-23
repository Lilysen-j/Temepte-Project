extends Area2D
class_name HitBox
@export var healthNode:HealthComponent



func taken_damage(damage:int) -> void:
	healthNode.taken_damage(damage)
