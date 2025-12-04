# 示例数据文件说明

此目录可用于存放：

## 课程数据文件
- 课表CSV文件
- 教师评价数据
- 课程信息导入文件

## 备份文件
- 数据库备份文件
- 配置文件备份
- 媒体文件备份

## 临时文件
- 导入过程中的临时文件
- 数据处理中间文件

## 使用方法

在部署完成后，可以将相关数据文件放置在此目录，然后使用Django管理命令进行导入：

```bash
cd /opt/jcourse/jcourse_api-master
source venv/bin/activate

# 导入教师评价数据
python scripts/import_teacher_evaluations.py /opt/jcourse/data/teacher_evaluations.csv

# 导入课表数据  
python scripts/import_course_schedule.py /opt/jcourse/data/course_schedule.csv "2024-1"
```

注意：实际的数据文件已经包含在 app/jcourse-data/ 目录中。