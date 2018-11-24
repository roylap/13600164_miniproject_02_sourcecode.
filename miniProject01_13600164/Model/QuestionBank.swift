//
//  QuestionBank.swift
//  miniProject01_13600164
//
//  Created by ict on 16/11/2561 BE.
//  Copyright © 2561 Kanyanat Roylap. All rights reserved.
//

import Foundation
class QuestionBank {
    var list = [Question]()
    
    init() {
        list.append(Question(image: "sumo", questionText: "กีฬาประจำประเทศญี่ปุ่นคืออะไร?", choiceA: "ก.มวย" , choiceB: "ข.เทควันโด" , choiceC: "ค.ซู่โม่" , choiceD: "ง.ว่ายน้ำ", answer:3))
        
        
        
        list.append(Question(image: "Honchu", questionText: "เกาะ ฮอนชูอยู่จังหวัดอะไร?", choiceA: "ก.โกเบ" , choiceB: "ข.เกียวโต" , choiceC: "ค.โอซาก้า" , choiceD: "ง.โตเกียว", answer:4))
        
        
        
        list.append(Question(image: "Asian", questionText: "อาเซียนมีสมาชิกทั้งหมดกี่ประเทศ?", choiceA: "ก.5ประเทศ" , choiceB: "ข.7ประเทศ" , choiceC: "ค.9ประเทศ" , choiceD: "ง.10ประเทศ", answer:4))
        
        
        list.append(Question(image: "Asian2", questionText: "ประเทศอะไรที่เข้าร่วมอาเซียนประเทศสุดท้าย?", choiceA: "ก.ไทย" , choiceB: "ข.อินโด" , choiceC: "ค.มาเลเซีย" , choiceD: "ง.บรูไน", answer:1))
        
        list.append(Question(image: "vanda", questionText: "ดอกVanda เป็นดอกไม้ประจำประเทศใด?", choiceA: "ก.ไทย" , choiceB: "ข.มาเลเซีย" , choiceC: "ค.สิงคโปร์" , choiceD: "ง.อินโดนีเซีย", answer:3))
        
        
        list.append(Question(image: "viangpink", questionText: "เวียงพิงค์ คือจังหวัดใด ?", choiceA: "ก.เชียงราย" , choiceB: "ข.เชียงใหม่" , choiceC: "ค.ลำพูน" , choiceD: "ง.ลำปาง", answer:2))
        
        
        list.append(Question(image: "sea", questionText: "ภาคใต้มีจังหวัดใดที่ไม่ติดทะเล?", choiceA: "ก.ยะลา" , choiceB: "ข.พัทลุง" , choiceC: "ค.ตรัง" , choiceD: "ง.ทั้งพัทลุงและตรัง", answer:4))
        
        
        list.append(Question(image: "ping", questionText: "แม่น้ำปิง มีต้นกำเนิดจากที่ใด?", choiceA: "ก.เทือกเขาผีปันน้ำ" , choiceB: "ข.เทือกเขาแดนลาว" , choiceC: "ค.ดอยขุนยวม" , choiceD: "ง.ทิวเขาหลวงพระบาง", answer:2))
        
        
        list.append(Question(image: "oka", questionText: " โอฆะบุรี คือจังหวัดอะไร?", choiceA: "ก.ลพบุรี" , choiceB: "ข.ราชบุรี" , choiceC: "ค.พิจิตร" , choiceD: "ง.พิษณุโลก", answer:3))
        
        
        list.append(Question(image: "koh", questionText: "เมืองเกาะครึ่งร้อย คือจังหวัดใด?", choiceA: "ก.ตราด" , choiceB: "ข.กระบี่" , choiceC: "ค.ภูเก็ต" , choiceD: "ง.ระนอง", answer:1))
        
        
        
        
    }
    
}
