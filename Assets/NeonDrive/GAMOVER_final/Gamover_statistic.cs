using UnityEngine;
using System.Collections;
using UnityEngine.UI;



public class Gamover_statistic : MonoBehaviour {



	public Text finalTimeStat;

	private bool yesttt;
	private int ttt = 0;
	public int delay = 300;


	void Start () {

		yesttt = false;
		finalTimeStat.text = PlayerPrefs.GetInt("TimerHourGirl").ToString () + " h " + PlayerPrefs.GetInt("TimeMinuteGirl").ToString () + " min" + " " + PlayerPrefs.GetInt("TimerSecGirl").ToString () + " sec";
	
	}


	void Update(){


		finalTimeStat.text = PlayerPrefs.GetInt("TimerHourGirl").ToString () + " h " + PlayerPrefs.GetInt("TimeMinuteGirl").ToString () + " min" + "  " + PlayerPrefs.GetInt("TimerSecGirl").ToString () + " sec";

		if (Input.anyKeyDown) {
			yesttt =true;


		}

		if (yesttt == true)
		{
			ttt++;
		}


		if (ttt > delay) {

			Application.LoadLevel(3);

		}


	}
	

}
