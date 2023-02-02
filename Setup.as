package  {
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class Setup extends MovieClip{
		
		private var piso_new: piso = new piso;
		private var Ironman_new: Ironman = new Ironman; 
		private var Fondo_new: Fondo = new Fondo;
		private var Minion_new: Minion = new Minion;

		public function Setup() {
			// constructor code
			addChild (Fondo_new);
			addChild(piso_new);
			addChild (Ironman_new);
			addChild (Minion_new);
			
			piso_new.x=265, piso_new.y=380;
			Ironman_new.x=265, Ironman_new.y=380;
			Fondo_new.x=275, Fondo_new.y=300;
			Minion_new.x=275, Minion_new.x=800;
		}

	}
	
}
