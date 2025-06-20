<?php
// This file is part of Moodle - http://moodle.org/
//
// Moodle is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Moodle is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Moodle.  If not, see <http://www.gnu.org/licenses/>.

/**
 * Version details
 *
 * @package    block_conditionalhtml
 * @copyright  1999 onwards Martin Dougiamas (http://dougiamas.com)
 * @license    http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

$plugin->version   = 2025011400;        // The current plugin version (Date: YYYYMMDDXX)
$plugin->requires  = 2022112801;        // Requires this Moodle version
$plugin->release = "4.5.0 (Build 2023080700)";
$plugin->component = 'block_conditionalhtml';      // Full name of the plugin (used for diagnostics)
$plugin->maturity = MATURITY_STABLE;
$plugin->dependencies = ['local_moodlescript'  => 2018051400];
$plugin->supported = [401, 405];

// Non moodle attributes.
$plugin->codeincrement = '4.5.0000';
$plugin->privacy = 'public';
