using UnityEngine;
using System.Collections;

public class trigger7400 : MonoBehaviour {

	public ChunkGenerator CG;
	
	//public bool YesSelf7400;
	//public trigger6000 t6;
	
	private GameObject E;
	//private GameObject EC;
	
	private int index;


	private Vector3 P4800;



	void Start(){

		P4800 = new Vector3 (0, 0, -4800);
		


			if (E != null) {
				Destroy (E);					
			}
		
			GameObject Ew;
			
		
			index = Random.Range (0, CG.prefab.Length);				
		
		Ew = Instantiate (CG.prefab [index], P4800, Quaternion.identity) as GameObject;
			E = Ew;
			
		
	}
	
	void OnTriggerEnter(Collider other){		
		
		if (other.CompareTag("gentag")) {

			
			
			if (E != null) {
				Destroy (E);					
			}
			
			GameObject Ew;

			
			index = Random.Range (0, CG.prefab.Length);				
			
			Ew = Instantiate (CG.prefab [index], P4800, Quaternion.identity) as GameObject;
			E = Ew;

				
				
				
				

		}
	}

	void Update(){


		}

}
