<?php /*a:3:{s:74:"D:\worker\phpstudy\WWW\wfs_louyu\application\admin\view\product\index.html";i:1568606158;s:72:"D:\worker\phpstudy\WWW\wfs_louyu\application\admin\view\layout\main.html";i:1568194890;s:71:"D:\worker\phpstudy\WWW\wfs_louyu\application\admin\view\inc\header.html";i:1568194890;}*/ ?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
<title>采购总后台</title>

<link rel="stylesheet" href="/static/admin/layui/css/layui.css" media="all" />
<link rel="stylesheet" href="/static/admin/css/public.css" media="all" />
<link rel="stylesheet" href="/static/admin/css/admin.css" media="all" />
<link rel="stylesheet" href="/static/admin/css/font_400842_q6tk84n9ywvu0udi.css" media="all" />

<script type="text/javascript" src="/static/admin/layui/layui.js"></script>
<script type="text/javascript" src="/static/vfs/jquery.min.js"></script>
</head>
<body class="childrenBody">


<blockquote class="layui-elem-quote quoteBox">
    <form class="layui-form" id="searchTableForm">
        <div class="layui-inline">
            <div class="layui-input-inline">
                <input name="title" type="text" class="layui-input" placeholder="产品名称"/>
            </div>
            <div class="layui-input-inline">
                <input name="cate_name" type="text" class="layui-input" placeholder="分类名称"/>
            </div>
            <div class="layui-input-inline">
                <select name="status" id="status">
                    <option value="">状态</option>
                    <?php if(is_array($status_list) || $status_list instanceof \think\Collection || $status_list instanceof \think\Paginator): $i = 0; $__LIST__ = $status_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                    <option value="<?php echo htmlentities($vo['id']); ?>"><?php echo htmlentities($vo['title']); ?></option>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                </select>
            </div>
            <a class="layui-btn search_btn" lay-submit lay-filter="tablelistReload" id="tablelistReload">搜索</a>
        </div>
    </form>
</blockquote>

<div id="boxTableNone">
    <script type="text/html" id="tplToolbar">
        <div class="layui-btn-container">
            <button class="layui-btn layui-btn-sm" id="buttonAdd" lay-event="buttonAdd">
                <i class="layui-icon"></i>添加
            </button>
            <button class="layui-btn layui-btn-sm" id="batchDel" lay-event="batchDel">批量删除</button>
        </div>
    </script>

    <script type="text/html" id="toolbarHtml">
        <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
        <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
    </script>

    <table class="layui-hide layui-table x-admin" id="tablelist" lay-filter="tablelist"></table>
</div>

<script type="text/javascript" src="/static/vfs/tablelistobj.js"></script>
<script>
    layui.use(['form', 'table', 'jquery', 'layer', 'upload', 'util'], function () {
        var table = layui.table;
        var form = layui.form;
        var layer = layui.layer;
        var util = layui.util;
        var $ = layui.jquery;
        //渲染列表
        tablelistobj.$ = $;
        tablelistobj.tool_obj = {
            lists: {href: "<?php echo url('admin/product/lists'); ?>", title: '列表'},
            add: {href: "<?php echo url('admin/product/add'); ?>", title: '添加'},
            edit: {href: "<?php echo url('admin/product/edit'); ?>", title: '编辑'},
            del: {href: "<?php echo url('admin/product/del'); ?>", title: '删除'},
            param: {href: "<?php echo url('admin/product/param'); ?>", title: '详情'},
        };
        tablelistobj.cols = [[
            {field: 'id', type: 'checkbox', width: 80},
            {field: 'id', width: 80, title: 'ID', sort: true},
            {field: 'title', title: '产品名'},
            {field: 'cate_name', title: '分类名称'},
            {field: 'price', title: '价格'},
            {field: 'status_name', title: '状态',},
            {field: '', title: '操作', align: 'center', toolbar: '#toolbarHtml', width: 150}
        ]];
        tablelistobj.limit = 10;
        tablelistobj.render(table);
        //搜索表单
        tablelistobj.search(table, form);
        //操作按钮
        tablelistobj.form_width = 1000;
        tablelistobj.form_height = 600;
        tablelistobj.tool(table, layer);
        //头工具栏事件
        tablelistobj.toolbar(table, layer);
        // $('#export').click(function () {
        //     var export_url = "<?php echo url('admin/product/export', $query_str, '', true); ?>";
        //     window.location.href = export_url;
        // });
        //一些自定义事件
        util.event('lay-active', {
            changeStatus: function () {
                var id = $(this).data('id');
                layer.confirm('您是要审核该信息吗？', {
                    btn: ['通过', '驳回']
                }, function () {
                    var postData = {type: 'pass', id: id};
                    $.post("<?php echo url('admin/product/updateColumn'); ?>", postData, function (res) {
                        var message = res.message;
                        if (res.code == 0) {
                            layer.msg(message, {icon: 1, time: 2000});
                            table.reload(tablelistobj.filter, {
                                method: 'post',
                                page: {curr: 1},
                            });
                        } else {
                            layer.msg(message, {icon: 2, time: 2000});
                        }
                    }, 'json');
                }, function () {
                    layer.prompt({title: '请输入原因', formType: 2}, function (text, index) {
                        var json_obj = {refuse: text};
                        var postData = {type: 'refuse', id: id, json: json_obj};
                        $.post("<?php echo url('admin/product/updateColumn'); ?>", postData, function (res) {
                            var message = res.message;
                            if (res.code == 0) {
                                layer.msg(message, {icon: 1, time: 2000});
                                table.reload(tablelistobj.filter, {
                                    method: 'post',
                                    page: {curr: 1},
                                });
                            } else {
                                layer.msg(message, {icon: 2, time: 2000});
                            }
                        }, 'json');
                        layer.close(index);
                    });

                })
            },
            refuseDetail : function(){
                var that = $(this);
                var tips = that.data('title');
                layer.tips(tips, that, {tips: 1});
            },
            changeDeleteStatus: function () {
                var id = $(this).data('id');
                layer.confirm('您是要同意删除该信息吗?', {
                    btn: ['确定', '取消']
                }, function () {
                    var postData = {type: 'delete_status', id: id};
                    $.post("<?php echo url('admin/product/updateColumn'); ?>", postData, function (res) {
                        var message = res.message;
                        if (res.code == 0) {
                            layer.msg(message, {icon: 1, time: 2000});
                            table.reload(tablelistobj.filter, {
                                method: 'post',
                                page: {curr: 1},
                            });
                        } else {
                            layer.msg(message, {icon: 2, time: 2000});
                        }
                    }, 'json');
                });
            },
        });
    });
</script>

</body>
</html>