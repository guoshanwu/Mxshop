from django.views.generic import View
from goods.models import Goods


class GoodsListView(View):
    def get(self, request):
        #通过django的view实现商品列表页
        jsonList = []
        #获取所有商品
        goods = Goods.objects.all()
        import json
        from django.core import serializers
        from django.http import JsonResponse
        jsonData = serializers.serialize('json', goods)
        jsonData = json.loads(jsonData)
        return JsonResponse(jsonData, safe=False)
