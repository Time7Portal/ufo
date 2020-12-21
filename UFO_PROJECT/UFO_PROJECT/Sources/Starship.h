#pragma once

#include "Object.h"
#include "Vector2.h"
#include "Input.h"
#include "Missile.h"

class Starship : public Object {
public:
	Vector2 position = Vector2();
	Vector2 rotation = Vector2(1, 0);
	float radius = 0.1f;
	float speed = 0.1f;

	int missileCount = 10;
	Missile missiles[10];

	bool canShoot = true;
	float reload = 0.5f;

public:
	Starship();
	~Starship();

	void Update() override;

	void ShootMissile();

	void Render() override;
	void GetVertexes(Vector2* vertexes);
};