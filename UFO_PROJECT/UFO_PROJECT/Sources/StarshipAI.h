#pragma once
#include "Starship.h"
#include <cstdlib>

class StarshipAI : public Object
{
public:
    Vector2 position = Vector2();
    Vector2 rotation = Vector2(1, 0);
    float radius = 0.1f;
    float speed = 0.001f;

    int missileCount = 10;
    Missile missiles[10];

    bool canShoot = true;
    float reload = 4.0f;

    float checkLeftRightTime = 2.0f;
    float checkLeftRightTimeMax = 2.0f;
    Vector2 moveDirection = Vector2();

    void Update(Starship &starship)
    {
        // ��� ���ּ��� ���� ȸ��
        rotation = (starship.position - this->position).Normalize();

        if (checkLeftRightTime <= 0) {
            checkLeftRightTime = checkLeftRightTimeMax;

            float degree = DEG2RAD(rand() * 90);
            // make left right vector
            moveDirection = Vector2(
                rotation.x * cos(degree) - rotation.y * sin(degree),
                rotation.x * sin(degree) + rotation.y * cos(degree)
            );
        }
        else {
            checkLeftRightTime -= 0.3f;
        }

        // �����ϰ� ���� Ʋ��
        position = position + moveDirection * speed;

        // �̻����� ������ ���
        ShootMissile();

        // �̻��� ������Ʈ
        if (reload <= 0) {
            canShoot = true;
        }
        else {
            reload -= 0.03f;
        }
        for (int i = 0; i < missileCount; ++i) {
            missiles[i].Update();
        }

        Render();
    }

    void GetVertexes(Vector2* vertexes) {
        //printf("------------------\n");
        //printf("rotation: %f, %f\n", rotation.x, rotation.y);
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


    void ShootMissile() {

        if (canShoot == false) return;

        Missile* missile = nullptr;
        for (int i = 0; i < missileCount; ++i) {
            if (missiles[i].lifeTime <= 0) {
                missile = &missiles[i];
                break;
            }
        }

        if (missile == nullptr) {
            printf("�߻��� �Ѿ��� �������� �ʽ��ϴ�.\n");
            return;
        }
        else {
            //printf("�Ѿ��� �߻�Ǿ����ϴ�.\n");
        }

        missile->Shoot(position, rotation, 0.01f);
        canShoot = false;
        reload = 4.0f;
    }


    void Render() {
        Vector2 vertexes[3] = { Vector2(), Vector2(), Vector2() };
        GetVertexes(vertexes);

        // TODO:: make renderer
        glBegin(GL_TRIANGLES);
        glVertex3f(vertexes[0].x, vertexes[0].y, 0.0f);
        glVertex3f(vertexes[1].x, vertexes[1].y, 0.0f);
        glVertex3f(vertexes[2].x, vertexes[2].y, 0.0f);
        glEnd();
    }



};

