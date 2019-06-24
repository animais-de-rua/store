<?php
/**
 * 2007-2019 PrestaShop
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
 *  @author    PrestaShop SA <contact@prestashop.com>
 *  @copyright 2007-2019 PrestaShop SA
 *  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
 *  International Registered Trademark & Property of PrestaShop SA
 */

include_once _PS_MODULE_DIR_.'paypal/classes/AbstractMethodPaypal.php';
include_once _PS_MODULE_DIR_.'paypal/controllers/front/abstract.php';

/**
 * Prepare EC payment
 */
class PaypalEcInitModuleFrontController extends PaypalAbstarctModuleFrontController
{
    public $values;
    public function init()
    {
        parent::init();
        $this->values['getToken'] = Tools::getvalue('getToken');
        $this->values['credit_card'] = Tools::getvalue('credit_card');
    }
    /**
     * @see FrontController::postProcess()
     */
    public function postProcess()
    {
        $paypal = Module::getInstanceByName('paypal');
        $method_ec = AbstractMethodPaypal::load('EC');
        try {
            $url = $method_ec->init(array('use_card' => $this->values['credit_card']));
            if ($this->values['getToken']) {
                $this->jsonValues = array('success' => true, 'token' => $method_ec->token);
            } else {
                $this->redirectUrl = $url.'&useraction=commit';
            }
        } catch (PayPal\Exception\PPConnectionException $e) {
            $this->errors['error_msg'] = $paypal->l('Error connecting to ') . $e->getUrl();
        } catch (PayPal\Exception\PPMissingCredentialException $e) {
            $this->errors['error_msg'] = $e->errorMessage();
        } catch (PayPal\Exception\PPConfigurationException $e) {
            $this->errors['error_msg'] = $paypal->l('Invalid configuration. Please check your configuration file');
        } catch (PaypalAddons\classes\PaypalException $e) {
            $this->errors['error_code'] = $e->getCode();
            $this->errors['error_msg'] = $e->getMessage();
            $this->errors['msg_long'] = $e->getMessageLong();
        } catch (Exception $e) {
            $this->errors['error_code'] = $e->getCode();
            $this->errors['error_msg'] = $e->getMessage();
        }

        if (!empty($this->errors)) {
            if ($this->values['getToken']) {
                $this->jsonValues = array('success' => false, 'redirect_link' => Context::getContext()->link->getModuleLink('paypal', 'error', $this->errors));
            } else {
                $this->redirectUrl = Context::getContext()->link->getModuleLink('paypal', 'error', $this->errors);
            }
        }
    }
}
