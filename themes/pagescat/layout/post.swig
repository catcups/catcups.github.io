<div class="post-title-item">
  {# postItem 为存有一个文章的所有信息的对象 #}
  {# postItem.title 为文章标题，如果没有标题，则直接截取文章内容 #}
  {# strip_html 是将 html 代码中提取可供普通人阅读的文字部分 #}
  {# trim 是去除前后空格 #}
  {% set postTitle = postItem.title || trim(strip_html(postItem.content))  %}
  <a href="{{ config.root }}{{ postItem.path }}">
  {# 标题最多 80 个字符，超过得话，使用 truncate 来截取 #}
  {% if postTitle.length < 80 %}
    {{ postTitle }}
  {% else %}
    {{ truncate( postTitle, {length: 80}) }}
  {% endif %}
  </a>
  <p class="page-title-sub">
    {# 显示时间 #}
    <span id = "post-title-date">{{ date(postItem.date, 'M-D') }}</span>
    {% if postItem.categories.length %}
    {# 组织分类的链接列表 #}
    <span id = "post-title-categories">{{ __('category_title') }}
    {% set i = 0 %}
    {% for cat in postItem.categories %}
      {% if i !== 0 %}
        {{'/'}}
      {% endif %}
      {% set i = i + 1 %}
      <a href="{{ url_for(cat.path) }}">{{ cat.name }}</a>
    {% endfor %}
    </span>
    {% endif %}
    {# 组织标签的链接列表 #}
    {% if postItem.tags.length %}
    <span id = "post-title-tags">
    {{ __('tag_title') }}
    {% set i = 0 %}
    {% for tag in postItem.tags %}
      {% if i !== 0 %}
        {{'/'}}
      {% endif %}
      {% set i = i + 1 %}
      <a href="{{ url_for(tag.path) }}">{{ tag.name }}</a>
    {% endfor %}
    </span>
    {% endif %}
    {# 有些在文章的头部指定了照片，也显示出来 #}
    {% if postItem.photos %}
      <br>
      {% set i = 0 %}
      {% for photo in postItem.photos %}
        {% set i = i + 1 %}
        {% if i <= 3 %}
          {# 这里使用了 fancybox 的一些功能，具体后面了解 #}
          <a class="fancybox-thumb" rel="fancybox-thumb" href="{{photo}}">
            <img src="{{photo}}" />
          </a>
        {% endif %}
      {% endfor %}
    {% endif %}
  </p>
  
</div>