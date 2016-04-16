using UnityEngine;
using System.Collections;

public class Heart_HUD : MonoBehaviour {
    public float scaleMult = 1.3f;
    public float speed;
    public float speedMult = 1;
    private Vector3 startScale;
    private float t;
	// Use this for initialization
	void Start () {
        startScale = transform.localScale;
	}
	
	// Update is called once per frame
	void Update () {
        speed = (float)Pulse_Controller.instance.showPulse / 60f;
        t += speed * Time.deltaTime * speedMult;
        transform.localScale = startScale * scaleMult * ((Mathf.Abs(Mathf.Cos(t)) + 1)/2);
	}
}
