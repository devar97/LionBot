do 
local function Dev_ar(msg, matches) 
local w = matches[1]
local r = reply_msg
local rr = msg['id']
local o = ok_cb
local f = false
local rdod = "on" ..msg.to.id
------------------------------------------------
if is_momod(msg) and w=="فتح الردود" then
local rdod = "on" ..msg.to.id
redis:set(rdod,true)
r(rr, "تم ✔️ تشغيل الردود 🔊 ", o, f) 
end
if is_momod(msg) and w=="قفل الردود" then
redis:del(rdod)
r(rr, "تم ✔️ تعطيل الردود 🔇", o, f) 
end
------------------------------------------------
-- by @Dev_ar
if redis:get(rdod) then
if (msg.to.type == "user") then
return "بوت ليوني للحمايه \n يعمل على كروبات السوبر تصل الى 5k عضو \n\n لطلب البوت راسل احد المطورين👇👇👇\n 🏌 ∂єνєℓσρєяѕ тєαм ☂\n\n🔹 ĐёⓋ 🔸@Dev_ar\n🔹 ĐёⓋ 🔸@JS_33\n🔸 Channle 🔹@ar_h97"
else
if ( msg.text ) and ( msg.to.type == "channel" ) or ( msg.to.type == "chat" ) then
-- by @Dev_ar
local su = {
"نعم حبيبي المطور 🌝❤",
"يابعد روح ليوني 😘❤️",
  }
local  ss97 = {
"ها حياتي😻",
"عيونه 👀 وخشمه 👃🏻واذانه👂🏻",
"باقي ويتمدد 😎",
"ها حبي 😍",
"ها عمري 🌹",
"اجيت اجيت كافي لتصيح 🌚👌",
"هياتني اجيت 🌚❤️",
"نعم حبي 😎",
}
local bs = {
"مابوس 🌚💔",
"اآآآم͠ــ.❤️😍ــو͠و͠و͠آ͠آ͠ح͠❤️عسسـل❤️",
"الوجه ميساعد 😐✋",
"ممممح😘ححح😍😍💋",
}
local ns = {
"🌹 هــلــℌelℓoووات🌹عمـ°🌺°ــري🙊😋",
"هْـٌﮩٌﮧٌ﴿🙃﴾ﮩٌـ୭ٌ୭ـْلوُّات†😻☝️",
"هلاوو99وووات نورت/ي ❤️🙈",
"هلووات 😊🌹",
}

local sh = {
"اهلا عزيزي المطور 😽❤️",
"هلوات . نورت مطوري 😍",
}
local lovs =  "اموت عليك حياتي  😍❤️"
local  lovm = {
"اكرهك 😒👌🏿",
"دي 😑👊🏾",
"اعشكك/ج مح 😍💋",
"اي احبك/ج 😍❤️",
"ماحبك/ج 😌🖖",
"اذا كتلك/ج احبك/ج شراح تستفاد/ين 😕❤️",
"ولي ماحبك/ج 🙊💔",
}
local thb = {
"اموت عليه-ه 😻😻",
"فديته-ه 😍❤️",
"لا ماحبه-ه 🌚💔",
"اكرهه 💔🌚",
"يييع 😾👊🏿",
}
local fun = {
"دِوُؤؤم آلُِضحٍڪهـ😍 ڪبَدِي❤️",
"لتضحك 😂هواي يصير 😂فاول",
" •❤️•فٌدِيـ❤️ـِـْْت هلضحكه•❤️•",
"«يـ•ـஓـضحـ•ـﷻـ•ـك الـًَۥـ﴿😹﴾ـفطِـ❅ـيَرْ",
}

local ssu = "🏌 ∂єνєℓσρєяѕ тєαм ☂\n\n🔹 ĐёⓋ 🔸@Dev_ar\n🔹 ĐёⓋ 🔸@JS_33\n🔸 Channle 🔹@ar_h97"
----------------------------------------------



