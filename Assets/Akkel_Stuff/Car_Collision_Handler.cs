using UnityEngine;
using System.Collections;

public class Car_Collision_Handler : MonoBehaviour {
    public float damageMult = 1;
    public float threshold = 10;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    void OnCollisionEnter(Collision col)
    {
        if (col.impulse.magnitude > threshold)
        {
            //HealthController.TakeDamage(col.impulse.magnitude*damageMult);
            UnityStandardAssets.ImageEffects.nitroCamera.Hit(col.impulse.magnitude * damageMult);
            Debug.Log("Car collided at speed : " + col.impulse);
            Tutor_HUD.instance.Show(0);
        }
    }

}
