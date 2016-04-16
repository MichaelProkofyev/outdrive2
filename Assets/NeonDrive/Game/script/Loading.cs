using UnityEngine;
using System.Collections;

public class Loading : MonoBehaviour {

	
	void Start () {
        StartCoroutine("loadl");
	
	}

	IEnumerator loadl()
    {
        AsyncOperation async = Application.LoadLevelAsync(3);
        yield return async;
    }
	
}
  