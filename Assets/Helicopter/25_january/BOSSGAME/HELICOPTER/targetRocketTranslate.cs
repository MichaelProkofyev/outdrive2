using UnityEngine;
using System.Collections;

public class targetRocketTranslate : MonoBehaviour {

	public float xSpeed =1;
	public float roadsize =15;

	private float trans;
	private float finTranslate;

	void Update () {
	
		trans = Mathf.PingPong (Time.time * xSpeed, 1);
		finTranslate = Mathf.Lerp (roadsize, -1 * roadsize, trans);

		Vector3 TrPos = new Vector3 (trans, transform.localPosition.y, transform.localPosition.z);

		transform.localPosition = TrPos;



	}
}
