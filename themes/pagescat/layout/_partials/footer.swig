
<footer id="footer">
  <div class="copyright" >
  {% set current = date(Date.now(), "YYYY") %}
  &copy; {% if theme.since and theme.since != current %} {{ theme.since }} - {% endif %}
  <span itemprop="copyrightYear">{{ current }}</span>
  <span class="with-love">
    <i class="fa fa-{{ theme.authoricon }}"></i>
  </span>
  <span class="author" itemprop="copyrightHolder">{{ config.author }}</span>
</div>
  <div class="outer">
    <div id="footer-info" class="inner">
      由<a href="http://hexo.io/" target="_blank">Hexo</a>强力驱动 | 
      主题-<a href="https://github.com/ShanaMaid/hexo-theme-pagescat">pagescat</a>
    </div>
  </div>
</footer>