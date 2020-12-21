#include "Missile.h"

Missile::Missile() {
	position = Vector2();
	rotation = Vector2();
	speed = 0.05f;
}

Missile::Missile(Vector2 _position, Vector2 _rotation, float _speed) {
	position = _position;
	rotation = _rotation;
	speed = _speed;
}

Missile::~Missile() {

}

void Missile::Update() {
	lifeTime -= 0.03f;
	MoveForward();

	// �浹 ó��
	// ������Ÿ�� üũ
	// ���� �浹�ߴ��� ������ ���ߴٸ�..
	// ������ Ÿ�� �ʱ�ȭ�ϰ� �ش� �Ѿ� ��Ȱ��ȭ (������ �� �ӵ� �� ���� �ʱ�ȭ)

	Render();
}

void Missile::MoveForward() {
	position = position + rotation * speed;
}

void Missile::Shoot(Vector2 _position, Vector2 _rotation, float _speed) {
	position = _position;
	rotation = _rotation;
	speed = _speed;
	lifeTime = 5;
}

void Missile::Render() {
	if (lifeTime <= 0) return;

	Vector2 vertexes[3] = { Vector2(), Vector2(), Vector2() };
	GetVertexes(vertexes);

	// TODO:: make renderer
	glBegin(GL_TRIANGLES);
	glVertex3f(vertexes[0].x, vertexes[0].y, 0.0f);
	glVertex3f(vertexes[1].x, vertexes[1].y, 0.0f);
	glVertex3f(vertexes[2].x, vertexes[2].y, 0.0f);
	glEnd();
}

void Missile::GetVertexes(Vector2* vertexes) {
	float dAngle1 = (atan2(rotation.x, rotation.y));
	float dAngle2 = (atan2(1, 0));

	float dDiffAngles = PI / 2 - dAngle1;

	if (dDiffAngles < 0)
		dDiffAngles = 2 * PI + dDiffAngles;

	float degree = dDiffAngles;
	vertexes[0] = Vector2(+radius * cos(degree) - 0 * sin(degree), +radius * sin(degree) + 0 * cos(degree)) + position;
	vertexes[1] = Vector2(-radius * cos(degree) - +radius * sin(degree), -radius * sin(degree) + +radius * cos(degree)) + position;
	vertexes[2] = Vector2(-radius * cos(degree) - -radius * sin(degree), -radius * sin(degree) + -radius * cos(degree)) + position;
}