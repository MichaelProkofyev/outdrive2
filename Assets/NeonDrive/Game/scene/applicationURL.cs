using UnityEngine;
using System.Collections;

public class applicationURL : MonoBehaviour {


    public string URLadress;

	public void OpenWebPage()
    {
		Application.OpenURL(URLadress);
       
    }
}
