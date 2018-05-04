-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 06 2018 г., 15:46
-- Версия сервера: 10.1.30-MariaDB
-- Версия PHP: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `text`, `short_text`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Many To Many', 'Many-to-many relations are slightly more complicated than hasOne and hasMany relationships. An example of such a relationship is a user with many roles, where the roles are also shared by other users. For example, many users may have the role of \"Admin\". To define this relationship, three database tables are needed: users, roles, and role_user. The  role_user table is derived from the alphabetical order of the related model names, and contains the user_id and role_id columns.', 'Many To Many', 1, 1, '2018-03-22 06:12:11', '2018-04-05 04:39:24'),
(2, 'What is Angular?', 'Angular is a platform that makes it easy to build applications with the web. Angular combines declarative templates, dependency injection, end to end tooling, and integrated best practices to solve development challenges. Angular empowers developers to build applications that live on the web, mobile, or the desktop', 'Angular is a platform that makes it easy to build applications with the web. Angular combines declarative templates, dependency injection, end to end tooling.', 1, 2, '2018-03-23 11:21:44', NULL),
(4, 'Writing Commands', 'In addition to the commands provided with Artisan, you may also build your own custom commands. Commands are typically stored in the app/Console/Commands directory; however, you are free to choose your own storage location as long as your commands can be loaded by Composer.', 'n addition to the commands provided with Artisan,', 15, 1, '2018-03-26 04:51:25', '2018-03-26 04:51:25'),
(5, 'Angular Language Service', 'The Angular Language Service is a way to get completions, errors, hints, and navigation inside your Angular templates whether they are external in an HTML file or embedded in annotations/decorators in a string. The Angular Language Service autodetects that you are opening an Angular file, reads your tsconfig.json file, finds all the templates you have in your application, and then provides language services for any templates that you open.', 'The Angular Language Service is a way to get compl', 15, 2, '2018-03-26 05:02:35', '2018-03-26 05:02:35'),
(6, 'Introduction to modules', 'Angular apps are modular and Angular has its own modularity system called NgModules. An NgModule is a container for a cohesive block of code dedicated to an application domain, a workflow, or a closely related set of capabilities. It can contain components, service providers, and other code files whose scope is defined by the containing NgModule. It can import functionality that is exported from other NgModules, and export selected functionality for use by other NgModules.\n\nEvery Angular app has at least one NgModule class, the root module, which is conventionally named AppModule and resides in a file named app.module.ts. You launch your app by bootstrapping the root NgModule.\n\nWhile a small application might have only one NgModule, most apps have many more feature modules. The root NgModule for an app is so named because it can include child NgModules in a hierarchy of any depth.', 'Angular apps are modular and Angular has its own m', 1, 2, '2018-03-28 03:23:41', '2018-03-28 03:23:41'),
(7, 'NgModule metadata', 'An NgModule is defined as a class decorated with @NgModule. The @NgModule decorator is a function that takes a single metadata object, whose properties describe the module. The most important properties are as follows.\n\ndeclarations—The components, directives, and pipes that belong to this NgModule.\n\nexports—The subset of declarations that should be visible and usable in the component templates of other NgModules.\n\nimports—Other modules whose exported classes are needed by component templates declared in this NgModule.\n\nproviders—Creators of services that this NgModule contributes to the global collection of services; they become accessible in all parts of the app. (You can also specify providers at the component level, which is often preferred.)\n\nbootstrap—The main application view, called the root component, which hosts all other app views. Only the root NgModule should set this bootstrap property.\n\nHere\'s a simple root NgModule definition:', 'An NgModule is defined as a class decorated with @', 1, 2, '2018-03-28 03:24:02', '2018-03-28 03:24:02'),
(8, 'NgModules and components', 'NgModules provide a compilation context for their components. A root NgModule always has a root component that is created during bootstrap, but any NgModule can include any number of additional components, which can be loaded through the router or created through the template. The components that belong to an NgModule share a compilation context.', 'NgModules provide a compilation context for their', 1, 2, '2018-03-28 03:24:24', '2018-03-28 03:24:24'),
(9, 'NgModules and JavaScript modules', 'The NgModule system is different from and unrelated to the JavaScript (ES2015) module system for managing collections of JavaScript objects. These are two different and complementary module systems. You can use them both to write your apps.\n\nIn JavaScript each file is a module and all objects defined in the file belong to that module. The module declares some objects to be public by marking them with the export key word. Other JavaScript modules use import statements to access public objects from other modules.', 'The NgModule system is different from and unrelate', 1, 2, '2018-03-28 03:24:41', '2018-03-28 03:24:41'),
(10, 'Introduction to components', 'A component controls a patch of screen called a view. For example, individual components define and control each of the following views from the Tutorial:\n\nThe app root with the navigation links.\nThe list of heroes.\nThe hero editor.\nYou define a component\'s application logic—what it does to support the view—inside a class. The class interacts with the view through an API of properties and methods.\n\nFor example, the HeroListComponent has a heroes property that returns an array of heroes that it acquires from a service. HeroListComponent also has a selectHero() method that sets a selectedHero property when the user clicks to choose a hero from that list.', 'A component controls a patch of screen called a vi', 1, 2, '2018-03-28 03:25:07', '2018-03-28 03:25:07'),
(11, 'Server Requirements', 'The Laravel framework has a few system requirements. Of course, all of these requirements are satisfied by the Laravel Homestead virtual machine, so it\'s highly recommended that you use Homestead as your local Laravel development environment.\n\nHowever, if you are not using Homestead, you will need to make sure your server meets the following requirements:', 'The Laravel framework has a few system requirement', 1, 1, '2018-03-28 03:26:08', '2018-03-28 03:26:08'),
(12, 'Via Laravel Installer', 'Make sure to place composer\'s system-wide vendor bin directory in your $PATH so the laravel executable can be located by your system. This directory exists in different locations based on your operating system; however, some common locations include:\n\nmacOS: $HOME/.composer/vendor/bin\nGNU / Linux Distributions: $HOME/.config/composer/vendor/bin\nOnce installed, the laravel new command will create a fresh Laravel installation in the directory you specify. For instance, laravel new blog will create a directory named blog containing a fresh Laravel installation with all of Laravel\'s dependencies already installed:', 'Make sure to place composer\'s system-wide vendor b', 1, 1, '2018-03-28 03:26:28', '2018-03-28 03:26:28'),
(13, 'Local Development Server', 'If you have PHP installed locally and you would like to use PHP\'s built-in development server to serve your application, you may use the serve Artisan command. This command will start a development server at http://localhost:8000:', 'If you have PHP installed locally and you would li', 1, 1, '2018-03-28 03:26:42', '2018-03-28 03:26:42'),
(14, 'Public Directory', 'After installing Laravel, you should configure your web server\'s document / web root to be the  public directory. The index.php in this directory serves as the front controller for all HTTP requests entering your application.', 'After installing Laravel, you should configure you', 1, 1, '2018-03-28 03:26:57', '2018-03-28 03:26:57'),
(15, 'Configuration Files', 'All of the configuration files for the Laravel framework are stored in the config directory. Each option is documented, so feel free to look through the files and get familiar with the options available to you.', 'All of the configuration files for the Laravel fra', 1, 1, '2018-03-28 03:27:11', '2018-03-28 03:27:11'),
(16, 'Additional Configuration', 'Laravel needs almost no other configuration out of the box. You are free to get started developing! However, you may wish to review the config/app.php file and its documentation. It contains several options such as timezone and locale that you may wish to change according to your application.', 'Laravel needs almost no other configuration out of', 1, 1, '2018-03-28 03:27:24', '2018-03-28 03:27:24'),
(17, 'Security', 'This page describes Angular\'s built-in protections against common web-application vulnerabilities and attacks such as cross-site scripting attacks. It doesn\'t cover application-level security, such as authentication (Who is this user?) and authorization (What can this user do?).\n\nFor more information about the attacks and mitigations described below, see OWASP Guide Project.\n\nYou can run the live example / download example in Stackblitz and download the code from there.', 'This page describes Angular\'s built-in protections', 15, 2, '2018-03-28 03:28:20', '2018-03-28 03:28:20'),
(18, 'Reporting vulnerabilities', 'Keep current with the latest Angular library releases. We regularly update the Angular libraries, and these updates may fix security defects discovered in previous versions. Check the Angular change log for security-related updates.\n\nDon\'t modify your copy of Angular. Private, customized versions of Angular tend to fall behind the current version and may not include important security fixes and enhancements. Instead, share your Angular improvements with the community and make a pull request.\n\nAvoid Angular APIs marked in the documentation as “Security Risk.” For more information, see the Trusting safe values section of this page.', 'Keep current with the latest Angular library relea', 15, 2, '2018-03-28 03:28:37', '2018-03-28 03:28:37'),
(19, 'Preventing cross-site scripting (XSS)', 'Cross-site scripting (XSS) enables attackers to inject malicious code into web pages. Such code can then, for example, steal user data (in particular, login data) or perform actions to impersonate the user. This is one of the most common attacks on the web.\n\nTo block XSS attacks, you must prevent malicious code from entering the DOM (Document Object Model). For example, if attackers can trick you into inserting a <script> tag in the DOM, they can run arbitrary code on your website. The attack isn\'t limited to <script> tags—many elements and properties in the DOM allow code execution, for example, <img onerror=\"...\"> and <a href=\"javascript:...\">. If attacker-controlled data enters the DOM, expect security vulnerabilities.', 'Cross-site scripting (XSS) enables attackers to in', 15, 2, '2018-03-28 03:28:53', '2018-03-28 03:28:53'),
(20, 'Angular’s cross-site scripting security model', 'To systematically block XSS bugs, Angular treats all values as untrusted by default. When a value is inserted into the DOM from a template, via property, attribute, style, class binding, or interpolation, Angular sanitizes and escapes untrusted values.\n\nAngular templates are the same as executable code: HTML, attributes, and binding expressions (but not the values bound) in templates are trusted to be safe. This means that applications must prevent values that an attacker can control from ever making it into the source code of a template. Never generate template source code by concatenating user input and templates. To prevent these vulnerabilities, use the offline template compiler, also known as template injection.', 'To systematically block XSS bugs, Angular treats a', 15, 2, '2018-03-28 03:29:10', '2018-03-28 03:29:10'),
(21, 'Sanitization and security contexts', 'Sanitization is the inspection of an untrusted value, turning it into a value that\'s safe to insert into the DOM. In many cases, sanitization doesn\'t change a value at all. Sanitization depends on context: a value that\'s harmless in CSS is potentially dangerous in a URL.\n\nAngular defines the following security contexts:\n\nHTML is used when interpreting a value as HTML, for example, when binding to innerHtml.\nStyle is used when binding CSS into the style property.\nURL is used for URL properties, such as <a href>.\nResource URL is a URL that will be loaded and executed as code, for example, in <script src>.\nAngular sanitizes untrusted values for HTML, styles, and URLs; sanitizing resource URLs isn\'t possible because they contain arbitrary code. In development mode, Angular prints a console warning when it has to change a value during sanitization.', 'Sanitization is the inspection of an untrusted val', 15, 2, '2018-03-28 03:29:23', '2018-03-28 03:29:23'),
(22, 'Introduction', 'Laravel\'s localization features provide a convenient way to retrieve strings in various languages, allowing you to easily support multiple languages within your application. Language strings are stored in files within the resources/lang directory. Within this directory there should be a subdirectory for each language supported by the application:', 'Laravel\'s localization features provide a convenie', 15, 1, '2018-03-28 03:30:01', '2018-03-28 03:30:01'),
(23, 'Configuring The Locale', 'The default language for your application is stored in the config/app.php configuration file. Of course, you may modify this value to suit the needs of your application. You may also change the active language at runtime using the setLocale method on the App facade:', 'The default language for your application is store', 15, 1, '2018-03-28 03:30:18', '2018-03-28 03:30:18'),
(24, 'Determining The Current Locale', 'You may use the getLocale and isLocale methods on the App facade to determine the current locale or check if the locale is a given value:Typically, translation strings are stored in files within the resources/lang directory. Within this directory there should be a subdirectory for each language supported by the application:', 'You may use the getLocale and isLocale methods on', 15, 1, '2018-03-28 03:30:40', '2018-03-28 03:30:40');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `category_name`) VALUES
(1, 'laravel'),
(2, 'angular');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `parent_id`, `user_id`, `article_id`, `content`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 1, 'updateT', '2018-03-23 14:16:40', '2018-04-05 05:42:51'),
(2, NULL, 1, 1, 'updateOnceMoreTime', '2018-03-22 22:39:22', '2018-04-05 05:19:55'),
(3, NULL, 1, 2, 'Great article! Thanks a lot!\r\n\r\nThere’s a typo on the many to many polymorphic migration. I think the “driver_type” should be a string, not an integer.', '2018-03-22 22:23:00', NULL),
(4, NULL, 1, 2, 'Great article. I like the simplicity you explain those things.', '2018-03-23 07:14:42', NULL),
(5, NULL, 15, 1, 'updateOnceMoreTime', '2018-03-23 05:00:00', '2018-04-05 05:19:55'),
(6, NULL, 15, 1, 'updateOnceMoreTime', '2018-03-23 07:57:48', '2018-04-05 05:19:55'),
(7, NULL, 15, 2, 'Great article! Thanks a lot!\r\n\r\nThere’s a typo on the many to many polymorphic migration. I think the “driver_type” should be a string, not an integer.', '2018-03-23 11:22:00', NULL),
(8, NULL, 15, 2, 'Great article. I like the simplicity you explain those things.', '2018-03-23 05:43:00', NULL),
(9, 1, 1, 1, 'updateOnceMoreTime', '2018-03-23 14:00:00', '2018-04-05 05:19:55'),
(10, 1, 1, 1, 'updateOnceMoreTime', '2018-03-20 12:00:00', '2018-04-05 05:19:55'),
(11, 3, 1, 2, 'Great article! Thanks a lot!\r\n\r\nThere’s a typo on the many to many polymorphic migration. I think the “driver_type” should be a string, not an integer.', '2018-03-23 15:00:00', NULL),
(12, 3, 1, 2, 'Great article. I like the simplicity you explain those things.', '2018-03-22 22:00:22', NULL),
(13, 3, 15, 1, 'updateOnceMoreTime', '2018-03-23 12:00:00', '2018-04-05 05:19:55'),
(14, 3, 15, 1, 'updateOnceMoreTime', '2018-03-23 07:00:00', '2018-04-05 05:19:55'),
(15, 5, 15, 2, 'Great article! Thanks a lot!\r\n\r\nThere’s a typo on the many to many polymorphic migration. I think the “driver_type” should be a string, not an integer.', '2018-03-23 12:00:00', NULL),
(16, 5, 15, 2, 'Great article. I like the simplicity you explain those things.', '2018-03-23 10:00:00', NULL),
(18, NULL, 1, 1, 'updateOnceMoreTime', '2018-04-04 05:18:41', '2018-04-05 05:19:55');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2018_03_16_122235_create_categories_table', 1),
(9, '2018_03_16_122356_create_articles_table', 1),
(10, '2018_03_16_151739_create_comments_table', 1),
(11, '2018_03_26_105255_create__restore_pass_table', 2),
(12, '2018_03_26_111128_create_restore_passes_table', 3),
(13, '2018_03_30_085817_update_restore_passwords_table', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00e93fe23c486f33373c5c4d2a303df4408a80b48f2f262471f7e20effc88af6d7ecca24567a16fc', 1, 3, 'MyApp', '[]', 1, '2018-04-05 06:09:45', '2018-04-05 06:09:45', '2019-04-05 09:09:45'),
('01e378bbac4ccc0eb92124f91c1f0ed44a596c84fab4e183259b41ac22cef734518d4e375e49d112', 1, 3, 'MyApp', '[]', 1, '2018-04-03 13:17:13', '2018-04-03 13:17:13', '2019-04-03 16:17:13'),
('035692adfe9f31ed3e8a00466f2df43fb6a91e589b35610e5e72df3626a8bf544dbd81cced370496', 1, 3, 'MyApp', '[]', 0, '2018-04-04 11:47:10', '2018-04-04 11:47:10', '2019-04-04 14:47:10'),
('08161d790bed6cfd436641de7cf97d20e0f793c7231e4878debbb49619c083a763155440ed1a275b', 1, 3, 'MyApp', '[]', 0, '2018-04-04 09:13:40', '2018-04-04 09:13:40', '2019-04-04 12:13:40'),
('09569c8c76eee2ee686519c224876b66e62e5875b3ccb4ec761b1b4437bfed97636a90babb6a031e', 1, 3, 'MyApp', '[]', 0, '2018-04-04 11:52:24', '2018-04-04 11:52:24', '2019-04-04 14:52:24'),
('0a72907a46dbadab613d77b082725c24f7e196d34972e670f5eb59bed243eb648681eb785dfb0aff', 1, 3, 'MyApp', '[]', 1, '2018-03-29 08:32:19', '2018-03-29 08:32:19', '2019-03-29 11:32:19'),
('0e9f957d06aa90e2ee51a0582114d2b1f34cefbe16e5571bb59e8759355bacb77e37d41b8d34aad7', 1, 3, 'MyApp', '[]', 0, '2018-04-04 05:15:44', '2018-04-04 05:15:44', '2019-04-04 08:15:44'),
('0f2bc72330250a44f50a877575958ac72f12c1b7b70187f68419eacc2fc845d638c7e0fa1fa844f5', 1, 3, 'MyApp', '[]', 0, '2018-04-05 04:53:59', '2018-04-05 04:53:59', '2019-04-05 07:53:59'),
('0fab5e43a6b707b567fd2c9e189bc2f8d288ce77448626c5f8cc10dc81ded8faf0c14c3ea28c94f8', 1, 3, 'MyApp', '[]', 0, '2018-04-04 05:02:29', '2018-04-04 05:02:29', '2019-04-04 08:02:29'),
('11ec563e990bcece80508406211c3c978166586993628ebf7fe5914e4d61de23830eef4398002e63', 17, 3, 'MyApp', '[]', 0, '2018-04-05 06:13:39', '2018-04-05 06:13:39', '2019-04-05 09:13:39'),
('129187f443ddfdcc1f6d3000d132e6e947cea496fac695a9cba62fb4f4a3147e87633872964567d7', 1, 3, 'MyApp', '[]', 0, '2018-04-03 11:48:53', '2018-04-03 11:48:53', '2019-04-03 14:48:53'),
('13e0672f82bbeddb3af7812ad40b5d8ce7a23ae39adaa857a7e3474687ce2b69c905f0a49d113568', 1, 3, 'MyApp', '[]', 0, '2018-04-04 09:14:48', '2018-04-04 09:14:48', '2019-04-04 12:14:48'),
('13f04a6faa4ca089046a8690e69e8926fb9008daf9b8500710bbc535530a14f455439635c5272ffd', 1, 3, 'MyApp', '[]', 0, '2018-04-05 05:26:26', '2018-04-05 05:26:26', '2019-04-05 08:26:26'),
('1a338f2768bd61e5789d779cbbd08c5d132dfdef31d3dad8e06512cd4f5836bd02cc9224a0c531eb', 1, 3, 'MyApp', '[]', 0, '2018-04-04 05:43:10', '2018-04-04 05:43:10', '2019-04-04 08:43:10'),
('1eaecf8aeb30fdc322f9a51c497ee9ceac395eef03983913b15822b79ae54850a19a05c76458df51', 15, 3, 'MyApp', '[]', 1, '2018-04-03 13:29:58', '2018-04-03 13:29:58', '2019-04-03 16:29:58'),
('213efcf8d4b967d0acc09d50f594fef4422b4912d1b51dc7618997f166a15abf01acecb48fbe1c02', 1, 3, 'MyApp', '[]', 0, '2018-04-04 11:49:30', '2018-04-04 11:49:30', '2019-04-04 14:49:30'),
('21f0fe0306dbb4e5e09b8e3fe37da4e7676adb09a6571411e8935bfd9d6f4a171b66b4573f518424', 1, 3, 'MyApp', '[]', 0, '2018-04-04 11:48:43', '2018-04-04 11:48:43', '2019-04-04 14:48:43'),
('23b86bb13687aed278a1c9ab8a3fce39b054d32eabafaffdd5e1c3afbc4c0fef1856cfe1c7ee8e80', 1, 3, 'MyApp', '[]', 0, '2018-04-04 12:06:43', '2018-04-04 12:06:43', '2019-04-04 15:06:43'),
('2c328c93f60ef5c3084d237ddc111752682b5887fbb610cf91aff88f301a785a14352e257817b667', 1, 3, 'MyApp', '[]', 0, '2018-04-05 05:35:50', '2018-04-05 05:35:50', '2019-04-05 08:35:50'),
('39046ccd00186da2428b4e7a8786324fd754bde2a67198dd16eb2e07cbe371a8e76fa68039038ac0', 1, 3, 'MyApp', '[]', 0, '2018-04-05 04:31:38', '2018-04-05 04:31:38', '2019-04-05 07:31:38'),
('3cba67aef33fdeb0856eef006f114f32ce832bf8eae36dadbebbf4c1f4b99c60fdee761865b01152', 1, 3, 'MyApp', '[]', 0, '2018-04-04 04:46:58', '2018-04-04 04:46:58', '2019-04-04 07:46:58'),
('47ae39d809273b012978794b7514d90cb0a82b6818a1cac71054a72ecbc608e0f6765f9e63bbf7f6', 19, 3, 'MyApp', '[]', 0, '2018-04-05 06:24:14', '2018-04-05 06:24:14', '2019-04-05 09:24:14'),
('4f81ab3b5b240969590562635118a877b5ab90ac7aa1f049fa6f361693ac1ca1521cdfaf214656c3', 1, 3, 'MyApp', '[]', 0, '2018-04-04 11:58:51', '2018-04-04 11:58:51', '2019-04-04 14:58:51'),
('511d314f943d93072db697cd9db7d21c56a9a88787dc4839eb8b27ea4cb4c3f2c5226d0a3d2abce9', 1, 3, 'MyApp', '[]', 0, '2018-04-05 05:23:04', '2018-04-05 05:23:04', '2019-04-05 08:23:04'),
('51eade6db010dfce6fc17eca8eca9660c04c9dce6fbcf973d029daaf559e692d08ab64d8530494b8', 1, 3, 'MyApp', '[]', 0, '2018-04-03 13:02:55', '2018-04-03 13:02:55', '2019-04-03 16:02:55'),
('5252f2ab5e30311d31904a5167bb1de3b2be61a1d9a86a10d6be10a406699caf247670bfbdd65256', 1, 3, 'MyApp', '[]', 0, '2018-04-04 09:11:10', '2018-04-04 09:11:10', '2019-04-04 12:11:10'),
('53b75f4e9b73bc00fad65087f7cf33514664da4cafa9494ea62632bf08a10136f70d6793f36b1e11', 1, 3, 'MyApp', '[]', 0, '2018-04-05 05:28:21', '2018-04-05 05:28:21', '2019-04-05 08:28:21'),
('57ed7c9285485bf206797036b65c8d18a835f3203d77e8d314b87955bda80d66400f2114d2236a7e', 1, 3, 'MyApp', '[]', 0, '2018-04-04 08:43:40', '2018-04-04 08:43:40', '2019-04-04 11:43:40'),
('58a090ae2f66f37d0dc976c02b6193588965a7dde53a932309beab0190a92c70c0106f3674eac1ea', 1, 3, 'MyApp', '[]', 0, '2018-03-29 12:45:32', '2018-03-29 12:45:32', '2019-03-29 15:45:32'),
('5abc4717ccb465ab9be527764194520416be22b41a4b6d51c198583bf0f1ce0870719208d79456e5', 1, 3, 'MyApp', '[]', 1, '2018-04-03 13:24:21', '2018-04-03 13:24:21', '2019-04-03 16:24:21'),
('62a5f94ec896e110093729b8aac59d468433f903c5cfc7c4cbe2b4d910f8fb2468edeb86cf386ba1', 1, 3, 'MyApp', '[]', 0, '2018-04-04 12:01:36', '2018-04-04 12:01:36', '2019-04-04 15:01:36'),
('6847c3ba5cb0cf375835ac077840cc8f7b2212fcedc79f3a47eca2c12baf58a33d309b02ab844560', 1, 3, 'MyApp', '[]', 0, '2018-04-04 04:49:31', '2018-04-04 04:49:31', '2019-04-04 07:49:31'),
('6d4a9fe4e33e6ca5ec05e239e1e98ba8549d1592fd8008b7acc61d5bb6f7a5514185b82581436158', 1, 3, 'MyApp', '[]', 0, '2018-04-04 08:50:32', '2018-04-04 08:50:32', '2019-04-04 11:50:32'),
('6de99cb4c97474456cf0ed363bfb235e1c1911a8ffd392f7cc5d7d048364b6f9cbe7aeca5318cae7', 1, 3, 'MyApp', '[]', 0, '2018-04-04 10:52:04', '2018-04-04 10:52:04', '2019-04-04 13:52:04'),
('718ae7b363566ca2287f490bf66f594b284d6dc818860921a9d2f5eb5ed8b614c95c6b12aa216da3', 1, 3, 'MyApp', '[]', 1, '2018-04-03 13:23:45', '2018-04-03 13:23:45', '2019-04-03 16:23:45'),
('72424a76069cbea7bb0c41edc816693aae4951e41ac7cd739dada8e45ff9cfae6855523713b44069', 1, 3, 'MyApp', '[]', 0, '2018-03-29 12:42:18', '2018-03-29 12:42:18', '2019-03-29 15:42:18'),
('747807fec45e608ffe6e6cdb4c5ad4a41e5de91c758167be6d484b64dbe17feea92984dc67204056', 1, 3, 'MyApp', '[]', 0, '2018-04-03 12:24:44', '2018-04-03 12:24:44', '2019-04-03 15:24:44'),
('770211ebc8aea05d42894e5333b8fd55afcf9fcd39e0c43b12d954e165b34371c4b4b23280efeb55', 1, 3, 'MyApp', '[]', 1, '2018-03-29 08:47:20', '2018-03-29 08:47:20', '2019-03-29 11:47:20'),
('798e2fb11a4237e4725811513c6f012f8c0e9f3e9b321167453f774a559644d7c66ba0c06ddeadaa', 1, 3, 'MyApp', '[]', 1, '2018-03-29 11:07:51', '2018-03-29 11:07:51', '2019-03-29 14:07:51'),
('80fd3a949344d26e2ee82fb6f067d430f5451b0f3727767482047c1556056f4746f489bd06326447', 1, 3, 'MyApp', '[]', 0, '2018-04-05 04:16:03', '2018-04-05 04:16:03', '2019-04-05 07:16:03'),
('8b8d9a69fee871f022077bddd15404346881a46cacae293d3a8f8b4b2197f35d86f2c64ea8a8338f', 1, 3, 'MyApp', '[]', 0, '2018-04-04 10:13:58', '2018-04-04 10:13:58', '2019-04-04 13:13:58'),
('8d3775accc5c0ce4ef0aa6e71b10f6bbc48e32285193582f7e4fc6d6855af689e281550e2680d1bf', 1, 3, 'MyApp', '[]', 0, '2018-04-03 13:04:14', '2018-04-03 13:04:14', '2019-04-03 16:04:14'),
('90926b1b69d1d63febf95496c619ebf2ef2ad7808d68bff9eceab965b30478eee25cd37dfe302d15', 1, 3, 'MyApp', '[]', 0, '2018-04-04 12:00:37', '2018-04-04 12:00:37', '2019-04-04 15:00:37'),
('964aa2471e623cd80dd85e5046f340532b7c223fda22c501a83375ee1c68fd90cec2ee3a5a7dccc2', 1, 3, 'MyApp', '[]', 0, '2018-04-04 10:16:31', '2018-04-04 10:16:31', '2019-04-04 13:16:31'),
('9720b5471c621e600c52bb3e892d72aed48a21f74c09fe97bb1a34b10c7a66a2487168ba8d77c360', 1, 3, 'MyApp', '[]', 0, '2018-04-05 04:33:01', '2018-04-05 04:33:01', '2019-04-05 07:33:01'),
('984336a74a47d39508ce83b14e02062617cd5128c3fb837beab5d58717fdb53f084e47c26b318a1e', 1, 3, 'MyApp', '[]', 0, '2018-04-03 12:59:03', '2018-04-03 12:59:03', '2019-04-03 15:59:03'),
('9e0f27c161eb8995033dd43905b1d712f67aae4efa2e75e4db2037a3e3fbb4af3819ee0d25e8f1ff', 1, 3, 'MyApp', '[]', 0, '2018-04-03 12:27:05', '2018-04-03 12:27:05', '2019-04-03 15:27:05'),
('9eb3757dd37ca4ed4cadf096259790eca82d6d741aebc447ddfdc3ba677c781a888dc7c9e5e55216', 1, 3, 'MyApp', '[]', 1, '2018-04-03 13:20:44', '2018-04-03 13:20:44', '2019-04-03 16:20:44'),
('9fa15fcc318d7c39e5fc7a303267203a578a8cedfb0398947c781f15b7472721605bb9c39c0aa752', 1, 3, 'MyApp', '[]', 0, '2018-04-05 06:41:09', '2018-04-05 06:41:09', '2019-04-05 09:41:09'),
('9ff959f82b9125e12049ce7a8d1b329fc313c972ad2e259c3d8060d933d1c2f0626db54aa7d6cfa0', 1, 3, 'MyApp', '[]', 1, '2018-04-03 13:30:32', '2018-04-03 13:30:32', '2019-04-03 16:30:32'),
('a24faf158614fd24eb5106c5d2a478ec7a00439a93225eb3d64c207fc0e7bc39fc7053d4b9fc608e', 1, 3, 'MyApp', '[]', 0, '2018-04-04 09:16:00', '2018-04-04 09:16:00', '2019-04-04 12:16:00'),
('a4e782af63808833451870e918a2b661fd43dd8425843ddd2145054eade444133b294ff272f90841', 1, 3, 'MyApp', '[]', 0, '2018-04-03 12:00:06', '2018-04-03 12:00:06', '2019-04-03 15:00:06'),
('a81e2c88490c060cc8baab43f611376ab2b1707a59fad2d98db9ac801ec28e14fc3b2bc2fed826ee', 1, 3, 'MyApp', '[]', 0, '2018-04-04 12:29:46', '2018-04-04 12:29:46', '2019-04-04 15:29:46'),
('abc9758c1c2fe5237d5874895faf2a24080dc47cd1862d851cbe417cff671ba53d85244aea574b1f', 1, 3, 'MyApp', '[]', 0, '2018-04-03 11:46:53', '2018-04-03 11:46:53', '2019-04-03 14:46:53'),
('abfb46f89cec6778d7db438037fa3029a2f1ae96fbfff94fcad3a2fa40ef50070ae1eb32b5470126', 1, 3, 'MyApp', '[]', 1, '2018-04-03 13:41:57', '2018-04-03 13:41:57', '2019-04-03 16:41:57'),
('b080ffa3bde0617a25cf38080ec8b3a68f68f8d0b637311b3becd3f2041e3475df023ea0a8554325', 1, 3, 'MyApp', '[]', 0, '2018-03-29 12:44:03', '2018-03-29 12:44:03', '2019-03-29 15:44:03'),
('b0ccc754cc89672bd7d1e8c0d6aea422177711fb21b52e81d53ecbc07a45eca95122c1827d891027', 1, 3, 'MyApp', '[]', 0, '2018-04-04 05:45:41', '2018-04-04 05:45:41', '2019-04-04 08:45:41'),
('b2b6736a5fad8cc55eac44f24a8e040826f408588a4d840cf354009c324c2f766bb3e8488a74ac13', 1, 3, 'MyApp', '[]', 0, '2018-04-04 11:51:50', '2018-04-04 11:51:50', '2019-04-04 14:51:50'),
('b4ed5e890c4688c943ce0d5669521f2b5d8a30ac981b66697a46976a1a54ffe7e69c887a679a4dab', 19, 3, 'MyApp', '[]', 0, '2018-04-05 06:18:54', '2018-04-05 06:18:54', '2019-04-05 09:18:54'),
('ba071cbefb8893cfcf0385876f490d12ffed4a1adfac57518176db170b6132b9ccbd8fb3d3badf13', 1, 3, 'MyApp', '[]', 1, '2018-03-29 08:50:30', '2018-03-29 08:50:30', '2019-03-29 11:50:30'),
('be23b3ae9cd3c738519cca900dd857a370adf3565fd8a0bd384bd6a99be995d955b32864344afec1', 1, 3, 'MyApp', '[]', 0, '2018-04-04 10:12:34', '2018-04-04 10:12:34', '2019-04-04 13:12:34'),
('be27217d3ba39700287915724e9f7691f707fdd82d191e16d9e334bb0e0c1405aa624d32e1f90180', 1, 3, 'MyApp', '[]', 0, '2018-04-04 09:12:30', '2018-04-04 09:12:30', '2019-04-04 12:12:30'),
('be3ce6c65a200b04e8fd98530d761a215b0724679c881031b29ae1a10c3d9192a3edc728058551d2', 1, 3, 'MyApp', '[]', 0, '2018-04-04 10:07:13', '2018-04-04 10:07:13', '2019-04-04 13:07:13'),
('bea37ef8f4fadcc3f024c925d781c3bb6b6f3cad55b660ab8d79a309a80975ec51bf91dd64b279cd', 1, 3, 'MyApp', '[]', 1, '2018-04-03 13:26:41', '2018-04-03 13:26:41', '2019-04-03 16:26:41'),
('bedb544268ad55a559046181009e29fce39ce17a2edd0fe57040f41645d3dd9566b24227872f7caf', 1, 3, 'MyApp', '[]', 0, '2018-04-03 11:46:39', '2018-04-03 11:46:39', '2019-04-03 14:46:39'),
('bfddce46d1676bfea0c4a9c4b0daf03a7b156b4ba1ad6256dbd69f91c48b6cd9c33e4322f4b47b78', 1, 3, 'MyApp', '[]', 0, '2018-04-04 09:25:19', '2018-04-04 09:25:19', '2019-04-04 12:25:19'),
('c0526ffd7c8fd1ed8dd0b9df30c0698415f8f644740dbdf83b2e978edd9a394b227e376de25436c7', 1, 3, 'MyApp', '[]', 0, '2018-04-04 05:24:18', '2018-04-04 05:24:18', '2019-04-04 08:24:18'),
('c2e781aaa0447542fcfdb9031fc6edb24a8fb17a4335707998c0093b4241bf3aaed6ab66b0847124', 1, 3, 'MyApp', '[]', 0, '2018-04-04 09:38:31', '2018-04-04 09:38:31', '2019-04-04 12:38:31'),
('c3f764a04c8577c9e9747b8965d0d1c70ed221b47655a74e3279a0f641b9e59915845918959df132', 18, 3, 'MyApp', '[]', 0, '2018-04-05 06:16:56', '2018-04-05 06:16:56', '2019-04-05 09:16:56'),
('c65cd64fe06c8d87a54e5a392c04c6059a4751563285782eeb7107dc4c7a7354749b7d6e283c4db6', 1, 3, 'MyApp', '[]', 0, '2018-03-29 08:26:54', '2018-03-29 08:26:54', '2019-03-29 11:26:54'),
('c9b440cbd99835648476966b1bd9788a2992a5a66dc20163ac99a07480bd640412fd2326c4c6ee06', 1, 3, 'MyApp', '[]', 0, '2018-04-05 04:39:07', '2018-04-05 04:39:07', '2019-04-05 07:39:07'),
('cc0c8dbf9afc2476a22e4ba84ce9dd5c5d2431857679e9ad0c05dba85e18314d209cecb03cc74b7f', 1, 3, 'MyApp', '[]', 0, '2018-04-04 05:23:22', '2018-04-04 05:23:22', '2019-04-04 08:23:22'),
('cd828c129e998b37c7bc66a931d365a13aef0ed40d9f9046c26e580dc92ccc66e4ff509890a297bb', 1, 3, 'MyApp', '[]', 0, '2018-04-04 09:17:56', '2018-04-04 09:17:56', '2019-04-04 12:17:56'),
('cff57eda28c92b8e183588b60524ce401619cbf1c1bac79df13e7e8ed2f40356b3599555f45e20b5', 1, 3, 'MyApp', '[]', 0, '2018-04-03 12:00:49', '2018-04-03 12:00:49', '2019-04-03 15:00:49'),
('d108dc95b58ff7b2ab2f6d81fc3572106bf5454ca96a09bcf208b7f1abc01f40666bff712191ead4', 1, 3, 'MyApp', '[]', 1, '2018-04-04 04:39:13', '2018-04-04 04:39:13', '2019-04-04 07:39:13'),
('d11834569f1f35a6616457e92fa90e3ee4cf1d7bffa834b4355d37615314b0dcfb483b6277970965', 1, 3, 'MyApp', '[]', 0, '2018-04-04 11:58:04', '2018-04-04 11:58:04', '2019-04-04 14:58:04'),
('d2d79b4d81d822a5fc29b3402e8787a68467301a11dd82a9e75910e1c9f4fd513bccfd3dd743ee21', 1, 3, 'MyApp', '[]', 0, '2018-04-05 05:32:14', '2018-04-05 05:32:14', '2019-04-05 08:32:14'),
('de6bd64cede189911a92cbfbbf9310aa1da181f4228789132a636d7ac563496b1cfb48c8b9c5ea9a', 1, 3, 'MyApp', '[]', 0, '2018-04-04 04:44:59', '2018-04-04 04:44:59', '2019-04-04 07:44:59'),
('de7f63280ad21a51f35119e0f10d0fd994b8f945cbcb458ecf19285b9f4a5404cbc9a0c4c1eb966d', 1, 3, 'MyApp', '[]', 0, '2018-04-04 09:09:15', '2018-04-04 09:09:15', '2019-04-04 12:09:15'),
('e37126f552d31259af66bcc98f5620a7a7088f06683cf272ca610cdd85c467de026f8e0971ee5942', 1, 3, 'MyApp', '[]', 0, '2018-04-03 12:18:20', '2018-04-03 12:18:20', '2019-04-03 15:18:20'),
('e3e4ec1f0795fd49979a95f2cc54fe82803523f2e49ae21d21fdaa381b14a8b4fc7943e4e11e3f26', 1, 3, 'MyApp', '[]', 0, '2018-04-04 12:25:28', '2018-04-04 12:25:28', '2019-04-04 15:25:28'),
('e41f9149cb5470e03621e8641ce12008b59b4a141d38dfe015c354276b6d0f78f2537ed8a64eb6b8', 1, 3, 'MyApp', '[]', 0, '2018-04-04 11:53:19', '2018-04-04 11:53:19', '2019-04-04 14:53:19'),
('e443044410a2796dea439cfec3c0763647c705dcd152030fa773cce7315ee46bfab98ee296f2b99b', 19, 3, 'MyApp', '[]', 0, '2018-04-05 06:18:05', '2018-04-05 06:18:05', '2019-04-05 09:18:05'),
('e4e81d8f72963603377bf56c8b4fa11132fd97fc5dc919bb9c2d2f821c105d826d6bec05091d514e', 1, 3, 'MyApp', '[]', 1, '2018-04-03 13:18:45', '2018-04-03 13:18:45', '2019-04-03 16:18:45'),
('e72e3a335c27397c09f7c8a5c53e941696a2f8a0f2dc93bbd708b2aa9550c8b343bd0394c8957b57', 1, 3, 'MyApp', '[]', 0, '2018-04-05 05:24:47', '2018-04-05 05:24:47', '2019-04-05 08:24:47'),
('e8779234f66a2d1a3a7e97c75eac1d0c6e51cc75a4f28e4933e12c75bf81aa589c75a3bdc864a76d', 1, 3, 'MyApp', '[]', 0, '2018-04-03 11:53:40', '2018-04-03 11:53:40', '2019-04-03 14:53:40'),
('ec1b549515200ae9060bd7b825de9dde5a49a55c432c93feae10de8864e6dab325c4c923ad0dfd48', 1, 3, 'MyApp', '[]', 0, '2018-04-04 04:58:49', '2018-04-04 04:58:49', '2019-04-04 07:58:49'),
('ee96f81fefc12b20a28aa0bea0e8623f57cfc29ceac2a4e902ae9066891391fa8bb3750495d15b56', 1, 3, 'MyApp', '[]', 0, '2018-04-04 09:24:33', '2018-04-04 09:24:33', '2019-04-04 12:24:33'),
('ef3ffd04dfa975d04e7e7e22eba0cf8762dc5dcda5385ec938a23f90b4a6f1ce5cf93eb0ddc98052', 16, 3, 'MyApp', '[]', 0, '2018-03-30 04:09:35', '2018-03-30 04:09:35', '2019-03-30 07:09:35'),
('ef75d84149f1ce5f4aa2aee21bb7bad221bde5db4a0c161b9f0232f7d0f00e5e1db681b47ef22d9d', 1, 3, 'MyApp', '[]', 0, '2018-04-03 12:53:54', '2018-04-03 12:53:54', '2019-04-03 15:53:54'),
('f0d3e0aa406e797f38fd5266e1ee0e7f028bc113cf25895cd4e2cfe5162a0235e0a8bc3352c62165', 1, 3, 'MyApp', '[]', 1, '2018-04-04 05:47:57', '2018-04-04 05:47:57', '2019-04-04 08:47:57'),
('f15f11c8f9a312bf89fbc86456d3ab6afd00bbfe32e88a836e323667e1a4d03e565ec04aaff36398', 1, 3, 'MyApp', '[]', 1, '2018-04-04 05:18:38', '2018-04-04 05:18:38', '2019-04-04 08:18:38'),
('f2c658bf21624301d9142bf28acf8667b994bc07a996ec74eec583bde519680cb14832c9c2d85d2a', 1, 3, 'MyApp', '[]', 0, '2018-04-04 10:06:17', '2018-04-04 10:06:17', '2019-04-04 13:06:17'),
('f3ffbf0b399d23bc4a8aab3994c70051994854865004a057b419480fd28f7f48e02d5cb3b906cb19', 1, 3, 'MyApp', '[]', 0, '2018-04-04 10:15:38', '2018-04-04 10:15:38', '2019-04-04 13:15:38'),
('fa9a60221d70282912c565bb3d66147b7889fa6d38e6f7ae051ba9346cd66440596f2c8675febe29', 1, 3, 'MyApp', '[]', 0, '2018-04-05 04:55:47', '2018-04-05 04:55:47', '2019-04-05 07:55:47'),
('fd8a0517a93e18a9833758348f3f86f346f0696394d39cdae1fa780d481a9006fed36c166e3be55c', 1, 3, 'MyApp', '[]', 1, '2018-04-03 13:28:06', '2018-04-03 13:28:06', '2019-04-03 16:28:06'),
('ff7c379d60a47430c6ec8f8eeb82564233d81ae08a3e4751df116aa721a91a8f5d2705d3c1fa4903', 1, 3, 'MyApp', '[]', 0, '2018-04-04 05:05:43', '2018-04-04 05:05:43', '2019-04-04 08:05:43');

-- --------------------------------------------------------

--
-- Структура таблицы `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'pqEFu7Ly70VWX6JTXwgwuZnbXfLv4Ymx1oufdvIJ', 'http://localhost', 1, 0, 0, '2018-03-21 06:16:47', '2018-03-21 06:16:47'),
(2, NULL, 'Laravel Password Grant Client', 'hLmxHOK2E2qhWNy1OM50VQpeetXU53JMVgBGW82K', 'http://localhost', 0, 1, 0, '2018-03-21 06:16:47', '2018-03-21 06:16:47'),
(3, NULL, 'Laravel Personal Access Client', 'qlqX73cvMHlDcdd94kavweJm8x0blz1DRRMHYnzD', 'http://localhost', 1, 0, 0, '2018-03-28 10:45:46', '2018-03-28 10:45:46'),
(4, NULL, 'Laravel Password Grant Client', '6aytqAcqV564pYuBtDVCSMfX3MiO61BkZEiHmfqm', 'http://localhost', 0, 1, 0, '2018-03-28 10:45:47', '2018-03-28 10:45:47');

-- --------------------------------------------------------

--
-- Структура таблицы `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-03-21 06:16:47', '2018-03-21 06:16:47'),
(2, 3, '2018-03-28 10:45:47', '2018-03-28 10:45:47');

-- --------------------------------------------------------

--
-- Структура таблицы `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `restore_passwords`
--

CREATE TABLE `restore_passwords` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `restore_passwords`
--

INSERT INTO `restore_passwords` (`id`, `email`, `key`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'kabanusha28@gmail.com', '3b4bd0217ba67e917322d8c4f25eda83', '2018-03-30 06:28:01', '2018-03-30 06:28:01', 1),
(2, 'kabanusha28@gmail.com', '6ef23551009806241e40dcc0396fc982', '2018-03-30 06:29:46', '2018-03-30 06:29:46', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('user','admin') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Vlad', 'kabanusha28@gmail.com', '$2y$10$ZXPlH5801fexjyKko2a7cefy8EyVHntuqaw2KfffG3Pr1u4zlMFGy', NULL, 'admin', '2018-03-21 06:27:15', '2018-04-05 06:33:37'),
(15, 'Tatyana', 'tata@gmail.com', '$2y$10$Y5h3nHBYFB1bxQ4noqo1j.lmzRh6.F.t/YE1ELtqAH6UI2LLnzha.', NULL, 'user', '2018-03-21 15:07:41', '2018-03-21 15:07:41'),
(16, 'Alex', 'alex@gmail.com', '$2y$10$XO8MMzcibw.8iIeXomG5R.aajNeX/Y/FHYJ9KSAfYMDJsLzHIfxGO', NULL, 'user', '2018-03-30 04:09:34', '2018-03-30 04:09:34'),
(17, 'Evgenii', 'envgen@gmail.com', '$2y$10$pab9ZCWkyjuc/bN5H5lNuuGruqmsgGbAwCLd78fy7yaOWq5koiEGy', NULL, 'user', '2018-04-05 06:13:39', '2018-04-05 06:13:39'),
(18, 'Maria', 'mari@gmail.com', '$2y$10$HY.WC2FtzLKb/39wQE9vFeMBuUuo6LhJ4poGz354f/ATRsRbz5CYm', NULL, 'user', '2018-04-05 06:16:55', '2018-04-05 06:16:55'),
(19, 'Maks', 'maks@gmail.com', '$2y$10$1DtePMEp1pd0QZXHe1LRNuUSkQcVytaqDan6ulSyHkscVMu.HNwOe', NULL, 'user', '2018-04-05 06:18:05', '2018-04-05 06:18:05');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_category_id_foreign` (`category_id`),
  ADD KEY `articles_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_parent_id_foreign` (`parent_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_article_id_foreign` (`article_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Индексы таблицы `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Индексы таблицы `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Индексы таблицы `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `restore_passwords`
--
ALTER TABLE `restore_passwords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restore_passwords_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `restore_passwords`
--
ALTER TABLE `restore_passwords`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `comments_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `comments` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `restore_passwords`
--
ALTER TABLE `restore_passwords`
  ADD CONSTRAINT `restore_passwords_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
