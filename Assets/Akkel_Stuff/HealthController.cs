using UnityEngine;
using System.Collections;

public class HealthController : MonoBehaviour {
    public float health = 100;
    private float startHealth;
    public static HealthController instance;
    public Health_HUD hud;
	// Use this for initialization
    void Awake()
    {
        instance = this;
        startHealth = health;
    }
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        health = Mathf.Clamp(health,0,startHealth);
        hud.SetBar(health,startHealth);
	}

    public static void TakeDamage(float damage)
    {
        instance.health -= damage;
        if(instance.health <= 0)
        {
            Pulse_Controller.instance.died = true;
        }
        
    }
    public static float getHealthRatio()
    {
        return instance.health / instance.startHealth; 
    }


}
