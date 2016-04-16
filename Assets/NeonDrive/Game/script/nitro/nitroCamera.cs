using UnityEngine;
using System.Collections;
using UnityEngine.Serialization;
using System.Collections.Generic;

namespace UnityStandardAssets.ImageEffects
{

public class nitroCamera : MonoBehaviour{











		public nitroCounter nCounter;

		public overLerp ovL;

		public float multOverhead;
		public float OverHeat;
		public float OverFinal;


		public float  OverheatCount = 15.0f;


		public float Enginefriz;





		public Material delorianTrail;
		public Material neonRoad;
		public Material neonRoad2;
        public Material neonRoad_DLY_PTICHEY_LICNOSTI;
        public float neonRoadFloat;
		public float neonRLerp;

		public GameObject partLight;
		public Motor nM;
	    private VignetteAndChromaticAberration abberat;

		public Light nitrolight;
		public float nitrolightInt;



		public float abberatNorm;
		public float abberatNitro;
		private float abberatPower;
		public float  abberatDamping;


	public Camera gamecam;

	public Rigidbody carPlayer;
	public float turboPower;
	public float turboPowerDown;





		public Material neonMat;


		public Renderer neonR;

	    	public float neonTurbo;
			public float neonNorm;
	  		public float neonRelis;



	private float newFow;
	public float fovDamping;

	public bool yesNitro;
	private Color newColTrail;


	public Color colorTrail;
	public Color colorTrailCh;

	public Color LerpColor;
	public float colorDamping;

	public Color offColor;
	public Color onColor;
    public GasMotor motor;
    public static nitroCamera instance;


	void Awake(){

        instance = this;
		newFow = gamecam.fieldOfView;

		

		abberat = GetComponent< VignetteAndChromaticAberration> ();
		abberatPower = abberat.chromaticAberration;



	}


	void Start() {

			OverHeat = 5.0f;



	}

	void FixedUpdate() {







        if (Input.GetButton("Boost") && nM.boost > 0.05 && motor.fuel > 0)
        {

										
																			
				               		     carPlayer.AddForce(carPlayer.transform.forward * turboPower);
				               		     carPlayer.AddForce (carPlayer.transform.up*(-1.0f*turboPowerDown));
									
						} 
						else
						{
											
										
										carPlayer.AddForce (transform.forward * 0);
										carPlayer.AddForce (transform.up*0);
										
						}
				}

		
		
	

























	void Update(){






//			
//			if (Input.GetKey (KeyCode.LeftShift)){ 
//
//
//
//			    if(nM.boost > 0.05)
//
//				{						
//				OverHeat += Time.deltaTime * multOverhead;
//				}
//
//			}
//
//
//			else 
//			{
//			OverHeat -= Time.deltaTime * multOverhead;
//			}
//
//
//			OverFinal = Mathf.Clamp (OverHeat, 0, 1);
//			EngineOverHeat = Mathf.Lerp (0, 1, OverFinal);








			//colCFloat = Mathf.Clamp (0.92f, 0.0f, 0.92f);




		NitroOn ();
	}
	void NitroOn(){

		float fovA = 90.0f;
		float fovB = 68.0f;


		




//			neonR = GetComponent<Renderer>();
//			neonR.material.shader = Shader.Find("_turboR");




        if (Input.GetButton("Boost") && nM.boost > 0.05 && nCounter.speed > 8 && motor.fuel > 0)
		{



				if(OverHeat <20.0f)
				{
			     	OverHeat += Time.deltaTime;
				}
					
					


				   

					
					float neonParam = Mathf.PingPong(Time.time, 1.0F);
					neonR.material.SetFloat("_TBF",neonParam );



		


			newFow = fovA;
			colorTrailCh = onColor;
					abberatPower = abberatNitro;
					nitrolightInt = 3.0f;
					neonTurbo = 1.0f;

			
		}
		else
		{


				if(OverHeat >0.0f)
				{
					OverHeat -= Time.deltaTime;
				}

				
				
				
				
				
				
				newFow =fovB;		
				colorTrailCh = offColor;
					abberatPower = abberatNorm;
					nitrolightInt = 0.0f;

					neonTurbo = 0.0f;


			//	neonRoad.SetFloat("_emisblend",0.0f);


			}


			if (OverHeat < 1.0f) {

				if(Enginefriz > 0.0f)
				{
				Enginefriz -= Time.deltaTime;
				}
				
			}
			else
			{
                Enginefriz = Mathf.MoveTowards(Enginefriz,5f, Time.deltaTime);
				//Enginefriz = 5.0f;
			}

			ovL.FinalOverHeatUP = OverHeat;
			ovL.FinalOverHeatDN = Enginefriz;

















		gamecam.fieldOfView = Mathf.Lerp (gamecam.fieldOfView, newFow, Time.deltaTime * fovDamping);
				nitrolight.intensity = nitrolightInt;
				abberat.chromaticAberration= Mathf.Lerp (abberatPower,abberatNorm, Time.deltaTime * abberatDamping);
				LerpColor =Color.Lerp(colorTrail,colorTrailCh,Time.deltaTime * colorDamping);

			neonRLerp = Mathf.Lerp (neonRoad.GetFloat ("_emisblend"), neonTurbo, Time.deltaTime * fovDamping);

















			    neonRoad.SetFloat ("_emisblend", neonRLerp);
			delorianTrail.SetFloat("_emisblend",neonRLerp);
			neonRoad2.SetFloat ("_emisblend", neonRLerp);
            neonRoad_DLY_PTICHEY_LICNOSTI.SetFloat("_emisblend", neonRLerp);


            neonR.material.SetFloat("_turboR",neonTurbo);


			if (neonRLerp < 0.02f) {
				partLight.SetActive (false);
			} 
			else
			{
				partLight.SetActive (true);
			}

		
		
		}
    public static void Hit(float force)
    {
        instance.OverHeat -= force;
        if(instance.OverHeat <= 0)instance.OverHeat = 0;
    }
	}
    
}

