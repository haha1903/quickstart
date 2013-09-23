# 脚手架

# 每次创建开发环境对个人和团队都是一个负担。影响开发效率，增加出差错的可能性。maven的自定义archetype和相关设置可以瞬间创建预配置的项目。现在一般将这种预配置的项目叫做：脚手架（scaffold）。开发人员将主要精力放在业务的开发，而不是搭建基础的项目结构.
# mvn archetype:generate -B -DarchetypeCatalog=local -DgroupId=com.datayes -DartifactId=test -Dversion=1.0.0-SNAPSHOT -DarchetypeGroupId=com.datayes -DarchetypeArtifactId=quickstart

* 提供 Java 开发框架
* 前端
  显示层
  Bootstrap
  EasyUI
  jQuery, jQuery UI
  MVC
  backbone
  前端资源压缩，打包
  Grunt
  YUI Compressor
  Maven plugin 打包及 js, css 文件处理
  动静态分离方案
  js, css tag
  后端
  spring beans 进行 service 管理
  spring orm 进行持久层框架集成
  spring tx 进行事务管理
  spring webmvc 进行 request dispatch
  spring security 进行认证及权限管理，并集成SSO
  持久化
  结构化
  hibernate
  ibatis(mybatis)
  非结构化
  mongodb
  morphia
  spring data
  HBase
  Cassandra
  内存数据库
  redis
  Hazelcast
  缓存
  memcache
  redis
  ehcache
  API Layer
  异常处理
  消息
  RabbitMQ
  ZMQ
  内部通信（RPC/Data）
  外部请求使用 json 或 jsonp（跨域） over http
  性能要求不高时，使用 protobuf over http
  性能要求高时，使用 protobuf over netty
  Web Container
  Tomcat 6/7
  Log
