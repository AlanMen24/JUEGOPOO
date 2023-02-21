package  {
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class Setup extends MovieClip{
		
		private var piso_new: piso = new piso;
		static var Ironman_new: Ironman = new Ironman; 
		private var Fondo_new: Fondo = new Fondo;
		private var Minion_new: Minion = new Minion;
		static var puntos_box_new: puntos_box = new puntos_box();
		static var puntos: Number =0;

		public function Setup() {
			// constructor code
			addChild (Fondo_new);
			addChild(piso_new);
			addChild (Ironman_new);
			addChild (Minion_new);
			addChild(puntos_box_new);
			
			piso_new.x=265, piso_new.y=380;
			Ironman_new.x=600, Ironman_new.y=480;
			Fondo_new.x=380, Fondo_new.y=370;
			Minion_new.x=100, Minion_new.y=155;
			puntos_box_new.x=1, puntos_box_new.y=40;
			puntos_box_new.puntos_txt.text= String(puntos);
			
			this.addEventListener(Event.ENTER_FRAME, actualiza_puntos);
		}
		public function actualiza_puntos(e:Event){
			puntos_box_new.puntos_txt.text= String(puntos);
			
			
		}

	}
	
}
