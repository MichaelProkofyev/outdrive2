using UnityEngine;
using System.Collections;

public class smooshFOW : MonoBehaviour {


	public Camera cam;

	public float normalFOV;
	public float turboFOV ;
	public float factor;
	void Update()
	{

		if (Input.GetKeyUp(KeyCode.LeftShift))
		{
			cam.fieldOfView = Mathf.Lerp (normalFOV, turboFOV, Time.deltaTime/factor);
		}
		

		if (Input.GetKeyDown(KeyCode.LeftShift))
		{
		cam.fieldOfView = Mathf.Lerp (turboFOV, normalFOV, Time.deltaTime/factor);
		}
	}
}