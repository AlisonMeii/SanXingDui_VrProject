using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShipMove : MonoBehaviour
{
    void Update()
    {
        Move();     //�ƶ�
        Shake();    //ҡ��
    }

    float Speed = 5.0f; //�ƶ��ٶ�
    float RotateSpeed = 5;   //��ת�ٶ�
    void Move()
    {
       /* float move_y = Input.GetAxis("Horizontal");
        float move_x = Input.GetAxis("Vertical");

        if (move_y >= 0.5f)
        {
            transform.Translate(0, 0, Speed * Time.deltaTime);
        }
        else if (move_y <= -0.5f)
        {
            transform.Translate(0, 0, -Speed * Time.deltaTime);
        }
        if (move_x >= 0.5f)
        {
            transform.Translate(-Speed * Time.deltaTime, 0, 0);
        }
        else if (move_x <= -0.5f)
        {
            transform.Translate(Speed * Time.deltaTime, 0,0 );
        }
        // ����ת��  
        if (move_y > 0.5f)
        {
            if (move_x > 0.5f)
            {
                transform.Rotate(0, RotateSpeed * Time.deltaTime, 0);
            }
            else if (move_x < -0.5f)
            {
                transform.Rotate(0, -RotateSpeed * Time.deltaTime, 0);
            }
        }*/
    }


    // ��Z���ҡ�ڵ��ٶ�
    float z_ShakeSpeed = 3.0f;
    // ��X���ҡ�ڵ��ٶ�
    float x_ShakeSpeed = 1.0f;
    void Shake()
    {
        // ��Z��ҡ��  
        if (transform.eulerAngles.z >= 4 && transform.eulerAngles.z <= 180)
        {
            z_ShakeSpeed = -z_ShakeSpeed;
        }
        else if (transform.eulerAngles.z <= (360 - 4) && transform.eulerAngles.z >= 180)
        {
            z_ShakeSpeed = -z_ShakeSpeed;
        }

        // ��X��ҡ��  
        if (transform.eulerAngles.x >= 4 && transform.eulerAngles.x <= 180)
        {
            x_ShakeSpeed = -x_ShakeSpeed;
        }
        else if (transform.eulerAngles.x >= 180 && transform.eulerAngles.x <= (360 - 4))
        {
            x_ShakeSpeed = -x_ShakeSpeed;
        }
        transform.Rotate(0, 0, z_ShakeSpeed * Time.deltaTime);
    }
}
