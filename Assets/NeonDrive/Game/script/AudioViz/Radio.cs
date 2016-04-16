using System.IO;
using UnityEngine;
using System.Collections;
public class Radio : MonoBehaviour
{
    int i = 0;
    FileInfo[] UserFiles;
    WWW www;
    void Start()
    {
        DirectoryInfo di = new DirectoryInfo(Application.dataPath + "/UserSounds");
        FileInfo[] UserFiles = di.GetFiles("*.ogg", SearchOption.TopDirectoryOnly);
        if (UserFiles.Length > 0)// если массив не пуст
        {
            www = new WWW("file:///" + Application.dataPath + "/UserSounds/" + UserFiles[0].Name);
            GetComponent<AudioSource>().clip = www.GetAudioClip(false, true, AudioType.OGGVORBIS);//[/url]
}
    }       
    void Update()
{
    if (!GetComponent<AudioSource>().isPlaying) GetComponent<AudioSource>().Play();
}
}