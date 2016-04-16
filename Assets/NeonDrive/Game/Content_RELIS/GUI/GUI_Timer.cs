using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class GUI_Timer : MonoBehaviour {


	public Text timerText;


	public string sec = " sec";
	public string min = " min";
	public string hours = " h";

	private float timeSecPerFrame;
	public int intSeconds;


	public int  timerMinutes;
	public int timerHours;



	public int st;
	public  int sm;
	public  int sh;


	private bool yesMinutes;
	private bool yesHours;


	// Use this for initialization
	void Start () {

		PlayerPrefs.DeleteAll();

		yesHours = false;
		yesMinutes = false;

		intSeconds = 0;
		timeSecPerFrame = 0.0f;
		timerMinutes = 0;
		timerHours = 0;

		st = intSeconds;
		sm = timerMinutes;
		sh = timerHours;


	
	}




	public void SaveDataTime(){

		st = intSeconds;
		sm = timerMinutes;
		sh = timerHours;
		
		
		
		
		
		PlayerPrefs.SetInt ("TimerSecGirl", st);
		PlayerPrefs.SetInt ("TimeMinuteGirl", sm);
		PlayerPrefs.SetInt ("TimerHourGirl", sh);
		
		PlayerPrefs.Save();

	}

	void Update () {



		timeSecPerFrame += Time.deltaTime;
		intSeconds = Mathf.RoundToInt (timeSecPerFrame);
		if (timeSecPerFrame > 58.9f) {

			yesMinutes = true;

			timeSecPerFrame =0;
			intSeconds = 0;
			timerMinutes ++ ; 
		 
		}

		if (timerMinutes == 60)
		{
			yesHours = true;
			timerHours ++;
			timerMinutes = 0;

		}

		SaveDataTime ();




		if (yesMinutes == false && yesHours ==false) 
		{
			timerText.text = intSeconds.ToString () + sec;
		}






		if (yesMinutes == true && yesHours ==false) 
		{
			//timerText.text = timerMinutes.ToString ()+min + " " + intSeconds.ToString () + sec;
			timerText.text = PlayerPrefs.GetInt("TimeMinuteGirl").ToString ()+min + " " + PlayerPrefs.GetInt("TimerSecGirl").ToString () + sec;
		}







		if (yesHours == true && yesMinutes == true) 
		{
			//timerText.text = timerHours.ToString () + hours + timerMinutes.ToString () + min +" " + intSeconds.ToString () + sec;
			//timerText.text = timerHours.ToString () + hours + timerMinutes.ToString () + min +" " + intSeconds.ToString () + sec;
			timerText.text = PlayerPrefs.GetInt("TimerHourGirl").ToString () + hours + PlayerPrefs.GetInt("TimeMinuteGirl").ToString ()+min + " " + PlayerPrefs.GetInt("TimerSecGirl").ToString () + sec;
		}

	
	
	}


}
