function toggleNav(){
  const nav=document.getElementById('nav');
  nav.style.display=(nav.style.display==='block')?'none':'block';
}
function validateForm(form){
  if(!form.name.value||!form.email.value){alert('Please enter name and email.');return false;}
  return true;
}
document.addEventListener('DOMContentLoaded',()=>{const y=document.getElementById('year');if(y){y.textContent=new Date().getFullYear();}});
