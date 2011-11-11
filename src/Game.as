package
{
	
	import starling.core.Starling;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.extensions.ParticleDesignerPS;
	import starling.textures.Texture;
	
	public class Game extends Sprite
	{
		[Embed(source="particle.pex", mimeType="application/octet-stream")]
		private var ParticleXML:Class;
		
		[Embed(source="texture.png")]
		private var ParticleTexture:Class;
		
		private var particles:ParticleDesignerPS;
		
		public function Game()
		{
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
		private function init(event:Event):void
		{
			particles = new ParticleDesignerPS(XML( new ParticleXML()), Texture.fromBitmap(new ParticleTexture()));
			particles.start();
			particles.x = 50;
			particles.y = 250;
			Starling.juggler.add(particles);
			addChild(particles);
		}
		
	}
}