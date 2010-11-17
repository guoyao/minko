package aerys.minko.scene.mesh.primitive
{
	import aerys.minko.scene.mesh.Mesh3D;
	import aerys.minko.type.stream.VertexStream3D;

	/**
	 * The CubeMesh class represent a cubic mesh.
	 * @author Jean-Marc Le Roux
	 */
	public class CubeMesh extends aerys.minko.scene.mesh.Mesh3D
	{
		private static const ONE_THIRD	: Number	= 1. / 3.;
		private static const TWO_THIRD	: Number	= 2. / 3.;
		
		private static var _instance	: CubeMesh	= null;
		
		/**
		 * A unit sized CubeMesh object. Use this property instead of "new CubeMesh()" in order
		 * to avoid pointless memory consumption.
		 */
		public static function get cubeMesh() : CubeMesh
		{
			return _instance || (_instance = new CubeMesh());
		}
		/**
		 * Creates a new CubeMesh object.
		 */
		public function CubeMesh()
		{
														 // top
			var vb 	: Vector.<Number> = Vector.<Number>([0.5, 0.5, 0.5, -0.5, 0.5, -0.5, 0.5, 0.5, -0.5,
														 0.5, 0.5, 0.5, -0.5, 0.5, 0.5, -0.5, 0.5, -0.5,
														 // bottom
														 -0.5, -0.5, -0.5, 0.5, -0.5, 0.5, 0.5, -0.5, -0.5,
														 -0.5, -0.5, 0.5, 0.5, -0.5, 0.5, -0.5, -0.5, -0.5,
														 // back
														 0.5, -0.5, 0.5, -0.5, 0.5, 0.5, 0.5, 0.5, 0.5,
														 -0.5, 0.5, 0.5, 0.5, -0.5, 0.5, -0.5, -0.5, 0.5,
														 // front
														 -0.5, 0.5, -0.5, -0.5, -0.5, -0.5, 0.5, 0.5, -0.5,
														 -0.5, -0.5, -0.5, 0.5, -0.5, -0.5, 0.5, 0.5, -0.5,
														 // left
														 -0.5, -0.5, -0.5, -0.5, 0.5, 0.5, -0.5, -0.5, 0.5,
														 -0.5, 0.5, 0.5, -0.5, -0.5, -0.5, -0.5, 0.5, -0.5,
														 // right
														 0.5, -0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, -0.5,
														 0.5, 0.5, -0.5, 0.5, -0.5, -0.5, 0.5, -0.5, 0.5]);
			
														   // top
			var uv : Vector.<Number>	= Vector.<Number>([1., 0., 0., 1., 1., 1.,
														   1., 0., 0., 0., 0., 1.,
														   // bottom
														   0., 0., 1., 1., 1., 0.,
														   0., 1., 1., 1., 0., 0.,
														   // back
														   1., 0., 0., 1., 1., 1.,
														   0., 1., 1., 0., 0., 0.,
														   // front
														   0., 1., 0., 0., 1., 1.,
														   0., 0., 1., 0., 1., 1.,														   
														   // left
														   0., 0., 1., 1., 1., 0.,
														   1., 1., 0., 0., 0., 1.,
														   // right
														   1., 0., 1., 1., 0., 1.,
														   0., 1., 0., 0., 1., 0.]);
		
			super(VertexStream3D.fromPositionsAndUVs(vb, uv));
		}
		
	}
}