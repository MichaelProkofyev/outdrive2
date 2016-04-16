using UnityEngine;
using System.Collections;

public class Credits : MonoBehaviour {

    public void CreditsMusic() {
        Application.LoadLevel(7);
        }

    public void MainMemu()
    {
         Application.LoadLevel(1);
    }

    public void titry()
    {
         Application.LoadLevel(8);
    }

	void Update () {
		if (Input.GetButtonDown ("Cancel")) {
			MainMemu();
		}
	}
}
	