<?php
/**
 * Set the routes. Each route must have a minimum of a name, a URI and a set of
 * defaults for the URI.
 */
Route::set('company', '<directory>(/<controller>(/<action>(/<id>)))',
    array('directory' => '(company|stock)')
)->defaults(array(
    'controller' => 'welcome',
    'action'     => 'index',
));
Route::set('default', '(<controller>(/<action>(/<id>)))')
	->defaults(array(
		'controller' => 'welcome',
		'action'     => 'index',
	));
