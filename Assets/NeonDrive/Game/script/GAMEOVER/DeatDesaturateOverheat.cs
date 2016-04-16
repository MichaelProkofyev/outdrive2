using UnityEngine;
using System.Collections;
using UnityEngine.Serialization;
using UnityEngine.UI;
using System.Collections.Generic;

namespace UnityStandardAssets.ImageEffects

{

public class DeatDesaturateOverheat : MonoBehaviour {




		public Text death;



	public overLerp ovLdeath;

	public float addDesaturatePerSeconds;
	
	public ScreenOverlay_two scrover;
	private float scrOverLfloat;
	
	
	public ColorCorrectionCurves colorc;
	private float colCFloat;


		private float oversp;










	public float speedDessaturate = 0.25f;

		private float dessp;

	private float colcFinal = 0.94f;

		public float minPitch = 0.8f;


		void Start(){

			oversp = 0.0f;
			dessp = 0.94f;
		}

	void Update () {



			if (ovLdeath.FinalOverHeatDN < 2.4f || ovLdeath.FinalOverHeatUP > 14.0f) {
				death.enabled = true;


			}
			else
			{
				death.enabled = false;
			}







			if (ovLdeath.FinalOverHeatUP > 12.3f) {
				if (oversp < 1.23f) {
					oversp += Time.deltaTime * speedDessaturate;
				}			
			}
			else
			{
				if (oversp > 0.00f) {
					oversp -= Time.deltaTime * speedDessaturate;
				}		

			}








		if (ovLdeath.FinalOverHeatDN < 4.2f)
			
			
			
			{		
			    

				if(dessp >0.05f)
				{
				dessp -= Time.deltaTime*speedDessaturate;
				}


		}
		else
		{
			
						
			   

				if(dessp <0.95f)
				{
					dessp += Time.deltaTime*speedDessaturate;
				}
		}

		

			colcFinal = Mathf.Clamp(dessp,0.0f,0.94f);
		colorc.saturation = colcFinal;

			//musicManager.pitchShift = Mathf.Clamp(dessp,minPitch,1f);

			scrover.intensity = Mathf.Clamp (oversp, 0.0f, 1.23f);

	
	}
}
}