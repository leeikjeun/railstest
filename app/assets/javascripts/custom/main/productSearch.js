  var dataBt = document.querySelector('.sendDataBt');
  var min_price = document.querySelector('.min_price');
  var max_price = document.querySelector('.max_price');
  var product_name = document.querySelector('.product_name');
  var product_info = document.querySelector('.product-infos');

if(dataBt != null){
  dataBt.addEventListener('click', function(){
    product_info.innerHTML = "";
    $.ajax({
      type:"post",
      url:"recive_p_data",
      dataType:"json",
      data: {minPrice: min_price.value, maxPrice: max_price.value, productName: product_name.value},
      success:function(result){
        if(result.length == 0){
          alert("결과가 없단다 친구야 ^^");
        }else{
          for(var i = 0; i <= result.length; i++){
          if(result[i] != null){
            var dlTag = document.createElement('dl');
                dlTag.className += "col-sm-4";
            var dtTitleTag = document.createElement('dt');
            var ddPriceTag = document.createElement('dd');
            var imgTag = document.createElement('img');
            


            dtTitleTag.innerHTML = result[i].name;
            ddPriceTag.innerHTML = result[i].price += ('원');
            imgTag.setAttribute('src',result[i].img.url);

            if(result[i].rogoCU){
              var cuRogoImg = document.createElement('img');
              cuRogoImg.setAttribute('src','/assets/cu_logo.jpg');
              cuRogoImg.setAttribute('class','cu-logo');
              dlTag.appendChild(cuRogoImg);
            }

            if(result[i].rogoGS){
              var gsRogoImg = document.createElement('img');
              gsRogoImg.setAttribute('src','/assets/gs_logo.jpg');
              gsRogoImg.setAttribute('class','gs-logo');
              dlTag.appendChild(gsRogoImg);
            }

            if(result[i].rogoSeven){
              var sevenRogoImg = document.createElement('img');
              sevenRogoImg.setAttribute('src','/assets/seven_logo.png');
              sevenRogoImg.setAttribute('class','seven-logo');
              dlTag.appendChild(sevenRogoImg);
            }
            dlTag.appendChild(imgTag);
            dlTag.appendChild(dtTitleTag);
            dlTag.appendChild(ddPriceTag);
            product_info.appendChild(dlTag);
          }
        }  
        }
        

      }
    });
  });
}
