import django_filters
from .models import Goods
from django.db.models import Q


class GoodsFilter(django_filters.rest_framework.FilterSet):
    '''
    自定义过滤器，实现区间过滤
    商品过滤的类
    '''
    #filters.NumberFilter有两个参数，field_name是要过滤的字段，lookup是执行的行为，‘小与等于本店价格’
    price_min = django_filters.NumberFilter(field_name="shop_price", lookup_expr='gte') # 注：第一个参数原先叫 name ， 现已改成 field_name
    price_max = django_filters.NumberFilter(field_name="shop_price", lookup_expr='lte')
    # lookup_expr = 'contains' ：类似数据库模糊查询的like参数，contains加'i'表示不区分大小写
    name = django_filters.CharFilter(field_name='name', lookup_expr='icontains')  # lookup_expr = 'icontains'，此句不写，表示绝对匹配
    # 方法：自定义过滤条件，过滤一级类目 ，field_name：字段名 ， method：指定自定义方法
    top_category = django_filters.NumberFilter(field_name='category', method='top_category_filter')


    def top_category_filter(self, queryset, name, value):
        # value：一级类目，如果两个值相等，说明是过滤一级类目
        return queryset.filter(Q(category_id=value)|Q(category__parent_category_id=value)|Q(category__parent_category__parent_category_id=value))


    class Meta:
        model = Goods
        fields = ['price_min', 'price_max', 'name', 'top_category']