CREATE TABLE `t_post_task` (
	`id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
	`post_id` INT(11) NOT NULL DEFAULT '0' COMMENT '文章 id',
	`state` TINYINT(4) NOT NULL DEFAULT '0' COMMENT '状态 0：待执行 1：已执行',
	`job_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发表时间',
	`create_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	`update_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
	PRIMARY KEY (`id`),
	UNIQUE INDEX `idx_post_id` (`post_id`),
	INDEX `idx_job_time` (`job_time`)
)
COMMENT='文章定时任务'
ENGINE=InnoDB
;

