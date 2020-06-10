$(document).ready(function () {
	//Declare normal variable javascript
	//Hide element when smaller than 1025
	if ($(window).width() < 767.9) {
		$(".navbar-primary-menu").fadeIn(function () {
			$(".navbar-primary-menu").css({
				display: "flex"
			});
		});
	}
	//Library init
	setBackground();
	mobileMenu();
	swiperInit();
	tabActive();
	mappingSearch()
	mappingMenu();
	toggleSearch();
	toggleFooter();
	togglePlugin();
	stickyProductDetail();
	$('[data-fancybox="modal"]').fancybox({
		modal: true,
		smallBtn: true,
		toolbar: true
	});
	//Declare function Javascript


});
window.onscroll = function () {
	// scrollHeader();
	// fixAboutNav();
};

function swiperInit() {
	var homerSwiper = new Swiper(".primary-banner .swiper-container", {
		// Optional parameters
		slidesPerView: 1,
		speed: 1205,
		autoplay: {
			delay: 3000
		},
	});
	var productLastedNews = new Swiper(".product-news-swiper .swiper-container", {
		// Optional parameters
		speed: 1205,
		autoplay: {
			delay: 3000
		},
		breakpointsInverse: true,
		breakpoints: {
			320: {
				slidesPerView: 1.01,
				spaceBetween: 10,

			},
			400: {
				slidesPerView: 1.01,
				spaceBetween: 30,
			},
			480: {
				slidesPerView: 2,
				spaceBetween: 30,

			},
			1025: {
				slidesPerView: 2.5,
				spaceBetween: 60,
			},
			1280: {
				slidesPerView: 2.98,
				spaceBetween: 60,
			}
		},
		pagination: {
			el: '.product-news-swiper .swiper-pagination',
			type: 'bullets',
		},
		navigation: {
			nextEl: '.lastest-news-next',
			prevEl: '.lastest-news-prev',
		},
	});

	var lastedNews = new Swiper(".news-related-display .swiper-container", {
		// Optional parameters
		speed: 1205,
		autoplay: {
			delay: 3000
		},
		spaceBetween: 5,

		breakpointsInverse: true,
		breakpoints: {
			320: {
				slidesPerView: 1,
				spaceBetween: 0,

			},
			500: {
				slidesPerView: 2,
			},
			768: {
				slidesPerView: 3,
			},
			1025: {
				slidesPerView: 4,
			},
			1280: {
				slidesPerView: 5,
			}
		},
		pagination: {
			el: '.news-related-display .swiper-pagination',
			type: 'bullets',
		},
	});
	var lastedNews = new Swiper(".product-related-swiper .swiper-container", {
		// Optional parameters
		speed: 1205,
		autoplay: {
			delay: 3000
		},
		spaceBetween: 5,

		breakpointsInverse: true,
		breakpoints: {
			320: {
				slidesPerView: 1,
				spaceBetween: 5,

			},
			500: {
				slidesPerView: 2,
			},
			768: {
				slidesPerView: 3,
			},
			1025: {
				slidesPerView: 4,
			},
			1280: {
				slidesPerView: 5,
			}
		},
		pagination: {
			el: '.product-related-swiper .swiper-pagination',
			type: 'bullets',
		},
		navigation: {
			nextEl: '.product-related-swiper .nav-arrow-next',
			prevEl: '.product-related-swiper .nav-arrow-prev',
		},
	});
	var homeSolution = new Swiper(".home-solution .swiper-container", {
		// Optional parameters
		speed: 1205,
		autoplay: {
			delay: 3000
		},
		breakpointsInverse: true,
		breakpoints: {
			320: {
				slidesPerView: 1,
				spaceBetween: 10,
			},
			450: {
				slidesPerView: 2,
				spaceBetween: 10,
			},
			768: {
				slidesPerView: 2,
				spaceBetween: 0,
			},
		},
		pagination: {
			el: '.home-solution .swiper-pagination',
			type: 'bullets',
		},
		navigation: {
			nextEl: '.lastest-news-next',
			prevEl: '.lastest-news-prev',
		},

	});

	var lastestNEws = new Swiper(".home-news-swiper .swiper-container", {
		// Optional parameters
		speed: 1205,
		autoplay: {
			delay: 3000
		},
		breakpointsInverse: true,
		breakpoints: {
			320: {
				slidesPerView: 1,
				spaceBetween: 10,
			},
			450: {
				slidesPerView: 2,
				spaceBetween: 10,
			},
			768: {
				slidesPerView: 3,
				spaceBetween: 10,
			},
			1025: {
				slidesPerView: 4,
				spaceBetween: 30,
			},
		},
		pagination: {
			el: '.home-news .swiper-pagination',
			type: 'bullets',
		},
		navigation: {
			nextEl: '.home-news .nav-arrow-next',
			prevEl: '.home-news .nav-arrow-prev',
		},

	});
	var homeProduct = new Swiper(".home-product .swiper-container", {
		// Optional parameters
		speed: 1205,
		autoplay: {
			delay: 3000
		},
		breakpointsInverse: true,
		breakpoints: {
			320: {
				slidesPerView: 1,
				spaceBetween: 10,

			},
			450: {
				slidesPerView: 2,
				spaceBetween: 10,

			},
			768: {
				slidesPerView: 3,
				spaceBetween: 10,
			},
			1280: {
				slidesPerView: 5,
				spaceBetween: 10,

			},

		},
		pagination: {
			el: '.home-product .swiper-pagination',
			type: 'bullets',
		},
		navigation: {
			nextEl: '.home-product .nav-arrow-next',
			prevEl: '.home-product .nav-arrow-prev',
		},

	});

	var homeNews = new Swiper(".lastest-news-swiper .swiper-container", {
		// Optional parameters
		speed: 1205,
		autoplay: {
			delay: 3000
		},
		centeredSlides: true,
		breakpointsInverse: true,
		breakpoints: {
			320: {
				slidesPerView: 1,
				spaceBetween: 10,

			},
			450: {
				slidesPerView: 2,
				spaceBetween: 10,

			},
			768: {
				slidesPerView: 3,
				spaceBetween: 10,
			},
			1280: {
				slidesPerView: 3.1,
				spaceBetween: 10,

			},

		},
		pagination: {
			el: '.lastest-news-swiper .swiper-pagination',
			type: 'bullets',
		},
		navigation: {
			nextEl: '.lastest-news-swiper .nav-arrow-next',
			prevEl: '.lastest-news-swiper .nav-arrow-prev',
		},

	});

	var topBanner = new Swiper(".top-banner .swiper-container", {
		// Optional parameters
		speed: 1205,
		slidesPerView: 1,
		autoplay: {
			delay: 3000
		}
	});

	var homeNews = new Swiper(".three-item-section .swiper-container", {
		// Optional parameters
		speed: 1205,
		spaceBetween: 30,

		autoplay: {
			delay: 3000
		},
		centeredSlides: true,
		breakpointsInverse: true,
		breakpoints: {
			320: {
				slidesPerView: 1,

			},
			450: {
				slidesPerView: 2,

			},
			768: {
				slidesPerView: 3,
			},
			1280: {
				slidesPerView: 3,

			},

		},
		pagination: {
			el: '.lastest-news-swiper .swiper-pagination',
			type: 'bullets',
		},
		navigation: {
			nextEl: '.lastest-news-swiper .nav-arrow-next',
			prevEl: '.lastest-news-swiper .nav-arrow-prev',
		},

	});






	$(".swiper-insight-video .swiper-container").each(function (index, element) {
		var $this = $(this);
		$this.addClass("instance-" + index);
		$this.parents('.insight-section').find(".nav-arrow-prev").addClass("btn-prev-" + index);
		$this.parents('.insight-section').find(".nav-arrow-next").addClass("btn-next-" + index);
		$this.parents('.insight-section').find(".swiper-pagination").addClass("custom-pagination-" + index);

		var swiper = new Swiper(".instance-" + index, {
			speed: 750,

			observer: true,
			spaceBetween: 0,
			observeParents: true,
			breakpointsInverse: true,
			slidesPerView: 1

				,
			navigation: {
				nextEl: ".swiper-insight-video .btn-next-" + index,
				prevEl: ".swiper-insight-video .btn-prev-" + index
			},
			pagination: {
				el: ".custom-pagination-" + index,
				type: 'bullets',
			}

			// your settings ...
		});
	});




	$(".four-item-section .swiper-container").each(function (index, element) {
		var $this = $(this);
		$this.addClass("instance-" + index);
		// $this.parents('.tab-item').find(".nav-arrow-prev").addClass("btn-prev-" + index);
		// $this.parents('.tab-item').find(".nav-arrow-next").addClass("btn-next-" + index);

		var swiper = new Swiper(".instance-" + index, {
			speed: 750,

			observer: true,
			spaceBetween: 60,
			observeParents: true,
			breakpointsInverse: true,
			breakpoints: {
				200: {
					slidesPerView: 1
				},
				576: {
					slidesPerView: 2
				},
				769: {
					slidesPerView: 3
				},
				1200: {
					slidesPerView: 4
				},

			},
			// navigation: {
			// 	nextEl: ".btn-next-" + index,
			// 	prevEl: ".btn-prev-" + index
			// }

			// your settings ...
		});
	});





	var productDetail = new Swiper(".swiper-product-detail .swiper-container", {
		// Optional parameters
		speed: 1205,
		slidesPerView: 1,
		autoplay: {
			delay: 1500
		},
		pagination: {
			el: '.swiper-product-detail .swiper-pagination',
			type: 'bullets',
		},
		navigation: {
			nextEl: '.swiper-product-detail .nav-arrow-next',
			prevEl: '.swiper-product-detail .nav-arrow-prev',
		},
	});

	var productAccesory = new Swiper(".swiper-product-accessory .swiper-container", {
		// Optional parameters
		speed: 1205,
		breakpointsInverse: true,
		spaceBetween: 5,
		breakpoints: {
			320: {
				slidesPerView: 2,

			},
			450: {
				slidesPerView: 2,

			},
			768: {
				slidesPerView: 3,
			},
			1280: {
				slidesPerView: 4,

			},

		},
		autoplay: {
			delay: 1500
		},
		pagination: {
			el: '.swiper-product-accessory .swiper-pagination',
			type: 'bullets',
		},

	});

	var productAccesory = new Swiper(".swiper-news-related .swiper-container", {
		// Optional parameters
		speed: 1205,
		spaceBetween: 5,
		breakpointsInverse: true,
		breakpoints: {
			320: {
				slidesPerView: 2,
			},
			450: {
				slidesPerView: 2,
			},
			768: {
				slidesPerView: 3,
			},
			1280: {
				slidesPerView: 4,
			},
		},
		autoplay: {
			delay: 1500
		},
		pagination: {
			el: '.swiper-news-related .swiper-pagination',
			type: 'bullets',
		},

	});





	var clientBrand = new Swiper(".swiper-client-media .swiper-container", {
		// Optional parameters
		speed: 1205,
		spaceBetween: 30,
		autoplay: {
			delay: 3000
		},
		breakpointsInverse: true,
		breakpoints: {
			320: {
				slidesPerView: 1,
			},
			450: {
				slidesPerView: 2,
			},
			768: {
				slidesPerView: 3,
			},
			1280: {
				slidesPerView: 4,
				slidesPerColumn: 3,
			},
		},
		pagination: {
			el: '.swiper-client-federations.swiper-pagination',
			type: 'bullets',
		},
	});

	var clientBrand = new Swiper(".swiper-client-brands .swiper-container", {
		// Optional parameters
		speed: 1205,
		spaceBetween: 30,
		autoplay: {
			delay: 3000
		},
		breakpointsInverse: true,
		breakpoints: {
			320: {
				slidesPerView: 1,
			},
			450: {
				slidesPerView: 2,
			},
			768: {
				slidesPerView: 3,
			},
			1280: {
				slidesPerView: 5,
			},
		},
		pagination: {
			el: '.swiper-client-federations.swiper-pagination',
			type: 'bullets',
		},
	});


	var clientFederation = new Swiper(".swiper-client-federations .swiper-container", {
		// Optional parameters
		speed: 1205,
		spaceBetween: 30,
		autoplay: {
			delay: 3000
		},
		breakpointsInverse: true,
		breakpoints: {
			320: {
				slidesPerView: 1,
			},
			450: {
				slidesPerView: 2,
			},
			768: {
				slidesPerView: 3,
			},
			1280: {
				slidesPerView: 4,
				slidesPerColumn: 3,
			},
		},
		pagination: {
			el: '.swiper-client-federations.swiper-pagination',
			type: 'bullets',
		},


	});

}


