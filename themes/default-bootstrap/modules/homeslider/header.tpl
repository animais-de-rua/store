{if isset($homeslider)}
<script type="text/javascript">
     var homeslider_loop={$homeslider.loop|intval};
     var homeslider_width=$('.bx-wrapper').width();
     var homeslider_speed={$homeslider.speed|intval};
     var homeslider_pause={$homeslider.pause|intval};
</script>
{/if}