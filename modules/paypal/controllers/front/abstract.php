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

use Symfony\Component\HttpFoundation\JsonResponse;

/**
 * Class PaypalAbstarctModuleFrontController
 */
abstract class PaypalAbstarctModuleFrontController extends ModuleFrontController
{
    public $name = 'paypal';

    public $jsonValues;
    public $values;
    public $redirectUrl;
    public $errors;

    /**
     * @see ModuleFrontController::run
     */
    public function run()
    {
        $this->init();
        if ($this->checkAccess()) {
            // postProcess handles ajaxProcess
            $this->postProcess();
        }
        if (!empty($this->redirectUrl)) {
            Tools::redirect($this->redirectUrl);
        }
        if (!empty($this->jsonValues)) {
            $response = new JsonResponse($this->jsonValues);
            return $response->send();
        }
    }
}