----------------------------------------------------------------------------
if is_sudo(msg) and w == "ليوني" then 
r(rr, su[math.random(#su)] , o, f)  
elseif not is_sudo(msg) and w == "ليوني" then 
r(rr, ss97[math.random(#ss97)] , o, f)  
elseif w == "بوس" then 
r(rr, bs[math.random(#bs)] , o, f)  
elseif is_sudo(msg) and w =="هلو" then
r(rr, sh[math.random(#sh)] , o, f)  
elseif not is_sudo(msg) and w =="هلو" then
r(rr, ns[math.random(#ns)] , o, f)  
elseif is_sudo(msg) and w == "احبك" then
r(rr, lovs, o, f) 
elseif is_sudo(msg) and w == "تحبني"  then
r(rr, lovs, o, f) 
elseif not is_sudo(msg) and w == "احبك"  then
r(rr, lovm[math.random(#lovm)] , o, f)  
elseif not is_sudo(msg) and w == "تحبني" then
r(rr, lovm[math.random(#lovm)] , o, f)  
elseif w == "تحب" then
r(rr, thb[math.random(#thb)] , o, f) 
elseif  w == "هه" or w =="ههه" or w == "هههه" or w == "ههههه" or w == "هههههه" or w == "ههههههه" or w == "هههههههه"  or w == "😂"  or w == "😂😂"  or w == "😂😂😂"  or w == "😂😂😂😂"  or w == "😂😂😂😂😂"  or w == "😹"  or w == "😹😹"  or w == "😹😹😹"  or w == "😹😹😹😹"  or w == "😹😹😹😹😹" then
r(rr, fun[math.random(#fun)] , o, f) 
----------------------------------------------------------------------------
elseif w== "شلونكم" or w== "شلونك" or w== "شونك" or w== "شونكم"   then
r(rr, "بخير اذا انته بخير كبد حياتي 😻❤️", o, f) 
elseif w== "صاكه"  then
r(rr, "اووويلي يابه 😍❤️ دزلي صورتهه 🐸💔", o, f) 
elseif w== "ها"  then
r(rr, "هاي اچون چقله هاي🌚", o, f) 
elseif w== "وينك"  then
r(rr,  "دور بكلبك وتلكاني 😍😍❤️", o, f) 
elseif w== "منورين"  then
r(rr, "من نورك عمري ❤️🌺", o, f) 
elseif w== "هاي"  then
r(rr, "هايات عمري 😍🍷", o, f) 
elseif w== "😐"  then
r(rr, "شبيك صافن 😒🔥", o, f) 
elseif w== "🙊"  then
r(rr, "فديت الخجول 🙊 😍", o, f) 
elseif w== "نوره"  then
r(rr, "هاي الضلعه مالتي لحد يتحارش بيهه 😎❤️", o, f) 
elseif w== "😢"  then
r(rr, "لتبجي حياتي 😢", o, f) 
elseif w== "😭"  then
r(rr, "لتبجي حياتي 😭😭", o, f) 
elseif w== "منور"  then
r(rr, "نِْـِْـــِْ([💡])ِْــــًِـًًْـــِْـِْـِْـورِْكِْ", o, f) 
elseif w== "😒"  then
r(rr, "شبيك-ج عمو 🤔", o, f) 
elseif w== "مح"  then
r(rr, "محات حياتي🙈❤", o, f) 
elseif w== "شكرا" or w== "ثكرا" then
r(rr, "{ •• الـّ~ـعـفو •• }", o, f) 
elseif w== "انته وين"  then
r(rr, "بالــبــ🏠ــيــت", o, f) 
elseif w== "🌚"  then
r(rr, "منور صخام الجدر😹☝", o, f) 
elseif w== "😍"  then
r(rr, " يَمـه̷̐ إآلُحــ❤ــب يَمـه̷̐ ❤️😍", o, f) 
elseif w== "اكرهك"  then
r(rr, "اني الأكثر 🌚", o, f) 
elseif w== "اريد اكبل"  then
r(rr, "خخ اني هم اريد اكبل قابل ربي وحد😹🙌️", o, f) 
elseif w== "باي" or w=="بااي" or w=="باااي" or w=="بااااي" then
r(rr, "بايات حياتي ❤️\n" ..msg.from.first_name.."\n",  o, f) 
elseif w== "ضوجه"  then
r(rr, "شي اكيد الكبل ماكو 😂 لو بعدك/ج مازاحف/ة 🙊😋", o, f) 
elseif w== "اروح اصلي"  then
r(rr, "انته حافظ سوره الفاتحة😍❤️️", o, f) 
elseif w== "صاك"  then
r(rr, "زاحفه 😂 منو هذا دزيلي صورهه", o, f) 
elseif w== "اجيت"  then
r(rr, "كْـٌﮩٌﮧٌ﴿😍﴾ـﮩٌول الـ୭ـهـٌ୭ـْلا❤️", o, f) 
elseif w== "فديتج"  then
r(rr, "ها  زاحف كمشتك", o, f) 
elseif w== "طفي السبلت"  then
r(rr, "تم اطفاء السبلت بنجاح 🌚🍃", o, f) 
elseif w== "حفلش"  then
r(rr, "افلش راسك 🤓", o, f) 
elseif w== "حبيبتي"  then
r(rr, "منو هاي 😱 تخوني 😔☹", o, f) 
elseif w== "حروح اسبح"  then
r(rr, "واخيراً 😂", o, f) 
elseif w== "😔"  then
r(rr, "ليش الحلو ضايج ❤️🍃", o, f) 
elseif w== "☹️"  then
r(rr, "لضوج حبيبي 😢❤️🍃", o, f) 
elseif w== "جوعان"  then
r(rr, "تعال اكلني 😐😂", o, f) 
elseif w== "تعال خاص"  then
r(rr, "ها شسون 😉", o, f) 
elseif w== "لتحجي"  then
r(rr, "وانت شعليك حاجي من حلگگ😒", o, f) 
elseif w== "معليك" or w== "شعليك" then
r(rr, "عليه ونص 😂", o, f) 
elseif w== "شدسون" or w== "شداتسوون" or w== "شدتسون" then
r(rr, "نطبخ 😐", o, f) 
elseif w== "شلونك بوت"  then
r(rr, "الحمد لله وانت😍😙", o, f) 
elseif w== "يومه فدوه"  then
r(rr, "فدؤه الج حياتي 😍😙", o, f) 
elseif w== "افلش"  then
r(rr, "باند عام من 30 بوت 😉", o, f) 
elseif w== "احبج"  then
r(rr, "يخي احترم شعوري 😢", o, f) 
elseif w== "شكو ماكو"  then-- by @Dev_ar
r(rr, "غيرك براسي ماكو 💨😽🚬️", o, f) 
elseif w== "اغير جو"  then
r(rr, "😂 تغير جو لو تسحف 🐍 عل بنات", o, f) 
elseif w== "😋"  then
r(rr, "طبب لسانك جوه عيب 😌", o, f) 
elseif w== "🤔"  then
r(rr, "ليروح بالك بعيد 🌝🌹", o, f) 
elseif w== "😡"  then
r(rr, "ابرد  🚒", o, f) 
elseif w== "مرحبا"  then
r(rr, "مراحب 😍❤️ نورت-ي 🌹", o, f) 
elseif w== "سلام" or w== "السلام عليكم" or w== "سلام عليكم" then
r(rr, "وعليكم السلام اغاتي🌝👋", o, f)  
elseif w== "واكف"  then
r(rr, "يخي مابيه شي ليش تتفاول😢", o, f)  
elseif w== "البوت واكف"  then
r(rr, "هياتني 😐", o, f) 
elseif w == "ضايج"  then 
r(rr, "ليش ضايج حياتي", o, f) 
elseif w== "ضايجه"  then
r(rr, "منو مضوجج كبدايتي", o, f) 
elseif w== "😳"  then
r(rr, "❌لـŃØـ😌✋ـ✿ـا❌ تصدم ڪفشةة. ْْعمري. هية.  ✾ هٌـஆــٌُأإي  ٱٳلدنيه👻 ", o, f) 
elseif w== "صدك"  then
r(rr, "متشاقي وياك قبل 😏💔", o, f) 
elseif w== "شغال"  then
r(rr, "نعم عزيزي باقي واتمدد 😎🌿", o, f) 
elseif w== "تخليني"  then
r(rr, "اخليك بزاويه 380 درجه وانته تعرف الباقي 🐸", o, f) 
elseif w== "فديتك"  then
r(rr,  "فداك الكون 🌍 وماي العيون 😍❤️", o, f) 
elseif w== "غني"  then
r(rr, "عمي يبو البار 🤓☝🏿️ صبلي لبلبي ترى اني سكران 😌  وصاير عصبي 😠 انه وياج يم شامه 😉 وانه ويــــاج يم شامه  شد شد  👏🏿👏🏿 عدكم سطح وعدنه سطح 😁 نتغازل لحد الصبح 😉 انه وياج يم شامه 😍 وانه وياج فخريه وانه وياج حمديه 😂🖖🏿", o, f) 
elseif w== "بوت"  then
r(rr, "أسمي ليوني 🌚🌸", o, f) 
elseif w== "مساعدة"  then
r(rr, "لعرض قائمة المساعدة اكتب الاوامر 🌚❤️", o, f) 
elseif w== "زاحف"  then
r(rr, "زاحف عله خالتك الشكره 🌝", o, f) 
elseif w== "حلو"  then
r(rr, "انت الاحلى 🌚❤️", o, f) 
elseif w== "تبادل"  then
r(rr, "كافي ملينه تبادل 😕💔", o, f) 
elseif w== "عاش"  then
r(rr, "الحلو 🌝🌷", o, f) 
elseif w== "مات"  then
r(rr, "أبو الحمامات 🕊🕊", o, f) 
elseif w== "ورده" or w== "وردة"  then
r(rr, "أنت/ي  عطرها 🌹🌸", o, f) 
elseif w== "شسمك"  then
r(rr, "مكتوب فوك 🌚🌿", o, f) 
elseif w== "فديت" or w=="فطيت" then
r(rr, "فداك/ج 💞🌸", o, f) 
elseif w== "واو"  then
r(rr, "قميل 🌝🌿", o, f) 
elseif w== "liony"  then
r(rr, ss97[math.random(#ss97)] , o, f)  
elseif w== "زاحفه" or w== "زاحفة"  then
r(rr, "لو زاحفتلك جان ماكلت زاحفه 🌝🌸", o, f) 
elseif w== "حبيبي" or w=="حبي"  then
r(rr, "بعد روحي 😍❤️ تفضل", o, f) 
elseif w== "حبيبتي"  then
r(rr, "تحبك وتحب عليك 🌝🌷", o, f) 
elseif w== "حياتي"  then
r(rr, "ها حياتي 😍🌿", o, f) 
elseif w== "عمري"  then
r(rr, "خلصته دياحه وزحف 🌝🌿 ", o, f) 
elseif w== "اسكت"  then
r(rr, "وك معلم 🌚💞", o, f) 
elseif w== "بتحبني"  then
r(rr, "بحبك اد الكون 😍🌷", o, f) 
elseif w== "المعزوفه"  then
r(rr, "طرطاا طرطاا طرطاا 😂👌", o, f) 
elseif w== "موجود"  then
r(rr, "تفضل عزيزي 🌝🌸", o, f) 
elseif w== "اكلك"  then
r(rr, ".كول حياتي 😚🌿", o, f) 
elseif w== "فدوه" or w=="فدوة" or w=="فطوه" or w=="فطوة" then
r(rr, "لكلبك/ج 😍❤️", o, f) 
elseif w== "دي"  then
r(rr, "دييييات 🌝", o, f) 
elseif w== "اشكرك"  then
r(rr, "بخدمتك/ج حبي ❤", o, f) 
elseif w== ""  then
r(rr, "", o, f) 
elseif w =="تيست" then
r(rr, "💯 البوت شـغــال 🚀", o, f)
elseif w == "المطور" then
r(rr, ssu, o, f)
---------------------------------------------
elseif w == "انجب" or w == "نجب" and redis:get(rdod) then
if is_sudo(msg) then 
r(rr,  "حاضر تاج راسي انجبيت 😇 ", o, f) 
elseif is_admin1(msg) then
r(rr,  "لخاطرك راح اسكت 😌", o, f) 
elseif is_owner(msg) then
r(rr,  "لخاطرك راح اسكت 😌", o, f) 
elseif is_momod(msg) then
r(rr,  "فوك مامصعدك ادمن ؟؟ انته انجب 😏", o, f) 
else
r(rr,  "انجب انته لاتندفر 😏", o, f) 
end end end  end end 
---------------------------------------------

---------------------------------------------

end
return {
patterns = {
"^(تحب) (.+)$",
"^(بوس)", 
"(.*)" 
},
run = Dev_ar,
}
end
-- write by dev abrar
-- tele : @dev_ar