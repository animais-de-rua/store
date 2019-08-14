{*
 * PrestaChamps
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Commercial License
 * you can't distribute, modify or sell this code
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file
 * If you need help please contact leo@prestachamps.com
 *
 * @author    Mailchimp
 * @copyright PrestaChamps
 * @license   commercial
 *}
<div class="form-group">
    <label for="api-key" class="hidden">{l s='API key' mod='mailchimppro'}</label>
    <p id="logged-in-as-container" class="hidden">{l s='Logged in as:' mod='mailchimppro'} <b id="logged-in-as"></b></p>
    <input type="hidden" class="form-control" name="api-key" id="api-key"
           placeholder="{l s='API key' mod='mailchimppro'}" required="" value="{$apiKey}">
    <a class="btn btn-default" id="oauth2-start">
        Log in to Mailchimp
    </a>
</div>