using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NewBehaviourScript : MonoBehaviour
{
    public Material m;
    public Animator anim;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    //�����úö��

    {
        if (Input.GetMouseButton(0))
        //���룺������ 0���������� 1���Ҽ� 
        {
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            //Ray ���� ������������ͬ
            RaycastHit hit;
            //����һ��list 
            if (Physics.Raycast(ray, out hit))
            //
            {
                anim.Play("role1");
                //hit.collider.gameObject.GetComponent<MeshRenderer>().material = m;
                //hit�����collider��gameobject�����component�����meshrender���ǵü����ţ������material,�Ҳ����Ϳ�inspector����
                //Eric:list����ĵ�һ���������ǵ�object��
            }
        }



    }
}
