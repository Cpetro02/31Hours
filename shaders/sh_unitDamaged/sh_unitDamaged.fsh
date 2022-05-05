//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float gameTime;
void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	// Take the red color to be always 3.
	// Let the gameTime represent the actual game time.
	// since the game time only increases and the sin function oscatlates back and
	// forth, it will constantly shade the ship from a dark to light red every
	// so often (code was reused from previous game project)
	gl_FragColor.r *= 3.0 + sin(gameTime) * 3.0;
}
