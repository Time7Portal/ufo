#pragma once
#include "Starship.h"
#include <cstdlib>

class StarshipAI : public Object
{
public:
    Vector2 position = Vector2();
    Vector2 rotation = Vector2(1, 0);
    float radius = 0.1f;
    float speed = 0.1f;

    int missileCount = 10;
    Missile missiles[10];

    bool canShoot = true;
    float reload = 4.0f;



    void Update(Starship &starship)
    {
        // 상대 우주선을 향해 회전
        rotation = (starship.position - this->position).Normalize();

        // 랜덤하게 방향 틀기
        this->position.x = this->position.x + (((float)rand() / RAND_MAX) - 0.5f) / 32;
        this->position.y = this->position.y + (((float)rand() / RAND_MAX) - 0.5f) / 32;

        // 미사일은 무조건 쏘고봄
        ShootMissile();

        // 미사일 업데이트
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
            printf("발사할 총알이 남아있지 않습니다.\n");
            return;
        }
        else {
            //printf("총알이 발사되었습니다.\n");
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

