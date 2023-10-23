# M2.Progress
Thank for base progress bar => [mythic_progbar](https://github.com/HalCroves/mythic_progbar) resource, custom by M2Dev
## ** หลอดโหลดแก้ไขจาก mythic **

หลอดโหลดเอาไว้ใช้กันนะครับ  <br>
พอดีน่าจะได้ใช้ตัวนี้เยอะเลยทำไว้ให้ใช้กัน  <br>
ส่วนตัวเฉพาะ อาจจะต้องรอก่อน  <br>
ฟังก์ชั่นเดิมๆครับ มีเพิ่มมานิดหน่อย <br>
รูปภาพ + icon และ effect หลอดโหลด <br>

### รายการแก้ไข
```diff 
## การใช้เหมือนเดิมแต่ต้องรู้สิ่งที่เพิ่มก่อนนะครับ
+ Custom UI ทั้งหมด
+ แก้ไขจาก Fixed ขนาดให้รองรับ Responsive (ทุกขนาดหน้าจอ)
+ เพิ่ม ไอคอน (ด้านหน้า Label) ทำให้ไม่โล่งเกินไป
+ หลอดโหลดมีพื้นหลังระยิบระยับเพื่อความสวยงาม ลบได้ใน css
+ รูปภาพสามารถเพิ่มในการทำงานได้ทุกครั้ง รองรับ GIF และ ไฟล์รูปทุกชนิด
- ปรับเปลี่ยน JS นิดหน่อยเพื่อที่จะให้ใช้ได้แบบ ไดนามิก (ปรับสีหลอดได้)
```

## การใช้งาน
```lua 
ตัวอย่างการ Trigger และ Options

TriggerEvent("mythic_progbar:client:progress", {
    name = "unique_action_name",  -- unique_action_name
    duration = 10000, -- เวลาในการทำ
    nameicon = "garage", -- ไม่มีให้เว้นว่าง icon ข้างหน้าชื่อ https://fonts.google.com/icons?selected=Material+Symbols+Rounded:garage:FILL@1;wght@200;GRAD@200;opsz@24
    picURL = "https://cdn4.iconfinder.com/data/icons/LUMINA/transportation/png/400/muscle_car.png", -- รูปภาพ หากต้องการเอาไอเทมให้ใช้ nui://esx_inventoryhud/html/img/item/<ชื่อไอเทม>.png
    color = "#d449ab", -- สีหลอดโหลด rgb(0,0,0) หรือ #000000 ก็ได้
    label = "กำลังเก็บรถ...", -- text บอกว่ากำลังทำอะไร
    useWhileDead = false,
    canCancel = true,
    controlDisables = {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = true,
        disableCombat = true,
    },
    animation = {
        animDict = "missheistdockssetup1clipboard@idle_a",
        anim = "idle_a",
    },
    prop = {
        model = "prop_paper_bag_small",
    }
}, function(status)
    if not status then
        -- Do Something If Event Wasn't Cancelled
    end
end)
```

Credit : [@M2Dev]() <br>
Discord : [M2.Developer](https://discord.gg/pBsj94TaJT) <br>
Github : [https://github.com/M2D3V/M2.Progress](https://github.com/M2D3V/M2.SpawnPoint) <br>
Download : [https://github.com/M2D3V/M2.Progress/releases/tag/v1.0-beta](https://github.com/M2D3V/M2.Progress/releases/tag/v1.0-beta)
