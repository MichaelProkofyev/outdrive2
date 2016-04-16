using UnityEngine;
using System.Collections;

public class Pulse_Controller : MonoBehaviour {
    public float normalPulse = 80;
    public float lowNormalPulse = 80;
    public float slowPulse = 20;
    public float fastPulse = 180;

    public enum State { normal,slow,fast,died };
    public State state;
    public float pulseValue;
    public float pulseValueChange = 5;
    private float targetPulseValue;
    public float pulseShowRandom = 5;
    public float showRate;
    private float showT;
    public int showPulse;
    public bool died;



    public static Pulse_Controller instance;
	// Use this for initialization
	void Start () {
        pulseValue = normalPulse;
        instance = this;
	}
	
	// Update is called once per frame
	void Update () {
        UpdatePulse();
        showT -= Time.deltaTime;
        if(showT <= 0)
        {
            showT = showRate;
            UpdateHUD();
        }
	}
    void UpdateHUD()
    {
        float temp = pulseValue + Random.Range(-pulseShowRandom,pulseShowRandom);
        if (!died)
            showPulse = (int)temp;
        else showPulse = (int)pulseValue;
    }
    void UpdatePulse()
    {
        switch(state)
        {
            case State.normal:
                targetPulseValue = Mathf.Lerp(lowNormalPulse,normalPulse,HealthController.getHealthRatio());
                break;
            case State.fast:
                targetPulseValue = fastPulse;
                break;
            case State.slow:
                targetPulseValue = slowPulse;
                break;
            case State.died:
                targetPulseValue = 0f;
                break;
        }
        if (died)
        {
            pulseValueChange = 15;
            targetPulseValue = 0;
        }
        pulseValue = Mathf.MoveTowards(pulseValue,targetPulseValue,pulseValueChange * Time.deltaTime);
    }

}
