using UnityEngine;
using System.Collections;

public class Car : MonoBehaviour {
	
public GameObject WheelRight;
public GameObject WheelLeft;
public bool  BackWheels;
public float WheelSpeed;
private int WheelRotateAngle= 20;
	public GameObject wheel1;
	public GameObject wheel2;
	public GameObject wheel3;
	public GameObject wheel4;
	
	void Start () {
		gameObject.GetComponent<Rigidbody>().centerOfMass = new Vector3 (0, -0.6f*2.3f, 0);
	}
	
	void  Update (){

	if (Input.GetKey ("w")) { 
		WheelRight.GetComponent<WheelCollider>().motorTorque = WheelSpeed;
		WheelLeft.GetComponent<WheelCollider>().motorTorque = WheelSpeed;
			
		wheel1.transform.Rotate(Vector3.up * Time.deltaTime*700, Space.Self);
		wheel2.transform.Rotate(Vector3.up * Time.deltaTime*700, Space.Self);
		wheel3.transform.Rotate(Vector3.up * Time.deltaTime*700, Space.Self);
		wheel4.transform.Rotate(Vector3.up * Time.deltaTime*700, Space.Self);
	}
		
	if (Input.GetKeyUp("w")) { 
		WheelRight.GetComponent<WheelCollider>().motorTorque = 0;
		WheelLeft.GetComponent<WheelCollider>().motorTorque = 0;
	}
	
	if (Input.GetKey ("s")) { 
		WheelRight.GetComponent<WheelCollider>().motorTorque = -WheelSpeed;
		WheelLeft.GetComponent<WheelCollider>().motorTorque = -WheelSpeed;
			
		wheel1.transform.Rotate(Vector3.down * Time.deltaTime*700, Space.Self);
		wheel2.transform.Rotate(Vector3.down * Time.deltaTime*700, Space.Self);
		wheel3.transform.Rotate(Vector3.down * Time.deltaTime*700, Space.Self);
		wheel4.transform.Rotate(Vector3.down * Time.deltaTime*700, Space.Self);
	}
		
	if (Input.GetKeyUp("s")) { 
		WheelRight.GetComponent<WheelCollider>().motorTorque = 0;
		WheelLeft.GetComponent<WheelCollider>().motorTorque = 0;
	}
	
	if (Input.GetKeyDown ("a")) { 
	    if(BackWheels){
			WheelRight.transform.Rotate(0,-WheelRotateAngle,0);
			WheelLeft.transform.Rotate(0,-WheelRotateAngle,0);
		 }else{
		 	WheelRight.transform.Rotate(0,WheelRotateAngle,0);
			WheelLeft.transform.Rotate(0,WheelRotateAngle,0);
		 }
	}
		
	if (Input.GetKeyUp ("a")) { 
	 	 if(BackWheels){
			WheelRight.transform.Rotate(0,WheelRotateAngle,0);
			WheelLeft.transform.Rotate(0,WheelRotateAngle,0);
		 }else{
		 	WheelRight.transform.Rotate(0,-WheelRotateAngle,0);
			WheelLeft.transform.Rotate(0,-WheelRotateAngle,0);
		 }
	}
	
	if (Input.GetKeyDown ("d")) { 
		 if(BackWheels){
			WheelRight.transform.Rotate(0,WheelRotateAngle,0);
			WheelLeft.transform.Rotate(0,WheelRotateAngle,0);
		 }else{
		 	WheelRight.transform.Rotate(0,-WheelRotateAngle,0);
			WheelLeft.transform.Rotate(0,-WheelRotateAngle,0);
		 }
	}
		
	if (Input.GetKeyUp ("d")) { 
	 	 if(BackWheels){
			WheelRight.transform.Rotate(0,-WheelRotateAngle,0);
			WheelLeft.transform.Rotate(0,-WheelRotateAngle,0);
		 }else{
		 	WheelRight.transform.Rotate(0,WheelRotateAngle,0);
			WheelLeft.transform.Rotate(0,WheelRotateAngle,0);
		 }
	}
		
	if (Input.GetKeyDown(KeyCode.Space)) { 
		 WheelRight.GetComponent<WheelCollider>().brakeTorque = 100;
	}
		
	if (Input.GetKeyUp(KeyCode.Space)) { 
	 	 WheelRight.GetComponent<WheelCollider>().brakeTorque = 0;
	}
	
	
}
}