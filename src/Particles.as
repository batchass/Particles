package
{
	import flash.display.Sprite;
	
	import starling.core.Starling;

	[SWF(backgroundColor="#000000",width=800,height=600,frameRate=60)]
	public class Particles extends Sprite
	{
		public function Particles()
		{
			var star:Starling = new Starling(Game, stage);
			star.start();
	
			
		}
	}
}