/**
 * 
 */function updateParentInputs(placeName, roadAddress) {
    var nameInput = document.querySelector('.court-name-input-text');
    var addressInput = document.querySelector('.court-address-input-address');
    
    nameInput.value = placeName;
    addressInput.value = roadAddress;
}

document.getElementById("openPopup").addEventListener("click", function() {
    var popupUrl = "../../include/mapApi.jsp";
    
    var popupWindow = window.open(popupUrl, "popupWindow", "width=1000,height=600,top=100,left=100");
    
    // 부모 창의 함수를 자식 창에서 호출할 수 있도록 전달
    popupWindow.updateParentInputs = updateParentInputs;
    
    popupWindow.onbeforeunload = function() {
      // 부모 창을 갱신하거나 다른 동작 수행
      updateParentInputs(popupWindow.selectedPlaceName, popupWindow.selectedRoadAddress);
    };
});

// JavaScript로 값을 받아온다고 가정
   var userNtrpValue = "${mate.mateNtrp()}";
	console.log(userNtrpValue);
   // 받아온 값을 사용하여 선택 요소의 기본값 설정
   var dropdown = document.getElementById("ntrp-select");
   for (var i = 0; i < dropdown.options.length; i++) {
      if (dropdown.options[i].value == userNtrpValue) {
         dropdown.selectedIndex = i;
         break;
      }
   }



