using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class Pulse_HUD : MonoBehaviour {
    public Text pulseText;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        pulseText.text = Pulse_Controller.instance.showPulse.ToString();
	}
}
