using System;
using System.Collections;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneLoader : MonoBehaviour
{
    public float a;
    public String b;
    void Start()
    {
        // 启动协程等待16秒钟
        StartCoroutine(LoadSceneAfterDelay(b, a));
    }

    // 定义协程
    IEnumerator LoadSceneAfterDelay(string sceneName, float delay)
    {
        // 等待一段时间
        yield return new WaitForSeconds(delay);

        // 使用SceneManager加载目标场景
        SceneManager.LoadScene(sceneName);
    }
}

