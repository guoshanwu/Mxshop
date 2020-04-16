from rest_framework import serializers
from .models import Goods, GoodsCategory


# class GoodsSerializer(serializers.ModelSerializer):
	# name = serializers.CharField(required=True, max_length=100)
	# click_num = serializers.IntegerField(default=0)
	# goods_front_image = serializers.ImageField()
	
	# class Meta:
	# 	model = Goods
	# 	fields = '__all__'


class CategorySerializer3(serializers.ModelSerializer):
	class Meta:
		model = GoodsCategory
		fields = '__all__'


class CategorySerializer2(serializers.ModelSerializer):
	sub_cat = CategorySerializer3(many=True)
	class Meta:
		model = GoodsCategory
		fields = '__all__'


class CategorySerializer(serializers.ModelSerializer):
	"""
	    商品一级类别序列化
	"""
	# 关联的是自身，拿到自己的下一类，不是单个，需加many=True
	sub_cat = CategorySerializer2(many=True)
	class Meta:
		model = GoodsCategory
		fields = '__all__'


#ModelSerializer实现商品列表页
class GoodsSerializer(serializers.ModelSerializer):
	#覆盖外键字段
	category = CategorySerializer()
	class Meta:
		model = Goods
		fields = '__all__'


