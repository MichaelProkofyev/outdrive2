using UnityEngine;
using System.Collections;

public class trigger3600 : MonoBehaviour {

	public ChunkGenerator CG;

//	public bool YesSelf3600;

	private GameObject Three;
	private GameObject ThreeClone;

	private int index;
	private Vector3 zeroPos;
	private Vector3 SevenTwelfPos;




	void Start(){


		zeroPos = new Vector3 (0, 0, 0);
		SevenTwelfPos = new Vector3 (0, 0, -7200);

	//	YesSelf3600 = true;


		
	//	if(YesSelf3600 == true){
			
			if(Three != null){
				Destroy(Three);
				
			}
			if(ThreeClone != null){
				
				Destroy(ThreeClone);
			}
			
			GameObject T;
			
			GameObject TC;
			
			
			
			
			
			index = Random.Range(0,CG.prefab.Length);
			
			
			T = Instantiate(CG.prefab[index],zeroPos,Quaternion.identity) as GameObject;
			Three = T;
	    	TC = Instantiate(CG.prefab[index],SevenTwelfPos,Quaternion.identity) as GameObject;
			
			ThreeClone = TC;
			
			
			
			
		//	YesSelf3600 = false;
			
			
			
			
	//	}

	}

	void OnTriggerEnter(Collider other){




	if (other.CompareTag("gentag")) {
		//	y36 = true;	

			if(Three != null){
				Destroy(Three);
				
			}
			if(ThreeClone != null){
				
				Destroy(ThreeClone);
			}
			
			GameObject T;
			
			GameObject TC;
			
			
			
			
			
			index = Random.Range(0,CG.prefab.Length);
			
			
			T = Instantiate(CG.prefab[index],zeroPos,Quaternion.identity) as GameObject;
			Three = T;
			TC = Instantiate(CG.prefab[index],SevenTwelfPos,Quaternion.identity) as GameObject;
			
			ThreeClone = TC;


		//}
	}


	}
	void Update(){

		//	if(YesSelf3600 == true){
		

		
	//	y36 = false;
		
		
		//	YesSelf3600 = false;


	}
}


				                                                 //		// 			//
				                                                 //		//___ 3____	//  0
				                                                 //	
				                                                 //		// 	start	//
				                                                 //		//___ 1____	//  2400 в середине (3600) рандомизация третьего чанка 
				                                                 //	
				                                                 //		// 			//
				                                                 //		//___ 2____	//  4800 в середине (6000)  рандомизация первого чанка
				                                                 //
				                                                 //		// 			//
				                                                 //		//___ 3____	//  7200 в середине (8400) рандомизация второго чанка
				                                                 //
				                                                 //			 |||  				телепортировение в старт игрока (9800)
				                                                 //			  |
				                                                 //
				                                                 //		// teleport //
				                                                 //		//___ 1____	//  9600