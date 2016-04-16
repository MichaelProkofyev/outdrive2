using UnityEngine;
using System.Collections;

public class trigger6000 : MonoBehaviour {

	public ChunkGenerator CG;
	
	//public bool YesSelf6000;
	//public trigger3600 t36;

	private GameObject Two;
	private GameObject TwoC;
	
	private int index;


	private Vector3 P2400s;
	private Vector3 P9600;



	void Start(){

		P2400s = new Vector3 (0, 0, -2400);
		P9600 = new Vector3 (0, 0, -9600);

			
			
			
			if(TwoC != null)
			{
				Destroy(TwoC);					
			}
			
			
			
			if(Two != null)
			{
				Destroy(Two);					
			}
			
			GameObject Tw ;
			GameObject TwC;
			
			index = Random.Range(0,CG.prefab.Length);				
			
			Tw = Instantiate(CG.prefab[index],P2400s,Quaternion.identity) as GameObject;
			Two = Tw;
			TwC = Instantiate(CG.prefab[index],P9600,Quaternion.identity) as GameObject;
			TwoC = TwC;
			
			
			
			
			
			
			
		//}
		
	}
	
	void OnTriggerEnter(Collider other){		

		if (other.CompareTag("gentag")) {
			
			if(TwoC != null)
			{
				Destroy(TwoC);					
			}
			
			
			
			if(Two != null)
			{
				Destroy(Two);					
			}
			
			GameObject Tw ;
			GameObject TwC;
			
			index = Random.Range(0,CG.prefab.Length);				
			
			Tw = Instantiate(CG.prefab[index],P2400s,Quaternion.identity) as GameObject;
			Two = Tw;
			TwC = Instantiate(CG.prefab[index],P9600,Quaternion.identity) as GameObject;
			TwoC = TwC;
			



		}
	}


	void Update(){

		
		

	}

}

