CONFIG = {
    nameicon = "ไม่มีให้เว้นว่าง icon ข้างหน้าชื่อ https://fonts.google.com/icons?selected=Material+Symbols+Rounded:garage:FILL@1;wght@200;GRAD@200;opsz@24",
    picURL = "รูปภาพ หากต้องการเอาไอเทมให้ใช้ nui://<inventory_resource>/html/img/<itemName>.png",
    color = "สีหลอดโหลด rgb(0,0,0) หรือ #000000 ก็ได้",
}

-- การใช้งาน
TriggerEvent("mythic_progbar:client:progress", {
    name = "unique_action_name",  -- unique_action_name
    duration = 10000, -- เวลาในการทำ
    nameicon = "garage", -- ไม่มีให้เว้นว่าง icon ข้างหน้าชื่อ https://fonts.google.com/icons?selected=Material+Symbols+Rounded:garage:FILL@1;wght@200;GRAD@200;opsz@24
    picURL = "https://cdn4.iconfinder.com/data/icons/LUMINA/transportation/png/400/muscle_car.png", -- รูปภาพ หากต้องการเอาไอเทมให้ใช้ nui://esx_inventoryhud/html/img/item/<ชื่อไอเทม>.png
    color = "#ff254a", -- สีหลอดโหลด rgb(0,0,0) หรือ #000000 ก็ได้
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
-- การใช้งาน