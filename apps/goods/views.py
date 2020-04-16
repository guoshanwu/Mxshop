from .serializers import GoodsSerializer, CategorySerializer
from .models import Goods, GoodsCategory
from rest_framework import viewsets, mixins, filters
from rest_framework.pagination import PageNumberPagination
from django_filters.rest_framework import DjangoFilterBackend
from .filter import GoodsFilter


class GoodsPagination(PageNumberPagination):
	'''商品列表自定义分页'''
	#默认每页显示10个
	page_size = 10
	#可以动态改变每页个数
	page_size_query_param = 'page_size'
	#页码参数
	page_query_param = 'page'
	#最多能显示多少页
	max_page_size = 100


class GoodsListViewSet(mixins.ListModelMixin, viewsets.GenericViewSet):
	# mixins.ListModelMixin：只提供list方法
	queryset = Goods.objects.all()
	pagination_class = GoodsPagination  # 分页
	serializer_class = GoodsSerializer
	filter_backends = (DjangoFilterBackend, filters.SearchFilter, filters.OrderingFilter)
	# 设置filter的类为我们自定义的类
	filter_class = GoodsFilter
	# 搜索时，会匹配search_fields中配置的所有字段	设置我们的search字段
	search_fields = ('name', 'goods_brief', 'goods_desc')
	#设置排序
	ordering_fields = ('sold_num', 'add_time')


#要想获取某一个商品的详情的时候，继承 mixins.RetrieveModelMixin  就可以了
class CategoryViewSet(mixins.ListModelMixin, mixins.RetrieveModelMixin, viewsets.GenericViewSet):
	'''
	list:
		商品分类列表数据
	'''
	queryset = GoodsCategory.objects.filter(category_type=1)
	serializer_class = CategorySerializer
