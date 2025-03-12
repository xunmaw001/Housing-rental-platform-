
var projectName = '房屋租赁平台';
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
	url: '../' + localStorage.getItem('userTable') + '/center.html'
}, 
]


var indexNav = [

{
	name: '房屋信息',
	url: './pages/fangwuxinxi/list.html'
}, 

{
	name: '新闻资讯',
	url: './pages/news/list.html'
},
]

var adminurl =  "http://localhost:8080/ssm7wina/admin/dist/index.html";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"房东","menuJump":"列表","tableName":"fangdong"}],"menu":"房东管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"},{"buttons":["新增","查看","修改","删除"],"menu":"新闻资讯","tableName":"news"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看","租用"],"menu":"房屋信息列表","menuJump":"列表","tableName":"fangwuxinxi"}],"menu":"房屋信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看","租用","合同","报障"],"menu":"房屋信息","menuJump":"列表","tableName":"fangwuxinxi"}],"menu":"房屋信息管理"},{"child":[{"buttons":["查看","支付"],"menu":"房屋预订","menuJump":"列表","tableName":"fangwuyuding"}],"menu":"房屋预订管理"},{"child":[{"buttons":["查看","支付"],"menu":"租金结算","menuJump":"列表","tableName":"zujinjiesuan"}],"menu":"租金结算管理"},{"child":[{"buttons":["查看","合同终止"],"menu":"租赁合同","menuJump":"列表","tableName":"zulinhetong"}],"menu":"租赁合同管理"},{"child":[{"buttons":["查看"],"menu":"报障","menuJump":"列表","tableName":"baozhang"}],"menu":"报障管理"}],"frontMenu":[{"child":[{"buttons":["查看","租用"],"menu":"房屋信息列表","menuJump":"列表","tableName":"fangwuxinxi"}],"menu":"房屋信息模块"}],"hasBackLogin":"是","hasBackRegister":"是","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"},{"backMenu":[{"child":[{"buttons":["查看","新增","修改","删除"],"menu":"房屋信息","menuJump":"列表","tableName":"fangwuxinxi"}],"menu":"房屋信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"房屋类型","menuJump":"列表","tableName":"fangwuleixing"}],"menu":"房屋类型管理"},{"child":[{"buttons":["查看","修改","删除","审核"],"menu":"房屋预订","menuJump":"列表","tableName":"fangwuyuding"}],"menu":"房屋预订管理"},{"child":[{"buttons":["审核","查看","报表","收租日期"],"menu":"租金结算","menuJump":"列表","tableName":"zujinjiesuan"}],"menu":"租金结算管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"租金交付","menuJump":"列表","tableName":"zujinjiaofu"}],"menu":"租金交付管理"},{"child":[{"buttons":["新增","查看","修改","删除","合同终止","审核"],"menu":"租赁合同","menuJump":"列表","tableName":"zulinhetong"}],"menu":"租赁合同管理"},{"child":[{"buttons":["查看","修改","删除","审核"],"menu":"合同终止","menuJump":"列表","tableName":"hetongzhongzhi"}],"menu":"合同终止管理"},{"child":[{"buttons":["查看","修改","删除","审核"],"menu":"报障","menuJump":"列表","tableName":"baozhang"}],"menu":"报障管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"日程","menuJump":"列表","tableName":"richeng"}],"menu":"日程管理"}],"frontMenu":[{"child":[{"buttons":["查看","租用"],"menu":"房屋信息列表","menuJump":"列表","tableName":"fangwuxinxi"}],"menu":"房屋信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"房东","tableName":"fangdong"}]


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
