using UnityEngine;
using System.Collections;

public class RoadCaster : MonoBehaviour {

	public GameObject raycastRightTransform;
	public GameObject raycastLeftTransform;



	public GameObject AIhelper;

	public float distRay = 10f;
	public float rightDist = 10f ;
	public float DDist ;
	public float DampingAi;


	public float DistToBorder = 10f;
	public float angPower = 10f;
	public float factorDist;

	public float transformFinalShft = 20;
	public float finalRes;



	void Update () {




		Ray ray = new Ray (raycastRightTransform.transform.position, transform.forward);
		RaycastHit hit;



		if (Physics.Raycast (ray, out hit, distRay)) 
		{
			//finalRes = Mathf.Clamp((hit.distance / distRay),0.0f,distRay); //получаем часть от общий дистанции до стены 0,01 - от стены - 1 у стены
			DDist = (hit.distance / distRay);
			if(DDist > 1f)
			{
				rightDist = 3f;				
			
		    }
			else{
				rightDist = -3f;
			}
		
		


			finalRes = Mathf.Lerp (AIhelper.transform.localPosition.x, rightDist , Time.deltaTime *  finalRes);

			AIhelper.transform.localPosition = new Vector3(finalRes,0f,0f);

			Debug.Log(hit.collider.name + ";"+ hit.distance);
		}
	
	}
}
