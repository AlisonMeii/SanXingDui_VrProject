using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class ChangeSceneTrigger : MonoBehaviour
{
    public float fadeDuration = 5.0f; // 渐变持续时间

    private bool triggered = false;

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player") && !triggered)
        {
            triggered = true;
            StartCoroutine(TriggerSequence());
        }
    }

    private IEnumerator TriggerSequence()
    {

        float elapsedTime = 0f;
        Camera mainCamera = Camera.main;
        float initialIntensity = mainCamera.backgroundColor.grayscale;
        float targetIntensity = 0f;
        elapsedTime = 0f;
        while (elapsedTime < fadeDuration)
        {
            float t = elapsedTime / fadeDuration;
            float intensity = Mathf.Lerp(initialIntensity, targetIntensity, t);
            mainCamera.backgroundColor = new Color(intensity, intensity, intensity);
            elapsedTime += Time.deltaTime;
            yield return null;
        }

        SceneManager.LoadScene("文字 0");
    }
}
