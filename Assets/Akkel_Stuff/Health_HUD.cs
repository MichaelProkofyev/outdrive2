using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class Health_HUD : MonoBehaviour {

    public Image healthBar;

    public void SetBar(float current, float max)
    {
        Vector3 vec = healthBar.rectTransform.localScale;
        vec.x = current / max;
        healthBar.rectTransform.localScale = vec;
    }
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
