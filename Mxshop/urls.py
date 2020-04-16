"""Mxshop URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.urls import path, re_path, include
from Mxshop.settings import MEDIA_ROOT
from django.views.static import serve
import xadmin
from goods.views import GoodsListViewSet, CategoryViewSet
from rest_framework.documentation import include_docs_urls
from rest_framework.routers import DefaultRouter
from rest_framework.authtoken import views
from rest_framework_jwt.views import obtain_jwt_token   # 导入jwt验证相关

#实例化router
router = DefaultRouter()
# 注册goods
router.register(r'goods', GoodsListViewSet, basename='goods')
# 配置GoodsCategory的url
router.register(r'categories', CategoryViewSet, basename='categories')

urlpatterns = [
    path('xadmin/', xadmin.site.urls),
    path('ueditor/', include('DjangoUeditor.urls')),
    # 处理图片显示的url,使用Django自带serve,传入参数告诉它去哪个路径找，我们有配置好的路径MEDIAROOT
    # 这句代码意思是，与media相关的通通当作静态文件来处理，根据指定好的MEDIA_ROOT路径找寻静态文件
    re_path('media/(?P<path>.*)', serve, {"document_root": MEDIA_ROOT }),  #添加此句代码
    #商品列表页
    #path('goods/', goods_list, name='goods-list'),
    #drf文档，title自定义
    path('docs', include_docs_urls(title='仙剑奇侠传')),
    path('api-auth/', include('rest_framework.urls')),
    # router的path路径
    re_path('^', include(router.urls)),
    #token,新添加 token验证
    path('api_token_auth/', views.obtain_auth_token),
    # 新添加，jwt的token认证接口
    path('login/', obtain_jwt_token ),
]