function mappingMenu() {
	return new MappingListener({
		selector: ".navbar-primary-menu",
		mobileWrapper: ".mobile-wrapper",
		mobileMethod: "appendTo",
		desktopWrapper: ".nav-brand",
		desktopMethod: "insertAfter",
		breakpoint: 767
	}).watch();
}

function mappingSearch() {
	return new MappingListener({
		selector: ".searchbox",
		mobileWrapper: ".mobile-wrapper",
		mobileMethod: "appendTo",
		desktopWrapper: ".search-toggle",
		desktopMethod: "insertAfter",
		breakpoint: 767
	}).watch();
}

function scrollHeader() {
	var prevScrollpos = window.pageYOffset;
	window.onscroll = function () {
		var currentScrollPos = window.pageYOffset;
		if (prevScrollpos > currentScrollPos) {
			document.getElementById("header").style.top = "0";
		} else {
			document.getElementById("header").style.top = "-100px";
		}
		prevScrollpos = currentScrollPos;
	}
}

function sideNavigation() {
	$(".side-navigation > li > .title em").click(function (e) {
		e.preventDefault();
		if (!$(this)
			.parent()
			.parent()
			.hasClass("active")
		) {
			$(".side-navigation li .nav-sub").slideUp();
			$(this)
				.parent()
				.next()
				.slideToggle();
			$(".side-navigation li").removeClass("active");
			$(this)
				.parent()
				.parent()
				.addClass("active");
		} else {
			$(this)
				.parent()
				.next()
				.slideToggle();
			$(".side-navigation li").removeClass("active");
		}
	});
}


