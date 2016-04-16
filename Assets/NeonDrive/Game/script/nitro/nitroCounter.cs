using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class nitroCounter : MonoBehaviour {


	public Motor mot;
	public Text nitroCount;

	public Text dist;

	public Text speedC;

	private float clampedBoost;
	private float prec;
	private int precInt;

	public Rigidbody car;

	private float distanse;
	public int speed;
	// Use this for initialization
	void Start () {
		distanse = 0;
	}
	
	// Update is called once per frame
	void Update () {
		clampedBoost = Mathf.Clamp (mot.boost, 0, 1);
		prec = Mathf.Lerp (0, 100, clampedBoost);
		precInt = Mathf.RoundToInt (prec);
		nitroCount.text = precInt.ToString();


		speed = Mathf.RoundToInt(car.velocity.magnitude*1.46f);
		speedC.text = speed.ToString ();
		distanse += speed * Time.deltaTime;
		dist.text = (Mathf.RoundToInt (distanse)).ToString ();
	}
}
