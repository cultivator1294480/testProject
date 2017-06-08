jQuery(document).ready(function() {

	$('form').submit(function() {
		var username = $(this).find('.username').val();
		var password = $(this).find('.password').val();
		if(username == '') {
			$(this).find('.error').fadeOut('fast', function() {
				$(this).css('top', '27px');
			});
			$(this).find('.error').fadeIn('fast', function() {
				$(this).parent().find('.username').focus();
			});
			return false;
		}

		if(password == '') {
			$(this).find('.error').fadeOut('fast', function() {
				$(this).css('top', '96px');
			});
			$(this).find('.error').fadeIn('fast', function() {
				$(this).parent().find('.password').focus();
			});
			return false;
		}
	});

	$('.page-container form .username, .page-container form .password').keyup(function() {
		$(this).parent().find('.error').fadeOut('fast');
	});

	window.fixAutoFill = function(a) {
		var b, c, d = 100,
			e = 3e3,
			f = 0;
		void 0 == a && (a = "body"), c = "string" == typeof a ? $(a) : a, b = setInterval(function() {
			if($("input:-webkit-autofill", c).size() > 0) try {
				clearInterval(b);
				var a = [];
				$("input:-webkit-autofill", c).each(function() {
					a.push({
						node: $(this),
						value: $(this).val()
					})
				}).parents("form:first")[0].reset(), $.each(a, function(a, b) {
					b.node.val(b.value)
				})
			} catch(d) {}
			e > f ? f += 100 : clearInterval(b)
		}, d)
	}
	fixAutoFill();

});