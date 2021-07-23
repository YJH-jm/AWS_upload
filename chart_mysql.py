import pymysql
import json
import collections

def chart_all():
    all = []
    try:
        conn = pymysql.connect(host='??', # 본인 정보 찾아서 수정 
                                user='admin',
                                password='playdata',
                                db='chart',
                                charset='utf8')
        cur = conn.cursor()

        try:
            object 
            cur.execute("select * from music_chart")
            rows = cur.fetchall()
            objects_list = []
            for row in rows:
                d = collections.OrderedDict() # 항목이 추가된 순서를 기억하는 딕셔너리 서브 클래스
                d["today"] = row[0]
                d["songrank"] = row[1]
                d["artist"] = row[2]
                d["title"] = row[3]
                d["comment"] = row[4]
                d["songlike"] = row[5]
                objects_list.append(d)
                print("***********************")
                print(objects_list)
            all = json.dumps(objects_list) # python 객체를 JOSN 문자열로 변환
            print("_______all____________")
            print(all)
        except Exception as e:
            print(e)

    except Exception as e:
        print(e)

    return all