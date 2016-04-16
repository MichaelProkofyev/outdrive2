using UnityEngine;
using System.Collections;

using UnityEngine.UI;



public class GUI_Girl : MonoBehaviour {



	public overLerp girlOver;


	public Image Girl;


	private float pulseTransparent;

	private int finalPulse;
	public float timeS;
	public float speedPulse;


	void Start () {
		//Girl.color = new Color (1, 1, 1, 0);
		finalPulse = 128;
	
	}
	

	void Update () {


		timeS += Time.deltaTime;

		if(timeS>32768.0f){
			timeS = 0.0f;
		}



		pulseTransparent = Mathf.Abs(Mathf.Sin(timeS * speedPulse));


		if (girlOver.FinalOverHeatDN < 4.55f) {

			Girl.color = new Color (1, 1, 1, pulseTransparent);
		}
		else
		{
			Girl.color = new Color (1, 1, 1, 0);

		}



	
	}
}
