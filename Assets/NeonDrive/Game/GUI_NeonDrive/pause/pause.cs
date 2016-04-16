using UnityEngine;
using System.Collections;

public class pause : MonoBehaviour {



	public GameObject canvasPause;

	public bool  yesPause;



	public void Pause(){

		yesPause = true;
		Cursor.visible = true;

	}



	public void GoMainMenu()
	{
		Application.LoadLevel (1);
		Time.timeScale = 1;
		Cursor.visible = true;
	}



	public void Resume()
	{
		canvasPause.SetActive (false);
		Time.timeScale = 1;
		Cursor.visible = false;
	}


	void Start()
	
	{
		yesPause = false;
		Time.timeScale = 1;
		canvasPause.SetActive (false);
		Cursor.visible = false;
	}






	void Update()
	       {

		if (Input.GetButtonDown ("Cancel")) {
			if(yesPause == true){
				yesPause = false;

			}

			if(yesPause ==false){
				yesPause = true;
			


			}

			if(yesPause == true){
				canvasPause.SetActive(true);
				Time.timeScale = 0;
				Cursor.visible = true;
				

			}
			else
			{
				canvasPause.SetActive(false);
				Time.timeScale = 1;
				Cursor.visible = false;
			}


		
		}




	}

void OnApplicationPause()
{
	
	
		if (Input.GetButtonDown ("Cancel")) {
			if(yesPause == true){
			yesPause = false;
			
		}
		
		
		
		if(yesPause == true){   
			canvasPause.SetActive(true);
			Time.timeScale = 0;
			Cursor.visible = true;
			
			
		}
		else
		{
			canvasPause.SetActive(false);
			Time.timeScale = 1;
			Cursor.visible = false;
		}
		
		
	}



	

}
}
