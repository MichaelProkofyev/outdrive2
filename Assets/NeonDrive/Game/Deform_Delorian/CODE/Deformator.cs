using UnityEngine;
using System.Collections;

public class Deformator : MonoBehaviour {

	public nitroCounter NCS;
	public SoundManager sManag;




	public teleport telep;
	public bool RestartCollision;



	public float mxStr;
	public float maxDistDisplace;
	public float addedDisp;

	public float AddToContact = 0.03f;


	void Start()
	{

		addedDisp = 0;
	}








	void OnTriggerEnter(Collider other) 
	{
		  
		if (NCS.speed > mxStr) 
		{
		
			if(addedDisp < maxDistDisplace)
			{			
				addedDisp += AddToContact;
				sManag.playCollision = true;

			} 

		}


	}



	void Update(){
		
		transform.localPosition = new Vector3 (transform.localPosition.x, transform.localPosition.y, addedDisp);

		if (telep.yesTeleport == true)
		{

			addedDisp = 0.0f;
		


		}
		
	}

}
