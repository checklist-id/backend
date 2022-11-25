CREATE TABLE `users` (
  `id` uuid PRIMARY KEY NOT NULL,
  `email` varchar(64) UNIQUE NOT NULL,
  `password` varchar(127) NOT NULL,
  `verified_at` datetime DEFAULT null,
  `created_at` timestamp NOT NULL DEFAULT (now()),
  `updated_at` datetime ON UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT (now()) COMMENT 'update time'
);

CREATE TABLE `user_verifications` (
  `id` uuid PRIMARY KEY NOT NULL,
  `user_id` uuid NOT NULL,
  `code` varchar(6) NOT NULL,
  `created_at` timestamp DEFAULT (now()),
  `expired_at` datetime DEFAULT null
);

CREATE TABLE `tasks` (
  `id` uuid PRIMARY KEY NOT NULL,
  `user_id` uuid NOT NULL,
  `title` varchar(127) NOT NULL,
  `content` text,
  `created_at` timestamp NOT NULL DEFAULT (now()),
  `updated_at` datetime ON UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT (now()) COMMENT 'update time'
);

CREATE TABLE `labels` (
  `id` uuid PRIMARY KEY NOT NULL,
  `user_id` uuid NOT NULL,
  `title` varchar(32),
  `color` varchar(32),
  `created_at` timestamp NOT NULL DEFAULT (now()),
  `updated_at` datetime ON UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT (now()) COMMENT 'update time'
);

CREATE TABLE `task_labels` (
  `label_id` uuid NOT NULL,
  `task_id` uuid NOT NULL,
  PRIMARY KEY (`label_id`, `task_id`)
);

CREATE TABLE `files` (
  `id` uuid PRIMARY KEY NOT NULL,
  `user_id` uuid NOT NULL,
  `submission_type` ENUM ('SUBMISSION', 'AVATAR') DEFAULT "SUBMISSION",
  `file_type` ENUM ('PICTURE', 'VIDEO', 'AUDIO', 'DOCUMENT') DEFAULT "DOCUMENT",
  `mime` varchar(64),
  `file_format` varchar(64),
  `resource` varchar(127),
  `created_at` timestamp NOT NULL DEFAULT (now()),
  `updated_at` datetime ON UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT (now()) COMMENT 'update time'
);

ALTER TABLE `user_verifications` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `tasks` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `labels` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `task_labels` ADD FOREIGN KEY (`label_id`) REFERENCES `labels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `task_labels` ADD FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `files` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
