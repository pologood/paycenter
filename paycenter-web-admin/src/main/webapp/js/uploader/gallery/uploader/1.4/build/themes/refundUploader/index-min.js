KISSY.add(function(f,g,h){function c(a){c.superclass.constructor.call(this,a)}var e=g.all;f.extend(c,h,{render:function(){var a=this;c.superclass.render.call(a);var b=a.get("uploader");b.on("remove",function(){a._changeText()});b.on("success",function(){a._changeText()});b=b.get("target").text();a.set("defaultText",b)},_addHandler:function(a){var a=a.file,b=a.id,d=e(".J_Del_"+b);d.data("data-file",a);d.on("click",this._delHandler,this);e(".J_Pic_"+b).show()},_errorHandler:function(a){var b=this,d=
a.msg,a=a.file;f.log(d);if(!a)return!1;var c=a.id;e(".J_ErrorMsg_"+c).html("\u4e0a\u4f20\u5931\u8d25");f.later(function(){alert(d);b.get("uploader").get("queue").remove(c)},1E3)},_changeText:function(){var a=this.get("uploader"),b=this.getFilesLen(),d=a.get("target").children("span"),c=this.get("maxText"),e=this.get("defaultText"),a=a.get("max");Number(a)<=b?d.text(f.substitute(c,{max:a})):d.text(e)}},{ATTRS:{name:{value:"refundUploader"},use:{value:"proBars,filedrop,preview,imageZoom"},fileTpl:{value:'<li id="queue-file-{id}" class="g-u" data-name="{name}"><div class="pic-wrapper"><div class="pic"><span><img class="J_Pic_{id} preview-img" src="" /></span></div><div class=" J_Mask_{id} pic-mask"></div><div class="status-wrapper J_FileStatus"><div class="status waiting-status"><p>\u7b49\u5f85\u4e0a\u4f20</p></div><div class="status start-status progress-status success-status"><div class="J_ProgressBar_{id}">\u4e0a\u4f20\u4e2d...</div></div><div class="status error-status"><p class="J_ErrorMsg_{id}">\u4e0a\u4f20\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\uff01</p></div></div></div><div><a class="J_Del_{id} del-pic" href="#">\u5220\u9664</a></div></li>'},
defaultText:{value:""},maxText:{value:"\u60a8\u5df2\u4e0a\u4f20\u6ee1{max}\u5f20\u56fe\u7247"}}});return c},{requires:["node","gallery/uploader/1.4/themes/imageUploader/index"]});
