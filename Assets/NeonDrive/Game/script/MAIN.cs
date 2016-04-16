using UnityEngine;
using System.Collections;

public class MAIN : MonoBehaviour {


    public void startGame() {
        Application.LoadLevel(2);
        }

    public void quitGame()
    {
        Application.Quit();
    }

}

