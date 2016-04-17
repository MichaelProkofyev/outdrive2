using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class MAIN : MonoBehaviour {


	public Button playButton, exitButton, buyMusicAuthoursButton, authorsButton;
	public bool  yesPause;
	private bool m_isAxisInUse = false;
	private bool gamepadFound = false;	
	private Button selectedButton = null;

    public void startGame() {
        Application.LoadLevel(2);
        }

    public void quitGame()
    {
        Application.Quit();
    }


	void Update()
	{
		
		if (Input.GetButtonDown ("Submit")) {
			//if(mainMenuButton.spriteState == SpriteState.)
			selectedButton.onClick.Invoke();
		}else if (Input.GetKeyDown(KeyCode.JoystickButton7)){
			startGame();
		}
		
		
		
		if( Input.GetAxisRaw("Vertical") != 0)
		{
			if(m_isAxisInUse == false)
			{
				float v = Input.GetAxisRaw("Vertical");
				if (0 < v) {
					if (selectedButton == exitButton) selectedButton = playButton;
					else if (selectedButton == buyMusicAuthoursButton) selectedButton = exitButton;
					else if (selectedButton == authorsButton) selectedButton = buyMusicAuthoursButton;
					else if (selectedButton == null) selectedButton = playButton;
					selectedButton.Select();
				}else if (v < 0){
					if (selectedButton == playButton) selectedButton = exitButton;
					else if (selectedButton == exitButton) selectedButton = buyMusicAuthoursButton;
					else if (selectedButton == buyMusicAuthoursButton) selectedButton = authorsButton;
					else if (selectedButton == null) selectedButton = playButton;
					selectedButton.Select();
				}
				m_isAxisInUse = true;
			}
		}else if( Input.GetAxisRaw("Vertical") == 0)
		{
			m_isAxisInUse = false;
		}  
		
		
		
		
		
	}

	void Start () {
		gamepadFound = Input.GetJoystickNames ().Length > 0;
		if (gamepadFound) {
			playButton.Select();
			selectedButton = playButton;
		}
	}
}

