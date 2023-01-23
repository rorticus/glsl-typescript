#version 100

precision mediump float;

attribute vec3 a_position;
attribute vec4 a_color;

uniform mat4 u_mvpMatrix;

varying vec4 v_color;

void main() {
    gl_Position = u_mvpMatrix * vec4(a_position, 1.0);
    v_color = a_color;
}