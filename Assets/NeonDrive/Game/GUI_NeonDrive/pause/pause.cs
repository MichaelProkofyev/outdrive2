using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using UnityEngine.EventSystems;


public class pause : MonoBehaviour {



	public GameObject canvasPause;
	public Button returnButton, mainMenuButton;
	public bool  yesPause;
	private bool m_isAxisInUse = false;
	private Button selectedButton = null;


	public void Pause(){

		yesPause = true;
		Cursor.visible = true;

	}



	public void GoMainMenu()
	{
		Application.LoadLevel (1);
		Time.timeScale = 1;
		Cursor.visible = true;
	}



	public void Resume()
	{
		canvasPause.SetActive (false);
		Time.timeScale = 1;
		Cursor.visible = false;
	}


	void Start()
	{
		yesPause = false;
		Time.timeScale = 1;
		canvasPause.SetActive (false);
		Cursor.visible = false;
		returnButton = canvasPause.transform.FindChild ("return").GetComponent<Button>();
		mainMenuButton = canvasPause.transform.FindChild ("mainmenu").GetComponent<Button>();
	}

	void Update()
	{
		if (Input.GetButtonDown ("Cancel")) {
			yesPause = !yesPause;
			
			canvasPause.SetActive(yesPause);
			Cursor.visible = yesPause;
			Time.timeScale = yesPause ? 0 : 1;

			if (yesPause) {
				bool gamepadFound = Input.GetJoystickNames ().Length > 0;
				if (gamepadFound) {
					returnButton.Select();
					selectedButton = returnButton;
				}
			}
			
		}

		if (yesPause) {
			if (Input.GetButtonDown ("Submit")) {
				selectedButton.onClick.Invoke();
			}
			
			
			
			if( Input.GetAxisRaw("Vertical") != 0)
			{
				if(m_isAxisInUse == false)
				{
					float v = Input.GetAxisRaw("Vertical");
					if (0 < v) {
						returnButton.Select();
					}else if (v < 0){
						mainMenuButton.Select();
					}
					m_isAxisInUse = true;
				}
			}else if( Input.GetAxisRaw("Vertical") == 0)
			{
				m_isAxisInUse = false;
			}  
		}





	}
}
