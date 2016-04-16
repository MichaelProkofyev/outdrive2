using UnityEngine;
using System.Collections;

using UnityEngine.UI;

public class GUI_overheating : MonoBehaviour {


	public overLerp ovlerp;
	public Text EngineOverheating;
	public Text HeartFailure;


	public Image OverHImage;
	public Image FrizeImage;


	void Update () {
        
		if (ovlerp.FinalOverHeatUP > 12.0f) {
			EngineOverheating.enabled = true;
			OverHImage.enabled = true;
		}
		else
		{
			EngineOverheating.enabled =false;
			OverHImage.enabled = false;
		}


	








		if (ovlerp.FinalOverHeatDN < 4.75f) {






			HeartFailure.enabled = true;
			FrizeImage.enabled = true;

		
		}
		else
		{
			HeartFailure.enabled = false;
			FrizeImage.enabled = false;



		}




	
	}
}
