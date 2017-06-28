min_price = document.querySelector('.min_price');
max_price = document.querySelector('.max_price');
location_val = document.querySelector('.location_val');
dataBt = document.querySelector('.sendDataBt');
restaurant_infos = document.querySelector(".restaurant-infos");

if(dataBt != null){
  dataBt.addEventListener('click', function(){
    restaurant_infos.innerHTML = "";
    $.ajax({
      type:"post",
      url:"recive_r_data",
      dataType:"json",
      data: {minPrice: min_price.value, maxPrice: max_price.value, location: location_val.value},
      success:function(result){
        
        if(result.length == 0){
          alert("결과가 없어 친구야 ^^");
        }else{
          for(var i = 0 ; i <= result.length; i++){
          if(result[i] != null){
            console.log(result[i]);
            var aTag = document.createElement('a');
            var imgTag = document.createElement('img');
            var dlTag = document.createElement('dl');
            var dtTitleTag = document.createElement('dt');
            var ddLocationTag = document.createElement('dd');

            aTag.setAttribute('href',"r_detail?id=" + result[i].id);
            imgTag.setAttribute('src',result[i].img.url);

            dlTag.setAttribute('class','data-size col-sm-4');
            dtTitleTag.setAttribute('class','data-title');
            ddLocationTag.setAttribute('class','data-info');
            imgTag.setAttribute('class','data-img');

            dtTitleTag.innerHTML = result[i].name;
            ddLocationTag.innerHTML = result[i].location;

            aTag.appendChild(imgTag);
            aTag.appendChild(dtTitleTag);
            aTag.appendChild(ddLocationTag);
            dlTag.appendChild(aTag);
            restaurant_infos.appendChild(dlTag);
          }
        }
        }
        
      }
    });
  });
}
