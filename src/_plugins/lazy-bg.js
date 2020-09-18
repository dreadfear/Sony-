/*! lazysizes - v5.2.2 */

! function (e, t) {
	var a = function () {
		t(e.lazySizes), e.removeEventListener("lazyunveilread", a, !0)
	};
	t = t.bind(null, e, e.document), "object" == typeof module && module.exports ? t(require("lazysizes")) : "function" == typeof define && define.amd ? define(["lazysizes"], t) : e.lazySizes ? a() : e.addEventListener("lazyunveilread", a, !0)
}(window, function (e, n, i) {
	"use strict";
	var l, o, d = {};

	function u(e, t) {
		var a, r;
		d[e] || (a = n.createElement(t ? "link" : "script"), r = n.getElementsByTagName("script")[0], t ? (a.rel = "stylesheet", a.href = e) : a.src = e, d[e] = !0, d[a.src || a.href] = !0, r.parentNode.insertBefore(a, r))
	}
	n.addEventListener && (l = function (e, t) {
		var a = n.createElement("img");
		a.onload = function () {
			a.onload = null, a.onerror = null, a = null, t()
		}, a.onerror = a.onload, a.src = e, a && a.complete && a.onload && a.onload()
	}, addEventListener("lazybeforeunveil", function (e) {
		var t, a, r;
		if (e.detail.instance == i && !e.defaultPrevented) {
			var n = e.target;
			if ("none" == n.preload && (n.preload = n.getAttribute("data-preload") || "auto"), null != n.getAttribute("data-autoplay"))
				if (n.getAttribute("data-expand") && !n.autoplay) try {
					n.play()
				} catch (e) {} else requestAnimationFrame(function () {
					n.setAttribute("data-expand", "-10"), i.aC(n, i.cfg.lazyClass)
				});
			(t = n.getAttribute("data-link")) && u(t, !0), (t = n.getAttribute("data-script")) && u(t), (t = n.getAttribute("data-require")) && (i.cfg.requireJs ? i.cfg.requireJs([t]) : u(t)), (a = n.getAttribute("data-bg")) && (e.detail.firesLoad = !0, l(a, function () {
				n.style.backgroundImage = "url(" + (o.test(a) ? JSON.stringify(a) : a) + ")", e.detail.firesLoad = !1, i.fire(n, "_lazyloaded", {}, !0, !0)
			})), (r = n.getAttribute("data-poster")) && (e.detail.firesLoad = !0, l(r, function () {
				n.poster = r, e.detail.firesLoad = !1, i.fire(n, "_lazyloaded", {}, !0, !0)
			}))
		}
	}, !(o = /\(|\)|\s|'/)))
});