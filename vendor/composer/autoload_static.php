<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit43896ecb4cab5730d485b6027f0cd144
{
    public static $files = array (
        'a0edc8309cc5e1d60e3047b5df6b7052' => __DIR__ . '/..' . '/guzzlehttp/psr7/src/functions_include.php',
        'c964ee0ededf28c96ebd9db5099ef910' => __DIR__ . '/..' . '/guzzlehttp/promises/src/functions_include.php',
        '37a3dc5111fe8f707ab4c132ef1dbc62' => __DIR__ . '/..' . '/guzzlehttp/guzzle/src/functions_include.php',
    );

    public static $prefixLengthsPsr4 = array (
        'P' => 
        array (
            'Psr\\Log\\' => 8,
            'Psr\\Http\\Message\\' => 17,
            'PagSeguro\\' => 10,
        ),
        'G' => 
        array (
            'GuzzleHttp\\Psr7\\' => 16,
            'GuzzleHttp\\Promise\\' => 19,
            'GuzzleHttp\\' => 11,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Psr\\Log\\' => 
        array (
            0 => __DIR__ . '/..' . '/psr/log/Psr/Log',
        ),
        'Psr\\Http\\Message\\' => 
        array (
            0 => __DIR__ . '/..' . '/psr/http-message/src',
        ),
        'PagSeguro\\' => 
        array (
            0 => __DIR__ . '/..' . '/pagseguro/pagseguro-php-sdk/source',
        ),
        'GuzzleHttp\\Psr7\\' => 
        array (
            0 => __DIR__ . '/..' . '/guzzlehttp/psr7/src',
        ),
        'GuzzleHttp\\Promise\\' => 
        array (
            0 => __DIR__ . '/..' . '/guzzlehttp/promises/src',
        ),
        'GuzzleHttp\\' => 
        array (
            0 => __DIR__ . '/..' . '/guzzlehttp/guzzle/src',
        ),
    );

    public static $prefixesPsr0 = array (
        'P' => 
        array (
            'PayPal' => 
            array (
                0 => __DIR__ . '/..' . '/paypal/rest-api-sdk-php/lib',
            ),
        ),
        'G' => 
        array (
            'Gerencianet' => 
            array (
                0 => __DIR__ . '/..' . '/gerencianet/gerencianet-sdk-php/src',
            ),
        ),
    );

    public static $classMap = array (
        'MP' => __DIR__ . '/..' . '/mercadopago/sdk/lib/mercadopago.php',
        'MPRestClient' => __DIR__ . '/..' . '/mercadopago/sdk/lib/mercadopago.php',
        'MercadoPagoException' => __DIR__ . '/..' . '/mercadopago/sdk/lib/mercadopago.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit43896ecb4cab5730d485b6027f0cd144::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit43896ecb4cab5730d485b6027f0cd144::$prefixDirsPsr4;
            $loader->prefixesPsr0 = ComposerStaticInit43896ecb4cab5730d485b6027f0cd144::$prefixesPsr0;
            $loader->classMap = ComposerStaticInit43896ecb4cab5730d485b6027f0cd144::$classMap;

        }, null, ClassLoader::class);
    }
}
