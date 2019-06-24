{**
 * 2007-2018 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
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
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2018 PrestaShop SA
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
<!--div class="container">
  <div class="row">
    {block name='hook_footer_before'}
      {hook h='displayFooterBefore'}
    {/block}
  </div>
</div-->

<div class="footer-container">
  <div class="container">
    <!--div class="row">
      {block name='hook_footer'}
        {hook h='displayFooter'}
      {/block}
    </div>
    <div class="row">
      {block name='hook_footer_after'}
        {hook h='displayFooterAfter'}
      {/block}
    </div-->

    <link rel="stylesheet" type="text/css" href="{__PS_BASE_URI__ }themes/adr/fonts/icomoon.css">
    <style>
        .row {
            display: flex;
        }
        .row.row-wrap {
            flex-wrap: wrap;
        }
        @media (min-width: 40rem) {
            .row {
                flex-direction: row;
                margin-left: -1rem;
                width: calc(100% + 2rem);
            }
        }
        .row .column.column-67 {
            flex: 0 0 66.6666%;
            max-width: 66.6666%;
        }
        .row .column.column-33 {
            flex: 0 0 33.3333%;
            max-width: 33.3333%;
        }
        
        #footer .container {
            margin: 0 auto;
            max-width: 112rem;
            padding: 0;
            position: relative;
        }
        a.lined.light {
            color: #fff;
        }
        a.lined {
            padding-bottom: 4px;
        }
        
        a.lined.light:after {
            background-color: #ccc;
        }
        a.lined:after {
            content: "";
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            height: 1px;
            background-color: #000;
            transition: -webkit-transform .2s ease-in-out;
            transition: transform .2s ease-in-out;
            transition: transform .2s ease-in-out,-webkit-transform .2s ease-in-out;
            -webkit-transform: translateY(0);
            transform: translateY(0);
        }
        a {
            cursor: pointer;
            transition: color .2s;
            position: relative;
        }
        a.lined.light:after {
            background-color: #ccc;
        }
        a.lined:hover:after {
            -webkit-transform: translateY(-3px);
            transform: translateY(-3px);
        }

    
        #footer {
          background-color: #000;
          color: #FFF;
          padding: 64px 0 80px;
          font-weight: 800;
        }
        
        #footer h4,
        #footer label {
          font-weight: 700;
          font-size: 18px;
          letter-spacing: .01rem;
        }
        
        #footer a.color-link {
          color: #FFF;
          -webkit-transition: .1s color;
          transition: .1s color;
        }
        
        #footer a.color-link:hover {
          color: #CCC;
        }
        
        #footer .logo {
          font-size: 2.2rem;
        }
        
        #footer .stats h1 {
          font-size: 54px;
          letter-spacing: .01rem;
          margin-bottom: 0px;
        }
        
        #footer .newsletter {
            margin-bottom: 40px;
        }
        
        #footer .newsletter label {
          margin-bottom: .8rem;
          color: #FFF;
          display: block;
          text-align: left;
          margin-top: 22px;
        }
        
        #footer .newsletter input {
          margin-bottom: 0;
        }
        
        #footer .newsletter .result {
          margin: 0;
          font-weight: normal;
          font-style: italic;
        }
        
        #footer .newsletter .error input {
          border-color: #840000;
        }
        
        #footer .social h4 {
          margin-bottom: 1.4rem;
        }
        
        #footer .social .icon {
          font-size: 22px;
          margin: 0 10px 0 0;
        }
        
        #footer .solidarity h4 {
          margin-bottom: .5rem;
        }
        
        #footer .solidarity a {
          font-weight: 600;
          font-size: 18px;
        }
        
        #footer .solidarity p {
          margin-top: 2px;
          font-weight: 400;
          font-size: 12px;
          color: #FFF;
        }
        
        #footer .contact a {
          font-weight: 700;
        }
        
        #footer .contact p {
          margin-bottom: 12px;
        }
        
        #footer form input[type='email'] {
          width: 250px;
          height: 30px;
          background: transparent;
          border: 1px solid #FFF;
          padding: 0 10px;
          display: inline-block;
          margin-right: 12px;
          color: #FFF;
          font-size: 14px;
          border-radius: 0;
          -webkit-transition: .2s margin;
          transition: .2s margin;
        }
        
        #footer form input[type='email']:focus {
          border: 1px solid #FFF;
          margin-right: 0px;
        }
        
        #footer form button {
          background: #FFF;
          height: 30px;
          width: 50px;
          vertical-align: top;
          border-radius: 0;
          border: 1px solid #FFF;
          color: #000;
          text-align: center;
          -webkit-transition: .2s background;
          transition: .2s background;
          margin-left: -5px;
          font-size: 14px;
          padding: 0px;
          line-height: 0px;
        }
        
        #footer form button:hover,
        #footer form button:focus {
          background: #EEE;
          border: 1px solid #FFF;
        }
    </style>
    
    <script>
    document.addEventListener("DOMContentLoaded", function(e) {
        let h1 = document.querySelector('.stats h1');
        let token = document.querySelector('[name="_token"]');

        fetch('/api/stats').then(e => e.json().then(data => h1.innerText = data.animals.helped));
        
        // Ajax forms
        document.querySelectorAll('form.ajax').forEach(form => {
            form.classList.remove('ajax');

            form.onsubmit = e => {
                fetch('/api/token').then(e => e.json().then(token => {
                    // Update token
                    form.querySelector('[name="_token"]').value = token.token;

                    let options = {
                        credentials: 'same-origin',
                        headers: {
                            'X-Requested-With': 'XMLHttpRequest'
                        },
                        method: 'POST',
                        body: new FormData(form),
                    };

                    let resultsDom = form.querySelector('.result');
                    resultsDom.innerHTML = "";
                    form.classList.remove('error');

                    fetch(form.action, options).then(response => {
                        response.json().then(result => {
                            if(result.errors) {
                                form.classList.add('error');
                                for(let error in result.errors)
                                    resultsDom.innerHTML += result.errors[error] + "<br />";
                            } else {
                                resultsDom.innerHTML = result.message;
                                form.reset();
                            }
                        });
                    }).catch(e => {
                        
                    }).finally(e => {

                    });
                }));

                return false;
            }
        });
    });
    </script>
    
    <div class="row row-wrap">
        <div class="column column-67 stats">
            <h1>...</h1>
            <h4>Animais ajudados até hoje</h4>
        </div>
        <div class="column column-33 logo">
            <i class="icon icon-logo"></i>
        </div>
    </div>

    <div class="row row-wrap">
        <div class="column column-67 newsletter">
            <form action="/newsletter" method="post" class="ajax">
                <input type="hidden" name="_token" value="">
                <label for="email">Subscreva a nossa Newsletter</label>
                <input type="email" name="email" id="email" placeholder="O seu email" value="" required="">
                <button type="submit" name="subscribe" title="Subscreva a nossa Newsletter">
                    <i class="icon icon-arrow"></i>
                </button>
                <p class="result"></p>
            </form>
        </div>
        <div class="column column-33 solidarity">
            <h4>Número Solidário</h4>
            <a class="color-link" href="tel:760 300 161">760 300 161</a>
            <p>Custo da Chamada 0,60€ + IVA</p>
        </div>
    </div>

    <div class="row row-wrap" style="margin-top: 24px;">
        <div class="column column-67 social">
            <h4>Redes Sociais</h4>
            <a target="_blank" class="color-link" rel="noopener" title="Facebook" href="https://www.facebook.com/animaisderua"><i class="icon icon-facebook"></i></a>
            <a target="_blank" class="color-link" rel="noopener" title="Instagram" href="https://www.instagram.com/animaisderua/"><i class="icon icon-instagram"></i></a>
            <a target="_blank" class="color-link" rel="noopener" title="Youtube" href="https://www.youtube.com/user/animaisderuaAdR"><i class="icon icon-youtube"></i></a>
        </div>
        <div class="column column-33 contact">
            <p><a href="/form/contact" class="color-link lined light">Formulário de Contacto</a></p>
            <p><a href="/privacy-policy" class="color-link lined light">Política de privacidade</a></p>
        </div>
    </div>
  </div>
</div>
