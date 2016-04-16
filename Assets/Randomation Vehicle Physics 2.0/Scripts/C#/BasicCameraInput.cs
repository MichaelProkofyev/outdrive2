using UnityEngine;
using System.Collections;

//Class for setting the camera input with the input manager
public class BasicCameraInput : MonoBehaviour
{
	CameraControl cam;
	public string xInputAxis; //Camera X
	public string yInputAxis; // Camera Y

	void Start()
	{
		//Get camera controller
		cam = GetComponent<CameraControl>();
	}

	void FixedUpdate()
	{
		//Debug.Log (Input.GetAxis (xInputAxis));
		//Set camera rotation input if the input axes are valid
		if (cam && !string.IsNullOrEmpty(xInputAxis) && !string.IsNullOrEmpty(yInputAxis))
		{
			cam.SetInput(Input.GetAxis(xInputAxis), 0);
		}
	}
}
