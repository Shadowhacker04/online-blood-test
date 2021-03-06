!function(e){e.ageCheck=function(r){
const t=e.extend({minAge:21,redirectTo:"",redirectOnFail:"",title:"Fix an Appointment!",copy:"Please make sure that you don't have any other appointments on that particular day:",success:null,successMsg:{header:"Success!",body:"Fixing an appointment..."},
underAgeMsg:"Sorry, please check the date you've entered'...",underAge:null,
errorMsg:{invalidDay:"Day is invalid or empty",invalidYear:"Year is invalid or empty"},
storage:"sessionStorage",storageExpires:null},r);
var a=window[t.storage];const o={month:"",day:"",year:"",age:"",errors:[],setValues(){
const r=e(".ac-container .month").val(),t=e(".ac-container .day").val();o.month=r,o.day=t.replace(/^0+/,""),o.year=e(".ac-container .year").val()},
validate:()=>(o.errors=[],!1===/^([0-9]|[12]\d|3[0-1])$/.test(o.day)&&o.errors.push(t.errorMsg.invalidDay),!1===/^(19|20)\d{2}$/.test(o.year)&&o.errors.push(t.errorMsg.invalidYear),
o.clearErrors(),o.displayErrors(),o.errors.length<1),clearErrors(){e(".errors").html("")},displayErrors(){
let r="<ul>";for(let e=0;e<o.errors.length;e++)r+=`<li><span>x</span>${o.errors[e]}</li>`;r+="</ul>",setTimeout(()=>{
e(".ac-container .errors").html(r)},200)},reCenter(r){r.css("top",`${Math.max(0,(e(window).height()-(r.outerHeight()+150))/2)}px`),r.css("left",`${Math.max(0,(e(window).width()-r.outerWidth())/2)}px`)},
buildHtml(){const r=t.copy,a=["January","February","March","April","May","June","July","August","September","October","November","December"];
let i="";i+='<div class="ac-overlay"></div>',i+='<div class="ac-container">',i+=`<h2>${t.title}</h2>`,i+=`<p>${r.replace("[21]",`<strong>${t.minAge}</strong>`)}`+"</p>",i+='<div class="errors"></div>',i+='<div class="fields"><select class="month">';
for(let e=0;e<a.length;e++)i+=`<option value="${e}">${a[e]}</option>`;i+="</select>",i+='<input class="day" maxlength="2" placeholder="01" />',i+='<input class="year" maxlength="4" placeholder="1989"/>',i+="<button>Submit</button></div></div>",
e("body").append(i),e(".ac-overlay").animate({opacity:.8},500,()=>{o.reCenter(e(".ac-container")),e(".ac-container").css({opacity:1})}),e(".ac-container .day, .ac-container .year").focus(function(){
e(this).removeAttr("placeholder")})},setAge(){o.age="";const e=new Date(o.year,o.month,o.day),r=Date.now()-e.getTime(),t=new Date(r);
o.age=Math.abs(t.getUTCFullYear()-1970)},getStorage:()=>"cookie"===t.storage?document.cookie.split(";").filter(e=>e.trim().startsWith("ageVerified=")).length:"true"===a.getItem("ageVerified"),setStorage(e,r,o){
try{if("cookie"===t.storage){if(o){let e=new Date;e.setTime(e.getTime()+24*o*60*60*1e3),o=e.toGMTString()}
document.cookie="ageVerified=true; expires="+o+";"}else a.setItem(e,r);return!0}catch(e){return!1}},handleSuccess(){
const r=`<h3>${t.successMsg.header}</h3><p>${t.successMsg.body}</p>`;e(".ac-container").html(r),setTimeout(()=>{
e(".ac-container").animate({top:"-350px"},200,()=>{e(".ac-overlay").animate({opacity:"0"},500,()=>{
""!==t.redirectTo?window.location.replace(t.redirectTo):(e(".ac-overlay, .ac-container").remove(),t.success&&t.success())})})},2e3)},
handleUnderAge(){const r=`<h3>${t.underAgeMsg}</h3>`;e(".ac-container").html(r),""!==t.redirectOnFail&&setTimeout(()=>{window.location.replace(t.redirectOnFail)},2e3),
t.underAge&&t.underAge()}};if(o.getStorage())return!1;o.buildHtml(),e(".ac-container button").on("click",()=>{
o.setValues(),!0===o.validate()&&(o.setAge(),o.age>=t.minAge?(o.setStorage("ageVerified","true",t.storageExpires)||console.log(t.storage+" not supported by your browser"),
o.handleSuccess()):o.handleUnderAge())}),e(window).resize(()=>{o.reCenter(e(".ac-container")),setTimeout(()=>{o.reCenter(e(".ac-container"))},500)})}}(jQuery);