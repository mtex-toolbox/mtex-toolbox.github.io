
const uniqId = (()=>{let i=0;return()=>{return i++;}})();

$('#mysidebar').height($(".nav").height());

$(document).ready(function() {

    //this script says, if the height of the viewport is greater than 800px, then insert affix class, which makes the nav bar float in a fixed
    // position as your scroll. if you have a lot of nav items, this height may not work for you.
    var h = $(window).height();
    //console.log (h);
    //if (h > 800) {
    //    $( "#mysidebar" ).attr("class", "nav affix");
    //}
    // activate tooltips. although this is a bootstrap js function, it must be activated this way in your theme.
    $('[data-toggle="tooltip"]').tooltip({
        placement : 'top'
    });

    /**
     * AnchorJS
     */
    // anchors.add('h2,h3,h4,h5');

    // add target="_blank" to external links afterwards, if not set
    var all_a_tags;
    if (document.querySelectorAll) { all_a_tags = document.querySelectorAll("a"); }
    else { all_a_tags = document.getElementsByTagName("a"); }

    var a_tag, a_target, a_href;
    for (var i=0; i < all_a_tags.length; i++) {
        a_tag = all_a_tags[i];

        a_target = a_tag.getAttribute("target");
        a_href = a_tag.getAttribute("href");
        
        if (a_href === null) { continue; }

        if (a_href.includes("://") && a_target === null) { a_tag.setAttribute("target", "_blank"); }
    }

    // events for foldable tooltip
    $('[data-toggle="foldable-tooltip"]').each(function() { this.click(); });
    
    $('[data-toggle="foldable-tooltip"]').click(function() {
        let folded = "<i class='" + $(this).attr("data-icon") + "'></i>&nbsp;<em>" + $(this).attr("data-title") + "</em>";
        let unfolded = folded + "<div>" + $(this).attr("data-text") + "</div>";
        
        if ($(this).attr("unfolded") === "false") {
            $(this).html(unfolded);
            $(this).attr("unfolded", "true");
        } else {
            $(this).html(folded);
            $(this).attr("unfolded", "false");
        }
    });

    $('[data-toggle="foldable-tooltip"]').each(function() {
        if ($(this).attr("data-icon") === null) {
            $(this).attr("data-icon", "fa fa-info-circle");
        }
    
        $(this).attr("title", $(this).attr("data-preview"));
        $(this).html("<i class='" + $(this).attr("data-icon") + "'></i>&nbsp;<em>" + $(this).attr("data-title") + "</em>");
    });
});

// needed for nav tabs on pages. See Formatting > Nav tabs for more details.
// script from http://stackoverflow.com/questions/10523433/how-do-i-keep-the-current-tab-active-with-twitter-bootstrap-after-a-page-reload
$(function() {
    var json, tabsState;
    $('a[data-toggle="pill"], a[data-toggle="tab"]').on('shown.bs.tab', function(e) {
        var href, json, parentId, tabsState;

        tabsState = localStorage.getItem("tabs-state");
        json = JSON.parse(tabsState || "{}");
        parentId = $(e.target).parents("ul.nav.nav-pills, ul.nav.nav-tabs").attr("id");
        href = $(e.target).attr('href');
        json[parentId] = href;

        return localStorage.setItem("tabs-state", JSON.stringify(json));
    });

    tabsState = localStorage.getItem("tabs-state");
    json = JSON.parse(tabsState || "{}");

    $.each(json, function(containerId, href) {
        return $("#" + containerId + " a[href=" + href + "]").tab('show');
    });

    $("ul.nav.nav-pills, ul.nav.nav-tabs").each(function() {
        var $this = $(this);
        if (!json[$this.attr("id")]) {
            return $this.find("a[data-toggle=tab]:first, a[data-toggle=pill]:first").tab("show");
        }
    });
});

// functions for password access restriction
function checkCoursePassword() {
	let courseTextDefault = document.getElementById("course_content_default");
	let courseTextAccess = document.getElementById("course_content_access");
	let inputValue = document.getElementById("course_password").value;
	let passwordHash = CryptoJS.MD5(inputValue).toString();
	
	if (passwordHash === "3c4fc8ddb124a0c8b4e83130acd5b265") {
		courseTextDefault.classList.remove("not_hidden");
		courseTextAccess.classList.add("not_hidden");
		showCourseMaterial(true);
	} else {
		courseTextDefault.classList.add("not_hidden");
		courseTextAccess.classList.remove("not_hidden");
		showCourseMaterial(false);
	}
}
function showCourseMaterial(showMaterial=true) {
	let course_elements = document.getElementsByClassName("course_material");
	
	for (let i=0; i<course_elements.length; i++) {
		if (showMaterial) {
			course_elements[i].classList.add("not_hidden");
		} else {
			course_elements[i].classList.remove("not_hidden");
		}
	}
}

// minified cookie functions
function setCookie(e,t,a=1,s="h"){const c=new Date;let i=1;switch(s){case"y":i=31557600;break;case"d":i=86400;break;case"m":i=60;break;case"s":i=1;break;case"h":default:i=3600}c.setTime(c.getTime()+a*i*1e3);let o="expires="+c.toUTCString();document.cookie=e+"="+t+";"+o+";path=/"}
function getCookie(e){let o=e+"=",t=document.cookie.split(";");for(let e=0;e<t.length;e++){let i=t[e];for(;" "==i.charAt(0);)i=i.substring(1);if(0==i.indexOf(o))return i.substring(o.length,i.length)}return null}

