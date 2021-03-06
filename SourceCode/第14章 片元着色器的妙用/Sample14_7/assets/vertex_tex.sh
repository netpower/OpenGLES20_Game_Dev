uniform mat4 uMVPMatrix; //总变换矩阵
attribute vec3 aPosition;  //顶点位置
attribute vec2 aTexCoor;    //顶点纹理坐标
varying vec2 vTexPosition; //转换后纹理坐标
void main() {                            		
   gl_Position = uMVPMatrix * vec4(aPosition,1); //根据总变换矩阵计算此次绘制此顶点位置
   vTexPosition = (aTexCoor-0.5)*5.0;//将接收的纹理坐标传递给片元着色器
}