using UnityEngine;
using System.Collections;

using UnityEngine.UI;

public class overLerp : MonoBehaviour {



	public nitroCounter ncount;

	public float FinalOverHeatUP;
	public float FinalOverHeatDN;

	public Slider overSlider;
	public Slider Frize;

	public Image handleFrize;
	public Image handleOverheat;
	public Image handleBack;

	public Image handleBackBackroung;

	private float frizeLerp;
	private float OverHetLerp;

	public bool YesStart;

	public bool yesn;


	public float Gtime;


	public Image Engine;



	private Color transparentColor;
	private Color NonTColor;
  
	// Use this for initialization
	void Start () {

		transparentColor = new Color (1, 1, 1, 0);
		NonTColor = new Color (1, 1, 1, 1);


		YesStart = true;
	
	}



	void GameOver(){
		//Application.LoadLevel (4);
	}

	
	// Update is called once per frame
	void Update () {

        if (Speed_HUD.instance)
            Speed_HUD.instance.indicatorValue = FinalOverHeatUP / 25 + FinalOverHeatDN/25   ;

		Gtime += Time.deltaTime;
		if (Gtime < 5.0f) {
			YesStart = true;
		}
		else
		{
			YesStart = false;
		}


		if (Input.GetKeyDown (KeyCode.N))
		{
			if(YesStart== false)
			{
				YesStart = true;
			}
			else
			{
				YesStart = false;
			}

			if(YesStart ==true)
			{
				FinalOverHeatDN = 5.0f;
				FinalOverHeatUP = 5.0f;
			}
			
		}



		//overSlider.value = FinalOverHeatUP;
		//Frize.value = FinalOverHeatDN;


		if(FinalOverHeatDN >4.1f)
		{
			
			overSlider.enabled = false;
		}
		else
		{
			overSlider.enabled = true;
		}
		
		
		if(FinalOverHeatUP < 4.0f)
		{
			Frize.enabled = false;
		}
		else{
			Frize.enabled = true;
		}
		
		
		
		if (YesStart == false && FinalOverHeatUP > 19.0f)
		{
			//GameOver();
			}
			
			if (YesStart == false && FinalOverHeatDN < 0.5f)
		{
			//GameOver();


		}
		 

		if (YesStart == true) 
				
		{

			FinalOverHeatDN = 5.0f;
			FinalOverHeatUP = 5.0f;
		}


	
		if (FinalOverHeatDN < 4.5f) 
		{
			handleFrize.color = NonTColor;
		
		}
		else
		{
			handleFrize.color = transparentColor;
		}



		if (FinalOverHeatUP > 5.5f) {
			handleOverheat.color = NonTColor;


		}
		else
		{
			handleOverheat.color = transparentColor;
		}

		if (FinalOverHeatDN < 4.5f || FinalOverHeatUP > 5.5f) {

			handleBack.color = NonTColor;



		}
		else 
		{

			handleBack.color = transparentColor;


		}
		

		handleBackBackroung.color = Color.Lerp (handleBack.color, new Color (1, 1, 1, 0), 0.82f);


		if (FinalOverHeatUP > 12.0f) {
            if(Engine)
			Engine.enabled = true;
		
		}
		else
		{
            if(Engine)
			Engine.enabled = false;
		}

		//handle.color = new Color (1, 1, 1, 0);
	
	}

   

}
