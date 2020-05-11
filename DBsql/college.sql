-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2020 at 01:54 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college`
--

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `university` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`id`, `created_at`, `updated_at`, `name`, `grade`, `image`, `body`, `university`, `department`, `student`) VALUES
(9, '2019-12-06 15:04:31', '2019-12-16 09:09:28', 'طب بشرى', 404, 'uploads/colleges/images/157649258179781.jpg', 'تعتبر كلية الطب البشري من أعلى الكليات في هرم التنسيق الجامعي؛ فهى تتربع على قمته، وذلك لأنها تأخذ أعلى مجموع لطلاب شعبة علمي علوم، ففي بعض الأحيان يتعدى تنسيقها 100%، وبالرغم من صعوبة الدراسة بها وصعوبة تحصيل كل هذه الدرجات للالتحاق بها، إلا أنها تعتبر من أكثر الكليات الجامعية سواء الحكومية أو الخاصة إقبالًا والأكثر كثافة بين كثير من الكليات.', 'القاهره-حلوان', 'علمى علوم', 17),
(10, '2019-12-06 15:05:12', '2019-12-15 23:26:52', 'صيدله', 401, 'uploads/colleges/images/157645961236767.png', 'علم الصيدلة؛ هو علم يبحث فى العقاقير وخصائصها، وتركيب الأدوية وتأثيراتها المختلفة. والصَّيْدَلَةُ: مهنة الصيدلاني، وهي مهنة صحية تربط العلوم الصحية بالعلوم الكيميائية، وتعد مسئولة عن ضمان الاستخدام الآمن والفعال للمستحضرات الدوائية، وهي تخصص مهني يعتمد على التعامل المباشر مع المريض،', 'القاهره-حلوان', 'علمى علوم', 10),
(11, '2019-12-06 15:06:26', '2019-12-15 22:41:17', 'علاج طبيعى', 401, 'uploads/colleges/images/157645658134805.jpg', 'العلاج الطبيعى  وهو مجال من ضمن المجالات الطبية الموجودة فى مصر الى بتقيم وتعالج كتير من الأمراض المختلفة او بتصلح اى خلل موجود فى الجسم سواء الخلل دا فى الحركة او الوظائف المختلفة وكمان تعمل وقاية للانسان السليم وتحسن من صحة الأفراد ومش بس كدا بيحاول يرجع الانسان الى عنده اعاقة لحياته الطبيعية عن طريق عملية التأهيل', 'القاهره - بنى سويف - كفر الشيخ - جنوب الوادى', 'علمى علوم', 2),
(12, '2019-12-06 15:07:08', '2019-12-15 22:39:48', 'علوم البترول والتعدين', 399, 'uploads/colleges/images/157645678818341.jpg', 'هى كليه علوم البترول والغاز الطبيعى', 'مطروح', 'علمى علوم', 5),
(13, '2019-12-06 15:21:11', '2019-12-15 22:46:17', 'علوم', 390, 'uploads/colleges/images/157645701471248.jpg', 'هى الكليه التى يدرس بها كل العلوم الحيه والغير حيه الخاصه بالطبيعه والدراسه طبعا فيها باللغه الانجليزيه في كل الجامعات المصريه مثل الكيمياء والفيزياء والاحياء والجيولوجيا بالاضافه الى الفلك وعلم الارض وعلم الحيوان والنبات وتعتبر من اقوى الكليات دراسيا والتى يتردد اليها الكثير من الطلاب الذين يريدون دراسه العلزم بجميع اشكاله', 'القاهره-حلوان-اسيوط-عين شمس', 'علمى علوم', 6),
(14, '2019-12-06 15:21:55', '2019-12-16 08:37:46', 'هندسه', 386, 'uploads/colleges/images/157649266660614.jpg', 'كليه هندسه من اعرق واقدم الكليات فى مصر وتوجد اعلى التنسيق الهرمى بسبب رغبه الكثير فى الالتحاق بها ويوجد بها العديد من الاقسام مثل المعمار والميكانيكا والمدنيه والكهرباء والهندسه الطبيه وهندسه الاتصالات وتوجد فى العديد من الجامعات وتستقبل كل عام حوالى 25000 طالب', 'القاهره-حلوان-اسيوط-عين شمس', 'علمى رياضه', 3),
(15, '2019-12-06 15:22:36', '2019-12-15 22:54:14', 'تمريض', 384, 'uploads/colleges/images/157645765457059.jpg', 'العديد من التخصصات الطبية تروق للطلبة الشغوفين بالطب كل عام. فمنهم من يمتهن الطلب بشكلٍ عملي، ومنهم من يمتهن الصيدلة كي يصنع للأطباء أدويتهم الثمينة. لكن بين هذا وذاك يوجد نوع مُعين من الطلبة يُحب أن يمسك العصا من المنتصف، ويتقدم إلى كلية تساعده عبر الحصول على المعرفية النظرية من جهة، والعملية من أخرى. وليس في تخصص واحد فقط، بل في التخصصين كليهما. وهذا التخصص الوسطي هو تخصص التمريض', 'القاهره-حلوان-اسيوط-عين شمس', 'علمى علوم', 4),
(16, '2019-12-06 15:23:46', '2019-12-15 22:57:00', 'حاسبات ومعلومات', 375, 'uploads/colleges/images/157645782093297.jpg', 'العاميه هي كليه تدرس فيها كل ما يستخدم فيه الكمبيوتر ، الكليه عباره عن أربع سنوات ، خاصه بطلاب الثانويه العامه فرع علمي رياضه ، بعد اجتياز الأربع سنوات تحصل علي بكلوريوس حاسبات ومعلومات ، الكليه خاصه بال software مثل برامج الكمبيوتر وتطبيقات الموبيل والألعاب ، تعطيك الكليه كورس بسيط عن hardware  وهيا افضل كليه فى مصر', 'القاهره-حلوان-عين شمس', 'علمى رياضه', 5),
(17, '2019-12-06 15:24:08', '2019-12-15 23:02:11', 'اثار', 370, 'uploads/colleges/images/157645813155320.jpg', 'تُعرف مصر بين دول العالم بالحضارة المصرية القديمة ومن بعدها الحضارات اليونانية والرومانية والقبطية والإسلامية، مما جعلها دولة تتميز بالتنوع الآثري والاختلاف الحضاري لذلك ركز التعليم المصري على دراسة التاريخ والآثار المصرية، بالإضافة إلى إعداد الشباب  بكليات الآثار في القيام بذلك الدور بعد التخرج.', 'القاهره-حلوان-اسيوط-عين شمس', 'علمى علوم - علمى رياضه - ادبى', 2),
(18, '2019-12-06 15:24:33', '2019-12-15 23:06:21', 'السن', 370, 'uploads/colleges/images/157645838124370.jpg', 'تُعد كلية الألسن هدف وغاية لكثير من الطلاب، كما أنها تُعد من أعرق الكليات المتخصصة في علم اللغات، فهى تقوم على تعليم اللغات لفئة كبيرة من الطلاب، فيوجد بها 13 قسمًا، بحيث يختار الطلاب لغة أولى، ولغة ثانية أثناء دراستهم. وبها العديد من الاقسام مثل اللغه الايطاليه والفرنسيه والالمانيه', 'القاهره-حلوان-اسيوط-عين شمس', 'علمى علوم - علمى رياضه - ادبى', 3),
(19, '2019-12-06 15:26:05', '2019-12-15 23:18:15', 'تربيه', 360, 'uploads/colleges/images/157645909518413.png', 'آلاف وآلاف يتقدمون طوابير التنسيق الإلكتروني بعضهم من يطمح بكليات القمة والبعض الآخر يطمح بكليات الشعب، كما يطلق عليها البعض، أما هم لم يطمحوا لهذا ولا ذاك بل طمحوا إلى تحقيق هدفهم بالالتحاق بـ\"كلية التربية\" التي أصبح مجموعها خلال السنوات الماضية موازيًا في بعض الأحيان لكليات القمة، فهي كلية إعداد المعلمين لمدارس التعليم العام.', 'القاهره-حلوان-اسيوط-عين شمس', 'علمى علوم - علمى رياضه - ادبى', 1),
(21, '2019-12-06 15:27:02', '2019-12-16 08:38:25', 'تجاره', 344, 'uploads/colleges/images/157649270536655.jpg', 'تجاره', 'القاهره-حلوان-اسيوط-عين شمس', 'علمى علوم - علمى رياضه - ادبى', 2),
(22, '2019-12-06 15:27:24', '2019-12-15 23:21:55', 'اداب', 280, 'uploads/colleges/images/157645931560882.jpg', 'اداب', 'القاهره-حلوان-عين شمس', 'علمى علوم - علمى رياضه - ادبى', 1),
(23, '2019-12-06 15:27:40', '2019-12-16 08:38:48', 'حقوق', 260, 'uploads/colleges/images/157649272890463.jpg', 'حقوق', 'القاهره-حلوان-اسيوط', 'علمى علوم - علمى رياضه - ادبى', 3),
(24, '2019-12-06 15:28:07', '2019-12-15 23:23:04', 'خدمه اجتماعيه', 230, 'uploads/colleges/images/157645938487514.png', 'خدمه', 'القاهره-حلوان-اسيوط-عين شمس', 'علمى علوم - علمى رياضه - ادبى', 5),
(25, '2019-12-06 15:28:36', '2019-12-16 08:39:19', 'معاهد', 200, 'uploads/colleges/images/157649275954244.jpg', 'معاهد', 'فى معظم المحافظات', 'علمى علوم - علمى رياضه - ادبى', 2);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `created_at`, `updated_at`, `name`, `phone`, `email`, `message`) VALUES
(9, '2019-12-16 08:34:10', '2019-12-16 08:34:10', 'badry', '01022869530', 'badry_nabil@yahoo.com', 'good');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_09_09_103102_create_contacts_table', 1),
(4, '2019_12_02_084501_create_college_table', 1),
(5, '2019_12_02_084501_create_settings_table', 1),
(6, '2019_12_02_084501_create_student_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_app` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `play_store_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_store_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `watssap_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `created_at`, `updated_at`, `phone`, `email`, `about_app`, `play_store_link`, `app_store_link`, `watssap_link`, `google_link`) VALUES
(1, NULL, '2019-12-14 06:04:48', '01153328857', 'badrynabil7@gmail.com', 'This project Engineering Admission Predictor System is web based application in which students can register with their personal as well as marks details for prediction the admission in colleges and the administrator can allot the seats for the students. Administrator can add the college details and he batch details. Using this software, the entrance seat allotment became easier and can be implemented using system. The main advantage of the project is the computerization of the entrance seat allotment process.', 'https://play.google.com/store', 'https://www.apple.com/ios/app-store/', 'https://web.whatsapp.com/', 'badrynabil7@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `created_at`, `updated_at`, `username`, `password`, `email`, `phone`, `city`, `api_token`) VALUES
(11, '2019-12-06 17:29:16', '2019-12-06 17:29:16', 'badry', '$2y$10$tXgRA0RibyfVvJacHnMZoepKrGKtWx4ZsZyHK0ILyqk18mV12YSxC', 'badry_nabil@yahoo.com', '01153328857', 'القاهره', 'Wops5tGSsmLMcKlQBBqZu4cqEls1LuyjPw4XsN7bEVRiyUPkHChuGuzAmwck');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'badry', 'badrynabil7@gmail.com', NULL, '$2y$10$spVGWF8QN7MWDPF3miH5KO2YSpPAtNxkRVtm8U7u5Z14kdIjwEdSO', '01153328857', NULL, '2019-12-05 14:41:25', '2019-12-16 08:35:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
