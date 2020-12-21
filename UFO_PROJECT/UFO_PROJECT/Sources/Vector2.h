#pragma once

#define PI 3.141592f
#define RADIAN ( PI / 180.0f )
#define DEGREE ( 180.0f / PI )
#define RAD2DEG( Rad  ) ( Rad * DEGREE )
#define DEG2RAD( Degree ) ( Degree * RADIAN )

#include <cmath>

struct Vector2
{
    float x = 0;
    float y = 0;

    Vector2() {
        x = 0;
        y = 0;
    }

    Vector2(float _x, float _y) {
        x = _x;
        y = _y;
    }

    float Length() {
        return sqrt(x * x + y * y);
    }

    Vector2 Normalize() {
        float distance = Length();
        return Vector2(x / distance, y / distance);
    }

    Vector2 operator+(Vector2 rhs) {
        return Vector2(x + rhs.x, y + rhs.y);
    }
    Vector2 operator-(Vector2 rhs) {
        return Vector2(x - rhs.x, y - rhs.y);
    }
    Vector2 operator*(Vector2 rhs) {
        return Vector2(x * rhs.x, y * rhs.y);
    }
    Vector2 operator*(float rhs) {
        return Vector2(x * rhs, y * rhs);
    }
    Vector2 operator+=(Vector2 rhs) {
        return Vector2(x + rhs.x, y + rhs.y);
    }

    Vector2 Rotate(float degree) {
        return Vector2(cos((degree)), sin((degree)));
    }

    float tan() {
        return y / x;
    }
};