package  {
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class Fuego extends MovieClip{
		private var vel:Number=5;

		public function Fuego(posX, posY) {
			// constructor code
			x = posX + 50;
			y= posY + 135;
			scaleX= .8;
			scaleY= .8;
			
			this.addEventListener(Event.ENTER_FRAME, mover);
			
		}
		
		public function mover(e: Event){
			y+= vel;
			if( y>=550){
				vel=0;
				this.removeEventListener(Event.ENTER_FRAME, mover);
				stage.removeChild(this);
			}
			if(this.hitTestObject(Setup.Ironman_new.punto_colision)){
			trace("colision");
			vel=0;
				this.removeEventListener(Event.ENTER_FRAME, mover);
				stage.removeChild(this);
				
				Setup.puntos+=1;			
				
			}
			if(Setup.puntos %5 == 0){
				vel=vel 0;
			}
			else if(Setup.puntos %5 == )
			vel=vel +5;
	}
} 
}