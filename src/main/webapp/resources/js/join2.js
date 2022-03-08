const id= document.getElementById('id');
const pw= document.getElementById('pw');
const pw2=document.getElementById('pw2');
const name= document.getElementById('name');
const phone= document.getElementById('phone');
const email= document.getElementById('email');

const pwResult=document.getElementById('pwResult');
const pwResult2=document.getElementById('pwResult2');
const idResult=document.getElementById('idResult');

const frm = document.getElementById('frm');
const btn = document.getElementById('btn');


let pwcheck=true; //같지않을떄 true 같을떄 false

//----pw pw2 같은지 검증 
pw2.addEventListener('blur',function(){
   
    let message='패스워드 일치';
    if(pw.value != pw2.value){
        pwcheck=true;
        message='패스워드 일치 안함'
        pw2.value='';
       
    }else{
        pwcheck=false;
    }
    pwResult2.innerHTML=message;
});
//----검증이 끝나고 pw를 수정 했을 경우
pw.addEventListener('change',function(){
    pwcheck=true;
    pw2.value='';
    pwResult2.value='';
    pw2.focus();
});
//----pw 길이 검증
pw.addEventListener('blur',function(){
    if(pw.value.length<8 || pw.value.length>12){
        pwResult.innerHTML='패스워드 글자수가 맞지않습니다';
    }else{
        pwResult.innerHTML='';
    }
});
//----id 입력 후
id.addEventListener('blur',function(){
    if(id.value==''){
     idResult.innerHTML='id를 입력해주세요';
    
    }
});
//----가입 버튼
btn.addEventListener("click",function(){
    if(id.value==''){
        alert("아이디를 넣어주세요");
        id.focus();
        return;
    }

    if(pw.value==''|| pw.value.length<8 || pw.value.length>12){
        alert("패스워드가 정확하지 않습니다.");
        pw.focus();
        return;
    }
    if(pwcheck){
        alert('패스워드가 일치하지 않습니다')
        pw2.focus();
        return;
    }
    if(name.value==''){
        alert("이름을 넣어주세요");
        name.focus();
        return;
    }

    if(phone.value==''){
        alert("전화번호를 넣어주세요")
        phone.focus();
        return;
    }

    if(email.value==''){
        alert("이메일을 넣어주세요")
        email.focus();
        return;
    }
    frm.submit();
});