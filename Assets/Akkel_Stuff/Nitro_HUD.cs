using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class Nitro_HUD : MonoBehaviour {
    public static Nitro_HUD instance;
    public Image nitroBar;
    public GasMotor motor;
    public Image tip;
	// Use this for initialization
	void Start () {
        instance = this;
	}
    public void SetBar(float current, float max)
    {
        Vector3 vec = nitroBar.rectTransform.localScale;
        vec.x = current / max;
        nitroBar.rectTransform.localScale = vec;
    }

    public void MoveTip()
    {
        Vector3[] corners = new Vector3[4];
        nitroBar.rectTransform.GetWorldCorners(corners);
        tip.rectTransform.position = corners[2];
    }

    void Update()
    {
        SetBar(motor.fuel,motor.maxFuel);
        MoveTip();
    }
}
