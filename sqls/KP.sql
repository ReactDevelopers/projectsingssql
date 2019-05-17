CREATE TABLE `reporting_platform`
(
  `id` int PRIMARY KEY,
  `title` varchar(255),
  `description` longtext,
  `created_at` varchar(255) COMMENT 'When order created',
  `updated_at` timestamp COMMENT 'When order updated'
);

CREATE TABLE `kpi`
(
  `id` int PRIMARY KEY,
  `name` varchar(255),
  `interval` enum(monthly,quaterly,yearly),
  `year` enum(calendar,financial),
  `direction` enum(up,down),
  `title` varchar(255),
  `description` longtext,
  `uom` varchar(255),
  `kpi_reporting_platform_id` int,
  `deleted_by` int,
  `status` enum(active,inactive),
  `compute_by` enum(As-Is,Interpolate-between-2-years,interpolate-within-months-quarter),
  `target` float,
  `penalty` float,
  `incentive` float,
  `created_at` varchar(255) COMMENT 'When order created',
  `updated_at` timestamp COMMENT 'When order updated'
);

CREATE TABLE `kpi_reporting_platform`
(
  `id` int PRIMARY KEY,
  `kpi_id` int,
  `reporting_platform_id` int,
  `created_at` timestamp COMMENT 'When order created',
  `updated_at` timestamp COMMENT 'When order updated'
);

CREATE TABLE `kpi_assigned`
(
  `id` int PRIMARY KEY,
  `kpi_id` int,
  `user_id` int,
  `created_at` timestamp COMMENT 'When order created',
  `updated_at` timestamp COMMENT 'When order updated'
);

CREATE TABLE `user_roles`
(
  `id` int PRIMARY KEY,
  `user_id` int,
  `role_id` int,
  `created_at` timestamp COMMENT 'When order created',
  `updated_at` timestamp COMMENT 'When order updated'
);

CREATE TABLE `kpi_log`
(
  `id` int PRIMARY KEY,
  `kpi_id` int,
  `user_id` int,
  `user_detail` json,
  `created_at` timestamp COMMENT 'When order created',
  `updated_at` timestamp COMMENT 'When order updated'
);

CREATE TABLE `kpi_target`
(
  `id` int PRIMARY KEY,
  `kpi_id` int,
  `frequency` varchar(255),
  `target` float,
  `created_at` timestamp COMMENT 'When order created',
  `updated_at` timestamp COMMENT 'When order updated'
);

CREATE TABLE `kpi_performance`
(
  `id` int PRIMARY KEY,
  `kpi_target_id` int,
  `performance` varchar(255),
  `comment` float,
  `status` enum(current,previous),
  `created_at` timestamp COMMENT 'When order created',
  `updated_at` timestamp COMMENT 'When order updated'
);

ALTER TABLE `kpi_reporting_platform` ADD FOREIGN KEY (`kpi_id`) REFERENCES `kpi` (`id`);

ALTER TABLE `kpi_reporting_platform` ADD FOREIGN KEY (`reporting_platform_id`) REFERENCES `reporting_platform` (`id`);

ALTER TABLE `kpi_assigned` ADD FOREIGN KEY (`kpi_id`) REFERENCES `kpi` (`id`);

ALTER TABLE `user_roles` ADD FOREIGN KEY (`role_id`) REFERENCES `kpi` (`id`);

ALTER TABLE `kpi_log` ADD FOREIGN KEY (`kpi_id`) REFERENCES `kpi` (`id`);

ALTER TABLE `kpi_target` ADD FOREIGN KEY (`kpi_id`) REFERENCES `kpi` (`id`);

ALTER TABLE `kpi_performance` ADD FOREIGN KEY (`kpi_target_id`) REFERENCES `kpi_target` (`id`);
