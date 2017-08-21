tyrano.plugin.kag.tag.loadjs = {
    vital: ["storage"],
    pm: {
        storage: ""
    },
    start: function(pm) {
        var that = this;
        $.getScript("./data/others/" + pm.storage, function() {
            that.kag.ftag.nextOrder()
        })
    }
};
tyrano.plugin.kag.tag.movie = {
    vital: ["storage"],
    pm: {
        storage: "",
        skip: false
    },
    start: function(pm) {
        var that = this;
        if ($.userenv() != "pc") {
            this.kag.layer.showEventLayer();
            $(".tyrano_base").bind("click.movie", function(e) {
                that.playVideo(pm);
                $(".tyrano_base").unbind("click.movie")
            })
        } else {
            if ($.getBrowser() == "firefox") {
                alert("\u3054\u5229\u7528\u306e\u30d6\u30e9\u30a6\u30b6\u3067\u306f\u3001\u30e0\u30fc\u30d3\u30fc\u3092\u518d\u751f\u3067\u304d\u307e\u305b\u3093\u3002\u98db\u3070\u3057\u307e\u3059\u3002");
                that.kag.ftag.nextOrder();
                return
            }
            that.playVideo(pm)
        }
    },
    playVideo: function(pm) {
        var that = this;
        var url = "./data/video/" + pm.storage;
        var video = document.createElement("video");
        video.src = url;
        video.style.backgroundColor = "black";
        video.style.zIndex = 199999;
        video.style.position = "absolute";
        video.style.top = "0px";
        video.style.left = "0px";
        video.style.width = "100%";
        video.style.height = "100%";
        video.autoplay = true;
        video.autobuffer = true;
        video.addEventListener("ended", function(e) {
            $(".tyrano_base").find("video").remove();
            that.kag.ftag.nextOrder()
        });
        video.addEventListener("error", function(e) {
            $(".tyrano_base").find("video").remove();
            that.kag.ftag.nextOrder()
        });
        if (pm.skip ==
            "true") video.addEventListener("click", function(e) {
            $(".tyrano_base").find("video").remove();
            that.kag.ftag.nextOrder()
        });
        document.getElementById("tyrano_base").appendChild(video);
        video.load();
        video.play()
    }
};
tyrano.plugin.kag.tag.showsave = {
    pm: {},
    start: function(pm) {
        this.kag.menu.displaySave();
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.showload = {
    pm: {},
    start: function(pm) {
        this.kag.menu.displayLoad();
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.showmenu = {
    pm: {},
    start: function(pm) {
        this.kag.menu.showMenu();
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.showmenubutton = {
    pm: {},
    start: function(pm) {
        $(".button_menu").show();
        this.kag.config.configVisible = "true";
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.hidemenubutton = {
    pm: {},
    start: function(pm) {
        $(".button_menu").hide();
        this.kag.config.configVisible = "false";
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.skipstart = {
    pm: {},
    start: function(pm) {
        if (this.kag.stat.is_skip == true) return false;
        this.kag.stat.is_skip = true;
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.skipstop = {
    pm: {},
    start: function(pm) {
        this.kag.stat.is_skip = false;
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.anim = {
    pm: {
        name: "",
        layer: "",
        left: "",
        top: "",
        width: "",
        height: "",
        opacity: "",
        color: "",
        time: "2000",
        effect: ""
    },
    start: function(pm) {
        var that = this;
        var anim_style = {};
        if (pm.left != "") anim_style.left = pm.left;
        if (pm.top != "") anim_style.top = pm.top;
        if (pm.width != "") anim_style.width = pm.width;
        if (pm.height != "") anim_style.height = pm.height;
        if (pm.opacity != "") anim_style.opacity = $.convertOpacity(pm.opacity);
        if (pm.color != "") anim_style.color = $.convertColor(pm.color);
        var target = "";
        if (pm.name != "") {
            that.kag.pushAnimStack();
            $("." + pm.name).animate(anim_style, parseInt(pm.time), pm.effect, function() {
                that.kag.popAnimStack()
            })
        } else if (pm.layer != "") {
            var layer_name = pm.layer + "_fore";
            if (pm.layer == "free") layer_name = "layer_free";
            var target_array = $("." + layer_name).children();
            target_array.each(function() {
                that.kag.pushAnimStack();
                $(this).animate(anim_style, parseInt(pm.time), pm.effect, function() {
                    that.kag.popAnimStack()
                })
            })
        }
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.wa = {
    start: function(pm) {
        if (this.kag.tmp.num_anim > 0) this.kag.layer.hideEventLayer();
        else this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.stopanim = {
    vital: ["name"],
    pm: {
        name: ""
    },
    start: function(pm) {
        $("." + pm.name).stop();
        this.kag.popAnimStack();
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.keyframe = {
    vital: ["name"],
    pm: {
        name: ""
    },
    start: function(pm) {
        this.kag.stat.current_keyframe = pm.name;
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.endkeyframe = {
    pm: {},
    start: function(pm) {
        this.kag.stat.current_keyframe = "";
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.frame = {
    vital: ["p"],
    pm: {
        p: ""
    },
    master_trans: {
        "x": "",
        "y": "",
        "z": "",
        "translate": "",
        "translate3d": "",
        "translateX": "",
        "translateY": "",
        "translateZ": "",
        "scale": "",
        "scale3d": "",
        "scaleX": "",
        "scaleY": "",
        "scaleZ": "",
        "rotate": "",
        "rotate3d": "",
        "rotateX": "",
        "rotateY": "",
        "rotateZ": "",
        "skew": "",
        "skewX": "",
        "skewY": "",
        "perspective": ""
    },
    start: function(pm) {
        var percentage = pm.p;
        delete pm.p;
        if (this.kag.stat.map_keyframe[this.kag.stat.current_keyframe]);
        else {
            this.kag.stat.map_keyframe[this.kag.stat.current_keyframe] = {};
            this.kag.stat.map_keyframe[this.kag.stat.current_keyframe]["frames"] = {};
            this.kag.stat.map_keyframe[this.kag.stat.current_keyframe]["styles"] = {}
        }
        var map_trans = {};
        var map_style = {};
        for (key in pm)
            if (this.master_trans[key] == "") map_trans[key] = pm[key];
            else map_style[key] = pm[key];
        this.kag.stat.map_keyframe[this.kag.stat.current_keyframe]["frames"][percentage] = {
            "trans": map_trans,
            "styles": map_style
        };
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.kanim = {
    vital: ["keyframe"],
    pm: {
        "name": "",
        "layer": "",
        "keyframe": ""
    },
    start: function(pm) {
        var that = this;
        var anim = this.kag.stat.map_keyframe[pm.keyframe];
        var class_name = "." + pm.name;
        anim.config = pm;
        if (pm.time) pm.duration = parseInt(pm.time) + "ms";
        anim.complete = function() {
            that.kag.popAnimStack()
        };
        if (pm.name != "") {
            delete pm.name;
            delete pm.keyframe;
            that.kag.pushAnimStack();
            $(class_name).a3d(anim)
        } else if (pm.layer != "") {
            var layer_name = pm.layer + "_fore";
            if (pm.layer == "free") layer_name = "layer_free";
            delete pm.name;
            delete pm.keyframe;
            delete pm.layer;
            var target_array = $("." + layer_name).children();
            target_array.each(function() {
                that.kag.pushAnimStack();
                $(this).a3d(anim)
            })
        }
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.chara_ptext = {
    pm: {
        name: "",
        face: ""
    },
    start: function(pm) {
        if (pm.name == "") $("." + this.kag.stat.chara_ptext).html("");
        else {
            var cpm = this.kag.stat.charas[pm.name];
            if (cpm) $("." + this.kag.stat.chara_ptext).html(cpm.jname);
            else $("." + this.kag.stat.chara_ptext).html(pm.name)
        }
        if (pm.face != "") {
            if (!this.kag.stat.charas[pm.name]["map_face"][pm.face]) {
                this.kag.error("\u6307\u5b9a\u3055\u308c\u305f\u30ad\u30e3\u30e9\u30af\u30bf\u30fc\u300c" + pm.name + "\u300d\u3082\u3057\u304f\u306fface:\u300c" + pm.face +
                    "\u300d\u306f\u5b9a\u7fa9\u3055\u308c\u3066\u3044\u307e\u305b\u3093\u3002\u3082\u3046\u4e00\u5ea6\u78ba\u8a8d\u3092\u304a\u9858\u3044\u3057\u307e\u3059");
                return
            }
            var storage_url = this.kag.stat.charas[pm.name]["map_face"][pm.face];
            $("." + pm.name).attr("src", "./data/fgimage/" + storage_url)
        }
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.chara_config = {
    pm: {
        pos_mode: "true",
        effect: "swing",
        ptext: "",
        time: "600",
        memory: "false",
        anim: "true"
    },
    start: function(pm) {
        this.kag.stat.chara_pos_mode = pm.pos_mode;
        this.kag.stat.chara_effect = pm.effect;
        this.kag.stat.chara_ptext = pm.ptext;
        this.kag.stat.chara_time = pm.time;
        this.kag.stat.chara_memory = pm.memory;
        this.kag.stat.chara_anim = pm.anim;
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.chara_new = {
    vital: ["name", "storage"],
    pm: {
        name: "",
        storage: "",
        width: "",
        height: "",
        reflect: "false",
        jname: "",
        visible: "false",
        map_face: {}
    },
    start: function(pm) {
        var storage_url = "./data/fgimage/" + pm.storage;
        if ($.isHTTP(pm.storage)) storage_url = pm.storage;
        pm.map_face["default"] = pm.storage;
        this.kag.preload(storage_url);
        if (pm.visible == "true");
        this.kag.stat.charas[pm.name] = pm;
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.chara_show = {
    vital: ["name"],
    pm: {
        name: "",
        page: "fore",
        layer: "0",
        wait: "true",
        left: "0",
        top: "0",
        width: "",
        height: "",
        zindex: "",
        reflect: "",
        time: 1E3
    },
    start: function(pm) {
        var that = this;
        var cpm = this.kag.stat.charas[pm.name];
        if (cpm == null) {
            this.kag.error("\u6307\u5b9a\u3055\u308c\u305f\u30ad\u30e3\u30e9\u30af\u30bf\u30fc\u300c" + pm.name + "\u300d\u306f\u5b9a\u7fa9\u3055\u308c\u3066\u3044\u307e\u305b\u3093\u3002[chara_new]\u3067\u5b9a\u7fa9\u3057\u3066\u304f\u3060\u3055\u3044");
            return
        }
        var storage_url =
            "./data/fgimage/" + cpm.storage;
        if ($.isHTTP(cpm.storage)) storage_url = cpm.storage;
        var img_obj = $("<img />");
        img_obj.attr("src", storage_url);
        img_obj.css("position", "absolute");
        img_obj.css("display", "none");
        if (pm.width != "") {
            var width = parseInt(pm.width);
            cpm.width = width
        }
        if (pm.height != "") {
            var height = parseInt(pm.height);
            cpm.height = height
        }
        if (pm.zindex != "") {
            var zindex = parseInt(pm.zindex);
            img_obj.css("z-index", zindex)
        }
        if (pm.reflect != "")
            if (pm.reflect == "true") cpm.reflect = "true";
            else cpm.reflect = "false";
        this.kag.preload(storage_url,
            function() {
                var target_layer = that.kag.layer.getLayer(pm.layer, pm.page);
                target_layer.append(img_obj).show();
                var chara_num = 1;
                that.kag.layer.hideEventLayer();
                if (that.kag.stat.chara_pos_mode == "true" && pm.top == "0" && pm.left == "0") {
                    img_obj.css("bottom", "0px");
                    var chara_cnt = target_layer.find(".tyrano_chara").length;
                    var sc_width = parseInt(that.kag.config.scWidth);
                    var sc_height = parseInt(that.kag.config.scHeight);
                    var center = Math.floor(parseInt(img_obj.css("width")) / 2);
                    var base = Math.floor(sc_width / (chara_cnt + 2));
                    var tmp_base = base;
                    var first_left = base - center;
                    img_obj.css("left", first_left + "px");
                    target_layer.find(".tyrano_chara").each(function() {
                        chara_num++;
                        tmp_base += base;
                        var j_chara = $(this);
                        center = Math.floor(parseInt(j_chara.css("width")) / 2);
                        var left = tmp_base - center;
                        if (that.kag.stat.chara_anim == "false") j_chara.fadeTo(parseInt(pm.time), 0, function() {
                            j_chara.css("left", left);
                            j_chara.fadeTo(parseInt(pm.time), 1, function() {
                                chara_num--;
                                if (chara_num == 0) {
                                    that.kag.layer.showEventLayer();
                                    that.kag.ftag.nextOrder()
                                }
                            })
                        });
                        else j_chara.animate({
                            left: left
                        }, parseInt(pm.time), that.kag.stat.chara_effect, function() {
                            chara_num--;
                            if (chara_num == 0) {
                                that.kag.layer.showEventLayer();
                                that.kag.ftag.nextOrder()
                            }
                        })
                    })
                } else {
                    img_obj.css("top", pm.top + "px");
                    img_obj.css("left", pm.left + "px")
                }
                $.setName(img_obj, cpm.name);
                img_obj.addClass("tyrano_chara");
                if (cpm.width != "") img_obj.css("width", cpm.width + "px");
                if (cpm.height != "") img_obj.css("height", cpm.height + "px");
                if (cpm.reflect == "true") img_obj.addClass("reflect");
                else img_obj.removeClass("reflect");
                if (pm.wait != "true") that.kag.ftag.nextOrder();
                img_obj.animate({
                    opacity: "show"
                }, {
                    duration: parseInt(pm.time),
                    easing: that.kag.stat.chara_effect,
                    complete: function() {
                        chara_num--;
                        if (chara_num == 0) {
                            that.kag.layer.showEventLayer();
                            if (pm.wait == "true") that.kag.ftag.nextOrder()
                        }
                    }
                })
            })
    }
};
tyrano.plugin.kag.tag.chara_hide = {
    vital: ["name"],
    pm: {
        page: "fore",
        layer: "0",
        name: "",
        wait: "true",
        time: "1000"
    },
    start: function(pm) {
        var that = this;
        var target_layer = this.kag.layer.getLayer(pm.layer, pm.page);
        var img_obj = target_layer.find("." + pm.name);
        var chara_num = 0;
        that.kag.layer.hideEventLayer();
        img_obj.animate({
            opacity: "hide"
        }, {
            duration: parseInt(pm.time),
            easing: "linear",
            complete: function() {
                img_obj.remove();
                if (that.kag.stat.chara_pos_mode == "true") {
                    var chara_cnt = target_layer.find(".tyrano_chara").length;
                    var sc_width = parseInt(that.kag.config.scWidth);
                    var sc_height = parseInt(that.kag.config.scHeight);
                    var base = Math.floor(sc_width / (chara_cnt + 1));
                    var tmp_base = 0;
                    if (chara_cnt == 0) {
                        that.kag.layer.showEventLayer();
                        that.kag.ftag.nextOrder();
                        return
                    }
                    target_layer.find(".tyrano_chara").each(function() {
                        chara_num++;
                        tmp_base += base;
                        var j_chara = $(this);
                        var center = Math.floor(parseInt(j_chara.css("width")) / 2);
                        var left = tmp_base - center;
                        if (that.kag.stat.chara_anim == "false") j_chara.fadeTo(parseInt(pm.time), 0, function() {
                            j_chara.css("left",
                                left);
                            j_chara.fadeTo(parseInt(pm.time), 1, function() {
                                chara_num--;
                                if (chara_num == 0) {
                                    that.kag.layer.showEventLayer();
                                    that.kag.ftag.nextOrder()
                                }
                            })
                        });
                        else j_chara.animate({
                            left: left
                        }, parseInt(pm.time), that.kag.stat.chara_effect, function() {
                            chara_num--;
                            if (chara_num == 0) {
                                that.kag.layer.showEventLayer();
                                that.kag.ftag.nextOrder()
                            }
                        })
                    })
                } else if (pm.wait == "true") {
                    that.kag.layer.showEventLayer();
                    that.kag.ftag.nextOrder()
                }
            }
        });
        if (this.kag.stat.chara_memory == "false") this.kag.stat.charas[pm.name].storage = this.kag.stat.charas[pm.name]["map_face"]["default"];
        if (pm.wait != "true") this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.chara_delete = {
    vital: ["name"],
    pm: {
        name: ""
    },
    start: function(pm) {
        delete this.kag.stat.charas[pm.name];
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.chara_mod = {
    vital: ["name"],
    pm: {
        name: "",
        face: "",
        reflect: "",
        storage: "",
        time: ""
    },
    start: function(pm) {
        var that = this;
        var storage_url = "";
        if (pm.face != "") {
            if (!this.kag.stat.charas[pm.name]["map_face"][pm.face]) {
                this.kag.error("\u6307\u5b9a\u3055\u308c\u305f\u30ad\u30e3\u30e9\u30af\u30bf\u30fc\u300c" + pm.name + "\u300d\u3082\u3057\u304f\u306fface:\u300c" + pm.face + "\u300d\u306f\u5b9a\u7fa9\u3055\u308c\u3066\u3044\u307e\u305b\u3093\u3002\u3082\u3046\u4e00\u5ea6\u78ba\u8a8d\u3092\u304a\u9858\u3044\u3057\u307e\u3059");
                return
            }
            storage_url = this.kag.stat.charas[pm.name]["map_face"][pm.face]
        } else if ($.isHTTP(pm.storage)) storage_url = pm.storage;
        else storage_url = pm.storage;
        if ($(".layer_fore").find("." + pm.name).size() == 0) {
            this.kag.stat.charas[pm.name]["storage"] = storage_url;
            this.kag.stat.charas[pm.name]["reflect"] = pm.reflect;
            this.kag.ftag.nextOrder();
            return
        }
        var chara_time = this.kag.stat.chara_time;
        if (pm.time != "") chara_time = pm.time;
        if ($(".layer_fore").find("." + pm.name).attr("src") == "./data/fgimage/" + storage_url) chara_time =
            "0";
        if (pm.reflect != "") {
            if (pm.reflect == "true") $(".layer_fore").find("." + pm.name).addClass("reflect");
            else $(".layer_fore").find("." + pm.name).removeClass("reflect");
            this.kag.stat.charas[pm.name]["reflect"] = pm.reflect
        }
        if (storage_url == "") {
            this.kag.ftag.nextOrder();
            return
        }
        if (chara_time != "0") {
            var j_new_img = $(".layer_fore").find("." + pm.name).clone();
            j_new_img.attr("src", "./data/fgimage/" + storage_url);
            j_new_img.css("opacity", 0);
            var j_img = $(".layer_fore").find("." + pm.name);
            j_img.after(j_new_img);
            j_img.fadeTo(parseInt(chara_time),
                0,
                function() {});
            j_new_img.fadeTo(parseInt(chara_time), 1, function() {
                j_img.remove();
                that.kag.ftag.nextOrder()
            })
        } else {
            $(".layer_fore").find("." + pm.name).attr("src", "./data/fgimage/" + storage_url);
            this.kag.ftag.nextOrder()
        }
        this.kag.stat.charas[pm.name]["storage"] = storage_url
    }
};
tyrano.plugin.kag.tag.chara_face = {
    vital: ["name", "face", "storage"],
    pm: {
        name: "",
        face: "",
        storage: ""
    },
    start: function(pm) {
        var storage_url = "";
        if ($.isHTTP(pm.storage)) storage_url = pm.storage;
        else storage_url = pm.storage;
        this.kag.stat.charas[pm.name]["map_face"][pm.face] = storage_url;
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.showlog = {
    pm: {},
    start: function(pm) {
        this.kag.menu.displayLog();
        this.kag.ftag.nextOrder()
    }
};