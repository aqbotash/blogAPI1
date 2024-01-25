from django.urls import path
from .views import PostListView, MyModelDetailView, RegisterCreateView

urlpatterns = [
    path('post-create/', PostListView.as_view(), name='post_list_view'),
    path('post-detail/<int:pk>', MyModelDetailView.as_view(), name='post_detail'),
    path('register', RegisterCreateView.as_view(), name='sign-up')
]