const id= document.getElementById('id');
const pw= document.getElementById('pw');
const pw2=document.getElementById('pw2');
const pwResult=document.getElementById('pwResult');
const pwResult2=document.getElementById('pwResult2');
const idResult=document.getElementById('idResult');

const frm = document.getElementById('frm');
const btn = document.getElementById('btn');

const name= document.getElementById('name');
const phone= document.getElementById('phone');
const email= document.getElementById('email');

let idcheck=false;
let pwcheck=false;
let namecheck=false;
let phonecheck=false;
let emailcheck=false;

pw.addEventListener("change",function(){
    pwcheck=false;
    pw2.value='';
    pwResult2.innerHTML='';
    pw2.focus();
})

name.addEventListener('blur',function(){

    if(name.value==''){
        namecheck=false;
    }else{
        namecheck=true;
    }
})

phone.addEventListener('blur',function(){

    if(phone.value==''){
        phonecheck=false;
    }else{
        phonecheck=true;
    }
})
email.addEventListener('blur',function(){

    if(email.value==''){
        emailcheck=false;
    }else{
        emailcheck=true;
    }
})



btn.addEventListener("click",function(){
    if(idcheck && pwcheck && namecheck &&phonecheck && emailcheck){
    frm.submit();
}else{
    alert("필수 요건을 확인")
}
});

id.addEventListener("blur",function(){
   
    let v = id.value;

    if(v.length==0 ){//v==''
     idResult.innerHTML='아이디를 입력해주세요.';
     idcheck=false; 
    }else{
        idResult.innerHTML='';
        idcheck=true;
    }
})
pw.addEventListener("keyup",function(){
   
    let length=pw.value.length;
    let message='잘못된 비번입니다';
    if(length>=8 && length<=12){
        message='올바른 비번입니다';
     
    }
    pwResult.innerHTML=message;
})
pw2.addEventListener("blur",function(){
    let v1= pw.value;
    let v2= pw2.value;
    let message = "비번이 일치 하지 않습니다";

    if(v1==v2){
        message="비번이 일치 합니다";
        pwcheck=true;
    }else{
        pwcheck=false;
    }
    pwResult2.innerHTML=message;
})


    

