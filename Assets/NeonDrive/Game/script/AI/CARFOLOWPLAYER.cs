using UnityEngine;
using System.Collections;

public class CARFOLOWPLAYER : MonoBehaviour {




	public FollowAI folai;

	void Update () {

			folai.target = GameObject.FindWithTag("Player").transform;
		}
	
	}
	


