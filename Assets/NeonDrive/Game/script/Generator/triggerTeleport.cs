using UnityEngine;
using System.Collections;

public class triggerTeleport : MonoBehaviour {


	public Motor nitrorest;
	public GameObject Player;
	public teleport telp;

	public GameObject boxColl1;

	public GameObject boxColl2;

	public GameObject boxColl3;




	void OnTriggerEnter(Collider other){		
		
		if (other.CompareTag ("gentag"))
		
		
		{
			boxColl1.SetActive(false);

			boxColl2.SetActive(false);

			boxColl3.SetActive(false);
		
			nitrorest.boost=1.0f;

			telp.yesTeleport = true;

		}
	}
}
