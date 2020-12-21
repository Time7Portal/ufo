#define PI 3.141592f
#define RADIAN ( PI / 180.0f )
#define DEGREE ( 180.0f / PI )
#define RAD2DEG( Rad  ) ( Rad * DEGREE )
#define DEG2RAD( Degree ) ( Degree * RADIAN )

#include "Starship.h"

Starship::Starship() {
    Vector2 position = Vector2();
    float radius = 0.1f;
    float speed = 0.1f;

    for (int i = 0; i < missileCount; ++i) {
        missiles[i] = Missile();
    }
}

Starship::~Starship() {

}

void Starship::GetVertexes(Vector2* vertexes) {
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

void Starship::Update() {
    if (Input::GetKeyDown(GLFW_KEY_W)) {
        position.y += speed;
    }
    if (Input::GetKeyDown(GLFW_KEY_S)) {
        position.y -= speed;
    }
    if (Input::GetKeyDown(GLFW_KEY_A)) {
        position.x -= speed;
    }
    if (Input::GetKeyDown(GLFW_KEY_D)) {
        position.x += speed;
    }

    if (Input::GetKeyDown(GLFW_KEY_Z)) {
        radius -= 0.001f;
    }
    if (Input::GetKeyDown(GLFW_KEY_X)) {
        radius += 0.001f;
    }

    rotation = (Input::mouse - Vector2(Screen::width / 2, Screen::height / 2) - position * Vector2(Screen::width / 2, Screen::height / 2)).Normalize();

    if (Input::GetKeyDown(GLFW_KEY_SPACE)) {
        ShootMissile();
    }
    printf("reloadTime: %f\n", reload);
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

void Starship::ShootMissile() {

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
    reload = 0.5f;
}

void Starship::Render() {
    Vector2 vertexes[3] = { Vector2(), Vector2(), Vector2() };
    GetVertexes(vertexes);

    // TODO:: make renderer
    glBegin(GL_TRIANGLES);
    glVertex3f(vertexes[0].x, vertexes[0].y, 0.0f);
    glVertex3f(vertexes[1].x, vertexes[1].y, 0.0f);
    glVertex3f(vertexes[2].x, vertexes[2].y, 0.0f);
    glEnd();
}