package  {
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	
	public class Ironman extends MovieClip{
		
		private var der: Boolean = false;
		private var izq: Boolean = false;
		private var vel: int=10;

		public function Ironman() {
			
		addEventListener(Event.ENTER_FRAME, motor);
		
		}
		public function motor(e:Event):void{
			if(der){
				x+= 10;
			}
			else if (izq){
				x-= 10;
			}
			if(x<=30){
				x+=15;
			}
				if(x>=770){
					x-=15;
				
				}
			
			controles();
			}
		public function controles(){
			stage.addEventListener(KeyboardEvent.KEY_DOWN, keydown);
			stage.addEventListener(KeyboardEvent.KEY_UP, keyup);
		}
		public function keydown(e: KeyboardEvent): void {
			switch(e.keyCode){
				case 68:
				der = true;
				case 65:
				izq=true;
				break;
			}
		}
				
			public function keyup(e: KeyboardEvent): void {
			switch(e.keyCode){
				case 68:
				der = false;
				case 65:
				izq=false;
				break;
		}
			}
	}
}

	
	

	
