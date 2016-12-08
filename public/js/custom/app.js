/* Simple Javasctipt/JQuery MVC Framework
 * Copyright (C) <2013>  Shamim Ahmed
 * CodeRangers LLC
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>
 */

//Author: Shamim Ahmed
//shamim@coderangers.com
//08/06/2013

/*global jQuery */
var App, Utils = null;
var memberId = "";
var boardMemberId = "";
var CC_FEE = 0.97;
var BITCOIN_FEE = 0.995;
var ACH_FEE = 0.25;
String.prototype.contains = function(it) { return this.indexOf(it) != -1; };

jQuery(function ($) {
    'use strict';

    var Template = {
        videolist: ""
    }

    Utils = {
 
        uuid: function () {
            /*jshint bitwise:false */
            var i, random;
            var uuid = '';

            for (i = 0; i < 32; i++) {
                random = Math.random() * 16 | 0;
                if (i === 8 || i === 12 || i === 16 || i === 20) {
                    uuid += '-';
                }
                uuid += (i === 12 ? 4 : (i === 16 ? (random & 3 | 8) : random)).toString(16);
            }

            return uuid;
        },
        pluralize: function (count, word) {
            return count === 1 ? word : word + 's';
        },
        Log: function (data) {
            //console.log("Log: " + data);
        },
        Strip: function (html) {
            var tmp = document.createElement("DIV");
            tmp.innerHTML = html;
            return tmp.textContent || tmp.innerText || "";
        },
        Alert: function (data) {
            alert(data);
        }, Round_up: function (value, places)
        {
            var mult = Math.pow(10, Math.abs(places));
            return places < 0 ?
                    Math.ceil(value / mult) * mult :
                    Math.ceil(value * mult) / mult;
        },
        store: function (namespace, data) {
            if (arguments.length > 1) {
                return localStorage.setItem(namespace, JSON.stringify(data));
            } else {
                var store = localStorage.getItem(namespace);
                return (store && JSON.parse(store)) || [];
            }
        },
        animatedSkillBar: function () {
            $('.progress-skills').each(function () {
                var t = $(this),
                        label = t.attr('data-label');
                percent = t.attr('data-percent') + '%';
                t.find('.bar').text(label + ' ' + '(' + percent + ')').animate({
                    width: percent
                });
            });
        },
        _GET: function (field, url) {
                var href = url ? url : window.location.href;
                var reg = new RegExp( '[?&]' + field + '=([^&#]*)', 'i' );
                var string = reg.exec(href);
                return string ? string[1] : null;
        },
        responsiveVideoPlayer: function () {

        },
        scrollEffect: function () {
            scrollPos = $(this).scrollTop();
            $('#landingSlide').css({
                'background-position': 'center ' + (200 + (scrollPos / 4)) + "px"
            });
        },
        scrollEffectInit: function () {
            $(window).scroll(function () {
                this.scrollEffect;
            });
        },
        getPageName: function () {
            return window.location.pathname.split('/')[1];
        },
        getFullPageName: function () {
            return window.location.pathname.split('/')[2];
        },
        getPageAnchor: function () {
            return window.location.hash;
        },
        getHashOnly: function (key) {
            var a = window.location.hash;
            if (a.indexOf(key) > -1) {
                return true;
            } else {
                return false;
            }
        },
        getQueryParam: function () {

            var vars = [], hash;
            var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
            for (var i = 0; i < hashes.length; i++)
            {
                hash = hashes[i].split('=');
                vars.push(hash[0]);
                vars[hash[0]] = hash[1];
            }
            return vars;

        },
        addValidation: function (form, callbacks) {

            $('form[name="' + form + '"]').find('input, textarea').not("[type=submit]").not("[type=hidden]").jqBootstrapValidation({
                submitSuccess: function ($form, event) {
                    event.preventDefault();

                    App[callbacks].apply(this);
                }
            });

        },
        RoundUp: function (value, places) {

            var mult = Math.pow(10, Math.abs(places));
            return places < 0 ?
                    Math.ceil(value / mult) * mult :
                    Math.ceil(value * mult) / mult;

        },
        getLocale: function (str) {
            var newstr = '';
            if ($.isNumeric(str)) {

                for (var x = 0; x < str.length; x++)
                {
                    var c = $.i18n._(str.charAt(x));
                    newstr = newstr + c;
                }
                return newstr;
            } else {
                //  console.log(str);
                return $.i18n._(str);
            }
        },
        Localize: function () {
           
             $.each($('.i18n'), function() {
             $(this)._t($(this).html());
             });
             
             
             $.each($('.i18n-date'), function() {
             //$(this)._t($(this).html());
             var date = $(this).html().split(' ');;
             var month = date[0];
             var day = date[1];
             day = day.replace(/,+$/, '');
             var year = date[2];
             console.log(month);
             date = Utils.getLocale(month)+ ' '+Utils.getLocale(day)+', '+Utils.getLocale(year);
             $(this).html(date);
             });
             $.each($('.i18n-n'), function() {  
             $(this).html(Utils.getLocale($(this).html()));
             });
            
        },
        Confirm: function (heading, question, cancelButtonTxt, okButtonTxt, callback) {
            var confirmModal =
                    $('<div class="modal hide fade">' +
                            '<div class="modal-header">' +
                            '<a class="close" data-dismiss="modal" >&times;</a>' +
                            '<h3>' + heading + '</h3>' +
                            '</div>' +
                            '<div class="modal-body">' +
                            '<p>' + question + '</p>' +
                            '</div>' +
                            '<div class="modal-footer">' +
                            '<a href="#" class="btn" data-dismiss="modal">' +
                            cancelButtonTxt +
                            '</a>' +
                            '<a href="#" id="okButton" class="btn btn-primary">' +
                            okButtonTxt +
                            '</a>' +
                            '</div>' +
                            '</div>');

            confirmModal.find('#okButton').click(function (event) {
                callback();
                confirmModal.modal('hide');
            });

            confirmModal.modal('show');
        },
        LiveEdit: function (el) {

        
            var type = el.data('type');


            var tmpl1 = '<span class="editable-container editable-inline" style=""><div><div class="editableform-loading" style="display: none;"></div><form id="' + el.attr('rel') + '" class="form-inline editableform" style="">' +
                    '<div class="control-group"><div>';

            var tmpl3 = '<span class="editable-clear-x"></span></div><div class="editable-buttons"><button class="btn btn-primary editable-submit" type="submit"><i         class="icon-ok icon-white"></i></button><button class="btn editable-cancel" type="button"><i class="icon-remove"></i></button></div></div><div class="editable-error-block help-block" style="display: none;"></div></div></form></div></span>';

            if (type == 'text') {
                var tmpl2 = '<div class="editable-input" style="position: relative;"><input type="text" style="padding-right: 24px;" value="' + $.trim(el.html()) + '" class="input-mini">';
                el.hide().before(tmpl1 + tmpl2 + tmpl3);
            }

            if (type == 'textarea') {
                var tmpl2 = '<div class="editable-input" style="position: relative;"><textarea class="input-large" placeholder="' + el.html() + '" rows="4">' + el.html() + '</textarea>';
                el.hide().before(tmpl1 + tmpl2 + tmpl3);
            }

            if (type == 'tags') {
                var tmpl2 = '<div class="editable-input" style="position: relative;width:165px;"><select data-placeholder="Select Tags" user-input="true" multiple class="chzn-select-width input-medium live-select" tabindex="16"> ';
                var option = '';
                $.each(el.attr('data-source').split(','), function (key, data) {

                    option += '<option selected="selected" value="' + data + '">' + data + '</option>';
                });

                tmpl2 += option + '</select>';
                el.hide().before(tmpl1 + tmpl2 + tmpl3);
                Utils.setChosen();


            }
            if (type == 'select')
            {
                var tmpl2 = '<div class="editable-input" style="position: relative;"><select class="input-medium live-select"> ';
                var option = '';

                //   var option = '<option value="">Select</option>';
                //$.getJSON('/util/' + el.data('source'), function(data) {
                $.each(el.attr('data-source').split(','), function (key, data) {

                    var value = data.split('=');
                    if (el.html() == value[1])
                        option += '<option value="' + value[1] + '" selected>' + value[0] + '</option>';
                    else
                        option += '<option value="' + value[1] + '">' + value[0] + '</option>';
                });
                tmpl2 += option + '</select>';
                el.hide().before(tmpl1 + tmpl2 + tmpl3);


            }
        },
        ContainerResize: function (id) {
            var ration = .3;
            var containerWidth = $(id).width();
            var containerHeight = containerWidth * ration;
            $(id).height(containerHeight + "px");
            console.log("Width:" + containerWidth);
            console.log("Height:" + containerHeight);
        },
        ProfileImagePosition: function (containerId, image) {
            try {
                var containerWidthArr = $(containerId).data("width").split("px");
                var imageTopArr = $(containerId + " " + image).data("top").split("px");
                var containerWidth = containerWidthArr[0];
                var imageTop = imageTopArr[0];
                var containerCurrentHeight = $(containerId).height();
                var containerCurrentWidth = $(containerId).width();
                var imagePosition = (imageTop / containerWidth) * containerCurrentWidth;
                $(containerId + " " + image).css("margin-top", imagePosition + "px");
            }
            catch (e) {

            }

        },
        ChangeNavTabUI: function (selector) {
            var containerSize = $(window).width();
            if (containerSize < 768) {
                $(selector).removeClass("nav-tabs");
                $(selector).addClass("nav-pills");

            } else {
                $(selector).removeClass("nav-pills");
                $(selector).addClass("nav-tabs");
            }

        }
    };




    App = {
        url: 'error',
        placeholdervalue: '',
        type: 'GET',
        data: 'Jones=1',
        dataType: 'JSON',
        idleTime: 0,
        idleLimit: 900000,
        VideoDataTable: null,
        UrlPattern: /(^(https|http)?:\/\/(?:www\.|(?!www))[^\s\.]+\.[^\s]{2,}|www\.[^\s]+\.[^\s]{2,})/,
        init: function () {
            this.ENTER_KEY = 13;
            //this.todos = Utils.store('Coderangers');
            this.cacheElements();
            this.bindEvents();
            //this.render();
            Utils.animatedSkillBar();
            Utils.responsiveVideoPlayer();
            Utils.scrollEffectInit();
            // Utils.Localize();
        },
        cacheElements: function () {
            this.$newpostform = $("#new-post-form"); 
        },
        bindEvents: function () {
    
            $('form[name="new-post-form"]').find('input').not("[type=submit]").not("[type=hidden]").jqBootstrapValidation(
                    {
                        preventSubmit: true,
                        submitError: function($form, event, errors) {
                        alert(11)
                        },
                        submitSuccess: function($form, event) {
                            
                            event.preventDefault();
                            App.CreateNewBLogPost();
                        },
                        filter: function() {
                            return $(this).is(":visible");
                        }
                    }
                );


        },
        CreateFileUploader: function (el, ext, url, responseHandler, btnText, class1, class2) {
            var uploader = new qq.FineUploader({
                element: document.getElementById(el),
                validation: {
                    allowedExtensions: ext,
                    sizeLimit: 5000000,
                    minSizeLimit: 0,
                    stopOnFirstInvalidFile: true,
                    acceptFiles: null
                },
                editFilename: {
                    enabled: true
                },
                multiple: false,
                request: {
                    endpoint: url
                },
                deleteFile: {
                    enabled: true,
                    endpoint: '/user/upload/deletefile',
                    forceConfirm: true
                },
                text: {
                    uploadButton: '<div><span class="i18n ' + class1 + '">' + btnText + '</div></div>'
                },
                template: '<div class="qq-uploader">' +
                        '<pre class="qq-upload-drop-area"><span>{dragZoneText}</span></pre>' +
                        '<div class="' + class2 + '" style="width: auto;">{uploadButtonText}</div>' +
                        '<span class="qq-drop-processing"><span>{dropProcessingText}</span><span class="qq-drop-processing-spinner"></span></span>' +
                        '<ul class="qq-upload-list" style="margin-top: 10px; text-align: center;"></ul>' +
                        '</div>',
                classes: {
                    success: 'alert alert-success',
                    fail: 'alert alert-error'
                },
                callbacks: {
                    onSubmit: function (id, fileName) {
                        $(".loading-image").removeClass("hidden");

                    },
                    onComplete: function (id, fileName, responseJSON) {
                        $(".loading-image").addClass("hidden");

                        if (responseJSON.success) {
                            $('.contact-form-submit').removeAttr('disabled');
                            App[responseHandler].apply(this, [{
                                    "response": responseJSON
                                }]);
                        }
                    },
                    onCancel: function (id, fileName) {

                    },
                    onDelete: function (id) {
                                            
                    }
                }
            });

            return uploader;
        },
        render: function (el, data, template) {

            $('#' + el).html(tmpl(template, data));
            //  Utils.Localize();
        },
        Append: function (el, data, template) {

            $('#' + el).append(tmpl(template, data));
            //  Utils.Localize();
        },
        addPlaceHolder: function (el) {
            $(el).prev().attr("placeholder", $(el).html());
            $(el).remove();
        },
        RenderDataGrid: function () {



        },
        CreateNewBLogPost: function () {

            App.url = '/new-post';
            App.type = 'POST';
            App.Ajax(this.$newpostform, this.$newpostform.serialize()+'&body='+tinymce.get('body').getContent(), "newpostformCallback");    

        },
        Ajax: function (el, data, responseHandler) {
            
            App.initLoader(el);
            var request = $.ajax({
                url: App.url,
                type: App.type,
                data: data,
                dataType: App.dataType
            });
            request.done(function (response) {
                //Utils.Log(response.TestResponse);
                App.destroy(".widget-box-layer");
                App[responseHandler].apply(this, [{
                        "element": el.selector,
                        "response": response
                    }]);
            });
            request.fail(function (jqXHR, textStatus) {
                App.destroy(".widget-box-layer");
                Utils.Log("Request failed: " + textStatus);
            });

        },
        newpostformCallback: function (data) {
            if (data.response.result == true) {

                var cl =data.response.classname;

                var Message = ' <div class="alert notice alert-'+cl+'" style="margin-top:18px;">' +
                        '<strong>Success! </strong>' + data.response.message +
                        '</div>';

                
               
            
            } else
            {
                var Message = '<div class="alert edit-profile-notice alert-danger" style="margin-top:18px;">' +
                        '<strong>Error! </strong>' + data.response.message +
                        '</div>';
            }
            
            $('.notice').remove();
            $("#new-post-form").prepend(Message);
            App.reset("#new-post-form");
            setTimeout("$('.notice').remove();", 3000);

        },
        initLoader: function (el) {
            //  el.before('<div class="progress progress-success progress-striped"><div class="bar" style="width: 100%"></div></div>')
            el.parent().parent().css('position', 'relative');

            el.before('<div class="widget-box-layer" style="width:100%"><div class="loader"><i class="fa fa-spinner fa-pulse fa-3x fa-fw margin-bottom"></i></div></div>')

            //el.before('<div class="widget-box-layer" style="width:100%"><div class="loader"><i class="fa fa-cog fa-spin fa-3x"></i></div></div>');
            // el.before('<div class="widget-box-layer" style="width:100%"><div class="loader gif-loader"></div></div>')


        },
        setNewToken: function (token) {
            $("input[name='token']").val(token);
        },
        destroy: function (el) {
            $(el).remove();
        },
        reset: function (el) {
            $(el)[0].reset();
        },
        hideModal: function (modal, time) {
            setTimeout(function () {
                $('#' + modal).modal('hide');
            }, time);
        },
        hideModalShowanother: function (modal, time, newone) {
            setTimeout(function () {
                $('#' + modal).modal('hide');
            
            }, time);
        },
        showModal: function (modal) {
            setTimeout(function () {
                $('#' + modal).modal('show');
            }, time);
        },
        idleChecker: function () {
            App.idleTime = App.idleTime + 1;

            if (App.idleTime == App.idleLimit) { // 20 minutes
                console.log(22)
                location.href = $('.logoutlink').attr('href');
                // $('.logoutbtn').trigger("click");
            }
        },
        patternCheck: function (value, pattern) {
            var Pattern = pattern
            var Idvalue = value;
            if (Pattern.test(Idvalue)) {
                return true;
            } else {
                return false;
            }

        }
 
    };

    App.init();


});