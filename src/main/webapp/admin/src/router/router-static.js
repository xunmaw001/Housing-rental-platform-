import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import news from '@/views/modules/news/list'
    import fangwuleixing from '@/views/modules/fangwuleixing/list'
    import fangwuyuding from '@/views/modules/fangwuyuding/list'
    import fangwuxinxi from '@/views/modules/fangwuxinxi/list'
    import zujinjiesuan from '@/views/modules/zujinjiesuan/list'
    import zujinjiaofu from '@/views/modules/zujinjiaofu/list'
    import zulinhetong from '@/views/modules/zulinhetong/list'
    import richeng from '@/views/modules/richeng/list'
    import yonghu from '@/views/modules/yonghu/list'
    import hetongzhongzhi from '@/views/modules/hetongzhongzhi/list'
    import fangdong from '@/views/modules/fangdong/list'
    import config from '@/views/modules/config/list'
    import baozhang from '@/views/modules/baozhang/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
          ,{
	path: '/news',
        name: '新闻资讯',
        component: news
      }
          ,{
	path: '/fangwuleixing',
        name: '房屋类型',
        component: fangwuleixing
      }
          ,{
	path: '/fangwuyuding',
        name: '房屋预订',
        component: fangwuyuding
      }
          ,{
	path: '/fangwuxinxi',
        name: '房屋信息',
        component: fangwuxinxi
      }
          ,{
	path: '/zujinjiesuan',
        name: '租金结算',
        component: zujinjiesuan
      }
          ,{
	path: '/zujinjiaofu',
        name: '租金交付',
        component: zujinjiaofu
      }
          ,{
	path: '/zulinhetong',
        name: '租赁合同',
        component: zulinhetong
      }
          ,{
	path: '/richeng',
        name: '日程',
        component: richeng
      }
          ,{
	path: '/yonghu',
        name: '用户',
        component: yonghu
      }
          ,{
	path: '/hetongzhongzhi',
        name: '合同终止',
        component: hetongzhongzhi
      }
          ,{
	path: '/fangdong',
        name: '房东',
        component: fangdong
      }
          ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
          ,{
	path: '/baozhang',
        name: '报障',
        component: baozhang
      }
        ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
