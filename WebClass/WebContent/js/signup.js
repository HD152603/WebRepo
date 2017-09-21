$(function(){
		$('#signform').submit(function (event) {
			event.preventDefault();
			
			var name = $('#name').val();
			console.log(name);
			
			$.post("http://httpbin.org/post",
				{"name": name },
				function(data) {
					var myModal = $("#myModal");
					myModal.modal();
					myModal.find('.modal-body').text(data.form.name + "님 회원가입되었습니다.")
				});
		});
	});