function togglePlugin() {
	$(".toggle-item > .title").click(function (e) {
		e.preventDefault();
		if (
			!$(this)
			.parent()
			.hasClass("active")
		) {
			$(".toggle-item article").slideUp();
			$(this)
				.next()
				.slideToggle();
			$(".toggle-item").removeClass("active");
			$(this)
				.parent()
				.addClass("active");
		} else {
			$(this)
				.next()
				.slideToggle();
			$(".toggle-item").removeClass("active");
		}
	});
}


function tabActive() {
	$(".tab-navigation li a").on("click", function () {
		$(this)
			.parents(".tab-navigation")
			.find("li")
			.removeClass("active");
		$(this)
			.parents("li")
			.addClass("active");

		var display = $(this).attr("data-type");
		$(".tab-item").removeClass("active");
		$("#" + display).addClass("active");
	});
}

function mobileMenu() {
	var $hamburger = $(".hamburger");
	$(".main-menu-toggle").on("click", function () {
		$(".mobile-wrapper").toggleClass("active");
		$("#wrapper").toggleClass("open-mobile");
		$hamburger.toggleClass("is-active");
	});
}

function setBackground() {
	$("[setBackground]").each(function () {
		var background = $(this).attr("setBackground");
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-size": "cover",
			"background-position": "center center"
		});
	});
	$("[setBackgroundRepeat]").each(function () {
		var background = $(this).attr("setBackgroundRepeat");
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-repeat": "repeat"
		});
	});
}

