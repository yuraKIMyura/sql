create database myblog;
use myblog;

# posts TABLE was created via JPA Entity
# this query was written by right click on the table > 'Copy to Clipboard' > 'Create Statement'
CREATE TABLE `posts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKmchce1gm7f6otpphxd6ixsdps` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
