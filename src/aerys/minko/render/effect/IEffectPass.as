package aerys.minko.render.effect
{
	import aerys.minko.render.renderer.IRenderer;
	import aerys.minko.render.state.RenderState;
	import aerys.minko.scene.visitor.data.StyleStack;
	import aerys.minko.scene.visitor.data.TransformData;
	
	import flash.utils.Dictionary;

	public interface IEffectPass
	{
		function fillRenderState(state		: RenderState,
								 styleStack	: StyleStack, 
								 local		: TransformData, 
								 world		: Dictionary) : Boolean;
	}

}