function toggleSearch() {
	$(".search-toggle").on("click", function (e) {
		$(".searchbox").toggleClass("active");
		e.stopPropagation()
	});
	$(document).on("click", function (e) {
		if ($(e.target).is(".searchbox,.search-toggle") === false) {
			$(".searchbox").removeClass("active");
		}
	});
}

function toggleFooter() {
	let button = $('.footer-expandable-title');
	button.on('click', function () {
		$(this).toggleClass('open');
		$(this).next().slideToggle();
	})
}



function stickyProductDetail() {
	if ($(".product-detail-nav").length) {
		$('.product-detail-nav').scrollToFixed({
			zIndex: 99,
			marginTop: $('header').outerHeight()
		});
	}
	if ($(".sticky-solution-nav").length) {
		$('.sticky-solution-nav').scrollToFixed({
			zIndex: 99,
			marginTop: $('header').outerHeight()
		});
	}
}

$(document).on("click", ".wrapper video", function (e) {
	$(this).removeAttr("poster");
	var video = $(this).get(0);
	if (video.paused === false) {
		video.pause();
		$(this)
			.parent()
			.find(".play__icon")
			.fadeIn();
		$(this)
			.parents(".wrapper")
			.find(".play").removeClass('active')
			
	} else {
		video.play();
		$(this)
			.parent()
			.find(".play__icon")
			.fadeOut();
		$(this)
			.parents(".wrapper")
			.find(".play")
			.addClass('active')
	}
	return false;
});