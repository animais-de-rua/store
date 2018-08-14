{*
* 2007-2016 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2016 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
{if !isset($content_only) || !$content_only}
					</div><!-- #center_column -->
					{if isset($right_column_size) && !empty($right_column_size)}
						<div id="right_column" class="col-xs-12 col-sm-{$right_column_size|intval} column">{$HOOK_RIGHT_COLUMN}</div>
					{/if}
					</div><!-- .row -->
				</div><!-- #columns -->
			</div><!-- .columns-container -->
			{if isset($HOOK_FOOTER)}
			<!-- Footer -->
		    <footer>
		        <div class="row">
		            <div class="large-4 medium-4 column fr" data-element="logo">
					    <span class="sprite-logo_icon ">
					        <img src="http://clients.whysurreal.com/animaisderua/images/logo_icon.svg">
					    </span>
		            </div>
		            <div class="large-8 medium-8 column" data-element="animal_count">
		                <em id="animal-count"></em>
		                <p>Intervenções até <span id="today-date">23.01.2017</span></p>
		            </div>
		            <div class="clearfix"></div>

		            <div class="large-8 medium-8 column" data-element="newsletter">
		                <div class="forms-builder-wrapper">
		                    <div id="sib_loading_gif_area" style="display: none;">
		                        <img src="//my.sendinblue.com/public/theme/version4/assets/images/loader_sblue.gif">
		                    </div>

		                    <form target="_blank" class="newsletter description" id="theform" name="theform" action="https://my.sendinblue.com/users/subscribe/js_id/2gxys/id/1" method="post">
		                        <input type="hidden" name="js_id" id="js_id" value="2mxq1" style="font-size: 13px;">
		                        <input type="hidden" name="listid" id="listid" value="5" style="font-size: 13px;">
		                        <input type="hidden" name="from_url" id="from_url" value="yes" style="font-size: 13px;">
		                        <input type="hidden" name="hdn_email_txt" id="hdn_email_txt" value="1501605123481" style="font-size: 13px;">

		                        <div class="sib-container rounded">

		                            <input type="hidden" name="req_hid" id="req_hid" value="">

		                            <div class="header"></div>

		                            <div class="description editable" data-editfield="newsletter_description" contenteditable="false"></div>

		                            <div class="view-messages" style=" margin:5px 0;"></div>
		                            <h4>Subscreva a nossa Newsletter</h4>
		                            <!-- an email as primary -->
		                            <div class="mt-px10 primary-group email-group forms-builder-group ui-sortable" style="">
		                                <div class="mandatory-email">
		                                    <div class="lbl-tinyltr" contenteditable="false"></div>
		                                    <input type="email" name="email" class="size14 inline" placeholder="O seu e-mail" value="">
		                                    <button type="submit" name="subscribe" class="inline editable" data-editfield="subscribe">
		                                        {{ sprite('button-arrow', '0 0 23 11')}}
		                                    </button>
		                                </div>
		                            </div>
		                        </div>
		                    </form>
		                </div>
		            </div>

		            <div class="large-4 medium-4 column end" data-element="solidarity">
		                <h4>Número Solidário</h4>
		                <a href="tel:760300161">760 300 161</a>
		                <small>Custo da Chamada 0,60€ + IVA</small>
		            </div>

		            <div class="large-8 medium-8 column end mt-px60" data-element="social">
		                <h4>Redes Sociais</h4>
		                <div class="mt-px10">
		                    <a class="inline" target="_blank" href="#">
							    <span class="sprite-facebook_icon ">
							        <img src="http://clients.whysurreal.com/animaisderua/images/facebook_icon.svg">
							    </span>
							</a>
		                    <a class="inline" target="_blank" href="#">
							    <span class="sprite-youtube_icon ">
							    	<img src="http://clients.whysurreal.com/animaisderua/images/youtube_icon.svg">
							    </span>
							</a>
		                    <a class="inline" target="_blank" href="#">
							    <span class="sprite-twitter_icon ">
							        <img src="http://clients.whysurreal.com/animaisderua/images/twitter_icon.svg">
							    </span>
							</a>
		                </div>
		            </div>
		        </div>
		    </footer>
			{/if}
		</div><!-- #page -->
{/if}
{include file="$tpl_dir./global.tpl"}
		<script type="text/javascript">
			$('.shopping_cart a.shopping_cart_header').click(function(event){
		    	$(".shopping_cart").toggleClass("show");
		    	event.preventDefault();
		    	return false;

			});
			
			var d = new Date();
		    var month = d.getMonth()+1;
		    var day = d.getDate();
		    var output = ((''+day).length<2 ? '0' : '') + day + '.' +
		        ((''+month).length<2 ? '0' : '') + month + '.' + d.getFullYear()
		        ;
		    $('#today-date').text(output);

			var jsonPath = 'http://www.animaisderua.org/api/getTotalTreatedAnimals';

			$.ajax({
			    type:  'GET',
			    url: jsonPath,
			    dataType: 'text',
			    contentType: "application/x-www-form-urlencoded;charset=UTF-8",
			    success: function(data) {
			    	data =  $.parseJSON(data);
			    	var firstItem = data[0];
			    	var countNumber = firstItem.contagem;
			        $('#animal-count').text(countNumber);
			    }
			});
		</script>
	</body>
</html>