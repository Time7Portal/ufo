#pragma once

#include <GLFW/glfw3.h>

#include "Object.h"
#include "Vector2.h"

class Missile : public Object {
public:
	Vector2 position = Vector2();
	Vector2 rotation = Vector2();
	float speed = 0;
	float lifeTime = 0;
	float radius = 0.005f;

public:
	Missile();
	Missile(Vector2 _position, Vector2 _rotation, float _speed);
	~Missile();

	void Update() override;

	void MoveForward();
	void Shoot(Vector2 _position, Vector2 _rotation, float _speed);

	void Render() override;
	void GetVertexes(Vector2* vertexes);
};