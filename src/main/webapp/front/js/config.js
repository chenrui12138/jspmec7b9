
var projectName = '社区疫情管理系统';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.jsp'
}, 
{
	name: '我的发布',
	url: '../forum/list-my.jsp'
},

]


var indexNav = [


{
	name: '社区论坛',
	url: './pages/forum/list.jsp'
}, 
{
	name: '通知公告',
	url: './pages/news/list.jsp'
},
]

var adminurl =  "http://localhost:8080/jspmec7b9/index.jsp";

var cartFlag = false

var chatFlag = false


chatFlag = true


var menu = [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"社区文化","menuJump":"列表","tableName":"shequwenhua"}],"menu":"社区文化管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"每日体温","menuJump":"列表","tableName":"meiritiwen"}],"menu":"每日体温管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"行动轨迹","menuJump":"列表","tableName":"xingdongguiji"}],"menu":"行动轨迹管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"紧急情况","menuJump":"列表","tableName":"jinjiqingkuang"}],"menu":"紧急情况管理"},{"child":[{"buttons":["查看","删除"],"menu":"我的业务","menuJump":"列表","tableName":"wodeyewu"}],"menu":"我的业务管理"},{"child":[{"buttons":["删除","查看","领取"],"menu":"代办业务","menuJump":"列表","tableName":"daibanyewu"}],"menu":"代办业务管理"},{"child":[{"buttons":["查看","删除"],"menu":"业务情况","menuJump":"列表","tableName":"yewuqingkuang"}],"menu":"业务情况管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"管理员","tableName":"users"}],"menu":"管理员管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"社区论坛","tableName":"forum"}],"menu":"社区论坛"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"通知公告","tableName":"news"},{"buttons":["新增","查看","修改","删除"],"menu":"在线咨询","tableName":"chat"},{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"}],"frontMenu":[],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"每日体温","menuJump":"列表","tableName":"meiritiwen"}],"menu":"每日体温管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"行动轨迹","menuJump":"列表","tableName":"xingdongguiji"}],"menu":"行动轨迹管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"紧急情况","menuJump":"列表","tableName":"jinjiqingkuang"}],"menu":"紧急情况管理"},{"child":[{"buttons":["查看","新增","修改","删除","添加代办"],"menu":"我的业务","menuJump":"列表","tableName":"wodeyewu"}],"menu":"我的业务管理"},{"child":[{"buttons":["查看"],"menu":"代办业务","menuJump":"列表","tableName":"daibanyewu"}],"menu":"代办业务管理"},{"child":[{"buttons":["支付","审核","查看"],"menu":"业务情况","menuJump":"列表","tableName":"yewuqingkuang"}],"menu":"业务情况管理"}],"frontMenu":[],"hasBackLogin":"否","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
