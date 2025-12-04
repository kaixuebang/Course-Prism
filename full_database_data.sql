--
-- PostgreSQL database dump
--

-- Dumped from database version 14.18 (Debian 14.18-1.pgdg120+1)
-- Dumped by pg_dump version 14.18 (Debian 14.18-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: ad_promotion; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.ad_promotion (id, image, text, jump_link, created_at, available, description, touchpoint, click_times, external_image) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	jcourse_api	apikey
8	jcourse_api	category
9	jcourse_api	course
10	jcourse_api	department
11	jcourse_api	formercode
12	jcourse_api	semester
13	jcourse_api	teacher
14	jcourse_api	review
15	jcourse_api	report
16	jcourse_api	enrollcourse
17	jcourse_api	userpoint
18	jcourse_api	reviewrevision
19	jcourse_api	announcement
20	jcourse_api	reviewreaction
21	jcourse_api	notification
22	jcourse_api	coursenotificationlevel
23	jcourse_api	teacherevaluation
24	oauth	userprofile
25	ad	promotion
26	jcourse_api	contributor
27	jcourse_api	teammember
28	jcourse_api	visitorstatistics
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add Api密钥	7	add_apikey
26	Can change Api密钥	7	change_apikey
27	Can delete Api密钥	7	delete_apikey
28	Can view Api密钥	7	view_apikey
29	Can add 课程类别	8	add_category
30	Can change 课程类别	8	change_category
31	Can delete 课程类别	8	delete_category
32	Can view 课程类别	8	view_category
33	Can add 课程	9	add_course
34	Can change 课程	9	change_course
35	Can delete 课程	9	delete_course
36	Can view 课程	9	view_course
37	Can add 教学单位	10	add_department
38	Can change 教学单位	10	change_department
39	Can delete 教学单位	10	delete_department
40	Can view 教学单位	10	view_department
41	Can add 曾用课号	11	add_formercode
42	Can change 曾用课号	11	change_formercode
43	Can delete 曾用课号	11	delete_formercode
44	Can view 曾用课号	11	view_formercode
45	Can add 学期	12	add_semester
46	Can change 学期	12	change_semester
47	Can delete 学期	12	delete_semester
48	Can view 学期	12	view_semester
49	Can add 教师	13	add_teacher
50	Can change 教师	13	change_teacher
51	Can delete 教师	13	delete_teacher
52	Can view 教师	13	view_teacher
53	Can add 点评	14	add_review
54	Can change 点评	14	change_review
55	Can delete 点评	14	delete_review
56	Can view 点评	14	view_review
57	Can add 反馈	15	add_report
58	Can change 反馈	15	change_report
59	Can delete 反馈	15	delete_report
60	Can view 反馈	15	view_report
61	Can add 选课记录	16	add_enrollcourse
62	Can change 选课记录	16	change_enrollcourse
63	Can delete 选课记录	16	delete_enrollcourse
64	Can view 选课记录	16	view_enrollcourse
65	Can add 积分	17	add_userpoint
66	Can change 积分	17	change_userpoint
67	Can delete 积分	17	delete_userpoint
68	Can view 积分	17	view_userpoint
69	Can add 点评修订记录	18	add_reviewrevision
70	Can change 点评修订记录	18	change_reviewrevision
71	Can delete 点评修订记录	18	delete_reviewrevision
72	Can view 点评修订记录	18	view_reviewrevision
73	Can add 公告	19	add_announcement
74	Can change 公告	19	change_announcement
75	Can delete 公告	19	delete_announcement
76	Can view 公告	19	view_announcement
77	Can add 点评回应	20	add_reviewreaction
78	Can change 点评回应	20	change_reviewreaction
79	Can delete 点评回应	20	delete_reviewreaction
80	Can view 点评回应	20	view_reviewreaction
81	Can add 通知	21	add_notification
82	Can change 通知	21	change_notification
83	Can delete 通知	21	delete_notification
84	Can view 通知	21	view_notification
85	Can add 课程通知等级	22	add_coursenotificationlevel
86	Can change 课程通知等级	22	change_coursenotificationlevel
87	Can delete 课程通知等级	22	delete_coursenotificationlevel
88	Can view 课程通知等级	22	view_coursenotificationlevel
89	Can add 教师评价	23	add_teacherevaluation
90	Can change 教师评价	23	change_teacherevaluation
91	Can delete 教师评价	23	delete_teacherevaluation
92	Can view 教师评价	23	view_teacherevaluation
93	Can add 用户信息	24	add_userprofile
94	Can change 用户信息	24	change_userprofile
95	Can delete 用户信息	24	delete_userprofile
96	Can view 用户信息	24	view_userprofile
97	Can add 推广内容	25	add_promotion
98	Can change 推广内容	25	change_promotion
99	Can delete 推广内容	25	delete_promotion
100	Can view 推广内容	25	view_promotion
101	Can add 贡献者	26	add_contributor
102	Can change 贡献者	26	change_contributor
103	Can delete 贡献者	26	delete_contributor
104	Can view 贡献者	26	view_contributor
105	Can add 团队成员	27	add_teammember
106	Can change 团队成员	27	change_teammember
107	Can delete 团队成员	27	delete_teammember
108	Can view 团队成员	27	view_teammember
109	Can add 访问统计	28	add_visitorstatistics
110	Can change 访问统计	28	change_visitorstatistics
111	Can delete 访问统计	28	delete_visitorstatistics
112	Can view 访问统计	28	view_visitorstatistics
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
9	pbkdf2_sha256$600000$PhWOU4tYopOYGMZ6G7pdQU$Urz/74jMqymM4Ng22MrQN6ue2ZKgR0GzRp5wNYvkphI=	\N	f	helper007	课程小助手07		helper007@swufe.edu.cn	f	t	2025-07-19 12:47:07.14441+00
10	pbkdf2_sha256$600000$wHZH00x7LFKFgIM77FZi4G$YcW3R2kmicEChQLLCgA+fPosU+rfieW9EsBHlg5weNo=	\N	f	helper008	课程小助手08		helper008@swufe.edu.cn	f	t	2025-07-19 12:47:07.821813+00
11	pbkdf2_sha256$600000$29n9EDo8INQT4HI2l6Xs6m$239tnjSDn1Q4avE2M/dMIkENyGNaQiPTN6m8bRXAjU8=	\N	f	helper009	课程小助手09		helper009@swufe.edu.cn	f	t	2025-07-19 12:47:08.47744+00
12	pbkdf2_sha256$600000$ocwFpv2Fs8t4fIjaQZbCxD$UTPElCJ0Xoma8v+mSK7vCzjWgKjxOLqJdO5e+fm058I=	\N	f	helper010	课程小助手10		helper010@swufe.edu.cn	f	t	2025-07-19 12:47:09.129943+00
4	pbkdf2_sha256$600000$q0cLxj883aFf51oHyiryEK$nKVy3kD3ijTGGId4jD1IhiIH7ngOqwtqSEqb5tgoVeA=	\N	f	helper002	课程小助手02		helper002@swufe.edu.cn	f	t	2025-07-19 12:33:21.987963+00
5	pbkdf2_sha256$600000$kZhNmXLs7BimQ91tJsn5dw$FXi3CsCS8l7gIsuJfj7gW9IzADRm0LDZcIuGrMtX2ao=	\N	f	helper003	课程小助手03		helper003@swufe.edu.cn	f	t	2025-07-19 12:33:22.777877+00
6	pbkdf2_sha256$600000$OFA4c7qL2Fp9B6O5kqcC4H$65GS8KS1RtTPnlMO4e8bLAT6dAxwijo+dEGgmsGDREY=	\N	f	helper004	课程小助手04		helper004@swufe.edu.cn	f	t	2025-07-19 12:33:23.525397+00
7	pbkdf2_sha256$600000$F50dAukO919S3U16T5XLye$sg26Bjd+kuwLV9CtMtz/UAlOM1F+worHhLBB0MEPGP4=	\N	f	helper005	课程小助手05		helper005@swufe.edu.cn	f	t	2025-07-19 12:33:24.316515+00
3	pbkdf2_sha256$600000$2bT8CMX5qKVTSERCuFOkzH$Xk1bfnKQKjWzZHu45YUjwnVyZCD+vs9vhthnmcfuut8=	2025-07-19 13:14:47.328264+00	f	helper001	课程小助手01		helper001@swufe.edu.cn	f	t	2025-07-19 12:33:21.217231+00
8	pbkdf2_sha256$600000$GGWNt4W2xHYdYJAPMoCLgz$+HAjScQzdB1KrpYyu8CCNi1n19WiSTdYQ1lrg8DAT0Q=	\N	f	helper006	课程小助手06		helper006@swufe.edu.cn	f	t	2025-07-19 12:47:06.461075+00
37	pbkdf2_sha256$600000$C2zr7NGRlGIHfVbJu6meR5$629SIgulRD1+OTMiNv8m6MUJAHx/cX647vjtba1Nj4U=	2025-09-08 04:11:49.780135+00	f	Mrsggs				f	t	2025-09-08 04:11:49.2943+00
25	pbkdf2_sha256$600000$9VKXCpkEKgRwWld2cOvIju$Vql03rlc9XNSZtxF2F2AxxU548XXEnEuzzz3AttblyY=	2025-09-05 05:02:47.27594+00	f	NSHIODIS				f	t	2025-09-05 05:02:46.720638+00
21	pbkdf2_sha256$600000$M7jqZIfk5LD74BUfBzf40C$RfymxhxAgpukIyUp7CwP0iUJM6oqwLicNJ45t9ABKNU=	\N	f	test3				f	t	2025-09-04 05:16:00+00
39	pbkdf2_sha256$600000$zrtRpQ3DGOA6IrSEFAbzr9$K9U1yb+NSdwfBgyk7p2CBgYAhAo/zkW3vviX4fAllx8=	2025-09-08 05:05:04.095589+00	f	Jefferson				f	t	2025-09-08 05:05:03.643715+00
22	pbkdf2_sha256$600000$mzMWWH8TjB1QzGdeRl3eMj$0P0sb3RiHdOkwZ9fcfQnOM3JhhzQEnmkNlJUwaN31PU=	\N	f	test4				f	t	2025-09-04 05:18:18.747537+00
18	pbkdf2_sha256$600000$MuutSnSj21H1ZxB8vOaGPZ$wRyjsZZNeT2ChaQANeWaoBrks1cgz/vqCdxYsvjmM+c=	2025-08-22 07:17:14.446316+00	f	vivi				f	t	2025-08-22 07:17:14.013858+00
23	pbkdf2_sha256$600000$waZXlSdL5heqRNFZw8UIQ4$iR38phyCQmYf4VnFqP0TfHcmGXHQd/oxqtM0XHxpfac=	\N	f	test5				f	t	2025-09-04 05:18:31.774193+00
36	pbkdf2_sha256$600000$jXbDPRSylZkqEKOh93UN63$8BqBnNxOpe02acAq9gUGaGjF4KTFigzlJDwlKtVDGS4=	2025-09-08 05:02:38.407616+00	f	Putthipong				f	t	2025-09-07 13:00:26.632519+00
40	pbkdf2_sha256$600000$Ze3JsO62HwPekJjlHsMc5E$UQbBxDIE5S7iz7RqgeFAA70+UjKpIlkQByVjMKa+5Dg=	2025-09-09 08:38:58.894864+00	f	Jiefanglaoyu				f	t	2025-09-09 08:38:58.459825+00
17	pbkdf2_sha256$600000$cLAMUmlVYV24VAZJOtPSaV$3gotPrDoft7e/OFbwmupiCHEcYUaok8XDPAq5O+10dg=	2025-09-04 03:55:42.913841+00	f	harry				f	t	2025-08-08 13:41:47.273689+00
26	pbkdf2_sha256$600000$boZrALrWxZAjRRpT9ELwFY$ftHeXpjIubqVws/Oc9LHV0K/TW6UF0egdbnJbky3YYI=	\N	f	test_user_01			test01@example.com	f	t	2025-09-05 05:03:38.415096+00
24	pbkdf2_sha256$600000$ICFWU8nHqgvRMonLiuVgUz$8hnNmDm0d6bXofJ73NJanu5hH8lCKILFzth7Wqn1HfI=	2025-09-04 08:18:42.126125+00	f	Stargazer				f	t	2025-09-04 08:18:41.705816+00
27	pbkdf2_sha256$600000$rStmUAHJJLqdAfSdEsEIX1$LUhkInzXZWIKVXZh9Wz+osO7LZE/6VPfDtYDmt6TD0M=	\N	f	test_user_02			test02@example.com	f	t	2025-09-05 05:03:38.865009+00
28	pbkdf2_sha256$600000$2wwinDByr7sZFTv7rShIOq$c6ngARAyASehNH8VGbyPe55kEAhXZkUu86D6J9UObrg=	\N	f	test_user_03			test03@example.com	f	t	2025-09-05 05:03:39.300037+00
29	pbkdf2_sha256$600000$kqJI36vG2KMtxHVAtdx7op$YPCTvYnhVcroS0jRCPmwAq3d2AsLQycmO0duOwJfcr8=	\N	f	test_user_04			test04@example.com	f	t	2025-09-05 05:03:39.747741+00
30	pbkdf2_sha256$600000$aEkn9gdpZJyvYTNWSJlPJF$ZRWya/YOopO1cm2lJVMSGUKWLq5QwIXB6AGv+hEnpcM=	\N	f	test_user_05			test05@example.com	f	t	2025-09-05 05:03:40.190262+00
31	pbkdf2_sha256$600000$fjRpUjc4RmAPZY6TJgEW0K$VnwJusBE5JDYehPMxxjpcau2djK87031NxgOBKapi4M=	\N	f	test_user_06			test06@example.com	f	t	2025-09-05 05:03:40.626234+00
32	pbkdf2_sha256$600000$otHbYXLWyUzG9vQvfFYn2s$ZO/BUSreWH4UQg5+TNrniSLfwOyYPfZCc+ZpOtsMFwc=	\N	f	test_user_07			test07@example.com	f	t	2025-09-05 05:03:41.058657+00
20	pbkdf2_sha256$600000$QDPyQZLrZ09DBbGziyWxHQ$OFVYkUPSPJ5OQY1+uQ7ztHqgee39QpvPDO1+TnjQp5Q=	\N	f	test2				f	t	2025-09-04 05:15:43.004202+00
33	pbkdf2_sha256$600000$WJEtENpfW7ubAjEJv9Qfje$wPcPcOTRhjUPWDQ/G0fBH7owFDcWqIlLj6LKA8rA3W8=	\N	f	test_user_08			test08@example.com	f	t	2025-09-05 05:03:41.493235+00
38	pbkdf2_sha256$600000$bBzGIVe0Lq6GccemScLe0g$eE59ByktI/0Sxf3siliKN0vZTtybmIyvzwztHTn9Meo=	2025-09-08 04:46:27.797224+00	f	Jerryalfie				f	t	2025-09-08 04:46:27.366815+00
19	pbkdf2_sha256$600000$E7qPmqzBrN8fwat1pl8yrS$jz9eo3+AocSa14JkPXXT2ubNt16v/yThKpMivtWuPW8=	2025-09-05 13:29:58.124129+00	f	test1				f	t	2025-09-04 05:13:02.610553+00
34	pbkdf2_sha256$600000$5BH4QpaM5G5k6lPItFRa5h$AqYWDfdgJP3MwNPmKQai3t0LsJHkV06bV/Rpq1eDGZ8=	2025-09-05 07:29:28.924488+00	f	zencarat0403				f	t	2025-09-05 07:29:28.498933+00
35	pbkdf2_sha256$600000$cXkbUeuvmcRuv4YvDCkMkm$oI38t5o+AFD5V+WVVE9vmwJzqMYWpxdYarr4QezPLBY=	2025-09-05 11:28:48.446376+00	f	42304387				f	t	2025-09-05 11:28:48.02451+00
42	pbkdf2_sha256$600000$gGBluSWArwUOYMP9YGVB5i$xgVjEyQQXgKhsgDLqtdXMCn7NCK2Te9rTZl12FJk/QY=	2025-09-12 02:22:44.982774+00	f	Sherry				f	t	2025-09-12 02:22:44.526725+00
1	pbkdf2_sha256$600000$LmxZ2mWeFx3ZKEdO3oxVyR$Yx6Q7Gse1N7rjaJpHm8I7uyUJ1BxpPAr1vrCEbtcncw=	2025-12-04 04:12:15.285507+00	t	admin			admin@example.com	t	t	2025-07-19 04:03:07.372884+00
44	pbkdf2_sha256$600000$Z7Mf1coHbEY7GeWJvPWHe9$WvGiokFH6c7T7BQRmuXR7jsJRY0tzT8WBX9HItSpTak=	2025-10-11 13:27:01.183055+00	f	reOmemoer				f	t	2025-10-11 13:27:00.705615+00
41	pbkdf2_sha256$600000$MqBGYaj944vzcv2Rgfb5AH$EJO4ltqt94ZG3xOF08t4+Ba02oiIVPM547JwWLEtCo0=	2025-09-11 14:51:58.925841+00	f	serenea				f	t	2025-09-11 14:51:58.456167+00
43	pbkdf2_sha256$600000$ls4sqTpvvQbjtsLbD66ZDL$AFYVM1RvmNGsgxNW/o11uRv8aJyqqVWP82yggihm6jE=	2025-09-21 15:20:12.894577+00	f	Chijiu				f	t	2025-09-21 15:20:12.452227+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2025-07-19 12:15:35.410532+00	2	harry	1	[{"added": {}}]	4	1
2	2025-08-08 12:05:17.796674+00	1	邹思瑞 (代码贡献)	1	[{"added": {}}]	26	1
3	2025-08-08 12:06:32.595006+00	1	邹思瑞 - 筹备者	1	[{"added": {}}]	27	1
4	2025-08-08 12:09:05.075462+00	1	邹思瑞（国家经济学拔尖学生培养基地班） - 发起者	2	[{"changed": {"fields": ["\\u59d3\\u540d", "\\u804c\\u4f4d"]}}]	27	1
5	2025-08-08 12:16:37.880923+00	1	邹思瑞 - 开发者	2	[{"changed": {"fields": ["\\u59d3\\u540d", "\\u804c\\u4f4d", "\\u73ed\\u7ea7", "\\u5934\\u50cf\\u94fe\\u63a5"]}}]	27	1
6	2025-08-08 12:17:04.396402+00	1	邹思瑞 (代码贡献)	2	[{"changed": {"fields": ["\\u73ed\\u7ea7"]}}]	26	1
7	2025-08-08 12:17:19.123169+00	1	邹思瑞 (代码贡献)	2	[{"changed": {"fields": ["\\u73ed\\u7ea7"]}}]	26	1
8	2025-08-08 12:20:46.035022+00	2	司昌倩 - 开发者	1	[{"added": {}}]	27	1
9	2025-08-08 12:34:24.679479+00	3	王利香 - 推广者	1	[{"added": {}}]	27	1
10	2025-08-08 12:35:14.337536+00	4	吴静文 - 运营者	1	[{"added": {}}]	27	1
11	2025-08-08 12:36:09.691002+00	1	邹思瑞 - 开发者	2	[{"changed": {"fields": ["\\u7b80\\u4ecb"]}}]	27	1
12	2025-08-08 12:37:02.439434+00	5	刘霁杭 - 运营者	1	[{"added": {}}]	27	1
13	2025-08-08 12:37:20.771641+00	5	刘霁杭 - 运营者	2	[{"changed": {"fields": ["\\u6392\\u5e8f"]}}]	27	1
14	2025-08-08 12:37:20.774766+00	4	吴静文 - 运营者	2	[{"changed": {"fields": ["\\u6392\\u5e8f"]}}]	27	1
15	2025-08-08 12:37:20.77716+00	3	王利香 - 推广者	2	[{"changed": {"fields": ["\\u6392\\u5e8f"]}}]	27	1
16	2025-08-08 12:45:46.983513+00	1	邹思瑞 - 开发者	2	[{"changed": {"fields": ["QQ\\u53f7", "\\u5fae\\u4fe1\\u53f7"]}}]	27	1
17	2025-08-08 12:45:53.933679+00	1	邹思瑞 - 开发者	2	[]	27	1
18	2025-08-08 12:53:08.602085+00	1	邹思瑞 - 开发者	2	[{"changed": {"fields": ["\\u5934\\u50cf"]}}]	27	1
19	2025-08-08 13:14:05.98821+00	12	UserProfile object (12)	3		24	1
20	2025-08-08 13:15:54.761171+00	13	d30483e548f6966f4e18e8dac1342607	3		4	1
21	2025-08-08 13:17:34.75707+00	2	harry	3		4	1
22	2025-08-08 13:40:46.573843+00	14	harry	3		4	1
23	2025-09-04 05:13:03.033818+00	19	test1	1	[{"added": {}}]	4	1
24	2025-09-04 05:15:43.413187+00	20	test2	1	[{"added": {}}]	4	1
25	2025-09-04 05:16:00.499497+00	21	test3	1	[{"added": {}}]	4	1
26	2025-09-04 05:18:06.208716+00	21	test3	2	[]	4	1
27	2025-09-04 05:18:19.167925+00	22	test4	1	[{"added": {}}]	4	1
28	2025-09-04 05:18:32.182495+00	23	test5	1	[{"added": {}}]	4	1
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	ad	0001_initial	2025-07-19 04:02:49.574369+00
2	ad	0002_alter_promotion_image	2025-07-19 04:02:49.582609+00
3	ad	0003_promotion_click_times	2025-07-19 04:02:49.593066+00
4	ad	0004_alter_promotion_touchpoint_delete_touchpoint	2025-07-19 04:02:49.63205+00
5	ad	0005_promotion_touchpoint_one_online	2025-07-19 04:02:49.645631+00
6	ad	0006_promotion_external_image_alter_promotion_image	2025-07-19 04:02:49.656769+00
7	contenttypes	0001_initial	2025-07-19 04:02:49.675797+00
8	auth	0001_initial	2025-07-19 04:02:49.828555+00
9	admin	0001_initial	2025-07-19 04:02:49.881635+00
10	admin	0002_logentry_remove_auto_add	2025-07-19 04:02:49.897968+00
11	admin	0003_logentry_add_action_flag_choices	2025-07-19 04:02:49.991837+00
12	contenttypes	0002_remove_content_type_name	2025-07-19 04:02:50.019431+00
13	auth	0002_alter_permission_name_max_length	2025-07-19 04:02:50.034966+00
14	auth	0003_alter_user_email_max_length	2025-07-19 04:02:50.05007+00
15	auth	0004_alter_user_username_opts	2025-07-19 04:02:50.064423+00
16	auth	0005_alter_user_last_login_null	2025-07-19 04:02:50.079773+00
17	auth	0006_require_contenttypes_0002	2025-07-19 04:02:50.085192+00
18	auth	0007_alter_validators_add_error_messages	2025-07-19 04:02:50.098371+00
19	auth	0008_alter_user_username_max_length	2025-07-19 04:02:50.123323+00
20	auth	0009_alter_user_last_name_max_length	2025-07-19 04:02:50.140221+00
21	auth	0010_alter_group_name_max_length	2025-07-19 04:02:50.158582+00
22	auth	0011_update_proxy_permissions	2025-07-19 04:02:50.173905+00
23	auth	0012_alter_user_first_name_max_length	2025-07-19 04:02:50.190744+00
24	jcourse_api	0001_initial	2025-07-19 04:02:50.834689+00
25	jcourse_api	0002_report_reply	2025-07-19 04:02:50.858797+00
26	jcourse_api	0003_auto_20210913_2317	2025-07-19 04:02:50.925315+00
27	jcourse_api	0004_auto_20210915_1849	2025-07-19 04:02:50.997902+00
28	jcourse_api	0005_alter_action_options	2025-07-19 04:02:51.025221+00
29	jcourse_api	0006_alter_teacher_title	2025-07-19 04:02:51.053344+00
30	jcourse_api	0007_auto_20210922_2212	2025-07-19 04:02:51.203468+00
31	jcourse_api	0008_alter_review_rating	2025-07-19 04:02:51.258964+00
32	jcourse_api	0009_alter_review_comment	2025-07-19 04:02:51.282393+00
33	jcourse_api	0010_auto_20211207_1456	2025-07-19 04:02:51.317822+00
34	jcourse_api	0011_auto_20211215_1803	2025-07-19 04:02:51.444292+00
35	jcourse_api	0012_alter_action_options	2025-07-19 04:02:51.468252+00
36	jcourse_api	0013_auto_20211216_1702	2025-07-19 04:02:51.515248+00
37	jcourse_api	0014_userpoint	2025-07-19 04:02:51.586957+00
38	jcourse_api	0015_alter_userpoint_description	2025-07-19 04:02:51.605179+00
39	jcourse_api	0016_alter_enrollcourse_user_alter_userpoint_user	2025-07-19 04:02:51.651133+00
40	jcourse_api	0017_review_modified	2025-07-19 04:02:51.71905+00
41	jcourse_api	0018_course_last_semester_teacher_last_semester	2025-07-19 04:02:51.893138+00
42	jcourse_api	0019_alter_course_review_avg_alter_review_approve_count_and_more	2025-07-19 04:02:51.958551+00
43	jcourse_api	0020_alter_review_comment	2025-07-19 04:02:51.983188+00
44	jcourse_api	0021_semester_available	2025-07-19 04:02:52.004979+00
45	jcourse_api	0022_update_point_rule	2025-07-19 04:02:52.035882+00
46	jcourse_api	0023_notice_url	2025-07-19 04:02:52.045529+00
47	jcourse_api	0024_alter_review_ordered_rule_	2025-07-19 04:02:52.095181+00
48	jcourse_api	0025_remove_course_category_course_categories	2025-07-19 04:02:52.208965+00
49	jcourse_api	0026_remove_category_count_remove_department_count	2025-07-19 04:02:52.227973+00
50	jcourse_api	0027_alter_course_categories	2025-07-19 04:02:52.264915+00
51	jcourse_api	0028_alter_review_comment	2025-07-19 04:02:52.295572+00
52	jcourse_api	0029_reviewrevision	2025-07-19 04:02:52.383861+00
53	jcourse_api	0030_alter_action_options_action_modified	2025-07-19 04:02:52.432943+00
54	jcourse_api	0031_rename_notice_announcement_and_more	2025-07-19 04:02:52.47305+00
55	jcourse_api	0032_rename_action_reviewreaction	2025-07-19 04:02:52.604549+00
56	jcourse_api	0033_notification	2025-07-19 04:02:52.681604+00
57	jcourse_api	0034_alter_reviewreaction_reaction	2025-07-19 04:02:52.706049+00
58	jcourse_api	0035_enrollcourse_created	2025-07-19 04:02:52.750241+00
59	jcourse_api	0036_coursenotificationlevel	2025-07-19 04:02:52.805305+00
60	jcourse_api	0037_alter_announcement_options_and_more	2025-07-19 04:02:53.09254+00
61	jcourse_api	0038_formercode_unique_record	2025-07-19 04:02:53.105932+00
62	jcourse_api	0039_review_search_vector	2025-07-19 04:02:53.303082+00
63	jcourse_api	0040_review_jcourse_api_search__43d524_gin	2025-07-19 04:02:53.333013+00
64	jcourse_api	0041_alter_reviewrevision_review	2025-07-19 04:02:53.363388+00
65	jcourse_api	0042_no_point_by_review	2025-07-19 04:02:53.395134+00
66	jcourse_api	0043_alter_reviewrevision_review	2025-07-19 04:02:53.438971+00
67	jcourse_api	0044_teacherevaluation_and_more	2025-07-19 04:02:53.524998+00
68	oauth	0001_initial	2025-07-19 04:02:53.57159+00
69	oauth	0002_userprofile_lowercase	2025-07-19 04:02:53.598323+00
70	oauth	0003_userprofile_suspended_till	2025-07-19 04:02:53.677055+00
71	oauth	0004_userprofile_last_seen_at	2025-07-19 04:02:53.709293+00
72	sessions	0001_initial	2025-07-19 04:02:53.738491+00
73	jcourse_api	0045_contributor_teammember	2025-08-08 11:59:23.391384+00
74	jcourse_api	0046_contributor_class_name_teammember_class_name	2025-08-08 12:13:46.243069+00
75	jcourse_api	0047_teammember_qq_teammember_wechat_and_more	2025-08-08 12:30:55.50628+00
76	oauth	0005_userprofile_account	2025-08-08 13:04:59.669088+00
77	jcourse_api	0048_visitorstatistics	2025-09-04 04:02:50.450366+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
0qejckbo9ne39xyokzv6ziq7wnmt9jpc	.eJxVjMsOwiAQRf-FtSHAMIVx6d5vIAxMbdXQpI-V8d-1SRe6veec-1Ipb-uQtkXmNFZ1VqBOvxvn8pC2g3rP7TbpMrV1Hlnvij7ooq9TleflcP8OhrwM3zr0hQWtsO8qAoJQ5430hjxhQIZgwFCxwUemHi2hi2yBvYsUbS1OvT_QCTbK:1ud7Op:ZT3G_9b83JbmGoh9AtH8AWzi3vYIT-tdI2rXo9s-bd8	2025-08-02 13:14:47.335026+00
3p5lomoldy4z1nhoab76ix4ey39pzi60	.eJxVjEEOwiAUBe_C2pC-toK4dO8ZCJ__kaqhSWlXxrsrSRe6nZnMS_mwrdlvVRY_sTorqMMvoxAfUprgeyi3Wce5rMtEuiV6t1VfZ5bnZW__BjnU3LZWUg93MkJg21OyDmA4IknMaYyjGQabjoTOcuBojO2-DhEEgJx6fwD35DiE:1ud7PD:8Sdspfx3q3fkO4bm96wTFliw2eMWdUDpSSG5vfK2S2k	2025-08-02 13:15:11.487716+00
oisrf8946vuhnwhi6zxvlcg2t7i8hw3o	.eJxVjEEOwiAUBe_C2pC-toK4dO8ZCJ__kaqhSWlXxrsrSRe6nZnMS_mwrdlvVRY_sTorqMMvoxAfUprgeyi3Wce5rMtEuiV6t1VfZ5bnZW__BjnU3LZWUg93MkJg21OyDmA4IknMaYyjGQabjoTOcuBojO2-DhEEgJx6fwD35DiE:1udJc8:017ExO6IixnGwakglMD0-6kx7AV2w8ZLHKUBqQ9BobM	2025-08-03 02:17:20.563269+00
2cr8u283mfy6daipo7ajpd0w5xtxxn76	.eJxVjEEOwiAQRe_C2pAhgAMu3XsGAgwjVQNJaVeNd9cmXej2v_f-JkJclxrWUeYwkbgIJU6_W4r5WdoO6BHbvcvc2zJPSe6KPOiQt07ldT3cv4MaR_3WyRXHSKwNQLKsCa1RwDp741i5rLkAAuIZCQAMa1CK0Hgkq3xiJ94f1443Hw:1udKS0:1ZuTm4JCy4cAb8sYU792-wtC9QV636fZiVKXuchdobw	2025-08-03 03:10:56.551909+00
hlvpz3mnkfevag43p2nacd2qtcmy67lv	.eJxVjEEOwiAQRe_C2pAhgAMu3XsGAgwjVQNJaVeNd9cmXej2v_f-JkJclxrWUeYwkbgIJU6_W4r5WdoO6BHbvcvc2zJPSe6KPOiQt07ldT3cv4MaR_3WyRXHSKwNQLKsCa1RwDp741i5rLkAAuIZCQAMa1CK0Hgkq3xiJ94f1443Hw:1udely:3gneIJTD4SMLB0lfXyaqLpXraUSppHH_D-j5UYpVFJA	2025-08-04 00:52:54.655549+00
s0zaau6vgg0vfvq3njbyprdf3m8tmmh2	.eJxVjDkOwjAUBe_iGllxvPChpOcM1l9sHEC2FCcV4u4QKQW0b2beS0VclxLXnuY4iTorow6_GyE_Ut2A3LHemuZWl3kivSl6p11fm6TnZXf_Dgr28q2BmClksmANj0TijSS2CTF7S4MDseCAk0eTT1ZGCeiHECCQCDh_VO8PGGc4vw:1ufdt3:iEoR6clloZ-Ogvp1OYhmVlSLhR1Iu94wyzCdC45EGL8	2025-08-09 12:20:25.393553+00
vk9vwxkhgbortvakaw6roeic8ssxc445	.eJxVjDsOwjAQBe_iGll2Nv5R0nMGa9dr4wBypDipEHeHSCmgfTPzXiLitta49bzEicVZaC9OvyNheuS2E75ju80yzW1dJpK7Ig_a5XXm_Lwc7t9BxV6_9eANJOO0BaVtZjLagCcOWMI4BjZcFAyUKIANRZHyAVxGpxVmpxNY8f4A7Es3fQ:1upM1S:Dsj-gupQ5Mc6vfhkDSxyxIIwwYz7q5RIKLn_xr5GGH8	2025-09-05 07:17:14.489107+00
ntjnpm3d64fek6mbqvpzkqfhrv4gvokh	.eJxVjEEOwiAQAP_C2RAXEFmP3n0D2WVBqoYmpT0Z_25IetDrzGTeKtK21rj1vMRJ1EUBqsMvZErP3IaRB7X7rNPc1mViPRK9265vs-TXdW__BpV6HV-QcxAIyXo0gGSyFGsNnYB9CWwZUJwNATgQIh9zYueKc94an9A49fkC-UE3fw:1uu4Uk:4utfeIBm42Qn-DBXYVzbe-SNYm_n-nZqdP-ouog4eZg	2025-09-18 07:34:58.022452+00
pe04nq2rxxlnua05grrch8s3xzgwv6f1	.eJxVjDsOwjAQBe_iGln2xl9Kes5grXdtHECJFCcV4u4QKQW0b2beSyTc1pa2XpY0sjgLMOL0O2akR5l2wnecbrOkeVqXMctdkQft8jpzeV4O9--gYW_fulhVXYXoOVdAH91QtQ9kggZlBzAFnXKZyNuBFTKqCByyriFSJKgs3h8DcTg9:1uu5B4:Alrp867_HFKtbSfQNlCGAUzLdCOYJ-n6LgH7IRieZ4E	2025-09-18 08:18:42.166109+00
ywvss7a3w0heik7xic4ao2ighg7mf5se	.eJxVjEsOAiEQBe_C2hCg2wFcup8zEBoaGTWQzGdlvLtOMgvdvqp6LxHittawLTyHKYuL0OL0u1FMD247yPfYbl2m3tZ5Irkr8qCLHHvm5_Vw_w5qXOq3Vh4VMhREBYbZKAtDdI4MDZqNBSAwKidi79kiJLSs3Zk9DVgM5SLeH7rkN3A:1uuMut:2odj3dNYUD_5qPd1BSRS6C4hd74z-aP_8WqYl2vunfU	2025-09-19 03:15:11.488708+00
azp8ttz2q6pu5okly1jlick7611rqv0a	.eJxVjMsOwiAQRf-FtSHAlJdL934DGWCQqoGktCvjv2uTLnR7zzn3xQJuaw3boCXMmZ2Z0uz0O0ZMD2o7yXdst85Tb-syR74r_KCDX3um5-Vw_w4qjvqt9ZQKOkoAUSiLxkw-20wA3pkC4FTC4iWBUJIoWiMKqpRBKjAgdQT2_gAMDTfN:1uuOb1:ULZiDy7Yc9sz2z6mvYxNghLhRyTmC26v6nzrCR-fmtg	2025-09-19 05:02:47.349522+00
vrj0pvn14yvgeext3bgc650mhz5swz0d	.eJxVjEsOAiEQBe_C2hCg2wFcup8zEBoaGTWQzGdlvLtOMgvdvqp6LxHittawLTyHKYuL0OL0u1FMD247yPfYbl2m3tZ5Irkr8qCLHHvm5_Vw_w5qXOq3Vh4VMhREBYbZKAtDdI4MDZqNBSAwKidi79kiJLSs3Zk9DVgM5SLeH7rkN3A:1uuQV9:yow1a9FVYuaEo3XISArX4KQDOap8c48ftkaop5DhMIY	2025-09-19 07:04:51.735009+00
y1ihkxui830hc56vlirrweyna54l2esp	.eJxVjDsOwjAQRO_iGlnxL2tT0ucM1q7X4ABypDipEHcHSymgG817My8Rcd9K3Fte48ziLIwVp9-SMD1y7YTvWG-LTEvd1plkV-RBm5wWzs_L4f4dFGzlux48em-0A53TdXA9UrbgdKCk0Hq0mRWFAIpBkTaKcWQAHRhNGq0R7w_s5Dd4:1uuQsy:ASaMTcFiu8CPX9At6ttQ9pbtAN5yf1VuDznc0hDPwzU	2025-09-19 07:29:28.969614+00
4eotbkk4afuvlb9qpe9ag22k57xwzlc2	.eJxVjMsOwiAQRf-FtSETYZji0r3fQIaXVA0kpV01_ruSdKHbc869u3C8rcVtPS1ujuIiFIrTL_QcnqkOEx9c702GVtdl9nIk8rBd3lpMr-vR_h0U7uW7Zq3JAwBn9uSzYtBpAEsmEykNymhCjYje5pBA4YRg1dmYHOxkrHh_APVhNvM:1uuUca:REiNLccvAKjj6btsbTwX0Q8SH0vcRJuh_5oY5QG3ClQ	2025-09-19 11:28:48.489107+00
ced5gfaftxbazvpiw4dt27cw8z873i8a	.eJxVjEEOwiAQAP_C2RAXEFmP3n0D2WVBqoYmpT0Z_25IetDrzGTeKtK21rj1vMRJ1EUBqsMvZErP3IaRB7X7rNPc1mViPRK9265vs-TXdW__BpV6HV-QcxAIyXo0gGSyFGsNnYB9CWwZUJwNATgQIh9zYueKc94an9A49fkC-UE3fw:1uuWVp:CJBKNf65oBZZpW3Orajs1cDM8DSA_NOMNF_XaBNL3VM	2025-09-19 13:29:57.515592+00
rd5uvlx2zfs22p12xxd307o3idis0g2k	.eJxVjEEOwiAQAP_C2RAXEFmP3n0D2WVBqoYmpT0Z_25IetDrzGTeKtK21rj1vMRJ1EUBqsMvZErP3IaRB7X7rNPc1mViPRK9265vs-TXdW__BpV6HV-QcxAIyXo0gGSyFGsNnYB9CWwZUJwNATgQIh9zYueKc94an9A49fkC-UE3fw:1uuWVq:UtgdyarXdYFdrBGQ-zv1Vuytg5j_3sQ4H9k_-mEusQ0	2025-09-19 13:29:58.157712+00
ezd3kpbi8i902tek2dp30sakr3urja6h	.eJxVjDsOwjAQBe_iGlne-LMxJX3OEG3sNQ4gW4qTCnF3EikFtG9m3luMtK153Bov4xzFVWgnLr_jROHJ5SDxQeVeZahlXeZJHoo8aZNDjfy6ne7fQaaW95qUBbZgVTKeMVCP2oFFjNoo7Dwrb2Lyxk0YDEMA1SN0u40OPCWXxOcL3xM2-A:1uvF0N:e0DpZE7BnJviMCZHd1mzEXzfRcLrLcv93AffphODDkU	2025-09-21 13:00:27.128705+00
groru60ve9fhbvmze2uapx7p7gh4y8h4	.eJxVjEEOwiAQAP_C2ZAV6AIevfsGssAiVUOT0p6MfzckPeh1ZjJvEWjfatg7r2HO4iK0FadfGCk9uQ2TH9Tui0xL29Y5ypHIw3Z5WzK_rkf7N6jU6_g6VzJGVyaykBSzKgBGo09ILgHorIxFD-DPQJGKQS5aO4rJK2CcxOcLBOE30w:1uvTEL:HlOJaBdnGItew82EEzIt8hiAeakI_a-bXmkNzlxcka0	2025-09-22 04:11:49.821087+00
haqg4yyirzwuiwcr3tfc4nfz37v49auv	.eJxVjEEOwiAQRe_C2pChMAFcuvcMZBgmUjUlKe2q8e62SRe6_e-9v6lE61LT2mVOY1FXZVBdfsdM_JLpIOVJ06NpbtMyj1kfij5p1_dW5H073b-DSr3utRgHAhbJGfQUxTBkXwYwMRATgsuUB_TReCe0s8AMBW3BbIMDZPX5AvsYN9w:1ukN3g:TY9jijiptxddf9nN_XTY3Sc_GVYK_XUk6TbMLnKoUGg	2025-08-22 13:22:56.297987+00
2vkim91rs0nh2nnjkaa4mhttiz4v7uff	.eJxVjEEOwiAQRe_C2pChMAFcuvcMZBgmUjUlKe2q8e62SRe6_e-9v6lE61LT2mVOY1FXZVBdfsdM_JLpIOVJ06NpbtMyj1kfij5p1_dW5H073b-DSr3utRgHAhbJGfQUxTBkXwYwMRATgsuUB_TReCe0s8AMBW3BbIMDZPX5AvsYN9w:1ukN3v:k0qFvwcqPxXi9mP0xenpHLw9XL-fQ8XJmJ5Y4TgbMvM	2025-08-22 13:23:11.065548+00
ghowwd9qqpwdvfm7yvroxg2cza4dffb5	.eJxVjDsOwjAQBe_iGllef7OU9JzB2qzXOIASKZ8KcXeIlALaNzPvpTJta8vbInMeijoriOr0O_bEDxl3Uu403ibN07jOQ693RR900depyPNyuH8HjZb2rTtf2Qq6EK3H5LC3qTMIHC0wBkcC4BxzSBUkQcJAHokMVowgxnv1_gDYqzbK:1ukNFL:erNRgRkQGWdppghECJp5nX5GwmV2EQY0G6qUktAPau4	2025-08-22 13:34:59.725708+00
nw9q8fy3027i0w7y5z2wo7zzm5xu47sd	.eJxVjDsOwjAQBe_iGllef7OU9JzB2qzXOIASKZ8KcXeIlALaNzPvpTJta8vbInMeijoriOr0O_bEDxl3Uu403ibN07jOQ693RR900depyPNyuH8HjZb2rTtf2Qq6EK3H5LC3qTMIHC0wBkcC4BxzSBUkQcJAHokMVowgxnv1_gDYqzbK:1ukNFY:5cXhyjd4OfJUPHNwbPsCko5GNwJ9F5ntATxqvtrdh_Y	2025-08-22 13:35:12.027971+00
mvx2gvh6yb54jrq0bnxs6c2qjdlf06at	.eJxVjDsOwjAQBe_iGllef7OU9JzB2qzXOIASKZ8KcXeIlALaNzPvpTJta8vbInMeijoriOr0O_bEDxl3Uu403ibN07jOQ693RR900depyPNyuH8HjZb2rTtf2Qq6EK3H5LC3qTMIHC0wBkcC4BxzSBUkQcJAHokMVowgxnv1_gDYqzbK:1ukNGP:oy7fbob7iOD72cc_WKz7EazYr-t48gPpdPjewXGmUPs	2025-08-22 13:36:05.911037+00
pmkapg1xdu54w4twrcttonzp0n3ezveo	.eJxVjDkOwjAUBe_iGllxvPChpOcM1l9sHEC2FCcV4u4QKQW0b2beS0VclxLXnuY4iTorow6_GyE_Ut2A3LHemuZWl3kivSl6p11fm6TnZXf_Dgr28q2BmClksmANj0TijSS2CTF7S4MDseCAk0eTT1ZGCeiHECCQCDh_VO8PGGc4vw:1ukNJ0:kOGOZp1FbE_LiIizRw9pWVznLAO4EI9egJiZmqVel9s	2025-08-22 13:38:46.973714+00
v9wkzoslxbxi778sfzl8fiin1qwak6rc	.eJxVjMsOwiAQRf-FtSFAebp07zeQYQakaiAp7cr479qkC93ec859sQjbWuM28hJnYmcmHTv9jgnwkdtO6A7t1jn2ti5z4rvCDzr4tVN-Xg7376DCqN_akchgECh4hQqDEQa9CMHrBISJppJKUUkXL42XBV2evEXtAOxkKQf2_gAurDkM:1ukNMO:QTlq2OupCIVFif-UDNpV_p2Z6V66B7t9avwSgR3bDW8	2025-08-22 13:42:16.418886+00
zri4pme7v80s7ljrvddz3ch26di5c2zo	.eJxVjDsOwjAQBe_iGln-bbympOcM1jpr4wBypDipEHeHSCmgfTPzXiLStta49bzEicVZWBSn3zHR-MhtJ3yndpvlOLd1mZLcFXnQLq8z5-flcP8OKvX6rb13mrHYYnTQJlkMQ0HMHhGCM4bAG3JDAgfKAWcFzIoCcrA-oDdWvD_WVjaH:1uvTlr:7xYY5jku2Btz2sqCLtVvVjcmJHaTANmgBN6Bplp7i_w	2025-09-22 04:46:27.847935+00
ltsyi35st0rpuntt7ssabhylzvjzfjds	.eJxVjDsOwjAQBe_iGlne-LMxJX3OEG3sNQ4gW4qTCnF3EikFtG9m3luMtK153Bov4xzFVWgnLr_jROHJ5SDxQeVeZahlXeZJHoo8aZNDjfy6ne7fQaaW95qUBbZgVTKeMVCP2oFFjNoo7Dwrb2Lyxk0YDEMA1SN0u40OPCWXxOcL3xM2-A:1uvU1V:CFizmQ1Qa0oHpUCHA21AdPGZ7UPQuxG6Sni6otrrAzs	2025-09-22 05:02:37.816978+00
xfxi7jcnd8md37xp7uv381twoll7eq02	.eJxVjDsOwjAQBe_iGlne-LMxJX3OEG3sNQ4gW4qTCnF3EikFtG9m3luMtK153Bov4xzFVWgnLr_jROHJ5SDxQeVeZahlXeZJHoo8aZNDjfy6ne7fQaaW95qUBbZgVTKeMVCP2oFFjNoo7Dwrb2Lyxk0YDEMA1SN0u40OPCWXxOcL3xM2-A:1uvU1W:e-zqi-nKD_8NylVsWToaHQP5RniT3LOx49BRx0UYQUA	2025-09-22 05:02:38.44741+00
kyppvrwhlxkw1ya8xuj5l13drtbi6x5h	.eJxVjMsOwiAURP-FtSG8BZfu_QZyLxekaiAp7cr477ZJF7qbzDkzbxZhXWpcR57jROzCdGCn3xIhPXPbCT2g3TtPvS3zhHxX-EEHv3XKr-vh_h1UGHVbA0jhFRY4F6uKE-S9SSIhibCFoo3JmpwEU7BYgoSOrITskiOFLgj2-QIsQjkc:1uvU3s:HWqk11Bqt_HDdbLMDkpLdj-tAtAyHwqD8qfN4YBsgKw	2025-09-22 05:05:04.143009+00
biglfhgvnm266tbzo6n62whltfjlmyol	.eJxVjEEOwiAQRe_C2pAZIKW4dO8ZyDADUjU0Ke3KeHdt0oVu_3vvv1Skba1x63mJk6izcqBOv2MifuS2E7lTu82a57YuU9K7og_a9XWW_Lwc7t9BpV6_NRopZItHCEDoeSjgxmACOISRgQ3KUAyLFecICmNKiN4HtMTeZqPeH-8yN38:1uvtsQ:IatC5_ut_BJJei7kmM2tDeMloDddkFkGW4VaeLJnX84	2025-09-23 08:38:58.942103+00
2vkekmeitnigphi8gxr3ajh98453ydme	.eJxVjDsOwjAQBe_iGln-fyjpOYPlXW9wANlSnFSIu0OkFNC-mXkvlvK21rQNWtJc2JkZyU6_I2R8UNtJued26xx7W5cZ-K7wgw5-7YWel8P9O6h51G9twbricwh68lqUWIQUTkiZUUsktKAAEfwUlVJEEIlIO-lVMDZocIa9PwdzN_0:1uwieU:35AbE-XjPw3AVvbR7oNwSxphThCI-rGkgZnKJs8MsnA	2025-09-25 14:51:58.973254+00
65ujyhun0jp03ht0y2kpmigig1vdc4pn	.eJxVjEEOwiAQRe_C2hAYoFNduu8ZyAxDpWpoUtqV8e7apAvd_vfef6lI21ri1vISJ1EX5UGdfkem9Mh1J3Knept1muu6TKx3RR-06WGW_Lwe7t9BoVa-deIQ0PUI6QzWYh8YLBl0Fm0yHg2NQN4E3wm67NAHdgJZQEyXkXFU7w_QsDcF:1uwtQz:t3jAdq4_0I2tHh6wDduMnO3bVmtpEL-3N0SstNOzKE0	2025-09-26 02:22:45.023537+00
te43emzhycbbqbz3ljf95l50ngz16xpy	.eJxVjDEOwyAQBP9CHSEwGHDK9H4DOri74CTCkrGrKH-PLblImi12ZvctImxriVujJU4orsIacfktE-Qn1YPgA-p9lnmu6zIleSjypE2OM9Lrdrp_BwVa2dcde85kBhcU6gB28DloVnskSr122pFGCNyH1HmF2Vo2SEaxcta7pMXnCw55OAs:1v0LrI:iP9PM7tOtyogWFUXvJNxkf5-5ooGRjyL6ySADZUPRZ4	2025-10-05 15:20:12.945961+00
3sps733c90rlqxl7p1g6cqhjshvv5mx5	.eJxVjEEOwiAQRe_C2hDAgQ4u3fcMZGBAqoYmpV0Z765NutDtf-_9lwi0rTVsPS9hYnERAOL0O0ZKj9x2wndqt1mmua3LFOWuyIN2Oc6cn9fD_Tuo1Ou3tu4MznpDqMrAmrO2Ch16VRBy0Uw-ogVAEwtoJOO9QZfMkCIYIEbx_gDhTDc0:1v7Zcj:xFgeVv8vqVo_hI9px1aYAaTcw6F02wkVQ-2ZQQG4EwI	2025-10-25 13:27:01.224641+00
59sqwzq59of5l9993l98yz43doys7m0g	.eJxVjEsOAiEQBe_C2hCg2wFcup8zEBoaGTWQzGdlvLtOMgvdvqp6LxHittawLTyHKYuL0OL0u1FMD247yPfYbl2m3tZ5Irkr8qCLHHvm5_Vw_w5qXOq3Vh4VMhREBYbZKAtDdI4MDZqNBSAwKidi79kiJLSs3Zk9DVgM5SLeH7rkN3A:1vR0hT:YVYPQvk7Lkw347EsS1ztVsQvtPSOVLo_ME5iT2aAelg	2025-12-18 04:12:15.324623+00
\.


--
-- Data for Name: jcourse_api_announcement; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.jcourse_api_announcement (id, title, message, created_at, available, url) FROM stdin;
\.


--
-- Data for Name: jcourse_api_apikey; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.jcourse_api_apikey (id, key, description, is_enabled, modified_at) FROM stdin;
\.


--
-- Data for Name: jcourse_api_category; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.jcourse_api_category (id, name) FROM stdin;
1	专业
2	通识
3	实践
4	其他
5	通选
\.


--
-- Data for Name: jcourse_api_contributor; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.jcourse_api_contributor (id, name, contribution_type, description, avatar, github, contributions, is_active, created_at, class_name) FROM stdin;
1	邹思瑞	code	项目筹备\r\n网站搭建部署	http://www.harrycn.com	Harry51888	1	t	2025-08-08 12:04:00+00	24级国家经济学拔尖学生培养基地班
\.


--
-- Data for Name: jcourse_api_department; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.jcourse_api_department (id, name) FROM stdin;
1	金融学院
2	经济与管理研究院
3	计算机与人工智能学院
4	经济学院
5	法学院
6	统计学院
7	国际商学院
8	财政税务学院
9	外国语学院
10	工商管理学院
11	会计学院
12	数学学院
13	纽约城市大学巴鲁学院
14	特拉华数据科学学院
15	心理健康教育中心
16	学生职业规划与就业指导中心
17	公共管理学院
18	管理科学与工程学院
19	人文与艺术学院
20	会计学（中外合作办学）项目
21	武装部
22	马克思主义学院
23	社会发展研究院
24	经济管理实验教学中心
25	西部商学院
26	人文学院
27	中国西部经济研究院
28	体育学院
29	国际教育学院
30	统计与数据科学学院
\.


--
-- Data for Name: jcourse_api_semester; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.jcourse_api_semester (id, name, available) FROM stdin;
1	2024-1	t
2	2024-2	t
3	2025-1	t
\.


--
-- Data for Name: jcourse_api_teacher; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.jcourse_api_teacher (id, tid, name, title, pinyin, abbr_pinyin, department_id, last_semester_id) FROM stdin;
1	\N	张栋浩	\N	zhangdonghao	zdh	1	\N
2	\N	程文颢	\N	chengwenhao	cwh	2	\N
3	\N	童牧	\N	tongmu	tm	1	\N
4	\N	韩延明	\N	hanyanming	hym	3	\N
5	\N	陈蓓	\N	chenbei	cb	3	\N
6	\N	卫柯臻	\N	weikezhen	wkz	3	\N
7	\N	严文龙	\N	yanwenlong	ywl	1	\N
8	\N	刘子嘉	\N	liuzijia	lzj	4	\N
9	\N	李洪	\N	lihong	lh	1	\N
10	\N	彭雪梅	\N	pengxuemei	pxm	1	\N
11	\N	朱衡	\N	zhuheng	zh	1	\N
12	\N	黄丽娟	\N	huanglijuan	hlj	5	\N
13	\N	杨斐滟/荣幸	\N	yangfeiyan/rongxing	yfy/rx	1	\N
14	\N	黄子航	\N	huangzihang	hzh	1	\N
15	\N	王伊琳	\N	wangyilin	wyl	1	\N
16	\N	王伊琳/荣幸	\N	wangyilin/rongxing	wyl/rx	1	\N
17	\N	张佳	\N	zhangjia	zj	6	\N
18	\N	颜学勇	\N	yanxueyong	yxy	7	\N
19	\N	高静	\N	gaojing	gj	6	\N
20	\N	陈姚	\N	chenyao	cy	3	\N
21	\N	黄鹂	\N	huangli	hl	3	\N
22	\N	王文乾	\N	wangwenqian	wwq	4	\N
23	\N	周晓蓉	\N	zhouxiaorong	zxr	8	\N
24	\N	宁炜	\N	ningwei	nw	1	\N
25	\N	杨军华	\N	yangjunhua	yjh	9	\N
26	\N	陈鹏	\N	chenpeng	cp	5	\N
27	\N	刘奕	\N	liuyi	ly	2	\N
28	\N	林茂	\N	linmao	lm	10	\N
29	\N	江涛	\N	jiangtao	jt	11	\N
30	\N	赖黎	\N	laili	ll	11	\N
31	\N	高琪	\N	gaoqi	gq	8	\N
32	\N	郭佩霞	\N	guopeixia	gpx	8	\N
33	\N	李娜	\N	lina	ln	8	\N
34	\N	李楠	\N	linan	ln	8	\N
35	\N	秦士坤	\N	qinshikun	qsk	8	\N
36	\N	文峰	\N	wenfeng	wf	8	\N
37	\N	杨进	\N	yangjin	yj	8	\N
38	\N	张筱歌	\N	zhangxiaoge	zxg	8	\N
39	\N	周克清/马骁	\N	zhoukeqing/maxiao	zkq/mx	8	\N
40	\N	黄策	\N	huangce	hc	8	\N
41	\N	王茹	\N	wangru	wr	8	\N
42	\N	杨良松	\N	yangliangsong	yls	8	\N
43	\N	张楠	\N	zhangnan	zn	8	\N
44	\N	郭姣	\N	guojiao	gj	10	\N
45	\N	黄大康/石启超	\N	huangdakang/shiqichao	hdk/sqc	4	\N
46	\N	冯保伟	\N	fengbaowei	fbw	12	\N
47	\N	梁之磊	\N	liangzhilei	lzl	12	\N
48	\N	丁如曦	\N	dingruxi	drx	4	\N
49	\N	唐富君	\N	tangfujun	tfj	11	\N
50	\N	赵柄皓	\N	zhaobinghao	zbh	11	\N
51	\N	赵珂意	\N	zhaokeyi	zky	11	\N
52	\N	冯硕	\N	fengshuo	fs	11	\N
53	\N	郝若欣	\N	haoruoxin	hrx	13	\N
54	\N	宋浩	\N	songhao	sh	11	\N
55	\N	蔡庆	\N	caiqing	cq	3	\N
56	\N	何福良	\N	hefuliang	hfl	3	\N
57	\N	龚凯	\N	gongkai	gk	3	\N
58	\N	郭黎明	\N	guoliming	glm	3	\N
59	\N	梅少环	\N	meishaohuan	msh	3	\N
60	\N	肖朝文	\N	xiaochaowen	xcw	3	\N
61	\N	杨彪	\N	yangbiao	yb	3	\N
62	\N	钟俊英	\N	zhongjunying	zjy	3	\N
63	\N	夏怡凡/李俭富/陈磊	\N	xiayifan/lijianfu/chenlei	xyf/ljf/cl	6	\N
64	\N	彭博	\N	pengbo	pb	7	\N
65	\N	Arron Phillips	\N	Arron Phillips	Arron Phillips	7	\N
66	\N	李瑞	\N	lirui	lr	8	\N
67	\N	杨御龙	\N	yangyulong	yyl	3	\N
68	\N	袁晓	\N	yuanxiao	yx	12	\N
69	\N	廖米	\N	liaomi	lm	14	\N
70	\N	卢琦	\N	luqi	lq	14	\N
71	\N	王耀荣	\N	wangyaorong	wyr	14	\N
72	\N	陈智	\N	chenzhi	cz	3	\N
73	\N	陈实	\N	chenshi	cs	5	\N
74	\N	杜芳	\N	dufang	df	3	\N
75	\N	范江波	\N	fanjiangbo	fjb	3	\N
76	\N	陈小龙	\N	chenxiaolong	cxl	3	\N
77	\N	彭璇	\N	pengxuan	px	11	\N
78	\N	王显珏/黄健/刘洋/笪亨果	\N	wangxianjue/huangjian/liuyang/dahengguo	wxj/hj/ly/dhg	11	\N
79	\N	丁可星	\N	dingkexing	dkx	11	\N
80	\N	郝金星	\N	haojinxing	hjx	11	\N
81	\N	郝金星/易阳	\N	haojinxing/yiyang	hjx/yy	11	\N
82	\N	刘悦	\N	liuyue	ly	11	\N
83	\N	马祥	\N	maxiang	mx	4	\N
84	\N	王貂	\N	wangdiao	wd	4	\N
85	\N	肖翰	\N	xiaohan	xh	4	\N
86	\N	徐舒	\N	xushu	xs	4	\N
87	\N	陈佳	\N	chenjia	cj	10	\N
88	\N	田晓丽	\N	tianxiaoli	txl	10	\N
89	\N	吴裕珠	\N	wuyuzhu	wyz	10	\N
90	\N	陈东	\N	chendong	cd	9	\N
91	\N	陈秋达	\N	chenqiuda	cqd	15	\N
92	\N	方从慧	\N	fangconghui	fch	15	\N
93	\N	苟洪英	\N	gouhongying	ghy	15	\N
94	\N	何媛媛/冯卫东	\N	heyuanyuan/fengweidong	hyy/fwd	15	\N
95	\N	黄巍/刘思涓	\N	huangwei/liusijuan	hw/lsj	15	\N
96	\N	孔丽娟	\N	konglijuan	klj	15	\N
97	\N	李锦旭	\N	lijinxu	ljx	15	\N
98	\N	刘曼冬	\N	liumandong	lmd	15	\N
99	\N	刘亚琨	\N	liuyakun	lyk	15	\N
100	\N	马春蓉/宋晋	\N	machunrong/songjin	mcr/sj	15	\N
101	\N	宋晓莉/许晓卉	\N	songxiaoli/xuxiaohui	sxl/xxh	15	\N
102	\N	王保/杨瑶	\N	wangbao/yangyao	wb/yy	15	\N
103	\N	伍泽莲	\N	wuzelian	wzl	15	\N
104	\N	徐彩慧	\N	xucaihui	xch	15	\N
105	\N	严霞	\N	yanxia	yx	15	\N
106	\N	杨瑶/王保	\N	yangyao/wangbao	yy/wb	15	\N
107	\N	张杨雪	\N	zhangyangxue	zyx	15	\N
108	\N	赵萍萍	\N	zhaopingping	zpp	15	\N
109	\N	郑敏思	\N	zhengminsi	zms	15	\N
110	\N	周国波/缪丹	\N	zhouguobo/moudan	zgb/md	15	\N
111	\N	周正	\N	zhouzheng	zz	15	\N
112	\N	缪丹/周国波	\N	moudan/zhouguobo	md/zgb	15	\N
113	\N	蔡璐遥/罗锋	\N	cailuyao/luofeng	cly/lf	16	\N
114	\N	陈毅	\N	chenyi	cy	16	\N
115	\N	崔雅岚	\N	cuiyalan	cyl	16	\N
116	\N	方小书	\N	fangxiaoshu	fxs	16	\N
117	\N	高赟	\N	gaoyun	gy	16	\N
118	\N	郭晨阳/高赟	\N	guochenyang/gaoyun	gcy/gy	16	\N
119	\N	胡峥	\N	huzheng	hz	16	\N
120	\N	李思雨	\N	lisiyu	lsy	16	\N
121	\N	凌小梅	\N	lingxiaomei	lxm	16	\N
122	\N	刘畅	\N	liuchang	lc	16	\N
123	\N	刘畅/王璐璐	\N	liuchang/wanglulu	lc/wll	16	\N
124	\N	刘余/蔡雨娟	\N	liuyu/caiyujuan	ly/cyj	16	\N
125	\N	卢舟一星	\N	luzhouyixing	lzyx	16	\N
126	\N	罗晗葳	\N	luohanwei	lhw	16	\N
127	\N	骆岭	\N	luoling	ll	16	\N
128	\N	孟伟伟	\N	mengweiwei	mww	16	\N
129	\N	秦怡	\N	qinyi	qy	16	\N
130	\N	任平	\N	renping	rp	16	\N
131	\N	宋珂慧	\N	songkehui	skh	16	\N
132	\N	王芳	\N	wangfang	wf	16	\N
133	\N	王慧/刘坤	\N	wanghui/liukun	wh/lk	16	\N
134	\N	王佳欣	\N	wangjiaxin	wjx	16	\N
135	\N	王宇皓/李昕怡	\N	wangyuhao/lixinyi	wyh/lxy	16	\N
136	\N	王妍	\N	wangyan	wy	16	\N
137	\N	王璐璐	\N	wanglulu	wll	16	\N
138	\N	王昱夫	\N	wangyufu	wyf	16	\N
139	\N	吴龙霞	\N	wulongxia	wlx	16	\N
140	\N	徐淼	\N	xumiao	xm	16	\N
141	\N	杨凌峰	\N	yanglingfeng	ylf	16	\N
142	\N	杨宇哲/初晨	\N	yangyuzhe/chuchen	yyz/cc	16	\N
143	\N	杨宇哲/王隆庆	\N	yangyuzhe/wanglongqing	yyz/wlq	16	\N
144	\N	易家维	\N	yijiawei	yjw	16	\N
145	\N	张太富	\N	zhangtaifu	ztf	16	\N
146	\N	赵立立	\N	zhaolili	zll	16	\N
147	\N	朱韵伊	\N	zhuyunyi	zyy	16	\N
148	\N	缪晨熙	\N	mouchenxi	mcx	16	\N
149	\N	林飞	\N	linfei	lf	3	\N
150	\N	徐扬帆/蔡晓陈/高云舒	\N	xuyangfan/caixiaochen/gaoyunshu	xyf/cxc/gys	4	\N
151	\N	马珂	\N	make	mk	17	\N
152	\N	段易	\N	duanyi	dy	9	\N
153	\N	郭海燕	\N	guohaiyan	ghy	9	\N
154	\N	刘豪	\N	liuhao	lh	9	\N
155	\N	唐宏宇	\N	tanghongyu	thy	9	\N
156	\N	赵娟	\N	zhaojuan	zj	9	\N
157	\N	伍晶	\N	wujing	wj	18	\N
158	\N	李忠俊	\N	lizhongjun	lzj	18	\N
159	\N	戴琳琳/陈雪蓉	\N	dailinlin/chenxuerong	dll/cxr	6	\N
160	\N	DUBOIS DOMINIQUE	\N	DUBOIS DOMINIQUE	DUBOIS DOMINIQUE	10	\N
161	\N	刘磊	\N	liulei	ll	5	\N
162	\N	张欣	\N	zhangxin	zx	5	\N
163	\N	赵海程	\N	zhaohaicheng	zhc	5	\N
164	\N	兰荣杰/郑敏思	\N	lanrongjie/zhengminsi	lrj/zms	5	\N
165	\N	杨延延	\N	yangyanyan	yyy	9	\N
166	\N	邓洋	\N	dengyang	dy	12	\N
167	\N	张佛德/郭斌	\N	zhangfude/guobin	zfd/gb	6	\N
168	\N	王吟之	\N	wangyinzhi	wyz	1	\N
169	\N	吴量	\N	wuliang	wl	6	\N
170	\N	丁少群	\N	dingshaoqun	dsq	17	\N
171	\N	徐华	\N	xuhua	xh	1	\N
172	\N	殷崔红	\N	yincuihong	ych	1	\N
173	\N	廖毅	\N	liaoyi	ly	14	\N
174	\N	杨石磊	\N	yangshilei	ysl	14	\N
175	\N	自动生成	\N	zidongshengcheng	zdsc	1	\N
176	\N	陈善镇	\N	chenshanzhen	csz	12	\N
177	\N	黄文毅	\N	huangwenyi	hwy	12	\N
178	\N	黄文毅/赖绍永	\N	huangwenyi/laishaoyong	hwy/lsy	12	\N
179	\N	赖绍永	\N	laishaoyong	lsy	12	\N
180	\N	李绍文	\N	lishaowen	lsw	12	\N
181	\N	骆川义	\N	luochuanyi	lcy	12	\N
182	\N	马捷/陈善镇	\N	majie/chenshanzhen	mj/csz	12	\N
183	\N	王鸣晖	\N	wangminghui	wmh	12	\N
184	\N	吴萌	\N	wumeng	wm	12	\N
185	\N	徐凤	\N	xufeng	xf	12	\N
186	\N	杨扬	\N	yangyang	yy	12	\N
187	\N	游杰	\N	youjie	yj	12	\N
188	\N	岳佳	\N	yuejia	yj	12	\N
189	\N	马昀蓓	\N	mayunbei	myb	6	\N
190	\N	黄勔	\N	huangmian	hm	2	\N
191	\N	王泽明	\N	wangzeming	wzm	2	\N
192	\N	周亚晶	\N	zhouyajing	zyj	3	\N
193	\N	林锐	\N	linrui	lr	1	\N
194	\N	何婧/常晋源	\N	hejing/changjinyuan	hj/cjy	6	\N
195	\N	陈轶骅	\N	chenyihua	cyh	12	\N
196	\N	杜彬彬	\N	dubinbin	dbb	12	\N
197	\N	樊胜/马捷	\N	fansheng/majie	fs/mj	12	\N
198	\N	高雪梅	\N	gaoxuemei	gxm	12	\N
199	\N	顾先明	\N	guxianming	gxm	12	\N
200	\N	韩本三	\N	hanbensan	hbs	12	\N
201	\N	李静	\N	lijing	lj	12	\N
202	\N	李坤	\N	likun	lk	12	\N
203	\N	孙云龙	\N	sunyunlong	syl	12	\N
204	\N	杨文昇	\N	yangwensheng	yws	12	\N
205	\N	张炜	\N	zhangwei	zw	12	\N
206	\N	赵建容	\N	zhaojianrong	zjr	12	\N
207	\N	朱胜坤	\N	zhushengkun	zsk	12	\N
208	\N	戴岱	\N	daidai	dd	12	\N
209	\N	代宏霞	\N	daihongxia	dhx	12	\N
210	\N	李凤英	\N	lifengying	lfy	12	\N
211	\N	李双龙	\N	lishuanglong	lsl	12	\N
212	\N	刘彩平	\N	liucaiping	lcp	12	\N
213	\N	刘文月	\N	liuwenyue	lwy	12	\N
214	\N	孟开文	\N	mengkaiwen	mkw	12	\N
215	\N	蒲洋/王锐	\N	puyang/wangrui	py/wr	12	\N
216	\N	王开弘	\N	wangkaihong	wkh	12	\N
217	\N	王磊	\N	wanglei	wl	12	\N
218	\N	王韦龙	\N	wangweilong	wwl	12	\N
219	\N	王祥	\N	wangxiang	wx	12	\N
220	\N	吴静	\N	wujing	wj	12	\N
221	\N	余喜生	\N	yuxisheng	yxs	12	\N
222	\N	张清邦	\N	zhangqingbang	zqb	12	\N
223	\N	祝书强	\N	zhushuqiang	zsq	12	\N
224	\N	屠致远	\N	tuzhiyuan	tzy	11	\N
225	\N	步丹璐	\N	budanlu	bdl	11	\N
226	\N	谭洪涛	\N	tanhongtao	tht	11	\N
227	\N	杨鸣京	\N	yangmingjing	ymj	11	\N
228	\N	赵海龙	\N	zhaohailong	zhl	11	\N
229	\N	邹燕	\N	zouyan	zy	11	\N
230	\N	曾婷	\N	cengting	ct	2	\N
231	\N	高强	\N	gaoqiang	gq	3	\N
232	\N	彭云雁	\N	pengyunyan	pyy	9	\N
233	\N	张家瑞	\N	zhangjiarui	zjr	9	\N
234	\N	任君秋拾	\N	renjunqiushi	rjqs	2	\N
235	\N	刘军	\N	liujun	lj	7	\N
236	\N	罗列	\N	luolie	ll	9	\N
237	\N	李朝容	\N	lichaorong	lcr	9	\N
238	\N	杨磊	\N	yanglei	yl	9	\N
239	\N	李桦林	\N	lihualin	lhl	4	\N
240	\N	梁志杰	\N	liangzhijie	lzj	10	\N
241	\N	田俊峰	\N	tianjunfeng	tjf	10	\N
242	\N	杨勇剑	\N	yangyongjian	yyj	18	\N
243	\N	黄志勇	\N	huangzhiyong	hzy	17	\N
244	\N	潘少杰	\N	panshaojie	psj	17	\N
245	\N	陈建东	\N	chenjiandong	cjd	17	\N
246	\N	任勤/高明	\N	renqin/gaoming	rq/gm	17	\N
247	\N	刘派诚/顾绚	\N	liupaicheng/guxuan	lpc/gx	17	\N
248	\N	张雪莲	\N	zhangxuelian	zxl	9	\N
249	\N	李力/吴君凤	\N	lili/wujunfeng	ll/wjf	8	\N
250	\N	陈康	\N	chenkang	ck	1	\N
251	\N	傅立立	\N	fulili	fll	1	\N
252	\N	唐廷凤	\N	tangtingfeng	ttf	1	\N
253	\N	陶启智	\N	taoqizhi	tqz	1	\N
254	\N	魏嘉莹	\N	weijiaying	wjy	1	\N
255	\N	夏常源	\N	xiachangyuan	xcy	1	\N
256	\N	张翼	\N	zhangyi	zy	1	\N
257	\N	周玮	\N	zhouwei	zw	1	\N
258	\N	陈苡文	\N	chenyiwen	cyw	1	\N
259	\N	郭琳	\N	guolin	gl	1	\N
260	\N	许志	\N	xuzhi	xz	1	\N
261	\N	Kim Gunchang	\N	Kim Gunchang	Kim Gunchang	2	\N
262	\N	尚华/张大永	\N	shanghua/zhangdayong	sh/zdy	2	\N
263	\N	刘洋洋	\N	liuyangyang	lyy	19	\N
264	\N	柳涯妮	\N	liuyani	lyn	19	\N
265	\N	卢俊霖	\N	lujunlin	ljl	19	\N
266	\N	王競一	\N	wangjingyi	wjy	19	\N
267	\N	谢林子	\N	xielinzi	xlz	19	\N
268	\N	杨小涵	\N	yangxiaohan	yxh	19	\N
269	\N	张钧涵	\N	zhangjunhan	zjh	19	\N
270	\N	张馨月	\N	zhangxinyue	zxy	19	\N
271	\N	李丽莎	\N	lilisha	lls	1	\N
272	\N	徐加根	\N	xujiagen	xjg	1	\N
273	\N	陈磊	\N	chenlei	cl	11	\N
274	\N	王刚	\N	wanggang	wg	14	\N
275	\N	Arron Phillips/SORIN EUGEN PIPERCA	\N	Arron Phillips/SORIN EUGEN PIPERCA	Arron Phillips/SORIN EUGEN PIPERCA	7	\N
276	\N	付嵘	\N	furong	fr	10	\N
277	\N	高歌	\N	gaoge	gg	10	\N
278	\N	高莉芳/胡国平/李幸	\N	gaolifang/huguoping/lixing	glf/hgp/lx	10	\N
279	\N	李丁	\N	liding	ld	10	\N
280	\N	李幸/何杰	\N	lixing/hejie	lx/hj	10	\N
281	\N	林燕玲	\N	linyanling	lyl	10	\N
282	\N	毛奕欢	\N	maoyihuan	myh	10	\N
283	\N	温俊杰	\N	wenjunjie	wjj	10	\N
284	\N	吴戈	\N	wuge	wg	10	\N
285	\N	谢小蓉	\N	xiexiaorong	xxr	10	\N
286	\N	徐险峰	\N	xuxianfeng	xxf	10	\N
287	\N	余宇	\N	yuyu	yy	10	\N
288	\N	任杨玲	\N	renyangling	ryl	17	\N
289	\N	王霞	\N	wangxia	wx	17	\N
290	\N	陈桓亘	\N	chenhuangen	chg	10	\N
291	\N	沈涛	\N	shentao	st	10	\N
292	\N	车瑜	\N	cheyu	cy	9	\N
293	\N	陈惠	\N	chenhui	ch	9	\N
294	\N	林红霞/施思	\N	linhongxia/shisi	lhx/ss	10	\N
295	\N	任鹊羽/吴园园	\N	renqueyu/wuyuanyuan	rqy/wyy	10	\N
296	\N	谢梦影/陈志杰	\N	xiemengying/chenzhijie	xmy/czj	10	\N
297	\N	杨付	\N	yangfu	yf	10	\N
298	\N	宗树伟	\N	zongshuwei	zsw	10	\N
299	\N	张婷	\N	zhangting	zt	18	\N
300	\N	雷芸/姜玉梅	\N	leiyun/jiangyumei	ly/jym	5	\N
301	\N	雷芸/廖振中	\N	leiyun/liaozhenzhong	ly/lzz	5	\N
302	\N	雷芸/陆佳	\N	leiyun/lujia	ly/lj	5	\N
303	\N	雷芸/张怀岭	\N	leiyun/zhanghuailing	ly/zhl	5	\N
304	\N	刘尉	\N	liuwei	lw	5	\N
305	\N	何奕	\N	heyi	hy	7	\N
306	\N	Stocker John	\N	Stocker John	Stocker John	14	\N
307	\N	刘攀	\N	liupan	lp	1	\N
308	\N	蒋海曦/王诗逸/赵元	\N	jianghaixi/wangshiyi/zhaoyuan	jhx/wsy/zy	7	\N
309	\N	张晓倩	\N	zhangxiaoqian	zxq	1	\N
310	\N	郑平	\N	zhengping	zp	1	\N
311	\N	赵静梅	\N	zhaojingmei	zjm	1	\N
312	\N	朱可涵	\N	zhukehan	zkh	1	\N
313	\N	陈勇	\N	chenyong	cy	1	\N
314	\N	陈丽丽	\N	chenlili	cll	7	\N
315	\N	邓兴华	\N	dengxinghua	dxh	7	\N
316	\N	李谭	\N	litan	lt	7	\N
317	\N	蔡龙飞	\N	cailongfei	clf	7	\N
318	\N	邓富华	\N	dengfuhua	dfh	7	\N
319	\N	冯连月	\N	fenglianyue	fly	7	\N
320	\N	高超	\N	gaochao	gc	7	\N
321	\N	黄载曦	\N	huangzaixi	hzx	7	\N
322	\N	蒋海曦	\N	jianghaixi	jhx	7	\N
323	\N	李长青	\N	lichangqing	lcq	7	\N
324	\N	李娟	\N	lijuan	lj	7	\N
325	\N	李娟/邓兴华/杨娜	\N	lijuan/dengxinghua/yangna	lj/dxh/yn	7	\N
326	\N	李雨浓	\N	liyunong	lyn	7	\N
327	\N	廖赛男	\N	liaosainan	lsn	7	\N
328	\N	吕小锋	\N	lvxiaofeng	lxf	7	\N
329	\N	王博	\N	wangbo	wb	7	\N
330	\N	阎丽	\N	yanli	yl	7	\N
331	\N	周茂	\N	zhoumao	zm	7	\N
332	\N	全智	\N	quanzhi	qz	9	\N
333	\N	王欷燕	\N	wangxiyan	wxy	9	\N
334	\N	刘夏明	\N	liuxiaming	lxm	7	\N
335	\N	陈林	\N	chenlin	cl	7	\N
336	\N	Cameron ThomasWalton	\N	Cameron ThomasWalton	Cameron ThomasWalton	7	\N
337	\N	Lee Anthony Ruiz	\N	Lee Anthony Ruiz	Lee Anthony Ruiz	7	\N
338	\N	Pramodh VKumer	\N	Pramodh VKumer	Pramodh VKumer	7	\N
339	\N	丁飒飒	\N	dingsasa	dss	7	\N
340	\N	高笛	\N	gaodi	gd	7	\N
341	\N	雷涌	\N	leiyong	ly	7	\N
342	\N	李丹	\N	lidan	ld	7	\N
343	\N	刘菲菲	\N	liufeifei	lff	7	\N
344	\N	刘园园	\N	liuyuanyuan	lyy	7	\N
345	\N	宁南	\N	ningnan	nn	7	\N
346	\N	唐浩丹	\N	tanghaodan	thd	7	\N
347	\N	王佳芥	\N	wangjiajie	wjj	7	\N
348	\N	向姝婷	\N	xiangshuting	xst	7	\N
349	\N	肖梦甜	\N	xiaomengtian	xmt	7	\N
350	\N	熊立	\N	xiongli	xl	7	\N
351	\N	杨娜	\N	yangna	yn	7	\N
352	\N	张山杉	\N	zhangshanshan	zss	7	\N
353	\N	赵元	\N	zhaoyuan	zy	7	\N
354	\N	甄洋	\N	zhenyang	zy	7	\N
355	\N	钟冲	\N	zhongchong	zc	7	\N
356	\N	周静	\N	zhoujing	zj	7	\N
357	\N	陈霄	\N	chenxiao	cx	8	\N
358	\N	陈彦晶	\N	chenyanjing	cyj	5	\N
359	\N	赖虹宇	\N	laihongyu	lhy	5	\N
360	\N	张芸/毛快	\N	zhangyun/maokuai	zy/mk	5	\N
361	\N	侯哲之/周凡	\N	houzhezhi/zhoufan	hzz/zf	10	\N
362	\N	胡云一/周凡	\N	huyunyi/zhoufan	hyy/zf	10	\N
363	\N	邱奕宾	\N	qiuyibin	qyb	10	\N
364	\N	刘翔实	\N	liuxiangshi	lxs	17	\N
365	\N	陈晓玲	\N	chenxiaoling	cxl	4	\N
366	\N	戴薇	\N	daiwei	dw	4	\N
367	\N	郭军杰	\N	guojunjie	gjj	4	\N
368	\N	梁鑫	\N	liangxin	lx	4	\N
369	\N	柳春	\N	liuchun	lc	4	\N
370	\N	王子奇	\N	wangziqi	wzq	4	\N
371	\N	杨慧玲	\N	yanghuiling	yhl	4	\N
372	\N	张博	\N	zhangbo	zb	4	\N
373	\N	李雪	\N	lixue	lx	14	\N
374	\N	张赟	\N	zhangyun	zy	18	\N
375	\N	阳露昭	\N	yangluzhao	ylz	5	\N
376	\N	高辉/谢嘉穗	\N	gaohui/xiejiasui	gh/xjs	20	\N
377	\N	兰伟/蒲丹	\N	lanwei/pudan	lw/pd	6	\N
378	\N	张冬	\N	zhangdong	zd	11	\N
379	\N	李贺	\N	lihe	lh	11	\N
380	\N	李朝霞	\N	lizhaoxia	lzx	11	\N
381	\N	MCMartin Andrew Stephen	\N	MCMartin Andrew Stephen	MCMartin Andrew Stephen	14	\N
382	\N	LEE Ji-Yong	\N	LEE Ji-Yong	LEE Ji-Yong	10	\N
383	\N	Panagiota Makrychoriti	\N	Panagiota Makrychoriti	Panagiota Makrychoriti	7	\N
384	\N	傅佳莎	\N	fujiasha	fjs	2	\N
385	\N	陈逸飞	\N	chenyifei	cyf	11	\N
386	\N	赵尘	\N	zhaochen	zc	11	\N
387	\N	陈懋龙	\N	chenmaolong	cml	1	\N
388	\N	戴艳萍	\N	daiyanping	dyp	1	\N
389	\N	董青马/许坤	\N	dongqingma/xukun	dqm/xk	1	\N
390	\N	何为	\N	hewei	hw	1	\N
391	\N	贺国生	\N	heguosheng	hgs	1	\N
392	\N	况昕	\N	kuangxin	kx	1	\N
393	\N	李凤	\N	lifeng	lf	1	\N
394	\N	刘亚辉	\N	liuyahui	lyh	1	\N
395	\N	马如静	\N	marujing	mrj	1	\N
396	\N	欧阳勇	\N	ouyangyong	oyy	1	\N
397	\N	彭克强	\N	pengkeqiang	pkq	1	\N
398	\N	尚玉皇	\N	shangyuhuang	syh	1	\N
399	\N	盛夏	\N	shengxia	sx	1	\N
400	\N	王慧	\N	wanghui	wh	1	\N
401	\N	王鹏	\N	wangpeng	wp	1	\N
402	\N	徐小淇	\N	xuxiaoqi	xxq	1	\N
403	\N	许坤	\N	xukun	xk	1	\N
404	\N	曾琪	\N	cengqi	cq	1	\N
405	\N	周丽晖	\N	zhoulihui	zlh	1	\N
406	\N	谢成博	\N	xiechengbo	xcb	1	\N
407	\N	刘怡蕾	\N	liuyilei	lyl	1	\N
408	\N	朱哲良	\N	zhuzheliang	zzl	1	\N
409	\N	许韵	\N	xuyun	xy	10	\N
410	\N	李彼蔚	\N	libiwei	lbw	9	\N
411	\N	郭轩	\N	guoxuan	gx	9	\N
412	\N	李琳	\N	lilin	ll	9	\N
413	\N	李新涛	\N	lixintao	lxt	9	\N
414	\N	彭博/邱甲贤	\N	pengbo/qiujiaxian	pb/qjx	10	\N
415	\N	LEE HANOL	\N	LEE HANOL	LEE HANOL	2	\N
416	\N	王天明	\N	wangtianming	wtm	12	\N
417	\N	王建楠	\N	wangjiannan	wjn	14	\N
418	\N	亢晶浩	\N	kangjinghao	kjh	10	\N
419	\N	唐静静	\N	tangjingjing	tjj	10	\N
420	\N	张欢欢/张欢欢	\N	zhanghuanhuan/zhanghuanhuan	zhh/zhh	10	\N
421	\N	贺镜宾	\N	hejingbin	hjb	1	\N
422	\N	华夏	\N	huaxia	hx	1	\N
423	\N	申峰	\N	shenfeng	sf	1	\N
424	\N	成青	\N	chengqing	cq	6	\N
425	\N	邓蔚	\N	dengwei	dw	6	\N
426	\N	梁巧	\N	liangqiao	lq	6	\N
427	\N	梁巧/刘耀午	\N	liangqiao/liuyaowu	lq/lyw	6	\N
428	\N	王玉梅	\N	wangyumei	wym	10	\N
429	\N	桑元琦	\N	sangyuanqi	syq	12	\N
430	\N	陈娟	\N	chenjuan	cj	6	\N
431	\N	范国斌	\N	fanguobin	fgb	6	\N
432	\N	耿华彦	\N	genghuayan	ghy	6	\N
433	\N	刘田	\N	liutian	lt	6	\N
434	\N	鲁万波	\N	luwanbo	lwb	6	\N
435	\N	孙秀丽	\N	sunxiuli	sxl	6	\N
436	\N	杨岚	\N	yanglan	yl	6	\N
437	\N	于博	\N	yubo	yb	6	\N
438	\N	喻开志	\N	yukaizhi	ykz	6	\N
546	\N	邵风	\N	shaofeng	sf	22	\N
439	\N	张华节	\N	zhanghuajie	zhj	6	\N
440	\N	张卫东	\N	zhangweidong	zwd	6	\N
441	\N	笪亨果	\N	dahengguo	dhg	6	\N
442	\N	秦路	\N	qinlu	ql	1	\N
443	\N	张路平	\N	zhangluping	zlp	2	\N
444	\N	胡俊/孙明	\N	hujun/sunming	hj/sm	1	\N
445	\N	白雪	\N	baixue	bx	19	\N
446	\N	谈进	\N	tanjin	tj	3	\N
447	\N	王宇	\N	wangyu	wy	18	\N
448	\N	缪春池	\N	mouchunchi	mcc	18	\N
449	\N	陈斌	\N	chenbin	cb	3	\N
450	\N	陈德伟	\N	chendewei	cdw	3	\N
451	\N	邓烨	\N	dengye	dy	3	\N
452	\N	黄士罗	\N	huangshiluo	hsl	3	\N
453	\N	蒋义军	\N	jiangyijun	jyj	3	\N
454	\N	李世佳	\N	lishijia	lsj	3	\N
455	\N	李拓航	\N	lituohang	lth	3	\N
456	\N	林珣/周峰	\N	linxun/zhoufeng	lx/zf	3	\N
457	\N	涂宏	\N	tuhong	th	3	\N
458	\N	张英	\N	zhangying	zy	3	\N
459	\N	袁玥/陈泽媛	\N	yuanyue/chenzeyuan	yy/czy	17	\N
460	\N	江龙	\N	jianglong	jl	9	\N
461	\N	方能胜	\N	fangnengsheng	fns	1	\N
462	\N	牛子龙	\N	niuzilong	nzl	1	\N
463	\N	温晓倩	\N	wenxiaoqian	wxq	1	\N
464	\N	徐彤	\N	xutong	xt	1	\N
465	\N	朱波	\N	zhubo	zb	1	\N
466	\N	刘萌	\N	liumeng	lm	2	\N
467	\N	卫杏鹏	\N	weixingpeng	wxp	2	\N
468	\N	陈汕	\N	chenshan	cs	1	\N
469	\N	赵鹭	\N	zhaolu	zl	1	\N
470	\N	田正磊	\N	tianzhenglei	tzl	1	\N
471	\N	王晓全	\N	wangxiaoquan	wxq	1	\N
472	\N	杨兴林	\N	yangxinglin	yxl	1	\N
473	\N	朱光伟	\N	zhuguangwei	zgw	1	\N
474	\N	杜茜茜	\N	duqianqian	dqq	2	\N
475	\N	黄霖	\N	huanglin	hl	2	\N
476	\N	陈梓麟/陈汕	\N	chenzilin/chenshan	czl/cs	1	\N
477	\N	郭海凤	\N	guohaifeng	ghf	1	\N
478	\N	蒲明	\N	puming	pm	1	\N
479	\N	王妍婕	\N	wangyanjie	wyj	1	\N
480	\N	梁浩	\N	lianghao	lh	12	\N
481	\N	陈坤/陈磊	\N	chenkun/chenlei	ck/cl	6	\N
482	\N	翟立宏/朱波/李志勇/李映东/徐雅静	\N	dilihong/zhubo/lizhiyong/liyingdong/xuyajing	dlh/zb/lzy/lyd/xyj	1	\N
483	\N	汪蕾/鲁篱	\N	wanglei/luli	wl/ll	5	\N
484	\N	王远均	\N	wangyuanjun	wyj	5	\N
485	\N	缪若冰	\N	mouruobing	mrb	5	\N
486	\N	张志	\N	zhangzhi	zz	4	\N
487	\N	刘金朋	\N	liujinpeng	ljp	4	\N
488	\N	韩绿艺/高远卓	\N	hanlvyi/gaoyuanzhuo	hly/gyz	4	\N
489	\N	黄霖/曾婷	\N	huanglin/cengting	hl/ct	2	\N
490	\N	Joaquin Estrader	\N	Joaquin Estrader	Joaquin Estrader	9	\N
491	\N	廖治学	\N	liaozhixue	lzx	10	\N
492	\N	李毅	\N	liyi	ly	5	\N
493	\N	徐晓炜	\N	xuxiaowei	xxw	10	\N
494	\N	阿尔达克	\N	aerdake	aedk	21	\N
495	\N	程红	\N	chenghong	ch	21	\N
496	\N	崔圣杰	\N	cuishengjie	csj	21	\N
497	\N	迪丽尼格尔·艾力	\N	dilinigeer·aili	dlnge·al	21	\N
498	\N	董雪	\N	dongxue	dx	21	\N
499	\N	贺兰云	\N	helanyun	hly	21	\N
500	\N	李风易	\N	lifengyi	lfy	21	\N
501	\N	李顺鑫	\N	lishunxin	lsx	21	\N
502	\N	李游	\N	liyou	ly	21	\N
503	\N	廖汪洋	\N	liaowangyang	lwy	21	\N
504	\N	刘坤/王慧	\N	liukun/wanghui	lk/wh	21	\N
505	\N	刘伟亮	\N	liuweiliang	lwl	21	\N
506	\N	罗松涛	\N	luosongtao	lst	21	\N
507	\N	罗元化	\N	luoyuanhua	lyh	21	\N
508	\N	任申浩	\N	renshenhao	rsh	21	\N
509	\N	王思涯	\N	wangsiya	wsy	21	\N
510	\N	杨烨	\N	yangye	yy	21	\N
511	\N	曾珍	\N	cengzhen	cz	21	\N
512	\N	张亚秋	\N	zhangyaqiu	zyq	21	\N
513	\N	张宇阁	\N	zhangyuge	zyg	21	\N
514	\N	张正军	\N	zhangzhengjun	zzj	21	\N
515	\N	张正军/闫开龙	\N	zhangzhengjun/yankailong	zzj/ykl	21	\N
516	\N	朱一强	\N	zhuyiqiang	zyq	21	\N
517	\N	李国斌	\N	liguobin	lgb	19	\N
518	\N	叶作亮/谢凤燕/李丹	\N	yezuoliang/xiefengyan/lidan	yzl/xfy/ld	7	\N
519	\N	李晨晨	\N	lichenchen	lcc	10	\N
520	\N	Sharkey Sean Robert	\N	Sharkey Sean Robert	Sharkey Sean Robert	14	\N
521	\N	梁倩	\N	liangqian	lq	9	\N
522	\N	张玮	\N	zhangwei	zw	9	\N
523	\N	刘园园/张山杉	\N	liuyuanyuan/zhangshanshan	lyy/zss	7	\N
524	\N	刘睿雯	\N	liuruiwen	lrw	17	\N
525	\N	谢鹏鑫	\N	xiepengxin	xpx	17	\N
526	\N	孙永智	\N	sunyongzhi	syz	2	\N
527	\N	曹冬梅	\N	caodongmei	cdm	17	\N
528	\N	胡务	\N	huwu	hw	17	\N
529	\N	史珈铭/毛谢恩	\N	shijiaming/maoxieen	sjm/mxe	17	\N
530	\N	李莹芳	\N	liyingfang	lyf	3	\N
531	\N	叶红/廖治学	\N	yehong/liaozhixue	yh/lzx	10	\N
532	\N	张毓峰	\N	zhangyufeng	zyf	10	\N
533	\N	叶红	\N	yehong	yh	10	\N
534	\N	薛舒予/李志勇/胡晓/陈汕	\N	xueshuyu/lizhiyong/huxiao/chenshan	xsy/lzy/hx/cs	1	\N
535	\N	谷飙	\N	gubiao	gb	19	\N
536	\N	徐召清	\N	xuzhaoqing	xzq	19	\N
537	\N	付敏	\N	fumin	fm	20	\N
538	\N	刘越	\N	liuyue	ly	19	\N
539	\N	朱敏/付敏	\N	zhumin/fumin	zm/fm	19	\N
540	\N	朱敏/刘越	\N	zhumin/liuyue	zm/ly	19	\N
541	\N	查少刚	\N	chashaogang	csg	22	\N
542	\N	都兰军	\N	doulanjun	dlj	22	\N
543	\N	范伟伟	\N	fanweiwei	fww	22	\N
544	\N	何衍林	\N	heyanlin	hyl	22	\N
545	\N	倪晶晶	\N	nijingjing	njj	22	\N
547	\N	唐晓勇	\N	tangxiaoyong	txy	22	\N
548	\N	王凡	\N	wangfan	wf	22	\N
549	\N	吴姗	\N	wushan	ws	22	\N
550	\N	许鹏	\N	xupeng	xp	22	\N
551	\N	祝佳兴	\N	zhujiaxing	zjx	22	\N
552	\N	陈志舟	\N	chenzhizhou	czz	4	\N
553	\N	高卫民	\N	gaoweimin	gwm	22	\N
554	\N	龚松柏	\N	gongsongbai	gsb	22	\N
555	\N	胡建	\N	hujian	hj	22	\N
556	\N	刘君涵	\N	liujunhan	ljh	22	\N
557	\N	莫丰玮	\N	mofengwei	mfw	22	\N
558	\N	牟方志	\N	moufangzhi	mfz	22	\N
559	\N	宋婧琳	\N	songjinglin	sjl	22	\N
560	\N	王夏杰	\N	wangxiajie	wxj	22	\N
561	\N	王翔宇	\N	wangxiangyu	wxy	22	\N
562	\N	王志琛	\N	wangzhichen	wzc	22	\N
563	\N	杨奇才/徐跃辉	\N	yangqicai/xuyuehui	yqc/xyh	22	\N
564	\N	孙莉	\N	sunli	sl	19	\N
565	\N	廖奇琦	\N	liaoqiqi	lqq	19	\N
566	\N	张瀚文/贺英	\N	zhanghanwen/heying	zhw/hy	19	\N
567	\N	王福鸿	\N	wangfuhong	wfh	19	\N
568	\N	孙野/唐睿伊	\N	sunye/tangruiyi	sy/try	10	\N
569	\N	苏为	\N	suwei	sw	3	\N
570	\N	周峰	\N	zhoufeng	zf	3	\N
571	\N	刘轶	\N	liuyi	ly	10	\N
572	\N	聂凤	\N	niefeng	nf	2	\N
573	\N	王思懿	\N	wangsiyi	wsy	10	\N
574	\N	王琪	\N	wangqi	wq	12	\N
575	\N	汪蕾	\N	wanglei	wl	5	\N
576	\N	郭洪	\N	guohong	gh	10	\N
577	\N	苏应生	\N	suyingsheng	sys	18	\N
578	\N	潘梦阳	\N	panmengyang	pmy	2	\N
579	\N	马丹	\N	madan	md	6	\N
580	\N	李亮/江衍妙	\N	liliang/jiangyanmiao	ll/jym	5	\N
581	\N	潘旭明	\N	panxuming	pxm	10	\N
582	\N	占求港	\N	zhanqiugang	zqg	3	\N
583	\N	陈星延	\N	chenxingyan	cxy	3	\N
584	\N	罗旭斌/段江	\N	luoxubin/duanjiang	lxb/dj	3	\N
585	\N	黄可/曹晟	\N	huangke/caocheng	hk/cc	1	\N
586	\N	马奥	\N	maao	ma	3	\N
587	\N	蒋太翔	\N	jiangtaixiang	jtx	3	\N
588	\N	陈珍珠	\N	chenzhenzhu	czz	3	\N
589	\N	黄鹂/刘贵松/蒋太翔	\N	huangli/liuguisong/jiangtaixiang	hl/lgs/jtx	3	\N
590	\N	欧阳小草/杨新	\N	ouyangxiaocao/yangxin	oyxc/yx	3	\N
591	\N	潘宁宁	\N	panningning	pnn	3	\N
592	\N	汤自新	\N	tangzixin	tzx	3	\N
593	\N	杨山田	\N	yangshantian	yst	3	\N
594	\N	张丹	\N	zhangdan	zd	3	\N
595	\N	任鹊羽	\N	renqueyu	rqy	10	\N
596	\N	Potier Andre Timothy	\N	Potier Andre Timothy	Potier Andre Timothy	14	\N
597	\N	冯源	\N	fengyuan	fy	20	\N
598	\N	高洁	\N	gaojie	gj	10	\N
599	\N	张汉鹏	\N	zhanghanpeng	zhp	10	\N
600	\N	李砚颖	\N	liyanying	lyy	9	\N
601	\N	谢佳亨	\N	xiejiaheng	xjh	14	\N
602	\N	何莉娟	\N	helijuan	hlj	9	\N
603	\N	谢娟	\N	xiejuan	xj	9	\N
604	\N	傅泳	\N	fuyong	fy	9	\N
605	\N	柳雨杉	\N	liuyushan	lys	14	\N
606	\N	陈滨桐	\N	chenbintong	cbt	14	\N
607	\N	甘鸿武	\N	ganhongwu	ghw	1	\N
608	\N	张桥云	\N	zhangqiaoyun	zqy	1	\N
609	\N	张晓玫	\N	zhangxiaomei	zxm	1	\N
610	\N	付一书	\N	fuyishu	fys	1	\N
611	\N	Luque Anibal Andres	\N	Luque Anibal Andres	Luque Anibal Andres	13	\N
612	\N	贺英/周鸿宇	\N	heying/zhouhongyu	hy/zhy	19	\N
613	\N	周鸿宇	\N	zhouhongyu	zhy	19	\N
614	\N	胡秋明/穆滢潭/毛谢恩/史珈铭	\N	huqiuming/muyingtan/maoxieen/shijiaming	hqm/myt/mxe/sjm	17	\N
615	\N	毛谢恩/穆滢潭/史珈铭/胡秋明	\N	maoxieen/muyingtan/shijiaming/huqiuming	mxe/myt/sjm/hqm	1	\N
616	\N	胡康	\N	hukang	hk	14	\N
617	\N	陈晶环	\N	chenjinghuan	cjh	23	\N
618	\N	陈涛	\N	chentao	ct	23	\N
619	\N	陈维扬	\N	chenweiyang	cwy	23	\N
620	\N	蒋和超	\N	jianghechao	jhc	23	\N
621	\N	刘婵	\N	liuchan	lc	23	\N
622	\N	陆毅茜	\N	luyiqian	lyq	23	\N
623	\N	冯华	\N	fenghua	fh	17	\N
624	\N	毛谢恩	\N	maoxieen	mxe	17	\N
625	\N	蔡利/蔡春	\N	caili/caichun	cl/cc	11	\N
626	\N	胡宁/吕先锫	\N	huning/lvxianpei	hn/lxp	11	\N
627	\N	李越冬	\N	liyuedong	lyd	11	\N
628	\N	孙毓璘	\N	sunyulin	syl	11	\N
629	\N	唐雪松	\N	tangxuesong	txs	11	\N
630	\N	何苦	\N	heku	hk	11	\N
631	\N	邱志坚	\N	qiuzhijian	qzj	12	\N
632	\N	王帝/田森/雷震	\N	wangdi/tiansen/leizhen	wd/ts/lz	4	\N
633	\N	王文乾/唐伟	\N	wangwenqian/tangwei	wwq/tw	4	\N
634	\N	吴邦刚	\N	wubanggang	wbg	7	\N
635	\N	唐一淞	\N	tangyisong	tys	10	\N
636	\N	翁智刚/李先春	\N	wengzhigang/lixianchun	wzg/lxc	10	\N
637	\N	Lee Myung Soo	\N	Lee Myung Soo	Lee Myung Soo	13	\N
638	\N	熊希灵	\N	xiongxiling	xxl	10	\N
639	\N	郑文渊	\N	zhengwenyuan	zwy	1	\N
640	\N	徐雅静	\N	xuyajing	xyj	1	\N
641	\N	宋晓希	\N	songxiaoxi	sxx	19	\N
642	\N	刘凌	\N	liuling	ll	18	\N
643	\N	王俊	\N	wangjun	wj	18	\N
644	\N	黄涛	\N	huangtao	ht	18	\N
645	\N	陈中普	\N	chenzhongpu	czp	3	\N
646	\N	王海林	\N	wanghailin	whl	3	\N
647	\N	李蔓	\N	liman	lm	6	\N
648	\N	周凡吟	\N	zhoufanyin	zfy	6	\N
649	\N	李玉蓉	\N	liyurong	lyr	3	\N
650	\N	李峰	\N	lifeng	lf	10	\N
651	\N	邱江涛	\N	qiujiangtao	qjt	3	\N
652	\N	蔡世民	\N	caishimin	csm	1	\N
653	\N	陈骋	\N	chencheng	cc	6	\N
654	\N	马铁丰	\N	matiefeng	mtf	6	\N
655	\N	郭训香	\N	guoxunxiang	gxx	12	\N
656	\N	崔红卫	\N	cuihongwei	chw	12	\N
657	\N	李涛	\N	litao	lt	12	\N
658	\N	刘伟	\N	liuwei	lw	12	\N
659	\N	王永富	\N	wangyongfu	wyf	12	\N
660	\N	方敏	\N	fangmin	fm	12	\N
661	\N	黎伟	\N	liwei	lw	12	\N
662	\N	陈小平	\N	chenxiaoping	cxp	12	\N
663	\N	邓汝良	\N	dengruliang	drl	12	\N
664	\N	林一丁	\N	linyiding	lyd	12	\N
665	\N	张昕	\N	zhangxin	zx	12	\N
666	\N	刘蓉	\N	liurong	lr	8	\N
667	\N	王祎	\N	wangyi	wy	10	\N
668	\N	吴园园/李娇阳	\N	wuyuanyuan/lijiaoyang	wyy/ljy	10	\N
669	\N	赵陈芳/陈海啸	\N	zhaochenfang/chenhaixiao	zcf/chx	10	\N
670	\N	唐丽清	\N	tangliqing	tlq	10	\N
671	\N	付晓蓉	\N	fuxiaorong	fxr	10	\N
672	\N	李幸	\N	lixing	lx	10	\N
673	\N	吴论文	\N	wulunwen	wlw	10	\N
674	\N	徐姗/王玉梅	\N	xushan/wangyumei	xs/wym	10	\N
675	\N	FILIERI Raffaele	\N	FILIERI Raffaele	FILIERI Raffaele	10	\N
676	\N	李文勇	\N	liwenyong	lwy	10	\N
677	\N	范维	\N	fanwei	fw	4	\N
678	\N	郭仕利	\N	guoshili	gsl	4	\N
679	\N	王平	\N	wangping	wp	4	\N
680	\N	丁飒飒/钟冲	\N	dingsasa/zhongchong	dss/zc	7	\N
681	\N	田省迪	\N	tianshengdi	tsd	1	\N
682	\N	袁凯彬	\N	yuankaibin	ykb	1	\N
683	\N	王东凯	\N	wangdongkai	wdk	3	\N
684	\N	张瀚文	\N	zhanghanwen	zhw	19	\N
685	\N	王筱阳	\N	wangxiaoyang	wxy	19	\N
686	\N	刘睿雯/孟琳琳	\N	liuruiwen/menglinlin	lrw/mll	17	\N
687	\N	张文洁/钟慧	\N	zhangwenjie/zhonghui	zwj/zh	17	\N
688	\N	高明/陈建东/徐冲	\N	gaoming/chenjiandong/xuchong	gm/cjd/xc	17	\N
689	\N	郭彦男	\N	guoyannan	gyn	8	\N
690	\N	黄诗婷/徐静	\N	huangshiting/xujing	hst/xj	8	\N
691	\N	吕敏	\N	lvmin	lm	8	\N
692	\N	赵岭晓	\N	zhaolingxiao	zlx	8	\N
693	\N	郝晓薇	\N	haoxiaowei	hxw	8	\N
694	\N	费茂清	\N	feimaoqing	fmq	8	\N
695	\N	邱煜	\N	qiuyu	qy	8	\N
696	\N	董海浪	\N	donghailang	dhl	22	\N
697	\N	杜孝军	\N	duxiaojun	dxj	22	\N
698	\N	段江波	\N	duanjiangbo	djb	22	\N
699	\N	胡军方	\N	hujunfang	hjf	22	\N
700	\N	敬狄	\N	jingdi	jd	22	\N
701	\N	谭亚莉	\N	tanyali	tyl	22	\N
702	\N	张译匀	\N	zhangyiyun	zyy	22	\N
703	\N	周明星	\N	zhoumingxing	zmx	22	\N
704	\N	施龙	\N	shilong	sl	3	\N
705	\N	葛蕾	\N	gelei	gl	1	\N
706	\N	戴琳琳/戴明伟	\N	dailinlin/daimingwei	dll/dmw	6	\N
707	\N	邱甲贤	\N	qiujiaxian	qjx	10	\N
708	\N	徐敏	\N	xumin	xm	10	\N
709	\N	赵奕奕	\N	zhaoyiyi	zyy	10	\N
710	\N	陈丹丹	\N	chendandan	cdd	6	\N
711	\N	何雅兴	\N	heyaxing	hyx	6	\N
712	\N	李俭富	\N	lijianfu	ljf	6	\N
713	\N	李可	\N	like	lk	6	\N
714	\N	李伊	\N	liyi	ly	6	\N
715	\N	凌星	\N	lingxing	lx	6	\N
716	\N	刘斌	\N	liubin	lb	6	\N
717	\N	李力/王佳/杜艳	\N	lili/wangjia/duyan	ll/wj/dy	8	\N
718	\N	文杰	\N	wenjie	wj	8	\N
719	\N	程欣	\N	chengxin	cx	1	\N
720	\N	胡颖毅	\N	huyingyi	hyy	1	\N
721	\N	蒋宇翔	\N	jiangyuxiang	jyx	1	\N
722	\N	夏潆焱	\N	xiayingyan	xyy	1	\N
723	\N	张璟	\N	zhangjing	zj	1	\N
724	\N	李子燃	\N	liziran	lzr	8	\N
725	\N	徐若冉/陈彪	\N	xuruoran/chenbiao	xrr/cb	1	\N
726	\N	肖庆华	\N	xiaoqinghua	xqh	19	\N
727	\N	熊云军/杨维琼	\N	xiongyunjun/yangweiqiong	xyj/ywq	4	\N
728	\N	杨小涵/杨霜	\N	yangxiaohan/yangshuang	yxh/ys	19	\N
729	\N	曹林	\N	caolin	cl	12	\N
730	\N	蔡郑宇	\N	caizhengyu	czy	4	\N
731	\N	黄大康/程瑶	\N	huangdakang/chengyao	hdk/cy	4	\N
732	\N	刘柯含	\N	liukehan	lkh	4	\N
733	\N	刘炎周	\N	liuyanzhou	lyz	4	\N
734	\N	鲁利民	\N	lulimin	llm	4	\N
735	\N	盛大林	\N	shengdalin	sdl	4	\N
736	\N	盛大林/孙阳	\N	shengdalin/sunyang	sdl/sy	4	\N
737	\N	王帝	\N	wangdi	wd	4	\N
738	\N	王雨祥	\N	wangyuxiang	wyx	4	\N
739	\N	谢洪燕	\N	xiehongyan	xhy	4	\N
740	\N	徐扬帆	\N	xuyangfan	xyf	4	\N
741	\N	郑雪梅	\N	zhengxuemei	zxm	4	\N
742	\N	李涵	\N	lihan	lh	7	\N
743	\N	董大鑫	\N	dongdaxin	ddx	7	\N
744	\N	胡又欣	\N	huyouxin	hyx	2	\N
745	\N	赵国昌	\N	zhaoguochang	zgc	2	\N
746	\N	高建	\N	gaojian	gj	1	\N
747	\N	王冠	\N	wangguan	wg	19	\N
748	\N	黄益倩	\N	huangyiqian	hyq	19	\N
749	\N	梁心见	\N	liangxinjian	lxj	19	\N
750	\N	许义文	\N	xuyiwen	xyw	19	\N
751	\N	潘宁	\N	panning	pn	19	\N
752	\N	陈艺丹	\N	chenyidan	cyd	19	\N
753	\N	贺英/南晓彤	\N	heying/nanxiaotong	hy/nxt	19	\N
754	\N	李龙/李楠	\N	lilong/linan	ll/ln	19	\N
755	\N	辜明安	\N	gumingan	gma	5	\N
756	\N	李怡	\N	liyi	ly	5	\N
757	\N	廖振中	\N	liaozhenzhong	lzz	5	\N
758	\N	印通/李怡	\N	yintong/liyi	yt/ly	5	\N
759	\N	雷洋	\N	leiyang	ly	9	\N
760	\N	李建梅	\N	lijianmei	ljm	9	\N
761	\N	何弦	\N	hexian	hx	19	\N
762	\N	李星霓	\N	lixingni	lxn	19	\N
763	\N	王乐	\N	wangle	wl	19	\N
764	\N	陈宁	\N	chenning	cn	22	\N
765	\N	邓育苗	\N	dengyumiao	dym	22	\N
766	\N	何明洁	\N	hemingjie	hmj	22	\N
767	\N	贾子欢	\N	jiazihuan	jzh	22	\N
768	\N	罗杰	\N	luojie	lj	22	\N
769	\N	秦慧	\N	qinhui	qh	22	\N
770	\N	王敏	\N	wangmin	wm	22	\N
771	\N	于小杏	\N	yuxiaoxing	yxx	22	\N
772	\N	周洁	\N	zhoujie	zj	22	\N
773	\N	吴江	\N	wujiang	wj	18	\N
774	\N	DU Wenwei	\N	DU Wenwei	DU Wenwei	14	\N
775	\N	高莉芳	\N	gaolifang	glf	10	\N
776	\N	刘国	\N	liuguo	lg	5	\N
777	\N	游伟	\N	youwei	yw	5	\N
778	\N	张欣/赵勇	\N	zhangxin/zhaoyong	zx/zy	5	\N
779	\N	房秀芬	\N	fangxiufen	fxf	1	\N
780	\N	SORIN EUGEN PIPERCA	\N	SORIN EUGEN PIPERCA	SORIN EUGEN PIPERCA	7	\N
781	\N	尹亚军/陆佳	\N	yinyajun/lujia	yyj/lj	5	\N
782	\N	APOSTOLAKIS Christos	\N	APOSTOLAKIS Christos	APOSTOLAKIS Christos	10	\N
783	\N	余欣	\N	yuxin	yx	14	\N
784	\N	谢梦影	\N	xiemengying	xmy	10	\N
785	\N	曾之光	\N	cengzhiguang	czg	10	\N
786	\N	查宇	\N	chayu	cy	19	\N
787	\N	李忠俊/赵中平	\N	lizhongjun/zhaozhongping	lzj/zzp	18	\N
788	\N	王雪菲	\N	wangxuefei	wxf	19	\N
789	\N	李应红	\N	liyinghong	lyh	19	\N
790	\N	孙宁丰	\N	sunningfeng	snf	19	\N
791	\N	王霄	\N	wangxiao	wx	19	\N
792	\N	魏真瑜	\N	weizhenyu	wzy	14	\N
793	\N	孙阳/黄大康	\N	sunyang/huangdakang	sy/hdk	4	\N
794	\N	田森/石启超	\N	tiansen/shiqichao	ts/sqc	4	\N
795	\N	王浩旻	\N	wanghaomin	whm	18	\N
796	\N	李志勇	\N	lizhiyong	lzy	1	\N
797	\N	李志勇/张兴敏	\N	lizhiyong/zhangxingmin	lzy/zxm	1	\N
798	\N	黄礼登	\N	huanglideng	hld	5	\N
799	\N	熊谋林	\N	xiongmoulin	xml	5	\N
800	\N	兰荣杰	\N	lanrongjie	lrj	5	\N
801	\N	贺英/张瀚文	\N	heying/zhanghanwen	hy/zhw	19	\N
802	\N	阿尔达克/陈思	\N	aerdake/chensi	aedk/cs	22	\N
803	\N	蔡雨娟/张亚秋	\N	caiyujuan/zhangyaqiu	cyj/zyq	22	\N
804	\N	崔雅岚/王妍	\N	cuiyalan/wangyan	cyl/wy	22	\N
805	\N	董雪/李锦旭	\N	dongxue/lijinxu	dx/ljx	22	\N
806	\N	高赟/杨瑶	\N	gaoyun/yangyao	gy/yy	22	\N
807	\N	郭晨阳/张杨雪	\N	guochenyang/zhangyangxue	gcy/zyx	22	\N
808	\N	忽诗佳/廖汪洋	\N	hushijia/liaowangyang	hsj/lwy	22	\N
809	\N	黄若璇/杨长虹	\N	huangruoxuan/yangchanghong	hrx/ych	22	\N
810	\N	霍维	\N	huowei	hw	22	\N
811	\N	兰岛	\N	landao	ld	22	\N
812	\N	兰蕙心	\N	lanhuixin	lhx	22	\N
813	\N	李浩/徐跃辉	\N	lihao/xuyuehui	lh/xyh	22	\N
814	\N	李昕怡/缪丹	\N	lixinyi/moudan	lxy/md	22	\N
815	\N	刘华	\N	liuhua	lh	22	\N
816	\N	刘思涓/黄巍	\N	liusijuan/huangwei	lsj/hw	22	\N
817	\N	刘思涓/徐跃辉	\N	liusijuan/xuyuehui	lsj/xyh	22	\N
818	\N	刘伟亮/牛晓晶	\N	liuweiliang/niuxiaojing	lwl/nxj	22	\N
819	\N	买尔旦·阿木提/钟芸莹	\N	maierdan·amuti/zhongyunying	med·amt/zyy	22	\N
820	\N	毛思程/王保	\N	maosicheng/wangbao	msc/wb	22	\N
821	\N	任申浩/王佳欣	\N	renshenhao/wangjiaxin	rsh/wjx	22	\N
822	\N	任申浩/王蓉	\N	renshenhao/wangrong	rsh/wr	22	\N
823	\N	王安蕤	\N	wanganrui	war	22	\N
824	\N	王安蕤/杨长虹	\N	wanganrui/yangchanghong	war/ych	22	\N
825	\N	王蓉/杨长虹	\N	wangrong/yangchanghong	wr/ych	22	\N
826	\N	王思涯/王妍	\N	wangsiya/wangyan	wsy/wy	22	\N
827	\N	严霞/缪晨熙	\N	yanxia/mouchenxi	yx/mcx	22	\N
828	\N	杨宇哲/秦怡	\N	yangyuzhe/qinyi	yyz/qy	22	\N
829	\N	叶容均/李游	\N	yerongjun/liyou	yrj/ly	22	\N
830	\N	张帆/李思雨	\N	zhangfan/lisiyu	zf/lsy	22	\N
831	\N	张太富/郭开强	\N	zhangtaifu/guokaiqiang	ztf/gkq	22	\N
832	\N	张太富/赵萍萍	\N	zhangtaifu/zhaopingping	ztf/zpp	22	\N
833	\N	郑敏思/刘畅	\N	zhengminsi/liuchang	zms/lc	22	\N
834	\N	郑敏思/杨烨	\N	zhengminsi/yangye	zms/yy	22	\N
835	\N	朱韵伊/王彬宇	\N	zhuyunyi/wangbinyu	zyy/wby	22	\N
836	\N	陈秋达/饶玉申	\N	chenqiuda/raoyushen	cqd/rys	22	\N
837	\N	迪丽尼格尔·艾力/张一	\N	dilinigeer·aili/zhangyi	dlnge·al/zy	22	\N
838	\N	高文伟	\N	gaowenwei	gww	22	\N
839	\N	胡国平/王昱夫	\N	huguoping/wangyufu	hgp/wyf	22	\N
840	\N	黄若璇	\N	huangruoxuan	hrx	22	\N
841	\N	黄文/杨帆	\N	huangwen/yangfan	hw/yf	22	\N
842	\N	李海宾/杨长虹	\N	lihaibin/yangchanghong	lhb/ych	22	\N
843	\N	李艳	\N	liyan	ly	22	\N
844	\N	李楠/黄若璇	\N	linan/huangruoxuan	ln/hrx	22	\N
845	\N	刘科/宋珂慧	\N	liuke/songkehui	lk/skh	22	\N
846	\N	骆岭/杨凌峰	\N	luoling/yanglingfeng	ll/ylf	22	\N
847	\N	买尔旦·阿木提/郭开强	\N	maierdan·amuti/guokaiqiang	med·amt/gkq	22	\N
848	\N	舒坦/王芳	\N	shutan/wangfang	st/wf	22	\N
849	\N	王偞婷	\N	wangxieting	wxt	22	\N
850	\N	王彬宇/易家维	\N	wangbinyu/yijiawei	wby/yjw	22	\N
851	\N	王英/甘筑夏	\N	wangying/ganzhuxia	wy/gzx	22	\N
852	\N	王璐璐/杨扬	\N	wanglulu/yangyang	wll/yy	22	\N
853	\N	徐天然	\N	xutianran	xtr	22	\N
854	\N	游孟桥	\N	youmengqiao	ymq	22	\N
855	\N	袁程炜	\N	yuanchengwei	ycw	22	\N
856	\N	周立成	\N	zhoulicheng	zlc	22	\N
857	\N	朱一强/徐彩慧	\N	zhuyiqiang/xucaihui	zyq/xch	22	\N
858	\N	胡晓	\N	huxiao	hx	1	\N
859	\N	陈朝兵/廖宏斌	\N	chenchaobing/liaohongbin	ccb/lhb	17	\N
860	\N	陶维东/吴元元	\N	taoweidong/wuyuanyuan	twd/wyy	5	\N
861	\N	余睿	\N	yurui	yr	5	\N
862	\N	朱悦蘅	\N	zhuyueheng	zyh	5	\N
863	\N	贺方毅	\N	hefangyi	hfy	1	\N
864	\N	何潇潇	\N	hexiaoxiao	hxx	1	\N
865	\N	孙林	\N	sunlin	sl	9	\N
866	\N	张彤玢	\N	zhangtongbin	ztb	14	\N
867	\N	陈艺丹/李楠	\N	chenyidan/linan	cyd/ln	19	\N
868	\N	陈昀	\N	chenyun	cy	19	\N
869	\N	李龙	\N	lilong	ll	19	\N
870	\N	万盛	\N	wansheng	ws	19	\N
871	\N	叶俊	\N	yejun	yj	19	\N
872	\N	蒋丽萨	\N	jianglisa	jls	19	\N
873	\N	张怡然	\N	zhangyiran	zyr	19	\N
874	\N	朱琨	\N	zhukun	zk	19	\N
875	\N	肖白帆	\N	xiaobaifan	xbf	19	\N
876	\N	谢敬峰	\N	xiejingfeng	xjf	19	\N
877	\N	Kramer Peter	\N	Kramer Peter	Kramer Peter	13	\N
878	\N	龙彧	\N	longyu	ly	9	\N
879	\N	CHUNG CONSTANT WANG TAMARA MANSHUK	\N	CHUNG CONSTANT WANG TAMARA MANSHUK	CHUNG CONSTANT WANG TAMARA MANSHUK	14	\N
880	\N	黄羽	\N	huangyu	hy	9	\N
881	\N	敖玉兰	\N	aoyulan	ayl	10	\N
882	\N	刘贤勇	\N	liuxianyong	lxy	10	\N
883	\N	盛敏	\N	shengmin	sm	10	\N
884	\N	黄志华	\N	huangzhihua	hzh	10	\N
885	\N	王红雨	\N	wanghongyu	why	10	\N
886	\N	阳丹	\N	yangdan	yd	9	\N
887	\N	黄志华/Cameron ThomasWalton	\N	huangzhihua/Cameron ThomasWalton	hzh/Cameron ThomasWalton	9	\N
888	\N	黄志华/Lee Anthony Ruiz	\N	huangzhihua/Lee Anthony Ruiz	hzh/Lee Anthony Ruiz	9	\N
889	\N	吴瑾	\N	wujin	wj	13	\N
890	\N	赵宁	\N	zhaoning	zn	13	\N
891	\N	刘洋	\N	liuyang	ly	9	\N
892	\N	杨佳	\N	yangjia	yj	9	\N
893	\N	敖宇	\N	aoyu	ay	9	\N
894	\N	崔恩昊	\N	cuienhao	ceh	9	\N
895	\N	江俊佑/何雅兴	\N	jiangjunyou/heyaxing	jjy/hyx	6	\N
896	\N	陈坤/谭莹	\N	chenkun/tanying	ck/ty	6	\N
897	\N	李孟珂	\N	limengke	lmk	19	\N
898	\N	阎瑶	\N	yanyao	yy	6	\N
899	\N	李双玲	\N	lishuangling	lsl	9	\N
900	\N	钟飞	\N	zhongfei	zf	9	\N
901	\N	张文燕	\N	zhangwenyan	zwy	12	\N
902	\N	李伟	\N	liwei	lw	10	\N
903	\N	王鑫/李峰	\N	wangxin/lifeng	wx/lf	10	\N
904	\N	黄旭/高莉芳/万国光	\N	huangxu/gaolifang/wanguoguang	hx/glf/wgg	10	\N
905	\N	陈航	\N	chenhang	ch	4	\N
906	\N	冯鹏程	\N	fengpengcheng	fpc	4	\N
907	\N	葛浩阳/姚常成	\N	gehaoyang/yaochangcheng	ghy/ycc	4	\N
908	\N	韩绿艺	\N	hanlvyi	hly	4	\N
909	\N	韩文龙	\N	hanwenlong	hwl	4	\N
910	\N	郝芮琳	\N	haoruilin	hrl	4	\N
911	\N	李怡乐	\N	liyile	lyl	4	\N
912	\N	田世野	\N	tianshiye	tsy	4	\N
913	\N	王卫卿	\N	wangweiqing	wwq	4	\N
914	\N	王雪苓	\N	wangxueling	wxl	4	\N
915	\N	吴垠	\N	wuyin	wy	4	\N
916	\N	徐志向/盖凯程	\N	xuzhixiang/gaikaicheng	xzx/gkc	4	\N
917	\N	张航	\N	zhanghang	zh	4	\N
918	\N	胥博	\N	xubo	xb	17	\N
919	\N	王敬	\N	wangjing	wj	1	\N
920	\N	周游	\N	zhouyou	zy	6	\N
921	\N	杨挺	\N	yangting	yt	1	\N
922	\N	郑旭	\N	zhengxu	zx	1	\N
923	\N	郭佩霞/廖常勇/张慧英	\N	guopeixia/liaochangyong/zhanghuiying	gpx/lcy/zhy	8	\N
924	\N	赵煦风	\N	zhaoxufeng	zxf	8	\N
925	\N	崔雪茹	\N	cuixueru	cxr	19	\N
926	\N	林旻雯	\N	linminwen	lmw	19	\N
927	\N	潘斌/李楠	\N	panbin/linan	pb/ln	19	\N
928	\N	张卉	\N	zhanghui	zh	19	\N
929	\N	张卉/林旻雯	\N	zhanghui/linminwen	zh/lmw	19	\N
930	\N	涂庆红	\N	tuqinghong	tqh	19	\N
931	\N	董艳	\N	dongyan	dy	2	\N
932	\N	郭文	\N	guowen	gw	22	\N
933	\N	郭文/邓晓娇	\N	guowen/dengxiaojiao	gw/dxj	22	\N
934	\N	黄世坤	\N	huangshikun	hsk	22	\N
935	\N	贾国雄	\N	jiaguoxiong	jgx	22	\N
936	\N	李春梅	\N	lichunmei	lcm	22	\N
937	\N	刘静	\N	liujing	lj	22	\N
938	\N	刘力嘉	\N	liulijia	llj	22	\N
939	\N	刘杨	\N	liuyang	ly	22	\N
940	\N	袁上	\N	yuanshang	ys	22	\N
941	\N	张亮	\N	zhangliang	zl	22	\N
942	\N	罗富明	\N	luofuming	lfm	19	\N
943	\N	曹昱	\N	caoyu	cy	11	\N
944	\N	戴泽伟/金智	\N	daizewei/jinzhi	dzw/jz	11	\N
945	\N	傅代国	\N	fudaiguo	fdg	11	\N
946	\N	华晨	\N	huachen	hc	11	\N
947	\N	曾昌礼	\N	cengchangli	ccl	11	\N
948	\N	唐芸茜	\N	tangyunqian	tyq	1	\N
949	\N	蒋航程	\N	jianghangcheng	jhc	11	\N
950	\N	代婧	\N	daijing	dj	11	\N
951	\N	代婧/任荪倩	\N	daijing/rensunqian	dj/rsq	11	\N
952	\N	龙学文	\N	longxuewen	lxw	8	\N
953	\N	李芳慧	\N	lifanghui	lfh	8	\N
954	\N	王君斌	\N	wangjunbin	wjb	8	\N
955	\N	曾志远	\N	cengzhiyuan	czy	4	\N
956	\N	邓富华/阎丽	\N	dengfuhua/yanli	dfh/yl	7	\N
957	\N	彭涛	\N	pengtao	pt	2	\N
958	\N	张雷	\N	zhanglei	zl	2	\N
959	\N	袁正	\N	yuanzheng	yz	4	\N
960	\N	张安全	\N	zhanganquan	zaq	4	\N
961	\N	刘璐	\N	liulu	ll	4	\N
962	\N	陈明花	\N	chenminghua	cmh	2	\N
963	\N	许冰/PAK Maxwell Tonghui	\N	xubing/PAK Maxwell Tonghui	xb/PAK Maxwell Tonghui	2	\N
964	\N	张泽立	\N	zhangzeli	zzl	1	\N
965	\N	李映东	\N	liyingdong	lyd	1	\N
966	\N	张滕/许致维	\N	zhangteng/xuzhiwei	zt/xzw	1	\N
967	\N	郭仕利/范维	\N	guoshili/fanwei	gsl/fw	4	\N
968	\N	钟绍卓/贡布泽仁	\N	zhongshaozhuo/gongbuzeren	zsz/gbzr	4	\N
969	\N	赵宇/陈中普	\N	zhaoyu/chenzhongpu	zy/czp	3	\N
970	\N	贺英/李林霜	\N	heying/lilinshuang	hy/lls	19	\N
971	\N	贾晓莉	\N	jiaxiaoli	jxl	11	\N
972	\N	蒲云	\N	puyun	py	8	\N
973	\N	穆滢潭	\N	muyingtan	myt	17	\N
974	\N	顾文军	\N	guwenjun	gwj	24	\N
975	\N	赖静雯	\N	laijingwen	ljw	24	\N
976	\N	李清政	\N	liqingzheng	lqz	24	\N
977	\N	杨大友	\N	yangdayou	ydy	24	\N
978	\N	吴骞	\N	wuqian	wq	6	\N
979	\N	刘径华	\N	liujinghua	ljh	9	\N
980	\N	程莉娜	\N	chenglina	cln	9	\N
981	\N	苟钰唯	\N	gouyuwei	gyw	9	\N
982	\N	郭静思	\N	guojingsi	gjs	9	\N
983	\N	胡莎	\N	husha	hs	9	\N
984	\N	黄家辉	\N	huangjiahui	hjh	9	\N
985	\N	黄银冬	\N	huangyindong	hyd	9	\N
986	\N	刘霞	\N	liuxia	lx	9	\N
987	\N	马春梅	\N	machunmei	mcm	9	\N
988	\N	荣雯轩	\N	rongwenxuan	rwx	9	\N
989	\N	汪平	\N	wangping	wp	9	\N
990	\N	杨文瑨	\N	yangwenjin	ywj	9	\N
991	\N	杨雨红	\N	yangyuhong	yyh	9	\N
992	\N	叶净	\N	yejing	yj	9	\N
993	\N	张玲	\N	zhangling	zl	9	\N
994	\N	赵婷	\N	zhaoting	zt	9	\N
995	\N	黄迟	\N	huangchi	hc	3	\N
996	\N	徐秋华	\N	xuqiuhua	xqh	1	\N
997	\N	李先春/艾进	\N	lixianchun/aijin	lxc/aj	10	\N
998	\N	刘科	\N	liuke	lk	1	\N
999	\N	张劲松	\N	zhangjingsong	zjs	25	\N
1000	\N	李先春	\N	lixianchun	lxc	10	\N
1001	\N	刘洪仁	\N	liuhongren	lhr	19	\N
1002	\N	曾长军	\N	cengzhangjun	czj	19	\N
1003	\N	何宇/瞿旭	\N	heyu/quxu	hy/qx	11	\N
1004	\N	何宇	\N	heyu	hy	26	\N
1005	\N	王伊琳/吕敏	\N	wangyilin/lvmin	wyl/lm	1	\N
1006	\N	陈梓麟	\N	chenzilin	czl	1	\N
1007	\N	胡晓/陈汕/杨自营/覃依依/袁凯彬	\N	huxiao/chenshan/yangziying/tanyiyi/yuankaibin	hx/cs/yzy/tyy/ykb	1	\N
1008	\N	黄凯	\N	huangkai	hk	1	\N
1009	\N	林靖	\N	linjing	lj	1	\N
1010	\N	申宇	\N	shenyu	sy	1	\N
1011	\N	宋易珈	\N	songyijia	syj	1	\N
1012	\N	张翔	\N	zhangxiang	zx	1	\N
1013	\N	戴治勇	\N	daizhiyong	dzy	5	\N
1014	\N	张腾飞	\N	zhangtengfei	ztf	8	\N
1015	\N	翟立宏	\N	dilihong	dlh	1	\N
1016	\N	蔡栋梁	\N	caidongliang	cdl	1	\N
1017	\N	陈昊明	\N	chenhaoming	chm	5	\N
1018	\N	范丹	\N	fandan	fd	27	\N
1019	\N	孙楠/杨帆	\N	sunnan/yangfan	sn/yf	23	\N
1020	\N	杨帆/郑良秀	\N	yangfan/zhengliangxiu	yf/zlx	17	\N
1021	\N	李铸	\N	lizhu	lz	28	\N
1022	\N	杨淑仪	\N	yangshuyi	ysy	28	\N
1023	\N	贾艾玲	\N	jiaailing	jal	19	\N
1024	\N	张卓君	\N	zhangzhuojun	zzj	23	\N
1025	\N	周正/顾珉珉	\N	zhouzheng/guminmin	zz/gmm	23	\N
1026	\N	周溪亭	\N	zhouxiting	zxt	17	\N
1027	\N	辛晏毓	\N	xinyanyu	xyy	23	\N
1028	\N	王伊琳/王瑾/潘雪梅	\N	wangyilin/wangjin/panxuemei	wyl/wj/pxm	1	\N
1029	\N	钱晓湘	\N	qianxiaoxiang	qxx	19	\N
1030	\N	王珏/杨娜/刘园园	\N	wangjue/yangna/liuyuanyuan	wj/yn/lyy	7	\N
1031	\N	张俊华	\N	zhangjunhua	zjh	19	\N
1032	\N	杜文斌	\N	duwenbin	dwb	23	\N
1033	\N	张珑舰	\N	zhanglongjian	zlj	29	\N
1034	\N	白巧燕	\N	baiqiaoyan	bqy	29	\N
1035	\N	瞿丽	\N	quli	ql	19	\N
1036	\N	梁继红	\N	liangjihong	ljh	5	\N
1037	\N	孙楠/袁玥	\N	sunnan/yuanyue	sn/yy	23	\N
1038	\N	和泽慧	\N	hezehui	hzh	23	\N
1039	\N	杜蕾	\N	dulei	dl	17	\N
1040	\N	彭宁	\N	pengning	pn	28	\N
1041	\N	陈曼婷	\N	chenmanting	cmt	19	\N
1042	\N	郭泽儒	\N	guozeru	gzr	28	\N
1043	\N	杜娟	\N	dujuan	dj	19	\N
1044	\N	申晋弋	\N	shenjinyi	sjy	19	\N
1045	\N	程树磊	\N	chengshulei	csl	17	\N
1046	\N	张易	\N	zhangyi	zy	28	\N
1047	\N	严予若	\N	yanyuruo	yyr	23	\N
1048	\N	贡布泽仁/杨帆	\N	gongbuzeren/yangfan	gbzr/yf	23	\N
1049	\N	夏添	\N	xiatian	xt	27	\N
1050	\N	齐少杰	\N	qishaojie	qsj	23	\N
1051	\N	范美俊	\N	fanmeijun	fmj	19	\N
1052	\N	潘彦谷	\N	panyangu	pyg	23	\N
1053	\N	张琼文	\N	zhangqiongwen	zqw	23	\N
1054	\N	卢灵煜	\N	lulingyu	lly	19	\N
1055	\N	刘元生	\N	liuyuansheng	lys	8	\N
1056	\N	廖怀学	\N	liaohuaixue	lhx	5	\N
1057	\N	任虹/宋晋/王诗逸	\N	renhong/songjin/wangshiyi	rh/sj/wsy	19	\N
1058	\N	蔡兴林	\N	caixinglin	cxl	28	\N
1059	\N	陈丛刊	\N	chencongkan	cck	28	\N
1060	\N	方威	\N	fangwei	fw	28	\N
1061	\N	刘辛丹/周腾军/付磊	\N	liuxindan/zhoutengjun/fulei	lxd/ztj/fl	28	\N
1062	\N	朱敏	\N	zhumin	zm	19	\N
1063	\N	李雷	\N	lilei	ll	25	\N
1064	\N	王征	\N	wangzheng	wz	3	\N
1065	\N	张欢	\N	zhanghuan	zh	19	\N
1066	\N	孙巨杉	\N	sunjushan	sjs	28	\N
1067	\N	杨远波	\N	yangyuanbo	yyb	28	\N
1068	\N	贡布泽仁	\N	gongbuzeren	gbzr	23	\N
1069	\N	阴涛	\N	yintao	yt	28	\N
1070	\N	王远均/张芸/黄丽娟/赖虹宇/毛快/李怡	\N	wangyuanjun/zhangyun/huanglijuan/laihongyu/maokuai/liyi	wyj/zy/hlj/lhy/mk/ly	5	\N
1071	\N	方堃	\N	fangkun	fk	19	\N
1072	\N	田海龙	\N	tianhailong	thl	19	\N
1073	\N	叶胥/江舟	\N	yexu/jiangzhou	yx/jz	27	\N
1074	\N	彭泺/贺英	\N	pengluo/heying	pl/hy	19	\N
1075	\N	胡俞	\N	huyu	hy	23	\N
1076	\N	刘芹	\N	liuqin	lq	23	\N
1077	\N	彭立	\N	pengli	pl	19	\N
1078	\N	朱胜坤/孟开文	\N	zhushengkun/mengkaiwen	zsk/mkw	12	\N
1079	\N	高晋康	\N	gaojinkang	gjk	5	\N
1080	\N	周博维	\N	zhoubowei	zbw	28	\N
1081	\N	徐彩慧/杜文	\N	xucaihui/duwen	xch/dw	19	\N
1082	\N	南晓彤	\N	nanxiaotong	nxt	19	\N
1083	\N	洪正/肖锐	\N	hongzheng/xiaorui	hz/xr	1	\N
1084	\N	尹玉刚	\N	yinyugang	yyg	1	\N
1085	\N	牛丽莉	\N	niulili	nll	19	\N
1086	\N	Jean Jason Allan	\N	Jean Jason Allan	Jean Jason Allan	23	\N
1087	\N	胡佩迦	\N	hupeijia	hpj	29	\N
1088	\N	陈茉	\N	chenmo	cm	29	\N
1089	\N	黄迟/刘家芬	\N	huangchi/liujiafen	hc/ljf	3	\N
1090	\N	彭浩	\N	penghao	ph	28	\N
1091	\N	陈珂欣	\N	chenkexin	ckx	28	\N
1092	\N	刘子豪	\N	liuzihao	lzh	28	\N
1093	\N	杜文	\N	duwen	dw	28	\N
1094	\N	刁永辉	\N	diaoyonghui	dyh	28	\N
1095	\N	张锐	\N	zhangrui	zr	28	\N
1096	\N	徐文杰	\N	xuwenjie	xwj	28	\N
1097	\N	徐文杰/何龙韬	\N	xuwenjie/helongtao	xwj/hlt	28	\N
1098	\N	郭广	\N	guoguang	gg	28	\N
1099	\N	黄茂洁	\N	huangmaojie	hmj	28	\N
1100	\N	李春晖	\N	lichunhui	lch	28	\N
1101	\N	王戈	\N	wangge	wg	28	\N
1102	\N	黄道名	\N	huangdaoming	hdm	28	\N
1103	\N	闫铭辉	\N	yanminghui	ymh	28	\N
1104	\N	李书睿	\N	lishurui	lsr	28	\N
1105	\N	徐艳艳	\N	xuyanyan	xyy	28	\N
1106	\N	纪小月	\N	jixiaoyue	jxy	28	\N
1107	\N	徐浩然	\N	xuhaoran	xhr	28	\N
1108	\N	董凡迪	\N	dongfandi	dfd	28	\N
1109	\N	刘海尔	\N	liuhaier	lhe	28	\N
1110	\N	孔星宇	\N	kongxingyu	kxy	28	\N
1111	\N	施泓宇	\N	shihongyu	shy	28	\N
1112	\N	魏晗丰	\N	weihanfeng	whf	28	\N
1113	\N	周婷婷	\N	zhoutingting	ztt	28	\N
1114	\N	李治	\N	lizhi	lz	28	\N
1115	\N	邓茜	\N	dengqian	dq	28	\N
1116	\N	伍钰	\N	wuyu	wy	28	\N
1117	\N	吴婧	\N	wujing	wj	28	\N
1118	\N	马佳洁	\N	majiajie	mjj	28	\N
1119	\N	王军	\N	wangjun	wj	28	\N
1120	\N	周正宏	\N	zhouzhenghong	zzh	28	\N
1121	\N	员东婷/胡芮	\N	yuandongting/hurui	ydt/hr	28	\N
1122	\N	戴欣欣	\N	daixinxin	dxx	28	\N
1123	\N	何亮	\N	heliang	hl	28	\N
1124	\N	简家俊	\N	jianjiajun	jjj	28	\N
1125	\N	唐凯雪	\N	tangkaixue	tkx	28	\N
1126	\N	王玮	\N	wangwei	ww	28	\N
1127	\N	高昊	\N	gaohao	gh	28	\N
1128	\N	毛艳	\N	maoyan	my	28	\N
1129	\N	贺晓燕	\N	hexiaoyan	hxy	28	\N
1130	\N	杨亮	\N	yangliang	yl	1	\N
1131	\N	赖槿儿	\N	laijiner	lje	19	\N
1132	\N	王伊琳/孙蓉	\N	wangyilin/sunrong	wyl/sr	1	\N
1133	\N	黄健	\N	huangjian	hj	8	\N
1134	\N	缪梦茹	\N	moumengru	mmr	11	\N
1135	\N	欧阳小草	\N	ouyangxiaocao	oyxc	3	\N
1136	\N	陈路/李洪	\N	chenlu/lihong	cl/lh	1	\N
1137	\N	方圆/余莎	\N	fangyuan/yusha	fy/ys	8	\N
1138	\N	秦士坤/罗宇	\N	qinshikun/luoyu	qsk/ly	8	\N
1139	\N	蔡竞	\N	caijing	cj	11	\N
1140	\N	逯东	\N	ludong	ld	11	\N
1141	\N	吴君凤	\N	wujunfeng	wjf	8	\N
1142	\N	金雅玲	\N	jinyaling	jyl	11	\N
1143	\N	何丹	\N	hedan	hd	11	\N
1144	\N	黄娟	\N	huangjuan	hj	11	\N
1145	\N	吉利	\N	jili	jl	11	\N
1146	\N	罗宏	\N	luohong	lh	11	\N
1147	\N	牟涛	\N	moutao	mt	11	\N
1148	\N	周长运/杨雨晴	\N	zhouchangyun/yangyuqing	zcy/yyq	11	\N
1149	\N	杨雨晴	\N	yangyuqing	yyq	20	\N
1150	\N	朱章耀	\N	zhuzhangyao	zzy	11	\N
1151	\N	朱章耀/周长运	\N	zhuzhangyao/zhouchangyun	zzy/zcy	11	\N
1152	\N	山立威	\N	shanliwei	slw	2	\N
1153	\N	唐悦	\N	tangyue	ty	2	\N
1154	\N	张佩蕾	\N	zhangpeilei	zpl	8	\N
1155	\N	胡国平	\N	huguoping	hgp	10	\N
1156	\N	余建宇	\N	yujianyu	yjy	2	\N
1157	\N	肖伟	\N	xiaowei	xw	2	\N
1158	\N	陈久强	\N	chenjiuqiang	cjq	3	\N
1159	\N	丁丹	\N	dingdan	dd	18	\N
1160	\N	李瑾坤	\N	lijinkun	ljk	18	\N
1161	\N	黄宇	\N	huangyu	hy	3	\N
1162	\N	林珣	\N	linxun	lx	3	\N
1163	\N	吴江/李太勇	\N	wujiang/litaiyong	wj/lty	3	\N
1164	\N	谢志龙	\N	xiezhilong	xzl	3	\N
1165	\N	谢志龙/郑羽	\N	xiezhilong/zhengyu	xzl/zy	3	\N
1166	\N	薛飞	\N	xuefei	xf	3	\N
1167	\N	叶淋宁	\N	yelinning	yln	3	\N
1168	\N	张笃仲	\N	zhangduzhong	zdz	3	\N
1169	\N	张义刚	\N	zhangyigang	zyg	18	\N
1170	\N	戴明伟	\N	daimingwei	dmw	6	\N
1171	\N	赖超	\N	laichao	lc	18	\N
1172	\N	王慧/张博涵	\N	wanghui/zhangbohan	wh/zbh	11	\N
1173	\N	苏明淘	\N	sumingtao	smt	2	\N
1174	\N	胡紫薇	\N	huziwei	hzw	9	\N
1175	\N	张怀岭/杨秋宇/毛快	\N	zhanghuailing/yangqiuyu/maokuai	zhl/yqy/mk	5	\N
1176	\N	陈海啸	\N	chenhaixiao	chx	10	\N
1177	\N	马江水	\N	majiangshui	mjs	10	\N
1178	\N	王锐	\N	wangrui	wr	12	\N
1179	\N	蒲岳	\N	puyue	py	7	\N
1180	\N	陈师	\N	chenshi	cs	4	\N
1181	\N	蔡栋梁/张滕/余关元/陈羽莎	\N	caidongliang/zhangteng/yuguanyuan/chenyusha	cdl/zt/ygy/cys	1	\N
1182	\N	王显珏	\N	wangxianjue	wxj	11	\N
1183	\N	陈华蓉	\N	chenhuarong	chr	10	\N
1184	\N	吴裕珠/陈佳	\N	wuyuzhu/chenjia	wyz/cj	10	\N
1185	\N	甘筑夏	\N	ganzhuxia	gzx	15	\N
1186	\N	黄巍	\N	huangwei	hw	15	\N
1187	\N	李文	\N	liwen	lw	15	\N
1188	\N	刘娟	\N	liujuan	lj	15	\N
1189	\N	牛晓晶	\N	niuxiaojing	nxj	15	\N
1190	\N	宋晋/马春蓉	\N	songjin/machunrong	sj/mcr	15	\N
1191	\N	宋晓莉	\N	songxiaoli	sxl	15	\N
1192	\N	王保	\N	wangbao	wb	15	\N
1193	\N	徐慊	\N	xuqian	xq	15	\N
1194	\N	杨新	\N	yangxin	yx	15	\N
1195	\N	伊婷	\N	yiting	yt	15	\N
1196	\N	曾月	\N	cengyue	cy	15	\N
1197	\N	周国波	\N	zhouguobo	zgb	15	\N
1198	\N	苏明淘/董艳	\N	sumingtao/dongyan	smt/dy	2	\N
1199	\N	蔡璐遥/张爽/罗锋	\N	cailuyao/zhangshuang/luofeng	cly/zs/lf	16	\N
1200	\N	陈毅/张琪	\N	chenyi/zhangqi	cy/zq	16	\N
1201	\N	郭晨阳	\N	guochenyang	gcy	16	\N
1202	\N	蒋奕廷	\N	jiangyiting	jyt	16	\N
1203	\N	李清涛/李艳	\N	liqingtao/liyan	lqt/ly	16	\N
1204	\N	刘余	\N	liuyu	ly	16	\N
1205	\N	罗谟诺/周瑞	\N	luomonuo/zhourui	lmn/zr	16	\N
1206	\N	骆岭/李昕怡	\N	luoling/lixinyi	ll/lxy	16	\N
1207	\N	买尔旦·阿木提	\N	maierdan·amuti	med·amt	16	\N
1208	\N	王隆庆/杨宇哲	\N	wanglongqing/yangyuzhe	wlq/yyz	16	\N
1209	\N	张博涵	\N	zhangbohan	zbh	16	\N
1210	\N	邹涛	\N	zoutao	zt	16	\N
1211	\N	Shah Syed Ismat Shah	\N	Shah Syed Ismat Shah	Shah Syed Ismat Shah	14	\N
1212	\N	高远卓/徐扬帆/蔡晓陈	\N	gaoyuanzhuo/xuyangfan/caixiaochen	gyz/xyf/cxc	4	\N
1213	\N	陈锋	\N	chenfeng	cf	19	\N
1214	\N	张术林	\N	zhangshulin	zsl	6	\N
1215	\N	鲁利民/易敏利	\N	lulimin/yiminli	llm/yml	4	\N
1216	\N	夏一巍	\N	xiayiwei	xyw	5	\N
1217	\N	高海霞/王晓全	\N	gaohaixia/wangxiaoquan	ghx/wxq	1	\N
1218	\N	马捷	\N	majie	mj	12	\N
1219	\N	曾嵘	\N	cengrong	cr	12	\N
1220	\N	林可	\N	linke	lk	12	\N
1221	\N	吕品	\N	lvpin	lp	12	\N
1222	\N	赵铭锋	\N	zhaomingfeng	zmf	12	\N
1223	\N	张进	\N	zhangjin	zj	2	\N
1224	\N	李双龙/刘文月	\N	lishuanglong/liuwenyue	lsl/lwy	12	\N
1225	\N	李双龙/王祥	\N	lishuanglong/wangxiang	lsl/wx	12	\N
1226	\N	鹿正阳	\N	luzhengyang	lzy	12	\N
1227	\N	蒲洋	\N	puyang	py	12	\N
1228	\N	席悦娟	\N	xiyuejuan	xyj	12	\N
1229	\N	谢莹莹	\N	xieyingying	xyy	12	\N
1230	\N	张玉越	\N	zhangyuyue	zyy	12	\N
1231	\N	朱文莉	\N	zhuwenli	zwl	12	\N
1232	\N	王静/李智	\N	wangjing/lizhi	wj/lz	11	\N
1233	\N	蔡晓陈/徐扬帆	\N	caixiaochen/xuyangfan	cxc/xyf	4	\N
1234	\N	甘雨/王貂	\N	ganyu/wangdiao	gy/wd	4	\N
1235	\N	李桦林/Lee Dongwoo	\N	lihualin/Lee Dongwoo	lhl/Lee Dongwoo	4	\N
1236	\N	廖宏斌/胡秋明	\N	liaohongbin/huqiuming	lhb/hqm	17	\N
1237	\N	王明璐/王茹	\N	wangminglu/wangru	wml/wr	8	\N
1238	\N	王茹/龚驰原	\N	wangru/gongchiyuan	wr/gcy	8	\N
1239	\N	王茹/龚驰原/罗宇	\N	wangru/gongchiyuan/luoyu	wr/gcy/ly	8	\N
1240	\N	张腾飞/吕朝凤	\N	zhangtengfei/lvchaofeng	ztf/lcf	8	\N
1241	\N	谢小芹	\N	xiexiaoqin	xxq	17	\N
1242	\N	张晓舸	\N	zhangxiaoge	zxg	1	\N
1243	\N	张园园	\N	zhangyuanyuan	zyy	1	\N
1244	\N	王诗逸	\N	wangshiyi	wsy	10	\N
1245	\N	周静/赵元	\N	zhoujing/zhaoyuan	zj/zy	7	\N
1246	\N	潘席龙	\N	panxilong	pxl	1	\N
1247	\N	刘红	\N	liuhong	lh	17	\N
1248	\N	徐宏玲	\N	xuhongling	xhl	10	\N
1249	\N	何熙琼	\N	hexiqiong	hxq	1	\N
1250	\N	尚龙飞	\N	shanglongfei	slf	1	\N
1251	\N	陈欣	\N	chenxin	cx	2	\N
1252	\N	沈旻宇/肖辉/张大鹏/何季刚	\N	shenminyu/xiaohui/zhangdapeng/hejigang	smy/xh/zdp/hjg	18	\N
1253	\N	刘雨倩	\N	liuyuqian	lyq	20	\N
1254	\N	Cai Yuanfeng	\N	Cai Yuanfeng	Cai Yuanfeng	13	\N
1255	\N	徐赟	\N	xuyun	xy	18	\N
1256	\N	曹锦薇	\N	caojinwei	cjw	14	\N
1257	\N	李娇阳/何杰	\N	lijiaoyang/hejie	ljy/hj	10	\N
1258	\N	唐明凤/沈涛	\N	tangmingfeng/shentao	tmf/st	10	\N
1259	\N	陈琼	\N	chenqiong	cq	2	\N
1260	\N	张思聪	\N	zhangsicong	zsc	2	\N
1261	\N	赵小平	\N	zhaoxiaoping	zxp	2	\N
1262	\N	程豹	\N	chengbao	cb	10	\N
1263	\N	林红霞	\N	linhongxia	lhx	10	\N
1264	\N	艾进	\N	aijin	aj	10	\N
1265	\N	王博/蒲岳	\N	wangbo/puyue	wb/py	7	\N
1266	\N	张小波	\N	zhangxiaobo	zxb	22	\N
1267	\N	刘晓辉	\N	liuxiaohui	lxh	1	\N
1268	\N	赵宇霆	\N	zhaoyuting	zyt	5	\N
1269	\N	吕朝凤	\N	lvchaofeng	lcf	8	\N
1270	\N	李雪莲/吴晓东/高云舒	\N	lixuelian/wuxiaodong/gaoyunshu	lxl/wxd/gys	4	\N
1271	\N	孟凡棋	\N	mengfanqi	mfq	2	\N
1272	\N	吴季	\N	wuji	wj	2	\N
1273	\N	谢凤燕	\N	xiefengyan	xfy	7	\N
1274	\N	雷芸	\N	leiyun	ly	5	\N
1275	\N	Odile E.M. JANNE	\N	Odile E.M. JANNE	Odile E.M. JANNE	7	\N
1276	\N	张天成	\N	zhangtiancheng	ztc	9	\N
1277	\N	刘军军	\N	liujunjun	ljj	10	\N
1278	\N	项旎	\N	xiangni	xn	7	\N
1279	\N	张伦伦	\N	zhanglunlun	zll	8	\N
1280	\N	张伦伦/吕敏	\N	zhanglunlun/lvmin	zll/lm	8	\N
1281	\N	苗壮/王长安/刘思岑	\N	miaozhuang/wangchangan/liusicen	mz/wca/lsc	4	\N
1282	\N	黎春	\N	lichun	lc	6	\N
1283	\N	黄俊兵/栾炳江	\N	huangjunbing/luanbingjiang	hjb/lbj	4	\N
1284	\N	李雪莲	\N	lixuelian	lxl	4	\N
1285	\N	林熙	\N	linxi	lx	4	\N
1286	\N	刘书祥	\N	liushuxiang	lsx	4	\N
1287	\N	王爱伦	\N	wangailun	wal	4	\N
1288	\N	杨海涛	\N	yanghaitao	yht	4	\N
1289	\N	杨海涛/周葵	\N	yanghaitao/zhoukui	yht/zk	4	\N
1290	\N	杨海洋	\N	yanghaiyang	yhy	4	\N
1291	\N	邹红	\N	zouhong	zh	4	\N
1292	\N	栾炳江	\N	luanbingjiang	lbj	4	\N
1293	\N	李雨浓/姚星	\N	liyunong/yaoxing	lyn/yx	7	\N
1294	\N	吴钢	\N	wugang	wg	7	\N
1295	\N	姚星/王博	\N	yaoxing/wangbo	yx/wb	7	\N
1296	\N	Andriani Luca	\N	Andriani Luca	Andriani Luca	7	\N
1297	\N	楚天舒	\N	chutianshu	cts	2	\N
1298	\N	金一	\N	jinyi	jy	2	\N
1299	\N	栾梦娜	\N	luanmengna	lmn	2	\N
1300	\N	陆瀚	\N	luhan	lh	19	\N
1301	\N	李忠俊/帅青红	\N	lizhongjun/shuaiqinghong	lzj/sqh	18	\N
1302	\N	陈晓光	\N	chenxiaoguang	cxg	2	\N
1303	\N	李少鹏	\N	lishaopeng	lsp	11	\N
1304	\N	童璐	\N	tonglu	tl	11	\N
1305	\N	孙静华	\N	sunjinghua	sjh	11	\N
1306	\N	张冬/唐雪松	\N	zhangdong/tangxuesong	zd/txs	11	\N
1307	\N	朱爱勇	\N	zhuaiyong	zay	11	\N
1308	\N	尚华	\N	shanghua	sh	2	\N
1309	\N	邓博夫	\N	dengbofu	dbf	11	\N
1310	\N	胡宁	\N	huning	hn	11	\N
1311	\N	金智	\N	jinzhi	jz	11	\N
1312	\N	李海燕	\N	lihaiyan	lhy	11	\N
1313	\N	许楠	\N	xunan	xn	11	\N
1314	\N	杨奕楠	\N	yangyinan	yyn	11	\N
1315	\N	张怡	\N	zhangyi	zy	11	\N
1316	\N	张婷婷	\N	zhangtingting	ztt	1	\N
1317	\N	Greenstein Brian	\N	Greenstein Brian	Greenstein Brian	14	\N
1318	\N	冯建	\N	fengjian	fj	11	\N
1319	\N	谢彪	\N	xiebiao	xb	3	\N
1320	\N	曹伟/董青马	\N	caowei/dongqingma	cw/dqm	1	\N
1321	\N	黄宇虹	\N	huangyuhong	hyh	1	\N
1322	\N	李洁	\N	lijie	lj	1	\N
1323	\N	莫建明	\N	mojianming	mjm	1	\N
1324	\N	万晓莉	\N	wanxiaoli	wxl	1	\N
1325	\N	翁舟杰/许坤	\N	wengzhoujie/xukun	wzj/xk	1	\N
1326	\N	肖宇	\N	xiaoyu	xy	1	\N
1327	\N	彭刚	\N	penggang	pg	6	\N
1328	\N	温良剑	\N	wenliangjian	wlj	3	\N
1329	\N	王武	\N	wangwu	ww	3	\N
1330	\N	王天明/赵建容	\N	wangtianming/zhaojianrong	wtm/zjr	12	\N
1331	\N	程睿	\N	chengrui	cr	1	\N
1332	\N	成青/梁巧	\N	chengqing/liangqiao	cq/lq	6	\N
1333	\N	刘耀午	\N	liuyaowu	lyw	6	\N
1334	\N	张佳/周玮	\N	zhangjia/zhouwei	zj/zw	6	\N
1335	\N	盛大林/王湛	\N	shengdalin/wangzhan	sdl/wz	4	\N
1336	\N	蒲丹/龚金国	\N	pudan/gongjinguo	pd/gjg	6	\N
1337	\N	谢昕伶/郭建军	\N	xiexinling/guojianjun	xxl/gjj	6	\N
1338	\N	张尧钧	\N	zhangyaojun	zyj	6	\N
1339	\N	雷蕾	\N	leilei	ll	2	\N
1340	\N	杨雨豪	\N	yangyuhao	yyh	2	\N
1341	\N	李玉军	\N	liyujun	lyj	1	\N
1342	\N	马思远/张钰	\N	masiyuan/zhangyu	msy/zy	2	\N
1343	\N	张钰/马思远	\N	zhangyu/masiyuan	zy/msy	2	\N
1344	\N	张洋铭	\N	zhangyangming	zym	12	\N
1345	\N	郭斌/林华珍	\N	guobin/linhuazhen	gb/lhz	6	\N
1346	\N	张陆	\N	zhanglu	zl	19	\N
1347	\N	徐晓炜/廖治学/施思/温俊杰/廖春华	\N	xuxiaowei/liaozhixue/shisi/wenjunjie/liaochunhua	xxw/lzx/ss/wjj/lch	10	\N
1348	\N	谈李荣	\N	tanlirong	tlr	5	\N
1349	\N	肖锐/洪正	\N	xiaorui/hongzheng	xr/hz	1	\N
1350	\N	杨自营	\N	yangziying	yzy	1	\N
1351	\N	陈鑫	\N	chenxin	cx	10	\N
1352	\N	古韬	\N	gutao	gt	10	\N
1353	\N	王卓	\N	wangzhuo	wz	1	\N
1354	\N	何超然	\N	hechaoran	hcr	1	\N
1355	\N	罗荣华	\N	luoronghua	lrh	1	\N
1356	\N	许致维/冯用富	\N	xuzhiwei/fengyongfu	xzw/fyf	1	\N
1357	\N	许致维/张滕	\N	xuzhiwei/zhangteng	xzw/zt	1	\N
1358	\N	覃依依	\N	tanyiyi	tyy	1	\N
1359	\N	潘志远	\N	panzhiyuan	pzy	1	\N
1360	\N	徐亮/徐敏/罗潇潇/吴裕珠/熊健/高歌/寇纲	\N	xuliang/xumin/luoxiaoxiao/wuyuzhu/xiongjian/gaoge/kougang	xl/xm/lxx/wyz/xj/gg/kg	10	\N
1361	\N	徐亮/赵奕奕/罗潇潇/吴裕珠/熊健/高歌/寇纲	\N	xuliang/zhaoyiyi/luoxiaoxiao/wuyuzhu/xiongjian/gaoge/kougang	xl/zyy/lxx/wyz/xj/gg/kg	10	\N
1362	\N	胡俊	\N	hujun	hj	1	\N
1363	\N	李庆	\N	liqing	lq	3	\N
1364	\N	邢容	\N	xingrong	xr	3	\N
1365	\N	杨维	\N	yangwei	yw	1	\N
1366	\N	雷雷	\N	leilei	ll	11	\N
1367	\N	王涛	\N	wangtao	wt	18	\N
1368	\N	刘宏鲲	\N	liuhongkun	lhk	18	\N
1369	\N	丁川	\N	dingchuan	dc	12	\N
1370	\N	陆佳	\N	lujia	lj	5	\N
1371	\N	王伦刚/章群	\N	wanglungang/zhangqun	wlg/zq	5	\N
1372	\N	杨秋宇	\N	yangqiuyu	yqy	5	\N
1373	\N	杨秋宇/缪若冰	\N	yangqiuyu/mouruobing	yqy/mrb	5	\N
1374	\N	杨利	\N	yangli	yl	4	\N
1375	\N	贺泽凯	\N	hezekai	hzk	4	\N
1376	\N	刘金石	\N	liujinshi	ljs	19	\N
1377	\N	徐晓炜/廖治学/施思	\N	xuxiaowei/liaozhixue/shisi	xxw/lzx/ss	10	\N
1378	\N	FOROUGH POURHOSSEIN	\N	FOROUGH POURHOSSEIN	FOROUGH POURHOSSEIN	14	\N
1379	\N	罗燕	\N	luoyan	ly	21	\N
1380	\N	王鹏/王慧/刘坤	\N	wangpeng/wanghui/liukun	wp/wh/lk	21	\N
1381	\N	张轶凡	\N	zhangyifan	zyf	21	\N
1382	\N	张瀚文/唐云峰	\N	zhanghanwen/tangyunfeng	zhw/tyf	19	\N
1383	\N	吕彦	\N	lvyan	ly	19	\N
1384	\N	李沛泽	\N	lipeize	lpz	11	\N
1385	\N	李沛泽/任虹	\N	lipeize/renhong	lpz/rh	11	\N
1386	\N	任虹	\N	renhong	rh	11	\N
1387	\N	余婕	\N	yujie	yj	17	\N
1491	\N	刘沙	\N	liusha	ls	1	\N
1388	\N	葛家欣/章群	\N	gejiaxin/zhangqun	gjx/zq	5	\N
1389	\N	高辉	\N	gaohui	gh	1	\N
1390	\N	吕兴洋	\N	lvxingyang	lxy	10	\N
1391	\N	温俊杰/张梦	\N	wenjunjie/zhangmeng	wjj/zm	10	\N
1392	\N	张梦/林红霞/施思/马江水	\N	zhangmeng/linhongxia/shisi/majiangshui	zm/lhx/ss/mjs	10	\N
1393	\N	王广杰	\N	wangguangjie	wgj	22	\N
1394	\N	王姗姗	\N	wangshanshan	wss	22	\N
1395	\N	吴玉平	\N	wuyuping	wyp	22	\N
1396	\N	杨楹	\N	yangying	yy	22	\N
1397	\N	周海荣	\N	zhouhairong	zhr	22	\N
1398	\N	吕进鹏	\N	lvjinpeng	ljp	22	\N
1399	\N	马丹丹	\N	madandan	mdd	22	\N
1400	\N	徐跃辉	\N	xuyuehui	xyh	22	\N
1401	\N	唐睿伊/傅阳	\N	tangruiyi/fuyang	try/fy	10	\N
1402	\N	唐睿伊/孙野	\N	tangruiyi/sunye	try/sy	10	\N
1403	\N	何霞	\N	hexia	hx	5	\N
1404	\N	王战涛	\N	wangzhantao	wzt	5	\N
1405	\N	印通	\N	yintong	yt	5	\N
1406	\N	李振贤/汤火箭	\N	lizhenxian/tanghuojian	lzx/thj	5	\N
1407	\N	彭世忠	\N	pengshizhong	psz	5	\N
1408	\N	喻敏	\N	yumin	ym	5	\N
1409	\N	陈旭东	\N	chenxudong	cxd	11	\N
1410	\N	罗洁	\N	luojie	lj	7	\N
1411	\N	仲海霞	\N	zhonghaixia	zhx	19	\N
1412	\N	毛快/刘文	\N	maokuai/liuwen	mk/lw	5	\N
1413	\N	马江水/刘军军	\N	majiangshui/liujunjun	mjs/ljj	10	\N
1414	\N	马桦	\N	mahua	mh	5	\N
1415	\N	陈晓刚	\N	chenxiaogang	cxg	10	\N
1416	\N	熊佳娟	\N	xiongjiajuan	xjj	9	\N
1417	\N	罗晓萌/朱兢	\N	luoxiaomeng/zhujing	lxm/zj	10	\N
1418	\N	吴应军	\N	wuyingjun	wyj	4	\N
1419	\N	吕新昱	\N	lvxinyu	lxy	3	\N
1420	\N	邓愚凡	\N	dengyufan	dyf	2	\N
1421	\N	杨斐滟	\N	yangfeiyan	yfy	1	\N
1422	\N	叶小兰	\N	yexiaolan	yxl	1	\N
1423	\N	黎珂位	\N	likewei	lkw	19	\N
1424	\N	毛快	\N	maokuai	mk	5	\N
1425	\N	潘鹰	\N	panying	py	5	\N
1426	\N	张怀岭/吴越	\N	zhanghuailing/wuyue	zhl/wy	5	\N
1427	\N	Bharat Suresh Patil	\N	Bharat Suresh Patil	Bharat Suresh Patil	14	\N
1428	\N	罗川	\N	luochuan	lc	18	\N
1429	\N	吕永健	\N	lvyongjian	lyj	1	\N
1430	\N	涂国前	\N	tuguoqian	tgq	11	\N
1431	\N	王新	\N	wangxin	wx	11	\N
1432	\N	杨记军	\N	yangjijun	yjj	11	\N
1433	\N	景鹏/周魅	\N	jingpeng/zhoumei	jp/zm	17	\N
1434	\N	黄志勇/徐程	\N	huangzhiyong/xucheng	hzy/xc	17	\N
1435	\N	史珈铭	\N	shijiaming	sjm	17	\N
1436	\N	张云亮	\N	zhangyunliang	zyl	23	\N
1437	\N	陈岩	\N	chenyan	cy	1	\N
1438	\N	林谦	\N	linqian	lq	12	\N
1439	\N	白璇/李永强	\N	baixuan/liyongqiang	bx/lyq	10	\N
1440	\N	孙苗/冯晓静	\N	sunmiao/fengxiaojing	sm/fxj	10	\N
1441	\N	王庆涛	\N	wangqingtao	wqt	10	\N
1442	\N	张煜	\N	zhangyu	zy	10	\N
1443	\N	朱兢/谢庆红	\N	zhujing/xieqinghong	zj/xqh	10	\N
1444	\N	白璇	\N	baixuan	bx	10	\N
1445	\N	刘小燕	\N	liuxiaoyan	lxy	2	\N
1446	\N	张阳	\N	zhangyang	zy	18	\N
1447	\N	夏一鸣	\N	xiayiming	xym	2	\N
1448	\N	戴波	\N	daibo	db	1	\N
1449	\N	张乐婷	\N	zhangleting	zlt	14	\N
1450	\N	马丹/孟丹	\N	madan/mengdan	md/md	18	\N
1451	\N	张阳/熊杰	\N	zhangyang/xiongjie	zy/xj	18	\N
1452	\N	李可/黄雁勇	\N	like/huangyanyong	lk/hyy	6	\N
1453	\N	谭莹	\N	tanying	ty	6	\N
1454	\N	戴明伟/陈雪蓉	\N	daimingwei/chenxuerong	dmw/cxr	6	\N
1455	\N	高春燕	\N	gaochunyan	gcy	6	\N
1456	\N	郭维康	\N	guoweikang	gwk	6	\N
1457	\N	兰伟/王籼入	\N	lanwei/wangxianru	lw/wxr	6	\N
1458	\N	佘睿	\N	sherui	sr	6	\N
1459	\N	方敏/刘伟	\N	fangmin/liuwei	fm/lw	12	\N
1460	\N	马敬堂	\N	majingtang	mjt	12	\N
1461	\N	章丽	\N	zhangli	zl	12	\N
1462	\N	黄昊	\N	huanghao	hh	8	\N
1463	\N	李娜/文峰/高跃光	\N	lina/wenfeng/gaoyueguang	ln/wf/gyg	8	\N
1464	\N	贺英	\N	heying	hy	19	\N
1465	\N	舒帝	\N	shudi	sd	19	\N
1466	\N	王长安	\N	wangchangan	wca	4	\N
1467	\N	杨璐	\N	yanglu	yl	4	\N
1468	\N	朱杰/王雨祥	\N	zhujie/wangyuxiang	zj/wyx	4	\N
1469	\N	宋洋	\N	songyang	sy	8	\N
1470	\N	尹诗白	\N	yinshibai	ysb	3	\N
1471	\N	谢鹏鑫/孟琳琳	\N	xiepengxin/menglinlin	xpx/mll	17	\N
1472	\N	钟慧/张文洁	\N	zhonghui/zhangwenjie	zh/zwj	17	\N
1473	\N	张文洁	\N	zhangwenjie	zwj	17	\N
1474	\N	姜先登	\N	jiangxiandeng	jxd	8	\N
1475	\N	李建军	\N	lijianjun	ljj	8	\N
1476	\N	余莎	\N	yusha	ys	8	\N
1477	\N	杜颖	\N	duying	dy	22	\N
1478	\N	黄佐毅	\N	huangzuoyi	hzy	22	\N
1479	\N	吕君怡	\N	lvjunyi	ljy	22	\N
1480	\N	王磊/赵吉林	\N	wanglei/zhaojilin	wl/zjl	22	\N
1481	\N	吴量/周岭	\N	wuliang/zhouling	wl/zl	6	\N
1482	\N	APOSTOLAKIS Christos/TESSIERHe？loi？se Anne Marle	\N	APOSTOLAKIS Christos/TESSIERHe？loi？se Anne Marle	APOSTOLAKIS Christos/TESSIERHe？loi？se Anne Marle	10	\N
1483	\N	陈丹丹/陈娟	\N	chendandan/chenjuan	cdd/cj	6	\N
1484	\N	何雅兴/马丹	\N	heyaxing/madan	hyx/md	6	\N
1485	\N	夏怡凡/董春/张红历	\N	xiayifan/dongchun/zhanghongli	xyf/dc/zhl	6	\N
1486	\N	杜艳/王佳/陈霄	\N	duyan/wangjia/chenxiao	dy/wj/cx	8	\N
1487	\N	王佳	\N	wangjia	wj	8	\N
1488	\N	倪剑	\N	nijian	nj	1	\N
1489	\N	宋全云	\N	songquanyun	sqy	1	\N
1490	\N	汪勇	\N	wangyong	wy	1	\N
1492	\N	徐若冉	\N	xuruoran	xrr	1	\N
1493	\N	黄菊	\N	huangju	hj	2	\N
1494	\N	WANG XUEWU	\N	WANG XUEWU	WANG XUEWU	14	\N
1495	\N	陈新富	\N	chenxinfu	cxf	12	\N
1496	\N	蒋玉	\N	jiangyu	jy	10	\N
1497	\N	李起铨	\N	liqiquan	lqq	10	\N
1498	\N	秦志龙	\N	qinzhilong	qzl	10	\N
1499	\N	袁鹏/刘炎周	\N	yuanpeng/liuyanzhou	yp/lyz	10	\N
1500	\N	余津嫺/李起铨	\N	yujinxian/liqiquan	yjx/lqq	17	\N
1501	\N	王湛	\N	wangzhan	wz	20	\N
1502	\N	甘雨	\N	ganyu	gy	4	\N
1503	\N	黄大康	\N	huangdakang	hdk	4	\N
1504	\N	李小帆	\N	lixiaofan	lxf	4	\N
1505	\N	李元哲	\N	liyuanzhe	lyz	4	\N
1506	\N	刘恒	\N	liuheng	lh	4	\N
1507	\N	董大鑫/周凡	\N	dongdaxin/zhoufan	ddx/zf	10	\N
1508	\N	丁玉莲	\N	dingyulian	dyl	14	\N
1509	\N	董大鑫/刘忠	\N	dongdaxin/liuzhong	ddx/lz	14	\N
1510	\N	余津嫺	\N	yujinxian	yjx	14	\N
1511	\N	汪小平	\N	wangxiaoping	wxp	1	\N
1512	\N	杨霜/杨小涵	\N	yangshuang/yangxiaohan	ys/yxh	19	\N
1513	\N	王琛	\N	wangchen	wc	19	\N
1514	\N	王秋豪	\N	wangqiuhao	wqh	10	\N
1515	\N	李剑奇	\N	lijianqi	ljq	7	\N
1516	\N	孙菁菁	\N	sunjingjing	sjj	19	\N
1517	\N	陈宗权	\N	chenzongquan	czq	22	\N
1518	\N	郭开强	\N	guokaiqiang	gkq	22	\N
1519	\N	刘世强	\N	liushiqiang	lsq	22	\N
1520	\N	罗杰/雷栋良	\N	luojie/leidongliang	lj/ldl	22	\N
1521	\N	李永豪	\N	liyonghao	lyh	3	\N
1522	\N	樊胜	\N	fansheng	fs	12	\N
1523	\N	沈金叶/杨文昇	\N	shenjinye/yangwensheng	sjy/yws	12	\N
1524	\N	李正扬	\N	lizhengyang	lzy	10	\N
1525	\N	朱雨可/毛中根	\N	zhuyuke/maozhonggen	zyk/mzg	10	\N
1526	\N	谭慧敏	\N	tanhuimin	thm	10	\N
1527	\N	熊霁	\N	xiongji	xj	10	\N
1528	\N	刘晓娜	\N	liuxiaona	lxn	14	\N
1529	\N	特拉华临时教师1	\N	telahualinshijiaoshi1	tlhlsjs1	14	\N
1530	\N	王彬宇	\N	wangbinyu	wby	14	\N
1531	\N	王学钊	\N	wangxuezhao	wxz	14	\N
1532	\N	王云	\N	wangyun	wy	14	\N
1533	\N	陈佩	\N	chenpei	cp	10	\N
1534	\N	高升好	\N	gaoshenghao	gsh	11	\N
1535	\N	王子田/步丹璐	\N	wangzitian/budanlu	wzt/bdl	11	\N
1536	\N	易阳	\N	yiyang	yy	11	\N
1537	\N	张倩倩	\N	zhangqianqian	zqq	11	\N
1538	\N	钟慧	\N	zhonghui	zh	17	\N
1539	\N	谭鸿瀛	\N	tanhongying	thy	18	\N
1540	\N	薛舒予	\N	xueshuyu	xsy	1	\N
1541	\N	胡东飞	\N	hudongfei	hdf	5	\N
1542	\N	文海林	\N	wenhailin	whl	5	\N
1543	\N	罗维鹏/汤火箭	\N	luoweipeng/tanghuojian	lwp/thj	5	\N
1544	\N	王卓宇	\N	wangzhuoyu	wzy	5	\N
1545	\N	白晶荧	\N	baijingying	bjy	22	\N
1546	\N	曹栢川	\N	caobaichuan	cbc	22	\N
1547	\N	陈思	\N	chensi	cs	22	\N
1548	\N	陈卓	\N	chenzhuo	cz	22	\N
1549	\N	郭佳鑫	\N	guojiaxin	gjx	22	\N
1550	\N	李世界	\N	lishijie	lsj	22	\N
1551	\N	刘坤	\N	liukun	lk	22	\N
1552	\N	鲁元鸿	\N	luyuanhong	lyh	22	\N
1553	\N	罗斯元	\N	luosiyuan	lsy	22	\N
1554	\N	毛思程	\N	maosicheng	msc	22	\N
1555	\N	戚悦	\N	qiyue	qy	22	\N
1556	\N	饶玉申	\N	raoyushen	rys	22	\N
1557	\N	舒坦	\N	shutan	st	22	\N
1558	\N	杨宇哲	\N	yangyuzhe	yyz	22	\N
1559	\N	叶容均	\N	yerongjun	yrj	22	\N
1560	\N	胡舒	\N	hushu	hs	22	\N
1561	\N	江娜	\N	jiangna	jn	22	\N
1562	\N	李海宾	\N	lihaibin	lhb	22	\N
1563	\N	李昕怡	\N	lixinyi	lxy	22	\N
1564	\N	刘思涓	\N	liusijuan	lsj	22	\N
1565	\N	史雪聃	\N	shixuedan	sxd	22	\N
1566	\N	谭敏	\N	tanmin	tm	22	\N
1567	\N	王隆庆	\N	wanglongqing	wlq	22	\N
1568	\N	王宇皓	\N	wangyuhao	wyh	22	\N
1569	\N	谢奉君	\N	xiefengjun	xfj	22	\N
1570	\N	杨长虹	\N	yangchanghong	ych	22	\N
1571	\N	杨帆	\N	yangfan	yf	22	\N
1572	\N	杨瑶	\N	yangyao	yy	22	\N
1573	\N	杨倩	\N	yangqian	yq	22	\N
1574	\N	俞佩玉	\N	yupeiyu	ypy	22	\N
1575	\N	张琪	\N	zhangqi	zq	22	\N
1576	\N	钟芸莹	\N	zhongyunying	zyy	22	\N
1577	\N	邹先云	\N	zouxianyun	zxy	22	\N
1578	\N	缪丹	\N	moudan	md	22	\N
1579	\N	何欢/秦增强	\N	hehuan/qinzengqiang	hh/qzq	17	\N
1580	\N	吴博晨	\N	wubochen	wbc	1	\N
1581	\N	徐加根/李志生	\N	xujiagen/lizhisheng	xjg/lzs	1	\N
1582	\N	刘力溯	\N	liulisu	lls	19	\N
1583	\N	牛耕	\N	niugeng	ng	2	\N
1584	\N	周魅	\N	zhoumei	zm	17	\N
1585	\N	穆滢潭/臧文斌	\N	muyingtan/zangwenbin	myt/zwb	17	\N
1586	\N	周峰/郑海超	\N	zhoufeng/zhenghaichao	zf/zhc	3	\N
1587	\N	胡薇薇	\N	huweiwei	hww	19	\N
1588	\N	Cameron ThomasWalton/DUBOIS DOMINIQUE	\N	Cameron ThomasWalton/DUBOIS DOMINIQUE	Cameron ThomasWalton/DUBOIS DOMINIQUE	10	\N
1589	\N	DUBOIS DOMINIQUE/Cameron ThomasWalton	\N	DUBOIS DOMINIQUE/Cameron ThomasWalton	DUBOIS DOMINIQUE/Cameron ThomasWalton	10	\N
1590	\N	刘扬	\N	liuyang	ly	9	\N
1591	\N	夏怡凡/凌星	\N	xiayifan/lingxing	xyf/lx	6	\N
1592	\N	朱文婷/陈鑫	\N	zhuwenting/chenxin	zwt/cx	10	\N
1593	\N	朱文婷/付晓蓉	\N	zhuwenting/fuxiaorong	zwt/fxr	10	\N
1594	\N	唐小飞	\N	tangxiaofei	txf	10	\N
1595	\N	高洁/甘湘华/王秋豪	\N	gaojie/ganxianghua/wangqiuhao	gj/gxh/wqh	10	\N
1596	\N	田野/章宇	\N	tianye/zhangyu	ty/zy	10	\N
1597	\N	郑莉娟	\N	zhenglijuan	zlj	19	\N
1598	\N	许晓言	\N	xuxiaoyan	xxy	2	\N
1599	\N	宋博迁	\N	songboqian	sbq	18	\N
1600	\N	穆丽颖	\N	muliying	mly	14	\N
1601	\N	陶庆久	\N	taoqingjiu	tqj	14	\N
1602	\N	周克清	\N	zhoukeqing	zkq	8	\N
1603	\N	李超	\N	lichao	lc	8	\N
1604	\N	鄢杰	\N	yanjie	yj	8	\N
1605	\N	鄢杰/文峰	\N	yanjie/wenfeng	yj/wf	8	\N
1606	\N	陈姝兴	\N	chenshuxing	csx	4	\N
1607	\N	高远卓	\N	gaoyuanzhuo	gyz	4	\N
1608	\N	夏微	\N	xiawei	xw	19	\N
1609	\N	蒋为	\N	jiangwei	jw	7	\N
1610	\N	吴治繁	\N	wuzhifan	wzf	5	\N
1611	\N	李栋辉	\N	lidonghui	ldh	19	\N
1612	\N	邓晓娇	\N	dengxiaojiao	dxj	22	\N
1613	\N	郭岩伟/何毅	\N	guoyanwei/heyi	gyw/hy	22	\N
1614	\N	贾国雄/曾朝夕	\N	jiaguoxiong/cengzhaoxi	jgx/czx	22	\N
1615	\N	陆雨思	\N	luyusi	lys	22	\N
1616	\N	袁上/邓育苗	\N	yuanshang/dengyumiao	ys/dym	22	\N
1617	\N	赵劲松	\N	zhaojingsong	zjs	4	\N
1618	\N	李标	\N	libiao	lb	4	\N
1619	\N	谢非	\N	xiefei	xf	14	\N
1620	\N	戴泽伟	\N	daizewei	dzw	11	\N
1621	\N	陈竹/谭洪涛	\N	chenzhu/tanhongtao	cz/tht	11	\N
1622	\N	王志/谭洪涛	\N	wangzhi/tanhongtao	wz/tht	11	\N
1623	\N	李鑫	\N	lixin	lx	11	\N
1624	\N	王雪	\N	wangxue	wx	11	\N
1625	\N	余海宗	\N	yuhaizong	yhz	11	\N
1626	\N	唐芸茜/严文龙	\N	tangyunqian/yanwenlong	tyq/ywl	1	\N
1627	\N	Martin Woodford	\N	Martin Woodford	Martin Woodford	7	\N
1628	\N	陈师/韩绿艺	\N	chenshi/hanlvyi	cs/hly	4	\N
1629	\N	苏丽敏	\N	sulimin	slm	9	\N
1630	\N	郭维康/张婷	\N	guoweikang/zhangting	gwk/zt	18	\N
1631	\N	杜艳	\N	duyan	dy	8	\N
1632	\N	郭洋生	\N	guoyangsheng	gys	9	\N
1633	\N	陈志杰	\N	chenzhijie	czj	10	\N
1634	\N	孙苗	\N	sunmiao	sm	10	\N
1635	\N	秦增强	\N	qinzengqiang	qzq	17	\N
1636	\N	甘元霞	\N	ganyuanxia	gyx	10	\N
1637	\N	徐姗/谢梦影/付嵘	\N	xushan/xiemengying/furong	xs/xmy/fr	10	\N
1638	\N	宁南/向姝婷	\N	ningnan/xiangshuting	nn/xst	7	\N
1639	\N	吴善辉	\N	wushanhui	wsh	2	\N
1640	\N	李忠俊/杨茜/熊杰	\N	lizhongjun/yangqian/xiongjie	lzj/yq/xj	18	\N
1641	\N	徐冲	\N	xuchong	xc	17	\N
1642	\N	贺思恩	\N	hesien	hse	19	\N
1643	\N	在线课程教师	\N	zaixiankechengjiaoshi	zxkcjs	19	\N
1644	\N	孙炜红	\N	sunweihong	swh	23	\N
1645	\N	陈宁/黄若璇	\N	chenning/huangruoxuan	cn/hrx	22	\N
1646	\N	黄若璇/陈宁	\N	huangruoxuan/chenning	hrx/cn	22	\N
1647	\N	卢冲/秦志龙	\N	luchong/qinzhilong	lc/qzl	23	\N
1648	\N	文书洋	\N	wenshuyang	wsy	1	\N
1649	\N	王伊琳/谭敏/党婉平/魏歆七	\N	wangyilin/tanmin/dangwanping/weixinqi	wyl/tm/dwp/wxq	1	\N
1650	\N	张芸	\N	zhangyun	zy	5	\N
1651	\N	何成艳	\N	hechengyan	hcy	19	\N
1652	\N	徐果	\N	xuguo	xg	19	\N
1653	\N	李楠/郑敏思	\N	linan/zhengminsi	ln/zms	19	\N
1654	\N	郑羽	\N	zhengyu	zy	1	\N
1655	\N	张恩碧	\N	zhangenbi	zeb	27	\N
1656	\N	陈坤/谭莹/凌星	\N	chenkun/tanying/lingxing	ck/ty/lx	6	\N
1657	\N	张琳	\N	zhanglin	zl	1	\N
1658	\N	卢飞	\N	lufei	lf	27	\N
1659	\N	李权财	\N	liquancai	lqc	23	\N
1660	\N	伍骏骞/洪俊侨	\N	wujunqian/hongjunqiao	wjq/hjq	27	\N
1661	\N	罗牧原	\N	luomuyuan	lmy	23	\N
1662	\N	葛鑫	\N	gexin	gx	23	\N
1663	\N	张娟	\N	zhangjuan	zj	17	\N
1664	\N	郭琳/申宇/陈勇	\N	guolin/shenyu/chenyong	gl/sy/cy	1	\N
1665	\N	罗旭斌	\N	luoxubin	lxb	3	\N
1666	\N	才让本	\N	cairangben	crb	23	\N
1667	\N	文翼平	\N	wenyiping	wyp	19	\N
1668	\N	张怀岭/黄礼登	\N	zhanghuailing/huanglideng	zhl/hld	5	\N
1669	\N	张聪颖	\N	zhangcongying	zcy	27	\N
1670	\N	何欢	\N	hehuan	hh	17	\N
1671	\N	胡薇薇/谢敬峰	\N	huweiwei/xiejingfeng	hww/xjf	19	\N
1672	\N	贺盼	\N	hepan	hp	27	\N
1673	\N	林谦/樊胜/祝书强	\N	linqian/fansheng/zhushuqiang	lq/fs/zsq	12	\N
1674	\N	刘蓉/李娜	\N	liurong/lina	lr/ln	8	\N
1675	\N	任虹/宋晋	\N	renhong/songjin	rh/sj	19	\N
1676	\N	张欢/张瑶/邓可人	\N	zhanghuan/zhangyao/dengkeren	zh/zy/dkr	19	\N
1677	\N	张鼎	\N	zhangding	zd	5	\N
1678	\N	贡布泽仁/倪诗蓓	\N	gongbuzeren/nishibei	gbzr/nsb	23	\N
1679	\N	王军/葛浩阳/王卫卿	\N	wangjun/gehaoyang/wangweiqing	wj/ghy/wwq	4	\N
1680	\N	徐承红	\N	xuchenghong	xch	4	\N
1681	\N	方堃/瞿旭	\N	fangkun/quxu	fk/qx	11	\N
1682	\N	李雪峰	\N	lixuefeng	lxf	27	\N
1683	\N	彭泺	\N	pengluo	pl	19	\N
1684	\N	谭远发	\N	tanyuanfa	tyf	23	\N
1685	\N	高明	\N	gaoming	gm	17	\N
1686	\N	冯俭	\N	fengjian	fj	10	\N
1687	\N	王无为/付磊	\N	wangwuwei/fulei	www/fl	27	\N
1688	\N	黄志华/张玮/李雨浓	\N	huangzhihua/zhangwei/liyunong	hzh/zw/lyn	29	\N
1689	\N	王翔宇/黄志华/李雨浓	\N	wangxiangyu/huangzhihua/liyunong	wxy/hzh/lyn	29	\N
1690	\N	韩源	\N	hanyuan	hy	22	\N
1691	\N	苗壮/钟绍卓/刘思岑/李啸谷	\N	miaozhuang/zhongshaozhuo/liusicen/lixiaogu	mz/zsz/lsc/lxg	4	\N
1692	\N	汪希成	\N	wangxicheng	wxc	27	\N
1693	\N	金浩	\N	jinhao	jh	17	\N
1694	\N	贾国雄/陆雨思/袁上/王翔宇	\N	jiaguoxiong/luyusi/yuanshang/wangxiangyu	jgx/lys/ys/wxy	22	\N
1695	\N	杨楹/唐晓勇/吴玉平/邓育苗	\N	yangying/tangxiaoyong/wuyuping/dengyumiao	yy/txy/wyp/dym	22	\N
1696	\N	张晓涵	\N	zhangxiaohan	zxh	1	\N
1697	\N	梁冰	\N	liangbing	lb	19	\N
1698	\N	潘斌	\N	panbin	pb	19	\N
1699	\N	邓晓娇,郭文	\N	dengxiaojiao,guowen	dxj,gw	22	\N
1700	\N	曾朝夕	\N	cengzhaoxi	czx	22	\N
1701	\N	邓富华,阎丽	\N	dengfuhua,yanli	dfh,yl	7	\N
1702	\N	刘媛媛	\N	liuyuanyuan	lyy	7	\N
1703	\N	许冰	\N	xubing	xb	2	\N
1704	\N	金智,戴泽伟	\N	jinzhi,daizewei	jz,dzw	11	\N
1705	\N	李彦,任荪倩	\N	liyan,rensunqian	ly,rsq	11	\N
1706	\N	代婧,李彦	\N	daijing,liyan	dj,ly	11	\N
1707	\N	杨楹,敬狄,许鹏	\N	yangying,jingdi,xupeng	yy,jd,xp	22	\N
1708	\N	韩茜	\N	hanqian	hq	22	\N
1709	\N	习勇生	\N	xiyongsheng	xys	19	\N
1710	\N	敬嵩	\N	jingsong	js	17	\N
1711	\N	李晨晨,任鹊羽	\N	lichenchen,renqueyu	lcc,rqy	10	\N
1712	\N	付慧敏,杨新	\N	fuhuimin,yangxin	fhm,yx	3	\N
1713	\N	罗珺方	\N	luojunfang	ljf	3	\N
1714	\N	张丹,黄鹂	\N	zhangdan,huangli	zd,hl	3	\N
1715	\N	任灵飞	\N	renlingfei	rlf	3	\N
1716	\N	张丹,黄迟,王武,任灵飞,邓烨,付慧敏	\N	zhangdan,huangchi,wangwu,renlingfei,dengye,fuhuimin	zd,hc,ww,rlf,dy,fhm	3	\N
1717	\N	李亮,江衍妙	\N	liliang,jiangyanmiao	ll,jym	5	\N
1718	\N	温俊杰,廖治学	\N	wenjunjie,liaozhixue	wjj,lzx	10	\N
1719	\N	周岭,阎瑶	\N	zhouling,yanyao	zl,yy	30	\N
1720	\N	朱胜坤,孟开文	\N	zhushengkun,mengkaiwen	zsk,mkw	12	\N
1721	\N	待定教师（会计）	\N	daidingjiaoshi（kuaiji）	ddjs（kj）	11	\N
1722	\N	Velury Uma	\N	Velury Uma	Velury Uma	14	\N
1723	\N	王志	\N	wangzhi	wz	7	\N
1724	\N	杨霜	\N	yangshuang	ys	19	\N
1725	\N	孙蓉	\N	sunrong	sr	1	\N
1726	\N	荣幸	\N	rongxing	rx	1	\N
1727	\N	陈羽莎	\N	chenyusha	cys	1	\N
1728	\N	杨斐滟,黄子航	\N	yangfeiyan,huangzihang	yfy,hzh	1	\N
1729	\N	唐莹	\N	tangying	ty	1	\N
1730	\N	张兴敏,宋易珈	\N	zhangxingmin,songyijia	zxm,syj	1	\N
1731	\N	史斌斌	\N	shibinbin	sbb	12	\N
1732	\N	袁玥,陈泽媛	\N	yuanyue,chenzeyuan	yy,czy	17	\N
1733	\N	臧文斌	\N	zangwenbin	zwb	17	\N
1734	\N	高明,任勤	\N	gaoming,renqin	gm,rq	17	\N
1735	\N	陈建东,任勤	\N	chenjiandong,renqin	cjd,rq	17	\N
1736	\N	顾绚,李丁	\N	guxuan,liding	gx,ld	17	\N
1737	\N	吴君凤,李力	\N	wujunfeng,lili	wjf,ll	8	\N
1738	\N	尚华,张大永	\N	shanghua,zhangdayong	sh,zdy	2	\N
1739	\N	特拉华临时教师7	\N	telahualinshijiaoshi7	tlhlsjs7	14	\N
1740	\N	张一博	\N	zhangyibo	zyb	21	\N
1741	\N	张正军,袁上	\N	zhangzhengjun,yuanshang	zzj,ys	21	\N
1742	\N	唐稷尧	\N	tangjiyao	tjy	5	\N
1743	\N	陈智,段江	\N	chenzhi,duanjiang	cz,dj	3	\N
1744	\N	黄可	\N	huangke	hk	1	\N
1745	\N	王文乾,雷震	\N	wangwenqian,leizhen	wwq,lz	4	\N
1746	\N	田森	\N	tiansen	ts	4	\N
1747	\N	高明,吴茵茵,陈建东	\N	gaoming,wuyinyin,chenjiandong	gm,wyy,cjd	17	\N
1748	\N	钱一苇	\N	qianyiwei	qyw	2	\N
1749	\N	张芸,毛快	\N	zhangyun,maokuai	zy,mk	5	\N
1750	\N	James	\N	James	James	7	\N
1751	\N	冯源,付嵘	\N	fengyuan,furong	fy,fr	20	\N
1752	\N	兰伟,蒲丹	\N	lanwei,pudan	lw,pd	30	\N
1753	\N	许致维	\N	xuzhiwei	xzw	1	\N
1754	\N	邓兴华,蒲岳,杨娜	\N	dengxinghua,puyue,yangna	dxh,py,yn	7	\N
1755	\N	张怀岭	\N	zhanghuailing	zhl	5	\N
1756	\N	雷芸,张怀岭	\N	leiyun,zhanghuailing	ly,zhl	5	\N
1757	\N	雷芸,姜玉梅	\N	leiyun,jiangyumei	ly,jym	5	\N
1758	\N	雷芸,李怡	\N	leiyun,liyi	ly,ly	5	\N
1759	\N	蒋海曦,赵元	\N	jianghaixi,zhaoyuan	jhx,zy	7	\N
1760	\N	罗键	\N	luojian	lj	10	\N
1761	\N	王维肯	\N	wangweiken	wwk	9	\N
1762	\N	陈雪蓉	\N	chenxuerong	cxr	30	\N
1763	\N	周国波,缪丹	\N	zhouguobo,moudan	zgb,md	15	\N
1764	\N	崔坤杰	\N	cuikunjie	ckj	15	\N
1765	\N	缪丹,周国波	\N	moudan,zhouguobo	md,zgb	15	\N
1766	\N	谢晓霞	\N	xiexiaoxia	xxx	15	\N
1767	\N	马逸宁	\N	mayining	myn	15	\N
1768	\N	张杨雪,李世界	\N	zhangyangxue,lishijie	zyx,lsj	15	\N
1769	\N	何媛媛,冯卫东	\N	heyuanyuan,fengweidong	hyy,fwd	15	\N
1770	\N	徐跃辉,李世界	\N	xuyuehui,lishijie	xyh,lsj	15	\N
1771	\N	杨宇哲,王隆庆	\N	yangyuzhe,wanglongqing	yyz,wlq	16	\N
1772	\N	李清涛,李艳	\N	liqingtao,liyan	lqt,ly	16	\N
1773	\N	韦章琳	\N	weizhanglin	wzl	16	\N
1774	\N	王妍,初晨	\N	wangyan,chuchen	wy,cc	16	\N
1775	\N	周瑞,罗谟诺	\N	zhourui,luomonuo	zr,lmn	16	\N
1776	\N	蔡雨娟	\N	caiyujuan	cyj	16	\N
1777	\N	张爽,罗锋	\N	zhangshuang,luofeng	zs,lf	16	\N
1778	\N	宫志方	\N	gongzhifang	gzf	16	\N
1779	\N	周欢	\N	zhouhuan	zh	16	\N
1780	\N	李智	\N	lizhi	lz	11	\N
1781	\N	甘湘华	\N	ganxianghua	gxh	10	\N
1782	\N	彭璇,丁可星	\N	pengxuan,dingkexing	px,dkx	11	\N
1783	\N	张蕊	\N	zhangrui	zr	3	\N
1784	\N	蒋阳阳	\N	jiangyangyang	jyy	10	\N
1785	\N	魏文博	\N	weiwenbo	wwb	17	\N
1786	\N	刘畅,邱奕宾	\N	liuchang,qiuyibin	lc,qyb	4	\N
1787	\N	李方卓	\N	lifangzhuo	lfz	4	\N
1788	\N	周荃	\N	zhouquan	zq	4	\N
1789	\N	蔡利,蔡春	\N	caili,caichun	cl,cc	11	\N
1790	\N	吕先锫	\N	lvxianpei	lxp	11	\N
1791	\N	化汝婷	\N	huaruting	hrt	11	\N
1792	\N	谢寓心	\N	xieyuxin	xyx	1	\N
1793	\N	唐睿伊,孙野	\N	tangruiyi,sunye	try,sy	10	\N
1794	\N	江俊佑	\N	jiangjunyou	jjy	30	\N
1795	\N	陈坤	\N	chenkun	ck	30	\N
1796	\N	马思远	\N	masiyuan	msy	2	\N
1797	\N	高远卓,张凯霞,蔡晓陈	\N	gaoyuanzhuo,zhangkaixia,caixiaochen	gyz,zkx,cxc	4	\N
1798	\N	李浩	\N	lihao	lh	22	\N
1799	\N	王蓉	\N	wangrong	wr	22	\N
1800	\N	张又月	\N	zhangyouyue	zyy	22	\N
1801	\N	张帆	\N	zhangfan	zf	22	\N
1802	\N	盛大林,程瑶	\N	shengdalin,chengyao	sdl,cy	4	\N
1803	\N	何欣悦	\N	hexinyue	hxy	4	\N
1804	\N	张琬晴	\N	zhangwanqing	zwq	4	\N
1805	\N	张凯霞	\N	zhangkaixia	zkx	4	\N
1806	\N	高云舒	\N	gaoyunshu	gys	4	\N
1807	\N	彭博,Andriani Luca	\N	pengbo,Andriani Luca	pb,Andriani Luca	7	\N
1808	\N	底璐璐	\N	dilulu	dll	11	\N
1809	\N	潘鑫	\N	panxin	px	10	\N
1810	\N	黄旭,高莉芳,万国光	\N	huangxu,gaolifang,wanguoguang	hx,glf,wgg	10	\N
1811	\N	徐乾	\N	xuqian	xq	10	\N
1812	\N	王霞,王一如	\N	wangxia,wangyiru	wx,wyr	17	\N
1813	\N	孙卫平	\N	sunweiping	swp	19	\N
1814	\N	杜艳,王佳,王霞	\N	duyan,wangjia,wangxia	dy,wj,wx	8	\N
1815	\N	陈彪,徐若冉	\N	chenbiao,xuruoran	cb,xrr	1	\N
1816	\N	夏怡凡	\N	xiayifan	xyf	30	\N
1817	\N	徐志向	\N	xuzhixiang	xzx	4	\N
1818	\N	葛浩阳	\N	gehaoyang	ghy	4	\N
1819	\N	姚常成	\N	yaochangcheng	ycc	4	\N
1820	\N	盖凯程	\N	gaikaicheng	gkc	4	\N
1821	\N	徐姗,吴论文	\N	xushan,wulunwen	xs,wlw	10	\N
1822	\N	王祎,陈海啸	\N	wangyi,chenhaixiao	wy,chx	10	\N
1823	\N	吴园园	\N	wuyuanyuan	wyy	10	\N
1824	\N	赵陈芳	\N	zhaochenfang	zcf	10	\N
1825	\N	宋琪	\N	songqi	sq	10	\N
1826	\N	李娇阳	\N	lijiaoyang	ljy	10	\N
1827	\N	罗皓曦	\N	luohaoxi	lhx	19	\N
1828	\N	孟琳琳	\N	menglinlin	mll	17	\N
1829	\N	邓瑞雪	\N	dengruixue	drx	19	\N
1830	\N	尹亚军	\N	yinyajun	yyj	5	\N
1831	\N	朱杰	\N	zhujie	zj	4	\N
1832	\N	蒋海曦,甄洋	\N	jianghaixi,zhenyang	jhx,zy	7	\N
1833	\N	唐云峰	\N	tangyunfeng	tyf	19	\N
1834	\N	刘蓉,刘元生,李娜	\N	liurong,liuyuansheng,lina	lr,lys,ln	8	\N
1835	\N	欧丽	\N	ouli	ol	12	\N
1836	\N	杨茜	\N	yangqian	yq	18	\N
1837	\N	谭鸿瀛,马丹	\N	tanhongying,madan	thy,md	18	\N
1838	\N	杨城	\N	yangcheng	yc	3	\N
1839	\N	彭博,邱甲贤	\N	pengbo,qiujiaxian	pb,qjx	10	\N
1840	\N	申峰,华夏	\N	shenfeng,huaxia	sf,hx	1	\N
1841	\N	郭斌,张佛德	\N	guobin,zhangfude	gb,zfd	30	\N
1842	\N	王籼入	\N	wangxianru	wxr	30	\N
1843	\N	何婧,常晋源	\N	hejing,changjinyuan	hj,cjy	30	\N
1844	\N	唐教成	\N	tangjiaocheng	tjc	22	\N
1845	\N	卢海阳	\N	luhaiyang	lhy	19	\N
1846	\N	陈理	\N	chenli	cl	19	\N
1847	\N	高辉,谢嘉穗	\N	gaohui,xiejiasui	gh,xjs	20	\N
1848	\N	胡秋明	\N	huqiuming	hqm	17	\N
1849	\N	罗宇	\N	luoyu	ly	8	\N
1850	\N	李昊楠,徐静	\N	lihaonan,xujing	lhn,xj	8	\N
1851	\N	孙正捷	\N	sunzhengjie	szj	11	\N
1852	\N	巩阅瑄	\N	gongyuexuan	gyx	17	\N
1853	\N	张雪	\N	zhangxue	zx	10	\N
1854	\N	何江,何杰	\N	hejiang,hejie	hj,hj	10	\N
1855	\N	何江	\N	hejiang	hj	10	\N
1856	\N	李幸,何杰	\N	lixing,hejie	lx,hj	10	\N
1857	\N	唐明凤	\N	tangmingfeng	tmf	10	\N
1858	\N	SORIN EUGEN PIPERCA,Arron Phillips	\N	SORIN EUGEN PIPERCA,Arron Phillips	SORIN EUGEN PIPERCA,Arron Phillips	7	\N
1859	\N	张婷,杨勇剑	\N	zhangting,yangyongjian	zt,yyj	18	\N
1860	\N	张红历	\N	zhanghongli	zhl	18	\N
1861	\N	王晓斌	\N	wangxiaobin	wxb	1	\N
1862	\N	沈金叶	\N	shenjinye	sjy	12	\N
1863	\N	Barish Oliver	\N	Barish Oliver	Barish Oliver	7	\N
1864	\N	BARRETT MARIA	\N	BARRETT MARIA	BARRETT MARIA	7	\N
1865	\N	特拉华临时教师9	\N	telahualinshijiaoshi9	tlhlsjs9	14	\N
1866	\N	汪蕾,鲁篱	\N	wanglei,luli	wl,ll	5	\N
1867	\N	凌星,吴骞	\N	lingxing,wuqian	lx,wq	30	\N
1868	\N	黄雁勇	\N	huangyanyong	hyy	30	\N
1869	\N	李俭富,张捷,夏怡凡	\N	lijianfu,zhangjie,xiayifan	ljf,zj,xyf	30	\N
1870	\N	王玉梅,郭志刚	\N	wangyumei,guozhigang	wym,gzg	10	\N
1871	\N	吴瑞恩	\N	wuruien	wre	11	\N
1872	\N	薛舒予,胡晓,陈汕	\N	xueshuyu,huxiao,chenshan	xsy,hx,cs	1	\N
1873	\N	秦燕	\N	qinyan	qy	9	\N
1874	\N	毛谢恩,史珈铭	\N	maoxieen,shijiaming	mxe,sjm	17	\N
1875	\N	陈中普,赵宇	\N	chenzhongpu,zhaoyu	czp,zy	3	\N
1876	\N	DUBOIS DOMINIQUE,Pramodh VKumer	\N	DUBOIS DOMINIQUE,Pramodh VKumer	DUBOIS DOMINIQUE,Pramodh VKumer	10	\N
1877	\N	黄志华,Cameron ThomasWalton	\N	huangzhihua,Cameron ThomasWalton	hzh,Cameron ThomasWalton	9	\N
1878	\N	Dyson Thomas Jack	\N	Dyson Thomas Jack	Dyson Thomas Jack	14	\N
1879	\N	王帝,田森	\N	wangdi,tiansen	wd,ts	4	\N
1880	\N	陶维东,吴元元	\N	taoweidong,wuyuanyuan	twd,wyy	5	\N
1881	\N	陈朝兵,廖宏斌	\N	chenchaobing,liaohongbin	ccb,lhb	17	\N
1882	\N	郭海凤,孙明	\N	guohaifeng,sunming	ghf,sm	1	\N
1883	\N	刘家芬	\N	liujiafen	ljf	3	\N
1884	\N	蒲丹	\N	pudan	pd	30	\N
1885	\N	谢昕伶	\N	xiexinling	xxl	30	\N
1886	\N	徐静	\N	xujing	xj	8	\N
1887	\N	王明璐	\N	wangminglu	wml	8	\N
1888	\N	周克清,马骁	\N	zhoukeqing,maxiao	zkq,mx	8	\N
1889	\N	刘亚辉,李凤	\N	liuyahui,lifeng	lyh,lf	1	\N
1890	\N	董青马	\N	dongqingma	dqm	1	\N
1891	\N	翁舟杰	\N	wengzhoujie	wzj	1	\N
1892	\N	李川	\N	lichuan	lc	1	\N
1893	\N	张滕	\N	zhangteng	zt	1	\N
1894	\N	范维,郭仕利	\N	fanwei,guoshili	fw,gsl	4	\N
1895	\N	钟绍卓,贡布泽仁,李啸谷	\N	zhongshaozhuo,gongbuzeren,lixiaogu	zsz,gbzr,lxg	4	\N
1896	\N	钟绍卓,李啸谷,郭仕利	\N	zhongshaozhuo,lixiaogu,guoshili	zsz,lxg,gsl	4	\N
1897	\N	叶作亮,李丹	\N	yezuoliang,lidan	yzl,ld	7	\N
1898	\N	徐姗,李幸	\N	xushan,lixing	xs,lx	10	\N
1899	\N	王鑫	\N	wangxin	wx	10	\N
1900	\N	朱敏,刘越	\N	zhumin,liuyue	zm,ly	19	\N
1901	\N	徐晓炜,温俊杰	\N	xuxiaowei,wenjunjie	xxw,wjj	10	\N
1902	\N	张木雨	\N	zhangmuyu	zmy	18	\N
1903	\N	郑海超	\N	zhenghaichao	zhc	18	\N
1904	\N	赵奕奕,唐静静,邱甲贤,王冠宁,熊健	\N	zhaoyiyi,tangjingjing,qiujiaxian,wangguanning,xiongjian	zyy,tjj,qjx,wgn,xj	10	\N
1905	\N	徐敏,高歌,吴裕珠,罗潇潇,徐亮,熊健	\N	xumin,gaoge,wuyuzhu,luoxiaoxiao,xuliang,xiongjian	xm,gg,wyz,lxx,xl,xj	10	\N
1906	\N	赵奕奕,熊健,邱甲贤,王冠宁,罗潇潇	\N	zhaoyiyi,xiongjian,qiujiaxian,wangguanning,luoxiaoxiao	zyy,xj,qjx,wgn,lxx	10	\N
1907	\N	赵奕奕,熊健,邱甲贤,王冠宁,唐静静	\N	zhaoyiyi,xiongjian,qiujiaxian,wangguanning,tangjingjing	zyy,xj,qjx,wgn,tjj	10	\N
1908	\N	余关元	\N	yuguanyuan	ygy	1	\N
1909	\N	刘黄娟,冯华	\N	liuhuangjuan,fenghua	lhj,fh	17	\N
1910	\N	古永红	\N	guyonghong	gyh	18	\N
1911	\N	刘梦	\N	liumeng	lm	12	\N
1912	\N	徐扬帆,蔡晓陈	\N	xuyangfan,caixiaochen	xyf,cxc	4	\N
1913	\N	贺思恩,贺英	\N	hesien,heying	hse,hy	19	\N
1914	\N	李雪莲,高云舒,郭军杰	\N	lixuelian,gaoyunshu,guojunjie	lxl,gys,gjj	4	\N
1915	\N	王远均,李怡,赖虹宇,毛快,张芸,黄丽娟	\N	wangyuanjun,liyi,laihongyu,maokuai,zhangyun,huanglijuan	wyj,ly,lhy,mk,zy,hlj	5	\N
1916	\N	贡布泽仁,杨帆	\N	gongbuzeren,yangfan	gbzr,yf	23	\N
1917	\N	特拉华临时教师3	\N	telahualinshijiaoshi3	tlhlsjs3	14	\N
1918	\N	王伊琳,吕敏	\N	wangyilin,lvmin	wyl,lm	1	\N
1919	\N	马继炎	\N	majiyan	mjy	17	\N
1920	\N	邓湘树	\N	dengxiangshu	dxs	23	\N
1921	\N	伍骏骞	\N	wujunqian	wjq	27	\N
1922	\N	葛家欣	\N	gejiaxin	gjx	5	\N
1923	\N	王梦潇	\N	wangmengxiao	wmx	17	\N
1924	\N	王伊琳,谭敏,党婉平	\N	wangyilin,tanmin,dangwanping	wyl,tm,dwp	1	\N
1925	\N	杨娜,刘园园,王珏	\N	yangna,liuyuanyuan,wangjue	yn,lyy,wj	7	\N
1926	\N	卢冲,秦志龙	\N	luchong,qinzhilong	lc,qzl	23	\N
1927	\N	阳杨	\N	yangyang	yy	23	\N
1928	\N	孙楠,袁玥	\N	sunnan,yuanyue	sn,yy	23	\N
1929	\N	赵亚川	\N	zhaoyachuan	zyc	23	\N
1930	\N	员东婷	\N	yuandongting	ydt	28	\N
1931	\N	任虹,宋晋	\N	renhong,songjin	rh,sj	19	\N
1932	\N	顾珉珉	\N	guminmin	gmm	23	\N
1933	\N	李彪,吴裕珠	\N	libiao,wuyuzhu	lb,wyz	11	\N
1934	\N	胡晓,陈汕	\N	huxiao,chenshan	hx,cs	1	\N
1935	\N	崔雪璨	\N	cuixuecan	cxc	1	\N
1936	\N	卢灵煜,史雪聃	\N	lulingyu,shixuedan	lly,sxd	19	\N
1937	\N	徐彩慧,杜文	\N	xucaihui,duwen	xch,dw	19	\N
1938	\N	叶胥,江舟	\N	yexu,jiangzhou	yx,jz	27	\N
1939	\N	特拉华临时教师2	\N	telahualinshijiaoshi2	tlhlsjs2	14	\N
1940	\N	方堃,瞿旭	\N	fangkun,quxu	fk,qx	19	\N
1941	\N	陆怡霏	\N	luyifei	lyf	23	\N
1942	\N	杨远波,孙巨杉	\N	yangyuanbo,sunjushan	yyb,sjs	28	\N
1943	\N	张欢,邓可人,张瑶	\N	zhanghuan,dengkeren,zhangyao	zh,dkr,zy	19	\N
1944	\N	付磊	\N	fulei	fl	28	\N
1945	\N	徐茅娣,刘曼冬	\N	xumaodi,liumandong	xmd,lmd	23	\N
1946	\N	徐茅娣	\N	xumaodi	xmd	23	\N
1947	\N	黎春,何雅兴	\N	lichun,heyaxing	lc,hyx	30	\N
1948	\N	谭莹,凌星	\N	tanying,lingxing	ty,lx	30	\N
1949	\N	特拉华临时教师5	\N	telahualinshijiaoshi5	tlhlsjs5	14	\N
1950	\N	文举	\N	wenju	wj	9	\N
1951	\N	周可欣	\N	zhoukexin	zkx	9	\N
1952	\N	李明月	\N	limingyue	lmy	9	\N
1953	\N	潘紫萌	\N	panzimeng	pzm	9	\N
1954	\N	傅宗梅	\N	fuzongmei	fzm	9	\N
1955	\N	魏星	\N	weixing	wx	22	\N
1956	\N	方敏,刘伟	\N	fangmin,liuwei	fm,lw	12	\N
1957	\N	任课老师	\N	renkelaoshi	rkls	\N	\N
1958	\N	李春梅/刘杨/黄世坤/高卫民/刘君涵/王翔宇/段江	\N	lichunmei/liuyang/huangshikun/gaoweimin/liujunhan/wangxiangyu/du	lcm/ly/hsk/gwm/ljh/wxy/dj	\N	\N
1959	\N	陶维东/刘国/辜明安/赵海程/赵勇/赵宇霆/刘磊/李	\N	taoweidong/liuguo/gumingan/zhaohaicheng/zhaoyong/zhaoyuting/liul	twd/lg/gma/zhc/zy/zyt/ll/l	\N	\N
1960	李春梅/刘杨/黄世坤/高卫民/刘君涵/王翔宇/段江波/郭岩伟	李春梅/刘杨/黄世坤/高卫民/刘君涵/王翔宇/段江波/郭岩伟	\N	李春梅/刘杨/黄世坤/高卫民/刘君涵/王翔宇/段江波/郭岩伟	李春梅/刘杨/黄世坤/高卫民/刘君涵/王翔宇/段江波/郭岩伟	\N	\N
\.


--
-- Data for Name: jcourse_api_course; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.jcourse_api_course (id, code, name, credit, moderator_remark, department_id, main_teacher_id, review_avg, review_count, last_semester_id) FROM stdin;
1162	ENG101	综合英语Ⅰ	3	\N	9	979	4	6	3
1170	ENG103	综合英语Ⅲ	2	\N	9	986	5	1	3
1167	ENG103	综合英语Ⅲ	2	\N	9	984	4.333333333333333	3	3
1172	ENG103	综合英语Ⅲ	2	\N	9	988	4	1	3
2015	MKT101	市场营销学	3	\N	10	1442	4	2	2
1169	ENG103	综合英语Ⅲ	2	\N	9	979	3.6666666666666665	6	3
166	LAW312	法律社会学	2	\N	5	162	4	1	3
1597	MAT302	高等数学Ⅱ	5	\N	12	222	5	1	2
36	PFC200	财政学	3	\N	8	35	4	1	1
27	LAW324	财税法	3	\N	5	26	5	1	3
1164	ENG103	综合英语Ⅲ	2	\N	9	981	4	1	1
1168	ENG103	综合英语Ⅲ	2	\N	9	985	4.5	2	3
43	FTA200	财政与税收	3	\N	8	42	4	1	3
16	INS206	保险学原理	3	\N	1	16	4	1	1
46	ECO337	产业组织理论	3	\N	4	45	4.5	2	1
12	LAW319	保险法	2	\N	5	12	5	1	3
42	FTA200	财政与税收	3	\N	8	41	5	2	3
15	INS206	保险学原理	3	\N	1	15	\N	0	3
63	CST219	程序设计及应用（Python）Ⅱ	3	\N	3	62	\N	0	1
6	CST213	Python程序设计	2	\N	3	6	\N	0	1
34	PFC200	财政学	3	\N	8	33	\N	0	1
1173	ENG103	综合英语Ⅲ	2	\N	9	989	5	1	3
54	ACC905	成本会计（MA1，英语）	3	\N	13	53	\N	0	3
52	ACC302	成本管理会计	3	\N	11	51	5	1	1
1502	LAW411	创新与安全：数据法治前沿问题研究	1	\N	5	1175	5	1	2
1166	ENG103	综合英语Ⅲ	2	\N	9	983	4.666666666666667	3	3
446	ENG105	基础英语Ⅰ	4	\N	9	412	5	1	3
1766	ENG106	基础英语Ⅱ	4	\N	9	412	5	1	2
1038	ENG211	英语听力Ⅰ	2	\N	9	886	5	1	3
2358	ENG301	英语口语	3	\N	9	338	4	2	2
2357	ENG301	英语口语	3	\N	9	336	3.5	2	2
149	JOB100	大学生职业生涯规划与创业基础	2	\N	16	145	\N	0	1
1030	ENG313	英语口语Ⅰ	2	\N	10	336	3	1	3
1031	ENG313	英语口语Ⅰ	2	\N	9	338	4.5	2	3
1033	ENG314	英语口语Ⅱ	2	\N	10	336	3	1	2
2359	ENG317	英语口语Ⅲ	2	\N	9	336	3	1	2
2213	IPT207	形势与政策II	0.5	\N	22	498	3	1	2
2218	IPT207	形势与政策II	0.5	\N	22	840	4.333333333333333	3	2
2968	IPT208	形势与政策III	0.5	\N	22	1207	5	1	3
2951	IPT208	形势与政策III	0.5	\N	22	840	4	1	3
2962	IPT208	形势与政策III	0.5	\N	22	498	4	1	3
229	MAT301	高等数学Ⅰ	5	\N	12	222	5	1	3
218	MAT301	高等数学Ⅰ	5	\N	12	34	3.5	2	1
228	MAT301	高等数学Ⅰ	5	\N	12	221	4	3	3
227	MAT301	高等数学Ⅰ	5	\N	12	220	4.5	2	3
223	MAT301	高等数学Ⅰ	5	\N	12	216	4.4	5	3
3240	MAT301	高等数学Ⅰ	5	\N	12	1227	4	1	3
1584	MAT302	高等数学Ⅱ	5	\N	12	212	4	1	2
1587	MAT302	高等数学Ⅱ	5	\N	12	1227	3	1	2
1588	MAT302	高等数学Ⅱ	5	\N	12	216	4.4	5	2
1589	MAT302	高等数学Ⅱ	5	\N	12	217	4	2	2
1593	MAT302	高等数学Ⅱ	5	\N	12	220	4	2	2
1596	MAT302	高等数学Ⅱ	5	\N	12	221	3.6666666666666665	3	2
201	MAT313	高等代数Ⅰ	4	\N	12	196	4	1	3
210	MAT313	高等代数Ⅰ	4	\N	12	205	4	1	1
1570	MAT314	高等代数Ⅱ	3	\N	12	196	4	1	2
2318	IPT204	形势与政策教育	0.5	\N	22	145	5	1	2
736	MAT401	数学分析Ⅰ	6	\N	12	46	4.5	2	1
2052	MAT402	数学分析Ⅱ	6	\N	12	656	5	1	2
88	ECO907	大数据与计量经济学	3	\N	4	86	5	1	1
2053	MAT402	数学分析Ⅱ	6	\N	12	663	4.333333333333333	3	2
1582	MAT302	高等数学Ⅱ	5	\N	12	34	3.6666666666666665	3	2
80	FMT404	大数据与财务决策	3	\N	11	78	5	1	1
21	CST208	编译原理	3	\N	3	20	\N	0	3
2095	IPT107	思想道德与法治	3	\N	22	1478	5	2	2
87	ECO907	大数据与计量经济学	3	\N	4	85	4	1	3
65	IBS924	初级财务管理（英）	2	\N	7	64	\N	0	1
85	ECO907	大数据与计量经济学	3	\N	4	83	5	1	3
83	ACC404	大数据与会计分析	3	\N	11	81	\N	0	1
82	ACC404	大数据与会计分析	3	\N	11	80	5	1	3
115	JOB100	大学生职业生涯规划与创业基础	2	\N	16	113	\N	0	1
103	HUM104	大学生心理健康与人生发展	2	\N	15	101	\N	0	1
92	JAP101	大学日语Ⅰ	3	\N	9	90	4.5	2	1
89	MKT307	大数据与智能营销	3	\N	10	87	5	1	3
175	INS801	风险管理与保险（双语）	3	\N	1	171	4	1	1
139	JOB100	大学生职业生涯规划与创业基础	2	\N	16	135	5	1	1
163	STA304	多元统计分析	3	\N	6	159	4	1	1
155	PAD303	地方政府管理与案例分析	3	\N	17	151	4.5	2	3
170	MAT503	泛函分析	3	\N	12	166	5	1	3
181	MAT324	概率论（理科）	4	\N	12	177	4.5	4	2
79	ADT406	大数据审计	3	\N	11	77	\N	0	1
74	CST130	创新程序设计实践	2	\N	3	72	\N	0	1
77	CST327	大数据技术	3	\N	3	75	\N	0	3
76	CST327	大数据技术	3	\N	3	74	\N	0	3
160	ENG306	第二外语	3	\N	9	156	5	2	1
216	MAT301	高等数学Ⅰ	5	\N	12	210	4.142857142857143	7	3
2665	PED205	乒乓球2	1	\N	28	1102	4	1	2
141	JOB100	大学生职业生涯规划与创业基础	2	\N	16	137	\N	0	3
169	ENG104	翻译实践基础	3	\N	9	165	\N	0	1
187	MAT324	概率论（理科）	4	\N	12	183	4	1	2
240	BEN200	高级商务英语Ⅰ	3	\N	9	232	4	1	3
191	MAT324	概率论（理科）	4	\N	12	187	5	1	2
246	ENG201	高级英语听力	3	\N	9	237	5	2	3
232	ACC400	高级财务会计	3	\N	11	225	4	1	3
190	MAT324	概率论（理科）	4	\N	12	186	5	1	2
234	ACC400	高级财务会计	3	\N	11	227	4	1	3
209	MAT313	高等代数Ⅰ	4	\N	12	204	5	2	1
247	ENG201	高级英语听力	3	\N	9	238	4	2	3
198	DSC203	概率论原理	4	\N	6	194	\N	0	1
219	MAT301	高等数学Ⅰ	5	\N	12	212	5	1	3
217	MAT301	高等数学Ⅰ	5	\N	12	211	4	1	3
1526	HUM104	大学生心理健康与人生发展	2	\N	15	810	3	1	3
205	MAT313	高等代数Ⅰ	4	\N	12	200	4	1	3
213	MAT314	高等代数Ⅱ	4	\N	12	200	4	1	1
203	MAT313	高等代数Ⅰ	4	\N	12	198	5	1	1
239	CST409	高级机器学习	3	\N	3	231	\N	0	1
226	MAT301	高等数学Ⅰ	5	\N	12	219	\N	0	3
189	MAT324	概率论（理科）	4	\N	12	185	\N	0	1
281	SFS304	固定收益证券	3	\N	1	271	4	1	2
1628	FIN303	公司金融	3	\N	1	1243	4.5	2	2
288	BBA100	管理学原理	3	\N	10	276	\N	0	3
280	HUM102	沟通与写作	2	\N	19	270	4	1	3
282	SFS304	固定收益证券	3	\N	1	272	4	1	3
308	BBA505	管理研究与论文写作	3	\N	10	294	4	1	1
301	BBA100	管理学原理	3	\N	10	289	\N	0	3
177	IDS306	服务与运营管理（英）	3	\N	10	173	\N	0	3
277	HUM102	沟通与写作	2	\N	19	267	4	1	3
283	ACC906	管理会计（MA2，英语）	3	\N	11	273	\N	0	1
319	IET804	国际结算（双语）	3	\N	7	305	4	2	3
333	IET800	国际经贸研究与管理（双语）	8	\N	7	318	4.5	2	1
316	LAW311	国际法	3	\N	5	302	5	1	1
348	IET800	国际经贸研究与管理（双语）	8	\N	7	331	4	1	1
335	IET800	国际经贸研究与管理（双语）	8	\N	7	320	5	1	1
342	IET800	国际经贸研究与管理（双语）	8	\N	7	316	\N	0	1
339	IET800	国际经贸研究与管理（双语）	8	\N	7	323	\N	0	1
317	LAW311	国际法	3	\N	5	303	\N	0	1
349	BEN317	国际贸易实务（英）	3	\N	9	332	\N	0	1
360	IBS800	国际商务研究与管理（双语）	8	\N	7	341	\N	0	1
192	MAT324	概率论（理科）	4	\N	12	188	4.666666666666667	3	1
346	IET800	国际经贸研究与管理（双语）	8	\N	7	329	5	2	1
338	IET800	国际经贸研究与管理（双语）	8	\N	7	322	4	1	1
327	FIN908	国际金融学（英）	3	\N	1	313	4.5	2	1
294	BBA100	管理学原理	3	\N	10	282	\N	0	1
337	IET800	国际经贸研究与管理（双语）	8	\N	7	321	4	1	1
424	FIN200	货币金融学	3	\N	1	394	5	1	1
208	MAT313	高等代数Ⅰ	4	\N	12	203	5	1	1
613	IPT104	毛泽东思想和中国特色社会主义理论体系概论	3	\N	22	559	4.666666666666667	3	3
399	ECO102	宏观经济学	3	\N	4	371	4.5	2	3
418	FIN200	货币金融学	3	\N	1	388	4.5	4	3
55	ACC301	成本会计学	3	\N	11	54	4.5	2	1
25	FIN522	财富管理案例分析	3	\N	1	24	4	1	3
374	IBS800	国际商务研究与管理（双语）	8	\N	7	352	\N	0	1
1011	HUM127	艺术导论	2	\N	19	641	\N	0	2
412	ACC900	会计学（英）	3	\N	7	383	\N	0	1
1001	ENG334	演讲与辩论	2	\N	9	865	\N	0	1
3349	PED301	篮球3	1	\N	28	1069	\N	0	3
437	FIN200	货币金融学	3	\N	11	175	\N	0	2
423	FIN200	货币金融学	3	\N	1	393	5	2	1
396	ECO102	宏观经济学	3	\N	4	369	5	4	1
397	ECO102	宏观经济学	3	\N	4	370	5	1	3
398	ECO102	宏观经济学	3	\N	4	85	5	1	1
433	FIN200	货币金融学	3	\N	1	403	4.333333333333333	3	3
417	FIN200	货币金融学	3	\N	1	387	4.666666666666667	3	3
392	ECO102	宏观经济学	3	\N	4	365	4	2	3
409	ACC200	会计学	3	\N	11	380	2	1	3
474	BST300	计量经济学	3	\N	30	432	4.666666666666667	3	3
264	FIN303	公司金融	3	\N	1	255	4.5	2	1
479	BST300	计量经济学	3	\N	30	436	5	1	3
473	BST300	计量经济学	3	\N	30	431	4	1	3
482	BST300	计量经济学	3	\N	30	439	4	1	3
458	DSC321	机器学习与数据挖掘	3	\N	1	422	\N	0	1
499	CST121	计算机与大数据基础	2	\N	3	455	5	1	3
461	DSC321	机器学习与数据挖掘	3	\N	6	424	4	1	1
484	BST300	计量经济学	3	\N	30	441	5	1	3
500	CST121	计算机与大数据基础	2	\N	3	456	5	1	1
462	DSC321	机器学习与数据挖掘	3	\N	30	425	5	2	3
464	DSC321	机器学习与数据挖掘	3	\N	6	427	5	1	1
477	BST300	计量经济学	3	\N	30	434	5	1	3
472	BST300	计量经济学	3	\N	30	430	4	1	3
483	BST300	计量经济学	3	\N	6	440	4	1	1
496	CST121	计算机与大数据基础	2	\N	3	452	\N	0	1
494	CST121	计算机与大数据基础	2	\N	3	451	4.333333333333333	3	3
1084	BST202	证券与期货投资分析	3	\N	30	920	4.333333333333333	3	3
24	INV304	不动产投资学	3	\N	8	23	4.5	2	3
443	FRA106	基础法语II	2	\N	10	409	\N	0	3
488	ART013	计算机图形图像设计	3	\N	19	445	\N	0	1
517	FEG405	金融经济学	3	\N	1	472	4	1	3
508	FEG404	金融风险管理	3	\N	1	463	5	2	2
527	BST306	金融统计分析	3	\N	6	481	4	1	1
561	MTT101	军事理论	2	\N	21	511	\N	0	1
549	MTT101	军事理论	2	\N	21	499	\N	0	1
519	FIN931	金融经济学（英）	3	\N	2	474	\N	0	3
466	DSC321	机器学习与数据挖掘	3	\N	6	257	4	1	1
566	MTT101	军事理论	2	\N	21	516	\N	0	3
266	FIN303	公司金融	3	\N	1	257	5	1	3
2328	FEG407	行为金融学	3	\N	1	1038	5	1	2
510	FEG404	金融风险管理	3	\N	1	465	4	1	3
567	HUM135	科学技术概论	2	\N	19	517	4	1	1
526	FEG521	金融随机分析	3	\N	12	480	4	1	3
515	FEG405	金融经济学	3	\N	1	470	5	1	3
521	FIN514	金融科技	3	\N	1	476	4	1	1
590	HUM115	逻辑与道德推理	3	\N	20	537	4	1	3
600	IPT103	马克思主义基本原理	3	\N	22	546	4.25	4	2
601	IPT103	马克思主义基本原理	3	\N	22	547	4	2	3
620	ART002	美术鉴赏	2	\N	19	565	4	1	1
597	IPT103	马克思主义基本原理	3	\N	22	543	4.5	2	3
618	JNL311	媒介产品设计与营销	3	\N	19	564	\N	0	3
596	IPT103	马克思主义基本原理	3	\N	22	542	4	1	3
605	IPT103	马克思主义基本原理	3	\N	22	551	4.333333333333333	3	3
625	CST116	面向对象程序设计（JAVA SE）	3	\N	3	570	\N	0	1
511	ACC940	金融会计（英）	3	\N	2	466	\N	0	3
534	ECO201	经济思想史	3	\N	4	486	\N	0	3
594	HUM101	逻辑与批判性思维	2	\N	19	540	5	1	1
577	HRM102	劳动经济学	3	\N	17	525	5	1	3
655	CST122	人工智能与现代科技	2	\N	3	591	4	2	2
614	IPT104	毛泽东思想和中国特色社会主义理论体系概论	3	\N	22	560	5	1	3
621	ART002	美术鉴赏	2	\N	19	566	4	1	1
627	LAW401	民事案例研究	2	\N	5	360	\N	0	1
598	IPT103	马克思主义基本原理	3	\N	22	544	\N	0	3
584	MTA208	旅行社与在线旅行商管理	3	\N	10	531	\N	0	1
609	IPT104	毛泽东思想和中国特色社会主义理论体系概论	3	\N	22	555	5	1	2
580	LAW205	劳动与社会保障法	3	\N	17	528	4	1	3
602	IPT103	马克思主义基本原理	3	\N	22	548	4	3	3
608	IPT104	毛泽东思想和中国特色社会主义理论体系概论	3	\N	22	554	4.666666666666667	3	3
587	CRM410	绿色金融	3	\N	1	534	4	1	1
607	IPT104	毛泽东思想和中国特色社会主义理论体系概论	3	\N	22	553	5	2	3
2004	STA306	时间序列分析	3	\N	6	648	4	1	2
658	CST122	人工智能与现代科技	2	\N	3	594	4	1	2
678	FIN302	商业银行经营管理	3	\N	1	608	4.333333333333333	3	3
635	MKT204	品牌营销	3	\N	10	576	4.5	2	3
634	LAW307	票据法	2	\N	5	575	4.5	2	3
642	DSC402	强化学习	3	\N	3	583	5	1	1
632	HUM131	批判性思维	2	\N	19	175	\N	0	1
636	MSC204	企业管理经营决策模拟	3	\N	18	577	4.333333333333333	3	3
638	BST203	企业经营管理统计	3	\N	6	579	5	1	1
583	ACC503	理财及个人投资原理	2	\N	13	53	\N	0	3
735	MAT401	数学分析Ⅰ	6	\N	12	656	4	1	3
690	HUM106	社会学思想与方法	2	\N	23	618	5	3	1
647	CST418	人工智能实训Ⅰ	2	\N	3	231	4	1	3
749	DFC200	数字财税概论	2	\N	8	666	5	1	1
701	ADT200	审计学	3	\N	11	628	5	3	3
751	BBA206	数字化管理	3	\N	10	667	5	1	1
694	HUM106	社会学思想与方法	2	\N	23	622	4.5	2	1
727	CST205	数据库原理与应用	3	\N	3	649	4	3	2
748	MAT519	数值计算软件	3	\N	12	665	5	1	3
733	STA302	数理统计（理）	3	\N	6	654	5	1	2
436	FIN200	货币金融学	3	\N	1	405	5	3	3
718	ART003	书法鉴赏	2	\N	19	641	5	1	2
722	CST906	数据结构（英）	3	\N	3	645	\N	0	3
730	CST209	数据挖掘	3	\N	3	217	\N	0	1
756	HRM101	数字化人力资源管理	3	\N	10	672	5	2	1
714	MKT901	市场营销学（英）	3	\N	10	638	5	1	2
742	MAT514	数学分析Ⅰ（理科）	6	\N	12	661	\N	0	1
744	MAT515	数学分析Ⅱ（理科）（重修）	6	\N	12	166	5	1	1
721	CST202	数据结构	3	\N	3	644	5	1	3
699	ADT200	审计学	3	\N	11	626	\N	0	1
759	HRM101	数字化人力资源管理	3	\N	10	674	5	1	1
173	STA202	分类数据分析	3	\N	30	169	4	1	3
784	TAX325	税务代理	3	\N	8	694	4	2	1
766	IET808	数字经济与贸易	3	\N	7	322	5	1	1
757	HRM101	数字化人力资源管理	3	\N	10	595	5	1	1
805	BST200	统计学	3	\N	6	712	4.5	2	2
769	FIN411	数字跨境金融	3	\N	1	681	4.666666666666667	3	3
812	INV205	投资项目经济评价	3	\N	8	718	4	1	3
817	FIN304	投资学	3	\N	1	723	4	2	3
772	ART016	数字媒体艺术概论	3	\N	19	684	\N	0	3
816	FIN304	投资学	3	\N	1	722	\N	0	3
782	TAX205	税收筹划	3	\N	8	693	\N	0	1
820	CLL103	外国文学	3	\N	19	726	4	1	3
763	HUM401	数字经济	2	\N	4	677	4	1	1
700	ADT200	审计学	3	\N	11	627	\N	0	2
702	ADT200	审计学	3	\N	11	629	\N	0	3
770	FIN411	数字跨境金融	3	\N	1	682	4	2	3
798	STA305	随机过程	3	\N	12	181	5	1	3
877	MSC302	系统工程	3	\N	18	773	4.333333333333333	3	3
871	IPT109	习近平新时代中国特色社会主义思想概论	3	\N	22	768	5	1	3
872	IPT109	习近平新时代中国特色社会主义思想概论	3	\N	22	769	4	2	3
873	IPT109	习近平新时代中国特色社会主义思想概论	3	\N	22	770	4	2	3
841	ECO801	微观经济学（双语）	3	\N	7	331	4	1	3
852	CLL302	文艺美学	3	\N	19	751	4	1	1
854	ART008	舞蹈鉴赏	2	\N	19	753	4.333333333333333	3	1
870	IPT109	习近平新时代中国特色社会主义思想概论	3	\N	22	767	4	2	3
868	IPT109	习近平新时代中国特色社会主义思想概论	3	\N	22	765	5	1	3
861	ENG124	西班牙语视听说I	2	\N	9	490	\N	0	1
879	HUM118	现代科技与人工智能	2	\N	3	594	\N	0	1
842	ECO903	微观经济学（英）	3	\N	7	743	\N	0	1
710	IBS908	市场营销理论与应用（英）	3	\N	7	634	4	1	1
1416	ART015	版式设计	3	\N	19	1131	\N	0	2
838	ECO801	微观经济学（双语）	3	\N	7	321	5	1	3
853	ART008	舞蹈鉴赏	2	\N	19	752	\N	0	3
804	BST200	统计学	3	\N	6	711	\N	0	2
911	ECO317	信息经济学	3	\N	4	794	4	1	1
910	ECO317	信息经济学	3	\N	4	793	4	1	1
907	JNL202	新闻摄影与摄像	3	\N	19	791	4.5	2	3
905	JNL205	新闻法规与管理	3	\N	19	789	\N	0	3
918	ART012	形式基础	3	\N	19	801	\N	0	1
903	JNL105	新闻编辑	3	\N	19	270	\N	0	3
908	JNL103	新闻写作	3	\N	19	267	4	1	1
891	BBA906	小型企业财务管理	3	\N	10	382	\N	0	3
986	IPT203	形势与政策教育	0.5	\N	22	140	4	1	1
1010	HUM127	艺术导论	2	\N	19	872	5	1	3
955	IPT203	形势与政策教育	0.5	\N	22	836	\N	0	1
1007	HUM142	艺术创作与表演	2	\N	19	754	5	2	1
987	IPT203	形势与政策教育	0.5	\N	22	854	4.333333333333333	3	1
1015	HUM108	艺术修养与审美体验	2	\N	19	872	5	2	1
999	FEG401	衍生金融工具	3	\N	1	863	4.333333333333333	3	2
997	FIT305	学术论文写作	1	\N	1	476	5	1	1
958	IPT203	形势与政策教育	0.5	\N	22	838	5	1	1
1059	CST329	云计算	3	\N	3	570	4.5	2	3
752	BBA206	数字化管理	3	\N	10	668	5	1	1
1053	BST303	应用时间序列分析	3	\N	6	896	5	2	1
1417	LAW319	保险法	3	\N	1	1132	4.5	2	2
1065	IBS910	战略管理	3	\N	10	581	5	1	3
1018	ART006	音乐鉴赏	2	\N	19	876	\N	0	3
1073	ECO100	政治经济学	3	\N	4	910	\N	0	3
1062	LMT202	运作管理	3	\N	10	902	4	1	3
1060	MAT522	运筹学	3	\N	12	901	4.666666666666667	3	3
1039	ENG332	英语听力Ⅲ	2	\N	9	232	4	1	1
1070	ECO100	政治经济学	4	\N	4	907	\N	0	1
1034	ENG117	英语实用写作	3	\N	14	522	\N	0	1
1024	ENG303	英美文学	2	\N	9	460	5	1	1
1020	ENG304	英美文化	2	\N	9	878	4	1	1
1021	ENG304	英美文化	2	\N	9	156	5	1	1
1035	ENG211	英语听力Ⅰ	2	\N	10	884	5	1	3
1132	ECO803	中级微观经济学（双语）	3	\N	7	316	5	1	3
1125	ECO804	中级宏观经济学（双语）	3	\N	7	956	4	2	1
1124	ECO300	中级宏观经济学	3	\N	4	955	5	1	2
1096	HUM103	中国传统文化概论	2	\N	19	929	4.5	2	1
1129	ECO200	中级微观经济学	3	\N	8	953	4	1	1
1122	ECO300	中级宏观经济学	3	\N	8	953	4	1	1
1138	HUM107	中外文学经典选讲	2	\N	19	751	4.5	2	2
1109	HUM137	中国文学经典选讲	2	\N	19	942	4	2	1
1137	HUM107	中外文学经典选讲	2	\N	19	942	4	2	1
1114	ACC307	中级财务会计I	3	\N	11	947	\N	0	3
1121	PFC313	中级公共经济学	3	\N	8	952	\N	0	2
1131	ECO200	中级微观经济学	3	\N	4	960	\N	0	3
1041	ENG122	英语听说	4	\N	9	888	\N	0	1
1054	ART004	影视鉴赏	2	\N	19	897	\N	0	1
1086	BEN313	职业演讲沟通	2	\N	13	53	\N	0	3
1052	BST302	应用多元统计分析	3	\N	6	895	\N	0	1
1098	FIN460	中国金融市场导论（英）	2	\N	2	931	\N	0	3
1089	MSC203	质量控制与管理	3	\N	18	577	5	1	3
1160	PRT107	综合实验	2	\N	30	433	4	1	3
1161	PRT107	综合实验	2	\N	30	978	4	1	3
586	MTA302	旅游吸引物开发与设计	3	\N	10	533	5	3	1
1271	OPT721	声乐技巧与合唱	3	\N	19	1054	4	2	2
1203	TAX310	不动产投资分析	3	\N	8	1014	5	1	3
1201	OPT058	本科学术论文研究与写作	2	\N	1	309	4	1	3
1157	PRT107	综合实验	2	\N	24	672	4	1	3
1204	OPT600	财富管理概论	1	\N	1	1015	4	1	3
1152	PRT107	综合实验	2	\N	8	972	5	1	3
1151	ADT100	综合能力训练（ERP模拟经营沙盘）	2	\N	11	229	5	2	3
1205	OPT599	财富管理规划	1	\N	1	1016	\N	0	3
1110	ACC307	中级财务会计I	3	\N	11	943	\N	0	1
1195	OPT058	本科学术论文研究与写作	2	\N	1	1008	4	1	1
1180	CST415	最优化方法	3	\N	3	995	\N	0	1
783	TAX205	税收筹划	3	\N	8	666	5	1	3
1229	OPT464	歌唱基础训练	3	\N	19	876	5	2	3
1245	MAT441	金融随机分析Ⅱ	0	\N	12	480	5	2	3
1159	PRT107	综合实验	2	\N	4	487	4.333333333333333	3	3
1249	OPT806	看电影学应急	3	\N	17	1039	\N	0	2
535	ECO413	经济学的数据分析方法	3	\N	4	487	\N	0	3
1252	LAW103	民法总论	3	\N	5	757	\N	0	2
391	ECO102	宏观经济学	3	\N	17	364	\N	0	1
1269	OPT595	社会心理学	2	\N	23	1053	5	1	2
1235	OPT342	韩语初级入门	3	\N	23	1032	5	2	3
1215	OPT722	大学生创新实践	2	\N	17	1020	5	1	1
1225	OPT653	法律经典案例解析	3	\N	22	767	4	1	3
1255	OPT594	女子防身术	2	\N	28	1042	4	1	2
1216	OPT652	大学生求职技能训练	3	\N	22	764	5	1	3
1295	OPT637	戏剧表演基础训练	3	\N	19	873	4.333333333333333	3	3
1312	OPT772	中国古典舞身韵与形体训练	3	\N	19	1082	4.75	4	3
1315	OPT900	中国民俗文化	1	\N	19	641	5	1	1
1280	OPT656	台球	2	\N	28	1059	\N	0	3
1310	OPT845	正念生活与身心锻炼实践	2	\N	19	1081	4	1	1
1306	OPT179	优化理论	3	\N	12	1078	4	1	1
1183	INS312	Excel在经济管理中的应用	2	\N	1	998	\N	0	1
1284	OPT909	网络文化与营销	2	\N	25	1063	5	1	3
1314	OPT466	中国民歌赏析与舞台表演	3	\N	19	875	5	1	3
1330	PED313	定向越野3	1	\N	28	1091	4	1	3
1186	OPT710	《三国演义》导读	3	\N	19	1001	5	1	3
1366	PED107	体育舞蹈1	1	\N	28	1109	5	1	3
1374	PED306	网球3	1	\N	28	1110	5	1	3
1404	PED302	足球3	1	\N	28	1122	4	1	3
1391	PED104	羽毛球1	1	\N	28	1120	\N	0	1
506	FEG404	金融风险管理	3	\N	1	122	\N	0	3
476	BST300	计量经济学	3	\N	6	433	\N	0	1
1353	PED303	排球3	1	\N	28	1021	5	1	3
1362	PED119	体适能1	1	\N	28	1106	4	1	3
1364	PED319	体适能3	1	\N	28	1106	4	1	3
1346	PED301	篮球3	1	\N	28	1099	5	1	3
1442	FMT200	财务管理	3	\N	11	1146	5	2	2
1045	ENG110	英语写作	4	\N	9	891	4	1	3
1446	FMT901	财务管理（FN1，英语）	4	\N	11	891	4	1	2
1464	CST114	程序设计及应用（C++）	3	\N	3	1158	4.5	2	2
1438	FMT200	财务管理	3	\N	8	1141	5	1	2
1436	INV311	财务分析	3	\N	8	1141	4.5	2	2
1463	ACC302	成本管理会计	3	\N	1	255	4	1	2
31	FMT200	财务管理	3	\N	11	30	4	2	3
1451	FIN920	财务管理（英）	3	\N	2	402	5	1	2
1447	FMT901	财务管理（FN1，英语）	4	\N	11	1150	5	1	2
1461	ECO937	产业组织理论（英）	3	\N	2	1156	\N	0	2
1472	CST119	程序设计及应用（Python）	3	\N	3	56	\N	0	2
1459	BBA501	产业经济学	3	\N	10	1039	4	1	2
1437	FMT903	财务分析（FAS，英语）	3	\N	11	1142	5	1	2
1468	CST119	程序设计及应用（Python）	3	\N	3	449	4.333333333333333	3	2
1440	FMT200	财务管理	3	\N	11	1144	5	1	2
1466	CST119	程序设计及应用（Python）	3	\N	18	1159	\N	0	2
1473	CST119	程序设计及应用（Python）	3	\N	3	1161	\N	0	2
1433	PFC314	财税政策分析方法与应用	3	\N	8	1138	\N	0	2
1492	DSC102	程序设计与科学计算	3	\N	6	1170	4	1	2
1514	CST413	大数据可视化	3	\N	6	647	4	1	2
1465	CST113	程序设计及应用（JAVA）	3	\N	3	4	\N	0	2
1460	BBA501	产业经济学	3	\N	10	1155	\N	0	2
1467	CST119	程序设计及应用（Python）	3	\N	18	1160	\N	0	2
1470	CST119	程序设计及应用（Python）	3	\N	3	5	\N	0	2
1532	HUM104	大学生心理健康与人生发展	2	\N	15	1192	4	1	3
1513	ACC107	大数据会计实验班毕业实习	6	\N	11	1134	\N	0	2
1503	BBA301	创业管理	3	\N	10	1176	4	1	2
1506	CST305	大数据处理	3	\N	12	1178	4	1	2
1511	ECO908	大数据宏观经济学	3	\N	4	1180	4.666666666666667	3	2
1516	FIN521	大数据与财富管理概论	3	\N	1	1181	\N	0	2
1521	FIN524	大数据与资产管理概论	3	\N	1	1015	4	2	2
1481	CST119	程序设计及应用（Python）	3	\N	3	1166	\N	0	2
1522	JAP102	大学日语II	3	\N	9	90	4	1	2
1486	CST903	程序设计及应用（Python）（英）	3	\N	18	579	4.5	2	2
1578	MAT302	高等数学Ⅱ	5	\N	12	209	4	1	2
1515	ADT406	大数据审计	3	\N	1	7	\N	0	2
1519	BBA112	大数据与管理实验班毕业实习	6	\N	10	571	\N	0	2
1518	BBA120	大数据与管理实验班毕业论文	8	\N	10	1183	\N	0	2
126	JOB100	大学生职业生涯规划与创业基础	2	\N	16	122	5	2	2
1579	MAT302	高等数学Ⅱ	5	\N	12	210	4.142857142857143	7	2
1583	MAT302	高等数学Ⅱ	5	\N	12	664	4.666666666666667	3	2
1568	MAT313	高等代数Ⅰ	4	\N	12	1219	5	3	3
1558	MAT102	多元微积分	3	\N	12	901	4	2	2
1554	ENG202	大学英语写作	4	\N	9	238	4.5	2	2
1572	MAT314	高等代数Ⅱ	3	\N	12	1220	\N	0	2
1564	INS330	风险理论与精算模型Ⅱ	3	\N	1	478	5	1	2
1575	MAT915	高等代数（英文）	4	\N	12	1222	\N	0	2
1566	MAT504	复变函数	3	\N	12	664	4	1	2
1590	MAT302	高等数学Ⅱ	5	\N	12	1178	4	1	2
1551	JOB100	大学生职业生涯规划与创业基础	2	\N	16	1210	4	1	3
185	MAT324	概率论（理科）	4	\N	12	181	4.5	2	2
1655	BBA505	管理研究与论文写作	3	\N	10	650	4	1	2
1627	FIN303	公司金融	3	\N	1	1242	4.5	2	2
1610	INV302	工程造价	3	\N	8	289	\N	0	2
1600	ACC907	高级财务会计（FA4，英语）	4	\N	11	1232	\N	0	2
1556	ART024	动态图形设计	3	\N	19	1213	\N	0	2
1612	BBA104	工商管理毕业实习	6	\N	10	571	\N	0	2
1624	PAD309	公共危机管理	3	\N	17	1039	4.5	2	2
1656	BBA505	管理研究与论文写作	3	\N	10	1263	4	1	2
1619	PFC306	公共经济政策分析	3	\N	8	41	4	1	2
1629	FIN903	公司金融（英）	3	\N	10	1244	5	1	2
1639	SFS304	固定收益证券	3	\N	1	858	4	2	2
1654	BBA505	管理研究与论文写作	3	\N	10	1262	\N	0	2
1602	BEN201	高级商务英语Ⅱ	3	\N	9	232	\N	0	2
1633	FIN903	公司金融（英）	3	\N	14	259	\N	0	2
1700	ECO102	宏观经济学	3	\N	4	1284	4.5	4	2
1666	ECO202	国际经济学	3	\N	8	1269	4.5	2	2
1664	FIN305	国际金融学	3	\N	1	682	4	2	2
1661	IPT106	国际关系理论与实践	3	\N	22	1266	4	1	2
1659	MKT201	广告及传媒管理	3	\N	10	1000	5	1	2
1641	ACC906	管理会计（MA2，英语）	3	\N	2	1251	\N	0	2
1647	BBA100	管理学原理	3	\N	10	1257	\N	0	2
3357	ENG103	综合英语Ⅲ	2	\N	9	521	4	1	3
1695	BST304	国民经济统计学	3	\N	6	1282	5	2	2
1690	BEN311	国际营销概论（英）	3	\N	9	293	\N	0	2
1773	DSC321	机器学习与数据挖掘	3	\N	6	1332	4	1	2
441	FIN935	货币银行学（英）	3	\N	2	407	4.5	2	3
450	MAT451	机器学习数学基础	3	\N	12	416	5	2	3
1776	ECO307	机制与市场设计	3	\N	4	1335	4	1	2
1723	ADT201	会计信息系统	3	\N	11	1305	4.5	2	2
1757	FIN200	货币金融学	3	\N	1	1325	5	1	2
1781	BST900	计量经济学（英）	3	\N	2	1340	\N	0	2
1779	BST300	计量经济学	3	\N	30	1338	\N	0	3
1754	FIN200	货币金融学	3	\N	1	1322	4	2	2
1724	ADT201	会计信息系统	3	\N	11	1306	4	1	2
1553	ENG202	大学英语写作	4	\N	9	891	\N	0	2
426	FIN200	货币金融学	3	\N	1	396	4.666666666666667	3	3
1763	FRA106	基础法语 II	4	\N	9	152	5	2	2
1749	ACC104	会双毕业实习	6	\N	11	1134	\N	0	2
1739	ACC109	会计学毕业论文	8	\N	11	1134	\N	0	2
1746	ACC114	会计中外毕业论文	8	\N	11	53	\N	0	2
1734	ACC200	会计学	3	\N	11	1313	\N	0	2
1755	FIN200	货币金融学	3	\N	1	1323	\N	0	2
1838	MSC200	经济博弈论	3	\N	18	1368	4.5	2	2
1825	FEG813	金融数学（双语）	3	\N	1	1365	4	1	2
439	FIN900	货币金融学（英）	3	\N	1	407	5	1	1
1828	FMT507	金融投资与资本运作	3	\N	11	1366	5	2	2
1797	SFS504	家庭理财实务	3	\N	1	393	4.5	2	2
1811	FEG403	金融计量学	3	\N	1	1358	4	1	2
1809	FEG403	金融计量学	3	\N	1	1356	5	1	2
1802	FEG404	金融风险管理	3	\N	1	1350	4.5	2	2
1830	IMS203	金融智能	3	\N	1	470	4	1	2
1835	INS322	精算软件与保险科技	3	\N	1	168	\N	0	2
1816	FIN514	金融科技	3	\N	10	1361	\N	0	2
1808	FEG403	金融计量学	3	\N	1	24	\N	0	2
1829	FMT507	金融投资与资本运作	3	\N	11	891	\N	0	2
1733	ACC200	会计学	3	\N	11	1312	3.3333333333333335	3	2
1777	BST300	计量经济学	3	\N	6	1336	\N	0	2
1800	LAW318	金融法	3	\N	5	1348	\N	0	2
1902	IPT103	马克思主义基本原理	3	\N	22	1397	4.666666666666667	3	2
1896	HUM130	逻辑导论	2	\N	19	537	4	2	2
1876	PRT115	劳动教育	2	\N	11	1385	5	1	2
1900	IPT103	马克思主义基本原理	3	\N	22	1395	5	1	3
573	IBS903	跨文化商务沟通（英）	3	\N	7	523	4	1	1
1882	PRT115	劳动教育	2	\N	4	843	4	1	2
571	ENG330	跨文化商务沟通	2	\N	9	521	5	2	3
1868	JNL306	跨文化传播	3	\N	19	1383	\N	0	2
1908	ENG123	密集英语训练II	2	\N	10	1402	\N	0	2
1871	ENG330	跨文化商务沟通	2	\N	9	893	5	2	2
1897	HUM101	逻辑与批判性思维	2	\N	19	1062	4	1	2
1875	PRT115	劳动教育	2	\N	11	1384	5	1	2
1862	MTT101	军事理论	2	\N	21	838	5	1	3
1883	PRT115	劳动教育	2	\N	2	1173	\N	0	2
1886	PRT115	劳动教育	2	\N	9	507	5	1	2
595	IPT103	马克思主义基本原理	3	\N	22	541	4.25	4	3
1885	PRT115	劳动教育	2	\N	14	129	4	1	2
1866	ART048	开源设计基础	3	\N	19	1382	\N	0	2
1879	PRT115	劳动教育	2	\N	11	1210	5	1	2
1032	ENG314	英语口语Ⅱ	2	\N	7	235	4	1	1
1984	BBA408	商业分析和决策	3	\N	10	1277	5	1	2
1685	BBA403	国际商务投资分析	3	\N	10	1277	5	1	2
1935	OPT227	区块链技术与加密数字货币	3	\N	3	584	\N	0	2
1923	ADT302	内部控制	3	\N	11	1409	4	2	2
1943	CST221	人工智能导论	3	\N	4	1418	\N	0	3
1967	BEN100	商务笔译	3	\N	9	865	\N	0	2
1930	LAW306	企业法与公司法	3	\N	5	1412	5	1	2
719	MSC902	数据分析（Python）（英）	3	\N	18	642	4	2	2
1944	CST419	人工智能实训Ⅱ	1	\N	3	231	5	1	2
1960	CST322	软件工程	3	\N	3	1158	4	1	2
1929	SFS402	期货、期权与其他衍生品	3	\N	1	863	4	1	2
1971	ENG331	商务翻译	2	\N	9	990	\N	0	2
1961	ART025	三维动画设计	3	\N	19	1423	\N	0	2
2007	BBA105	市场营销毕业实习	6	\N	10	571	\N	0	2
2027	CST124	数据结构（C语言）	3	\N	3	57	2	1	2
2032	CST209	数据挖掘	3	\N	18	1451	5	1	2
1982	BEN209	商务英语听说	3	\N	9	884	4.5	2	2
2017	MKT901	市场营销学（英）	3	\N	10	1444	4	1	2
1999	DSC401	深度学习	3	\N	1	1437	4	1	3
1998	PAD106	社会学原理	3	\N	17	623	4	2	2
1990	FMT403	商业与财务分析	3	\N	11	1432	5	1	2
2003	STA306	时间序列分析	3	\N	12	1438	5	1	2
3351	ENG103	综合英语Ⅲ	2	\N	9	25	5	3	3
2009	MKT101	市场营销学	3	\N	10	87	4	1	2
1981	BEN102	商务英语Ⅱ	4	\N	9	521	5	1	2
2014	MKT101	市场营销学	3	\N	10	638	4	1	2
1986	FIN302	商业银行经营管理	3	\N	1	329	4	2	2
2019	BBA119	市场营销中外毕业论文	8	\N	10	1183	\N	0	2
2011	MKT101	市场营销学	3	\N	10	1440	\N	0	2
2016	MKT101	市场营销学	3	\N	10	1443	\N	0	2
2024	MSC902	数据分析（Python）（英）	3	\N	18	1446	\N	0	2
2081	CST302	数字图像处理	3	\N	3	1470	5	1	2
2035	DSC403	数据智能前沿	3	\N	6	1453	4	2	2
777	TAX204	税法	3	\N	8	689	4.5	2	3
2002	ACC105	审计学毕业实习	6	\N	11	1134	\N	0	2
2020	BBA111	市场营销中外毕业实习	6	\N	10	447	\N	0	2
2006	BBA114	市场营销毕业论文	8	\N	10	1183	\N	0	2
2089	TAX202	税收学	3	\N	8	1475	\N	0	2
2061	MAT517	数学建模与数学实验	3	\N	12	203	5	2	2
1822	SFS505	金融市场微观结构	3	\N	1	394	\N	0	2
2038	MAT513	数理统计	3	\N	12	1438	5	1	2
2036	MAT449	数理经济学	3	\N	12	183	5	1	2
2043	STA302	数理统计（理）	3	\N	6	1456	4	1	2
2042	STA302	数理统计（理）	3	\N	6	1455	4.333333333333333	3	2
2065	TAX203	数智税收征管	3	\N	8	1462	4	1	2
2111	FIN304	投资学	3	\N	8	1487	4	1	3
2071	ART019	数字绘画	3	\N	19	1464	\N	0	2
2072	ART019	数字绘画	3	\N	19	1465	\N	0	2
2083	ART020	数字影音设计	4	\N	19	613	\N	0	2
2082	ART049	数字影音创作基础	3	\N	19	613	\N	0	2
2116	FIN804	投资学（双语）	3	\N	1	259	4	1	2
2155	ART008	舞蹈鉴赏	2	\N	19	1082	5	3	3
2123	CST412	图论及其应用	3	\N	3	455	4	1	3
2154	ART008	舞蹈鉴赏	2	\N	19	869	4	1	3
2130	ECO101	微观经济学	3	\N	10	1499	\N	0	2
2142	ECO903	微观经济学（英）	3	\N	14	1508	\N	0	2
2121	TAX108	投资学毕业论文	8	\N	8	1154	\N	0	2
2149	CLL315	文化创意与文案写作	3	\N	19	747	4	1	2
2146	CLL320	文创规划与实践	3	\N	19	747	5	1	2
2125	JNL204	外国新闻事业史	3	\N	19	267	5	1	2
2106	BST200	统计学	3	\N	6	1282	4	1	2
422	FIN200	货币金融学	3	\N	1	392	5	1	2
2167	IPT109	习近平新时代中国特色社会主义思想概论	3	\N	22	1266	5	2	2
867	IPT109	习近平新时代中国特色社会主义思想概论	3	\N	22	764	4.5	2	3
2196	ACC406	新财经学术思维与论文写作	2	\N	11	1537	5	2	2
2199	IMS204	信息资源管理	3	\N	18	1539	\N	0	2
2113	FIN304	投资学	3	\N	1	1489	5	1	2
2169	ART047	现代艺术与媒介史	3	\N	19	684	\N	0	2
467	CLL106	积极心理学	3	\N	20	99	4.5	2	3
2150	CLL111	文化经济学	3	\N	19	1376	\N	0	2
2191	ACC406	新财经学术思维与论文写作	3	\N	10	1533	\N	0	2
2180	BBA406	消费变革与商业决策	3	\N	10	1524	\N	0	2
2166	IPT109	习近平新时代中国特色社会主义思想概论	3	\N	22	1520	\N	0	2
2181	BBA502	消费经济学	3	\N	10	1525	\N	0	2
406	STA308	回归分析	3	\N	6	377	5	2	1
695	PAD306	社会研究方法	3	\N	17	623	5	1	2
2228	IPT207	形势与政策II	0.5	\N	22	122	4	1	2
2284	IPT204	形势与政策教育	0.5	\N	22	1384	4	1	2
2248	IPT207	形势与政策II	0.5	\N	22	1192	5	1	2
2277	IPT204	形势与政策教育	0.5	\N	22	840	\N	0	2
2249	IPT207	形势与政策II	0.5	\N	22	1530	\N	0	2
2216	IPT207	形势与政策II	0.5	\N	22	1549	\N	0	2
2192	ACC406	新财经学术思维与论文写作	3	\N	10	784	\N	0	2
2184	HUM203	写作研讨（英）	3	\N	14	1528	\N	0	2
2185	HUM203	写作研讨（英）	3	\N	14	1529	\N	0	2
2186	HUM203	写作研讨（英）	3	\N	14	1530	\N	0	2
2187	HUM203	写作研讨（英）	3	\N	14	1531	\N	0	2
2203	LAW105	刑法总论	3	\N	5	1542	\N	0	2
2268	IPT204	形势与政策教育	0.5	\N	22	496	\N	0	2
2272	IPT204	形势与政策教育	0.5	\N	22	1201	4	1	2
2265	IPT204	形势与政策教育	0.5	\N	22	91	5	1	2
2331	FEG407	行为金融学	3	\N	1	1581	4.5	2	2
2288	IPT204	形势与政策教育	0.5	\N	22	1563	5	1	2
2334	PAD315	学术论文写作	3	\N	17	1039	5	1	2
1017	ART006	音乐鉴赏	2	\N	19	875	4.5	2	3
2330	FEG407	行为金融学	3	\N	1	272	4.5	2	2
2315	IPT204	形势与政策教育	0.5	\N	22	1573	\N	0	2
2309	IPT204	形势与政策教育	0.5	\N	22	140	5	1	2
2269	IPT204	形势与政策教育	0.5	\N	22	115	\N	0	2
2264	IPT204	形势与政策教育	0.5	\N	22	494	\N	0	2
2275	IPT204	形势与政策教育	0.5	\N	22	1560	\N	0	2
2339	FEG401	衍生金融工具	3	\N	1	461	4	1	2
2340	FEG401	衍生金融工具	3	\N	1	465	5	3	2
2312	IPT204	形势与政策教育	0.5	\N	22	186	4.75	4	2
2299	IPT204	形势与政策教育	0.5	\N	22	1192	4	1	2
992	FEG407	行为金融学	3	\N	1	858	4	1	2
2336	ENG325	学术写作与研究方法	3	\N	9	522	\N	0	2
2302	IPT204	形势与政策教育	0.5	\N	22	1567	\N	0	2
529	MAT447	金融衍生品定价	3	\N	12	221	5	1	3
2384	IDS446	运营与供应链（英）	3	\N	14	1600	4.75	4	2
2372	BST302	应用多元统计分析	3	\N	6	1591	5	1	2
2385	LMT902	运作管理（英）	3	\N	10	173	5	1	2
2354	ENG116	英语精读Ⅱ	2	\N	10	881	\N	0	2
2373	MKT102	营销策划	3	\N	10	1000	5	1	2
2389	PFC202	政府预算	3	\N	8	1603	4	1	2
2390	PFC202	政府预算	3	\N	8	1604	4.5	2	2
2396	PFC205	中国财政制度	3	\N	8	42	5	1	2
2333	ART037	虚拟现实技术基础	3	\N	19	1582	\N	0	2
2379	CLL109	语言学概论	3	\N	19	1597	\N	0	2
2453	ENG102	综合英语Ⅱ	3	\N	9	979	3.8333333333333335	6	2
2349	ENG328	英语国家与社会文化	3	\N	9	156	\N	0	2
2399	IET809	中国对外贸易与数字化转型	3	\N	7	320	4	1	2
2363	ENG212	英语听力Ⅱ	2	\N	10	884	5	1	2
2450	PRT107	综合实验	2	\N	10	1633	4	1	2
2447	FMT301	资产评估学	3	\N	8	1631	4	1	2
708	BEN310	实用电子商务(英)	3	\N	9	602	4.666666666666667	3	3
2434	ACC308	中级财务会计Ⅱ	3	\N	11	1625	4	1	2
2469	OPT961	财税前沿研究方法与应用	2	\N	8	924	\N	0	2
2424	ACC307	中级财务会计I	3	\N	11	1620	4.5	2	3
2431	ACC308	中级财务会计Ⅱ	3	\N	11	1620	4.666666666666667	3	2
2438	PFC313	中级公共经济学	3	\N	8	953	4	1	3
2467	OPT808	补充性货币学	2	\N	7	322	5	1	2
1150	ADT100	综合能力训练（ERP模拟经营沙盘）	2	\N	11	971	4	1	2
2443	FIN306	中央银行与金融监管	3	\N	1	313	5	1	3
2421	SFS406	中国资本市场	3	\N	1	919	\N	0	2
2429	ACC902	中级财务会计Ⅰ（FA2，英语）	5	\N	11	1622	\N	0	2
2455	BBA203	组织行为学	3	\N	10	1533	\N	0	2
2458	BBA903	组织行为学（英）	3	\N	10	1637	\N	0	2
2428	ACC902	中级财务会计Ⅰ（FA2，英语）	5	\N	11	1621	\N	0	2
2464	OPT374	“古币艺秀”版画艺术工作坊	3	\N	19	1642	\N	0	2
2440	ECO300	中级宏观经济学	3	\N	4	1628	\N	0	2
1189	OPT937	办公自动化	3	\N	11	1003	4	1	1
869	IPT109	习近平新时代中国特色社会主义思想概论	3	\N	22	766	4	2	3
1190	OPT937	办公自动化	3	\N	26	1004	\N	0	1
2519	OPT607	健康经济学	2	\N	17	364	4	2	2
2509	OPT989	化妆品应用	2	\N	19	1651	\N	0	2
336	IET800	国际经贸研究与管理（双语）	8	\N	7	305	\N	0	1
2490	OPT969	地理信息系统（GIS）与时空	2	\N	23	1647	5	1	2
2524	OPT444	金融理财与消费	2	\N	27	1655	5	1	2
2516	SEM136	积极心理训练与幸福感的培育	2	\N	19	1653	5	1	2
2512	OPT361	基础法语Ⅱ	6	\N	9	152	4	1	2
2497	OPT375	钢琴弹奏教程	3	\N	19	1587	4	1	3
2531	OPT231	科研训练与写作	2	\N	11	386	5	1	2
2486	OPT652	大学生求职技能训练	3	\N	22	1645	4	1	2
2521	OPT968	教育经济学	2	\N	17	618	4.5	2	2
2477	OPT773	创意舞蹈	3	\N	19	752	5	1	2
2503	OPT567	国际法	3	\N	5	1274	5	1	2
2487	OPT652	大学生求职技能训练	3	\N	22	1646	4	1	2
2515	OPT524	机器学习	1	\N	3	995	5	1	3
2575	OPT529	数字财税概论	1	\N	8	1674	4	1	2
2592	ECO320	习近平经济思想	2	\N	4	1680	4	1	2
2554	OPT454	人类学与中国研究	2	\N	23	1666	4	1	2
2549	SEM129	趣味管理心理学	2	\N	19	672	5	1	2
2557	OPT976	儒释道哲学的人生智慧	0.5	\N	19	1643	\N	0	3
2558	ECC201	商务研究方法	3	\N	18	1159	\N	0	2
2589	OPT777	西方室内乐演奏Ⅱ	3	\N	19	762	\N	0	2
1670	IET801	国际贸易实务（双语）	3	\N	7	305	\N	0	2
2591	ECO320	习近平经济思想	2	\N	4	1679	4.5	2	2
2538	OPT376	女性主义导论	2	\N	23	1661	5	1	2
309	BBA505	管理研究与论文写作	3	\N	10	295	5	1	1
2606	OPT958	影视作品管理学赏析	2	\N	10	1686	5	1	3
230	MAT302	高等数学Ⅱ	5	\N	12	223	\N	0	3
2635	OPT131	走进马列经典	2	\N	22	1695	5	1	2
2618	OPT197	中国概况	3	\N	29	1689	\N	0	2
2637	PED414	保健班4	1	\N	28	1090	\N	0	2
1512	ACC115	大数据会计实验班毕业论文	8	\N	11	1134	\N	0	2
2628	OPT974	中国哲学经典著作导读	0.5	\N	19	1643	\N	0	3
2631	OPT555	中外建筑艺术赏析	2	\N	19	565	\N	0	3
2622	OPT280	中国国家地理	3	\N	4	1691	4	1	2
2655	PED401	篮球4	1	\N	28	1098	5	2	2
2629	OPT709	中国政府转型与经济发展	3	\N	17	1693	4	1	2
2640	PED413	定向越野4	1	\N	28	1091	4	1	2
2602	OPT791	遥感卫星数据在经管领域的应用	3	\N	17	1685	4	1	2
2695	PED410	形体与礼仪4	1	\N	28	1117	5	1	2
2662	PED403	排球4	1	\N	28	1060	\N	0	2
2706	PED504	运动科学基础4	0.5	\N	28	1121	5	1	2
2683	PED206	网球2	1	\N	28	1113	5	1	2
2608	OPT061	游泳	2	\N	28	1091	\N	0	2
2686	PED406	网球4	1	\N	28	1066	5	1	2
2673	PED219	体适能2	1	\N	28	1107	4	1	2
2727	HUM132	中国哲学史	2	\N	19	517	5	1	3
2717	PED402	足球4	1	\N	28	1126	5	1	2
2719	PED409	瑜伽4	1	\N	28	1127	4	1	2
2681	PED206	网球2	1	\N	28	1066	\N	0	2
3211	HUM101	逻辑与批判性思维	2	\N	19	537	5	1	3
215	MAT301	高等数学Ⅰ	5	\N	12	209	5	1	3
134	JOB100	大学生职业生涯规划与创业基础	2	\N	16	130	4.5	2	3
2741	ACC307	中级财务会计I	3	\N	11	1623	\N	0	3
2748	IPT109	习近平新时代中国特色社会主义思想概论	3	\N	22	562	5	1	3
2755	HRM305	人力资源管理前沿文献导读	3	\N	10	519	\N	0	3
2732	IPT102	中国近现代史纲要	3	\N	22	1700	\N	0	3
2757	HRM303	人员测评与选拔	3	\N	10	595	\N	0	3
2774	ACC900	会计学（英）	3	\N	7	1723	\N	0	3
2773	ACC901	会计学原理（FA1，英语）	5	\N	11	1366	\N	0	3
2735	ECO200	中级微观经济学	3	\N	4	961	\N	0	3
480	BST300	计量经济学	3	\N	30	437	4.5	2	3
674	OPT394	商业分析中的项目实践	2	\N	14	173	4	1	3
1113	ACC307	中级财务会计I	3	\N	11	946	\N	0	3
2811	LAW412	劳动法与社会保障法	3	\N	17	527	5	1	3
2831	SFS304	固定收益证券	3	\N	1	591	5	1	3
2840	LAW309	国际私法	3	\N	5	1274	4	1	3
1453	ACC102	财务管理毕业实习	6	\N	11	1134	\N	0	2
1529	HUM104	大学生心理健康与人生发展	2	\N	15	1189	\N	0	3
174	LSS301	风险管理与保险	3	\N	17	170	4	1	3
1839	MSC200	经济博弈论	3	\N	12	1369	4.5	2	2
2853	HUM104	大学生心理健康与人生发展	2	\N	15	1768	\N	0	3
2862	JOB100	大学生职业生涯规划与创业基础	2	\N	16	998	4	1	3
2851	HUM104	大学生心理健康与人生发展	2	\N	15	1766	\N	0	3
2868	ACC404	大数据与会计分析	3	\N	11	1780	\N	0	3
2867	JOB100	大学生职业生涯规划与创业基础	2	\N	16	1575	4	1	3
2780	LSS313	保险学基础	3	\N	17	170	\N	0	3
2887	ECO102	宏观经济学	3	\N	4	955	4.666666666666667	3	3
2908	IPT206	形势与政策I	0.5	\N	22	91	4	1	3
2870	LMT401	大数据与统计学	3	\N	10	708	\N	0	3
2881	CST338	大模型应用	2	\N	3	452	\N	0	3
2898	BST302	应用多元统计分析	3	\N	30	1794	\N	0	3
2926	IPT206	形势与政策I	0.5	\N	22	1575	5	1	3
2939	IPT206	形势与政策I	0.5	\N	22	140	5	1	3
2929	IPT206	形势与政策I	0.5	\N	22	1384	5	1	3
2924	IPT206	形势与政策I	0.5	\N	22	134	\N	0	3
2915	IPT206	形势与政策I	0.5	\N	22	838	4	2	3
2959	IPT208	形势与政策III	0.5	\N	22	507	5	1	3
2890	ADT200	审计学	3	\N	11	1789	\N	0	3
2893	ADT900	审计学（英）	3	\N	2	1251	\N	0	3
233	ACC400	高级财务会计	3	\N	11	226	\N	0	1
2978	IPT208	形势与政策III	0.5	\N	22	1558	4	1	3
3002	HUM131	批判性思维	2	\N	19	538	4.666666666666667	3	3
3035	ECO322	数字经济学	3	\N	4	677	4	1	3
3001	HUM131	批判性思维	2	\N	19	1813	\N	0	3
3005	SFS404	投资银行学	3	\N	1	1815	\N	0	3
3027	LAW410	数字竞争法：规则、案例与原理	2	\N	5	1830	\N	0	3
2992	ACC905	成本会计（MA1，英语）	3	\N	11	273	\N	0	3
3076	MAT328	概率论与数理统计B	4	\N	30	654	5	2	3
3068	MAT327	概率论与数理统计A	5	\N	12	188	5	4	3
3070	MAT327	概率论与数理统计A	5	\N	12	185	4.333333333333333	3	3
3060	ACC406	新财经学术思维与论文写作	3	\N	10	1263	5	1	3
3082	DSC203	概率论原理	4	\N	30	273	4	1	3
3075	MAT328	概率论与数理统计B	4	\N	30	189	4	1	3
3072	MAT327	概率论与数理统计A	5	\N	12	177	4.666666666666667	3	3
3088	LAW110	法理学（含社会主义法治理念）	3	\N	5	1677	\N	0	3
3026	ART034	数字特效与视频创意	3	\N	19	1829	\N	0	3
3092	ART065	游戏引擎创作基础	3	\N	19	1846	\N	0	3
3079	MAT328	概率论与数理统计B	4	\N	30	242	\N	0	3
3058	ACC406	新财经学术思维与论文写作	3	\N	10	1262	\N	0	3
3077	MAT328	概率论与数理统计B	4	\N	30	1841	\N	0	3
3100	LSS403	社会保障实务实训	3	\N	17	243	5	1	3
3154	ENG110	英语写作	4	\N	9	522	4	1	3
3098	LSS201	社会保险	3	\N	1	170	5	1	3
3158	ENG115	英语精读Ⅰ	4	\N	9	893	4	1	3
3108	SPA119	第二外语	3	\N	9	156	4.5	2	3
3149	CST308	自然语言处理	3	\N	3	588	4	1	3
3152	HUM127	艺术导论	2	\N	19	752	4.5	2	3
3348	PED101	篮球1	1	\N	28	1124	\N	0	3
2436	ACC308	中级财务会计Ⅱ	3	\N	1	1626	\N	0	2
3129	IBS904	组织行为学（英）	3	\N	7	1863	\N	0	3
3216	MSC903	金融数据分析与可视化	3	\N	18	1446	5	1	3
3185	BST300	计量经济学	3	\N	4	86	5	1	3
3195	PFC200	财政学	3	\N	8	1603	5	2	3
3186	BST300	计量经济学	3	\N	30	1884	\N	0	3
3162	ENG114	英语阅读	3	\N	9	25	4	1	3
3191	BBA407	财务管理与决策模拟	3	\N	10	28	4	1	3
3218	MSC903	金融数据分析与可视化	3	\N	18	1903	\N	0	3
3221	FIN936	金融机构风险管理（英）	3	\N	2	462	4	1	3
3260	OPT179	优化理论	0	\N	12	222	5	1	3
3249	ENG201	高级英语听力	3	\N	9	232	5	1	3
3241	MAT301	高等数学Ⅰ	5	\N	12	187	4	1	3
3280	OPT776	声乐技巧与合唱Ⅰ	3	\N	19	1587	5	1	3
3268	OPT533	区块链与税收共治	1	\N	8	972	5	1	3
3272	OPT656	台球	2	\N	28	1069	\N	0	3
3277	OPT721	声乐技巧与合唱	3	\N	19	876	5	1	3
3236	MAT506	高等代数Ⅰ（理科）	4	\N	12	195	\N	0	3
3237	MAT301	高等数学Ⅰ	5	\N	12	1230	\N	0	3
525	FEG521	金融随机分析	3	\N	1	479	\N	0	3
3283	OPT722	大学生创新实践	2	\N	17	1571	4	1	3
3294	GEC015	数字社会学	2	\N	23	621	4.666666666666667	3	3
3308	OPT058	本科学术论文研究与写作	2	\N	1	394	4	1	3
3325	OPT522	经济数据建模	1	\N	30	439	4	1	3
3333	OPT157	跨文化商务理论及应用	2	\N	9	522	5	1	3
3329	OPT811	老年学概论	3	\N	23	1945	\N	0	3
3286	OPT201	学术英语研究及技能训练（英）	2	\N	9	522	4.666666666666667	3	3
3296	OPT529	数字财税概论	1	\N	8	666	\N	0	3
3309	OPT058	本科学术论文研究与写作	2	\N	1	1648	4	1	3
3337	PED105	乒乓球1	1	\N	28	1104	5	1	3
3332	OPT521	财经数据可视化	1	\N	30	647	5	1	3
3312	OPT464	歌唱基础训练	3	\N	19	875	4	1	3
3293	GEC021	数字化企业管理基础	1	\N	11	80	4	1	3
3327	OPT552	网络信息检索方法	2	\N	19	1943	\N	0	3
84	ACC404	大数据与会计分析	3	\N	11	82	4.5	2	3
3131	OPT694	经济与社会发展前沿研讨	1	\N	14	1865	\N	0	3
51	ACC302	成本管理会计	3	\N	11	50	5	1	1
3344	PED310	形体与礼仪3	1	\N	28	1128	5	1	3
416	ACC901	会计学原理（FA1，英语）	5	\N	11	386	5	1	1
3338	PED305	乒乓球3	1	\N	28	1102	\N	0	3
2863	JOB100	大学生职业生涯规划与创业基础	2	\N	16	1776	\N	0	3
3343	PED110	形体与礼仪1	1	\N	28	1117	\N	0	3
3345	PED310	形体与礼仪3	1	\N	28	1115	5	1	3
3300	GEC017	数智审计	1	\N	11	1851	\N	0	3
236	ACC400	高级财务会计	3	\N	11	229	5	1	1
2771	ACC200	会计学	3	\N	11	1133	4	1	3
2444	ACC111	注会班毕业论文	8	\N	11	1134	\N	0	2
2029	IDS330	数据库设计与实现（英）	3	\N	14	1449	\N	0	2
1537	HUM104	大学生心理健康与人生发展	2	\N	15	1197	\N	0	2
2426	ACC307	中级财务会计I	3	\N	11	949	\N	0	2
411	ACC900	会计学（英）	3	\N	10	382	\N	0	3
1355	PED105	乒乓球1	1	\N	28	1102	\N	0	3
2345	ECC208	移动技术开发与创业	3	\N	3	1586	\N	0	2
3342	PED118	健身健美1	1	\N	28	1094	\N	0	3
2612	OPT517	至美无相—现代数学天文物理漫谈	0.5	\N	19	1643	\N	0	3
3239	MAT301	高等数学Ⅰ	5	\N	12	1228	\N	0	3
2817	LSS304	卫生经济与卫生政策评价	3	\N	17	1584	\N	0	3
881	LMT903	现代物流学（英）	3	\N	10	44	\N	0	3
2256	IPT207	形势与政策II	0.5	\N	22	1559	\N	0	2
261	FIN303	公司金融	3	\N	1	252	\N	0	3
720	MSC902	数据分析（Python）（英）	3	\N	18	643	\N	0	1
540	MTA305	景区管理与智能仿真分析	3	\N	10	491	\N	0	3
347	IET800	国际经贸研究与管理（双语）	8	\N	7	330	\N	0	1
1788	FIT403	计算机组成原理	3	\N	3	20	\N	0	2
2523	OPT683	金融交易与法律规则	2	\N	5	1372	\N	0	2
2580	OPT536	天府竹文化与人居生态环境	2	\N	19	175	\N	0	2
3057	ACC406	新财经学术思维与论文写作	3	\N	10	297	\N	0	3
1732	ACC200	会计学	3	\N	11	1311	\N	0	2
2194	ACC406	新财经学术思维与论文写作	2	\N	11	1535	4	1	2
2435	ACC308	中级财务会计Ⅱ	3	\N	11	947	\N	0	2
1115	ACC307	中级财务会计I	3	\N	1	948	5	1	1
1748	ACC112	会双毕业论文	8	\N	11	1134	\N	0	2
2427	ACC902	中级财务会计Ⅰ（FA2，英语）	5	\N	20	1314	\N	0	2
2195	ACC406	新财经学术思维与论文写作	2	\N	11	1536	4.333333333333333	3	2
2380	ACC502	预测分析与决策建模基础	3	\N	20	1004	4	1	2
1740	ACC101	会计学毕业实习	6	\N	11	1134	\N	0	2
1736	ACC200	会计学	3	\N	11	1315	\N	0	2
2994	ACC302	成本管理会计	3	\N	11	1808	\N	0	3
2433	ACC308	中级财务会计Ⅱ	3	\N	11	1624	5	1	2
1720	ACC408	会计理论	3	\N	11	1303	5	2	2
2743	ACC307	中级财务会计I	3	\N	1	7	\N	0	3
1434	ACC401	财务报告分析	3	\N	11	1139	4.5	2	2
413	ACC900	会计学（英）	3	\N	2	384	\N	0	3
1112	ACC307	中级财务会计I	3	\N	11	945	\N	0	1
2827	ACC504	商科前沿模块	3	\N	13	231	\N	0	3
1303	OPT784	野生观赏植物资源	2	\N	19	175	\N	0	1
2445	ACC103	注会班毕业实习	6	\N	11	1134	\N	0	2
1747	ACC106	会计中外毕业实习	6	\N	11	53	\N	0	2
3059	ACC406	新财经学术思维与论文写作	3	\N	10	298	\N	0	3
1721	ACC408	会计理论	3	\N	11	1304	\N	0	2
414	ACC900	会计学（英）	3	\N	2	27	\N	0	3
2991	ACC301	成本会计学	3	\N	11	52	\N	0	3
2193	ACC406	新财经学术思维与论文写作	2	\N	11	1534	\N	0	2
1435	ACC401	财务报告分析	3	\N	11	1140	\N	0	2
2430	ACC308	中级财务会计Ⅱ	3	\N	11	943	\N	0	2
2869	ACC409	大数据与管理数字化	3	\N	11	80	\N	0	3
81	ACC404	大数据与会计分析	3	\N	11	79	\N	0	1
235	ACC400	高级财务会计	3	\N	11	228	\N	0	3
2001	ACC113	审计学毕业论文	8	\N	11	1134	\N	0	2
2414	HUM144	中国史通论	2	\N	22	935	\N	0	3
1111	ACC307	中级财务会计I	3	\N	11	944	\N	0	1
611	IPT104	毛泽东思想和中国特色社会主义理论体系概论	3	\N	22	557	\N	0	3
1331	PED313	定向越野3	1	\N	28	1092	\N	0	3
975	IPT203	形势与政策教育	0.5	\N	22	816	\N	0	1
1813	FEG515	金融计量学Ⅰ	3	\N	1	193	\N	0	2
2942	IPT208	形势与政策III	0.5	\N	22	512	\N	0	3
1663	FIN305	国际金融学	3	\N	1	1244	\N	0	2
2406	IPT102	中国近现代史纲要	3	\N	22	1614	\N	0	2
2229	IPT207	形势与政策II	0.5	\N	22	815	\N	0	2
2475	OPT615	初级日语2	6	\N	9	153	\N	0	2
1728	ACC200	会计学	3	\N	11	1309	4	1	3
22	CST208	编译原理	3	\N	3	21	\N	0	3
1669	ECO905	国际经济学（英）	3	\N	2	1272	\N	0	2
3319	OPT914	现代商务幻灯片制作	3	\N	19	1940	\N	0	3
1307	OPT570	优化思维实训	2	\N	5	1079	\N	0	3
3204	ECO324	资源与环境经济学	3	\N	4	1894	\N	0	3
2217	IPT207	形势与政策II	0.5	\N	22	499	\N	0	2
2993	ACC302	成本管理会计	3	\N	11	52	\N	0	3
2432	ACC308	中级财务会计Ⅱ	3	\N	11	1623	4	1	2
2425	ACC307	中级财务会计I	3	\N	11	971	5	1	2
2206	LAW321	刑事侦查与法医学	2	\N	5	1216	\N	0	2
1794	IMS106	计算金融毕业实习	6	\N	12	1344	\N	0	2
2147	CLL214	文化产业法律与政策	3	\N	19	750	\N	0	2
826	ECO101	微观经济学	3	\N	4	731	\N	0	1
1826	MAT107	金融数学毕业论文	8	\N	12	1344	\N	0	2
2287	IPT204	形势与政策教育	0.5	\N	22	34	\N	0	2
2949	IPT208	形势与政策III	0.5	\N	22	503	\N	0	3
1063	LMT202	运作管理	3	\N	10	903	4	1	1
2508	OPT962	合同法分则：典型合同	2	\N	5	1650	\N	0	2
819	SFS404	投资银行学	3	\N	1	725	5	1	1
2958	IPT208	形势与政策III	0.5	\N	22	1379	\N	0	3
1156	PRT107	综合实验	2	\N	24	976	\N	0	1
1319	OPT940	猪生产学	2	\N	19	1085	\N	0	1
1915	LAW201	民事诉讼法	3	\N	5	1407	\N	0	2
1861	IDS345	决策分析与可视（英）	3	\N	14	1378	\N	0	2
2491	OPT495	短视频创意与制作	0.5	\N	19	1643	\N	0	3
1212	OPT615	初级日语2	2	\N	9	90	\N	0	1
2392	ECO100	政治经济学	3	\N	4	1606	\N	0	2
1673	IBS808	国际人力资源管理（双语）	3	\N	7	349	\N	0	2
365	IBS800	国际商务研究与管理（双语）	8	\N	7	344	\N	0	1
2713	PED202	足球2	1	\N	28	1126	\N	0	2
1640	SFS804	固定收益证券（双语）	3	\N	1	1250	\N	0	2
1713	ECO904	宏观经济学（英）	3	\N	7	1296	\N	0	2
329	ECO805	国际经济学（双语）	3	\N	7	315	\N	0	3
326	FIN805	国际金融学（双语）	3	\N	1	312	\N	0	3
1352	PED303	排球3	1	\N	28	1060	\N	0	1
753	BBA206	数字化管理	3	\N	10	669	\N	0	1
2247	IPT207	形势与政策II	0.5	\N	22	823	\N	0	2
2407	IPT102	中国近现代史纲要	3	\N	22	1615	\N	0	3
2800	FIN903	公司金融（英）	3	\N	10	597	\N	0	3
883	LAW102	宪法学	3	\N	5	777	\N	0	3
3301	GEC016	智能体设计与商业创新	2	\N	18	374	\N	0	3
2718	PED209	瑜伽2	1	\N	28	1127	\N	0	2
2332	ART063	行业形态认知实践	2	\N	19	684	\N	0	2
2715	PED402	足球4	1	\N	28	1124	\N	0	2
1248	OPT992	经络穴位养生	2	\N	19	175	\N	0	2
1291	OPT574	文化旅游概论	2	\N	23	1068	\N	0	3
2765	ART054	人工智能辅助设计	2	\N	19	1465	\N	0	3
1194	OPT058	本科学术论文研究与写作	2	\N	1	1007	\N	0	1
153	CST422	大学物理实验	2	\N	3	149	\N	0	1
1182	OPT445	3dmax效果图制作	3	\N	10	997	\N	0	1
1922	PRT102	名著阅读	4	\N	9	884	\N	0	2
395	ECO102	宏观经济学	3	\N	4	368	\N	0	2
889	LAW327	消费者权益保护法	2	\N	5	781	\N	0	1
2690	PED411	武术4	1	\N	28	1042	\N	0	2
2047	DSC204	数理统计原理	3	\N	6	273	\N	0	2
1283	OPT638	图形世界探秘-图形推理	2	\N	19	1062	4	2	1
2243	IPT207	形势与政策II	0.5	\N	22	1555	\N	0	2
502	CST121	计算机与大数据基础	2	\N	3	458	\N	0	2
503	PAD310	健康投资与管理	3	\N	17	459	\N	0	1
182	MAT324	概率论（理科）	4	\N	12	178	\N	0	1
2596	OPT315	乡村振兴经典案例分析	2	\N	27	1682	\N	0	2
1055	DSC201	优化方法	3	\N	6	898	\N	0	1
1645	BBA905	管理信息系统（英）	3	\N	18	1255	\N	0	3
2144	ECO903	微观经济学（英）	3	\N	14	1510	\N	0	2
495	CST121	计算机与大数据基础	2	\N	3	74	4.5	2	1
850	CLL209	文化产业管理学	3	\N	19	750	\N	0	1
1735	ACC200	会计学	3	\N	1	1314	4.25	4	2
2783	INS302	保险经营管理	3	\N	1	1728	\N	0	3
1631	FIN903	公司金融（英）	3	\N	7	1245	\N	0	2
1177	ENG103	综合英语Ⅲ	2	\N	9	992	4	1	3
442	FRA105	基础法语I	4	\N	9	152	5	1	3
17	OPT602	保险与税务规划	2	\N	1	16	4.5	2	1
2525	OPT520	金融数据分析	1	\N	6	1656	4	1	2
3295	OPT532	数字税收征管	1	\N	8	1462	4	1	3
803	BST200	统计学	3	\N	30	710	4.5	2	3
2760	CST122	人工智能与现代科技	2	\N	3	62	\N	0	3
2494	OPT360	反洗钱理论与实务	2	\N	1	1649	\N	0	2
1940	MKT104	全渠道管理与新零售	3	\N	10	1417	\N	0	2
275	HUM102	沟通与写作	2	\N	19	265	\N	0	3
645	CST221	人工智能导论	3	\N	3	451	5	2	2
528	FIN101	金融学导论	1	\N	1	482	\N	0	1
664	LMT504	商务大数据分析与决策	3	\N	10	598	\N	0	3
2794	PAD104	公共行政学	3	\N	17	1736	\N	0	3
712	MKT101	市场营销学	3	\N	10	636	5	1	2
1810	FEG403	金融计量学	3	\N	1	1357	5	1	2
274	HUM102	沟通与写作	2	\N	19	264	4.75	4	3
3164	HRM302	薪酬管理	3	\N	10	784	\N	0	3
1599	MAT302	高等数学Ⅱ	5	\N	12	1231	\N	0	2
875	IPT109	习近平新时代中国特色社会主义思想概论	3	\N	22	772	4	1	3
1888	LAW205	劳动与社会保障法	3	\N	5	1388	\N	0	2
2067	TAX105	数字财税实验班毕业实习	6	\N	8	1154	\N	0	2
1057	ENG315	语言学导论	3	\N	9	899	\N	0	3
1394	PED304	羽毛球3	1	\N	28	1119	\N	0	3
2643	PED408	健美操4	1	\N	28	1094	\N	0	2
2742	ACC307	中级财务会计I	3	\N	11	1704	\N	0	3
2347	ENG322	译作赏析	3	\N	9	981	\N	0	2
2577	OPT441	孙子兵法与现代跨国公司经营	2	\N	7	322	\N	0	2
2306	IPT204	形势与政策教育	0.5	\N	22	1569	\N	0	2
565	MTT101	军事理论	2	\N	21	515	\N	0	2
855	ART008	舞蹈鉴赏	2	\N	19	754	5	1	1
419	FIN200	货币金融学	3	\N	1	389	\N	0	1
2240	IPT207	形势与政策II	0.5	\N	22	1554	\N	0	2
1870	ENG330	跨文化商务沟通	2	\N	14	490	\N	0	2
2642	PED208	健美操2	1	\N	28	1093	4	1	2
2362	ENG117	英语实用写作	2	\N	9	238	5	1	2
1958	INS802	人寿与健康保险（双语）	3	\N	1	1422	\N	0	2
415	ACC901	会计学原理（FA1，英语）	5	\N	11	385	\N	0	3
1407	PED302	足球3	1	\N	28	1126	\N	0	3
2493	OPT794	发展金融学	3	\N	1	1648	\N	0	2
2304	IPT204	形势与政策教育	0.5	\N	22	137	\N	0	2
548	MTT101	军事理论	2	\N	21	498	\N	0	3
3291	OPT968	教育经济学	2	\N	17	1852	\N	0	3
1339	PED318	健身健美3	1	\N	28	1096	\N	0	3
1814	FEG516	金融计量学Ⅱ	3	\N	1	1359	\N	0	3
1792	FIN934	计算金融（英）	3	\N	2	1343	\N	0	2
1385	PED310	形体与礼仪3	1	\N	28	1117	\N	0	3
2511	OPT553	绘画与欣赏	2	\N	19	1652	\N	0	3
11	INS804	保险财务会计（双语）	3	\N	1	11	\N	0	3
747	MAT518	数值分析	3	\N	12	664	4.5	2	3
2911	IPT206	形势与政策I	0.5	\N	22	1798	\N	0	3
1934	LMT306	区块链概述	3	\N	10	1415	\N	0	2
3146	ENG133	翻译理论与实践	3	\N	9	865	\N	0	3
9	INS304	保险财务会计	3	\N	1	9	\N	0	3
2835	LAW114	国际投资法	2	\N	5	1755	\N	0	3
2222	IPT207	形势与政策II	0.5	\N	22	812	\N	0	2
858	LAW108	物权法	3	\N	5	757	\N	0	3
1674	IET806	国际商法（双语）	3	\N	5	1274	\N	0	2
1343	PED101	篮球1	1	\N	28	1100	\N	0	3
29	FMT200	财务管理	3	\N	10	28	4	1	1
1842	LAW107	经济法	3	\N	5	1371	\N	0	2
2388	PFC315	政府会计实务	3	\N	8	1602	\N	0	2
522	FEG524	金融科技创新与监管	3	\N	1	477	\N	0	3
1858	CST403	矩阵分析	3	\N	3	569	\N	0	2
2954	IPT208	形势与政策III	0.5	\N	22	812	\N	0	3
1859	CST403	矩阵分析	3	\N	3	192	\N	0	2
807	STA100	统计与数据科学导论	3	\N	30	713	3.5	2	3
430	FIN200	货币金融学	3	\N	1	400	4	1	3
2344	CST133	移动技术开发实践	3	\N	3	570	\N	0	2
3090	DSC401	深度学习	3	\N	3	1329	4	1	3
1187	OPT462	《诗经》《楚辞》选读	2	\N	19	1001	4	1	3
2329	FEG407	行为金融学	3	\N	1	1580	5	1	2
3110	ACC906	管理会计（MA2，英语）	3	\N	11	1851	\N	0	3
1878	PRT115	劳动教育	2	\N	11	853	\N	0	2
385	LAW304	合同法	3	\N	5	358	\N	0	3
814	FIN304	投资学	3	\N	1	720	\N	0	1
698	ADT200	审计学	3	\N	11	625	\N	0	1
929	IPT206	形势与政策I	0.5	\N	22	812	\N	0	1
792	IPT107	思想道德与法治	3	\N	22	217	\N	0	3
3354	ENG103	综合英语Ⅲ	2	\N	9	892	\N	0	3
518	FEG405	金融经济学	3	\N	1	473	4	1	3
2633	OPT181	综合汉语Ⅱ	3	\N	29	1034	\N	0	2
1256	OPT258	盆景与插花艺术	2	\N	19	1043	\N	0	2
1171	ENG103	综合英语Ⅲ	2	\N	9	987	2.5	2	3
2097	IPT107	思想道德与法治	3	\N	22	1480	\N	0	2
8	ECO203	《资本论》选读	3	\N	4	8	\N	0	3
2775	JNL107	传播学原理	3	\N	19	1724	\N	0	3
1023	ENG303	英美文学	2	\N	9	880	4.333333333333333	3	1
3331	OPT519	财经数据分析导论	1	\N	30	1947	\N	0	3
3144	JNL314	网络与新媒体概论	3	\N	19	268	\N	0	3
2068	FMA200	数字化财政管理	3	\N	8	1463	\N	0	2
2892	ADT200	审计学	3	\N	11	1791	\N	0	3
1574	MAT915	高等代数（英文）	4	\N	12	1221	\N	0	2
1341	PED101	篮球1	1	\N	28	1098	\N	0	3
579	LAW205	劳动与社会保障法	3	\N	17	527	5	1	3
61	CST219	程序设计及应用（Python）Ⅱ	3	\N	3	60	\N	0	1
833	ECO101	微观经济学	3	\N	4	737	\N	0	3
3180	CST121	计算机与大数据基础	2	\N	3	1162	\N	0	3
20	PRT110	毕业实习	6	\N	6	19	\N	0	1
2481	OPT510	大话机器人	0.5	\N	19	1643	\N	0	3
2857	JOB100	大学生职业生涯规划与创业基础	2	\N	16	1772	\N	0	3
1815	FIN514	金融科技	3	\N	10	1360	\N	0	2
401	ECO904	宏观经济学（英）	3	\N	14	373	\N	0	3
2781	INS208	保险学基础	3	\N	1	471	\N	0	3
971	IPT203	形势与政策教育	0.5	\N	22	844	\N	0	1
2051	MAT402	数学分析Ⅱ	6	\N	12	662	\N	0	2
1462	ECO938	城市经济学（英）	3	\N	2	1157	\N	0	2
1095	HUM103	中国传统文化概论	2	\N	19	928	\N	0	3
2855	HUM104	大学生心理健康与人生发展	2	\N	15	1770	\N	0	3
2912	IPT206	形势与政策I	0.5	\N	22	1550	\N	0	3
670	BEN210	商务英语写作	4	\N	9	604	\N	0	1
1399	PED102	足球1	1	\N	28	1122	\N	0	3
666	ENG331	商务翻译	2	\N	9	600	\N	0	3
1443	FMT200	财务管理	3	\N	11	1147	\N	0	2
2165	IPT109	习近平新时代中国特色社会主义思想概论	3	\N	22	1519	\N	0	2
2148	CLL319	文化传播学	3	\N	19	1512	\N	0	2
1452	ACC110	财务管理毕业论文	8	\N	11	1134	\N	0	2
3328	OPT587	羽毛球技战术与文化欣赏	2	\N	28	1944	\N	0	3
1592	MAT302	高等数学Ⅱ	5	\N	12	219	\N	0	2
697	DSC401	深度学习	3	\N	3	231	\N	0	3
2945	IPT208	形势与政策III	0.5	\N	22	141	\N	0	3
3048	IMS201	数据仓库与商务智能	3	\N	18	1836	\N	0	3
2122	TAX104	投资学毕业实习	6	\N	8	1154	\N	0	2
3052	CST209	数据挖掘	3	\N	3	1135	\N	0	3
1244	OPT869	金融社会学	2	\N	23	1038	\N	0	3
977	IPT203	形势与政策教育	0.5	\N	22	847	\N	0	1
3000	PAD314	房地产管理及政策分析	3	\N	17	1812	\N	0	3
1061	LMT202	运作管理	3	\N	10	650	4	1	3
813	FIN304	投资学	3	\N	1	719	4	2	3
1217	OPT775	大学生音乐修养	2	\N	19	876	5	1	3
2499	OPT089	公益广告赏析与设计	2	\N	19	1556	5	1	2
1867	ECC216	科研训练	5	\N	18	158	\N	0	2
2143	ECO903	微观经济学（英）	3	\N	14	1509	\N	0	2
725	DSC202	数据可视化	3	\N	30	648	\N	0	3
2605	OPT970	英语语法	2	\N	9	522	5	1	3
2671	PED420	散打4	1	\N	28	1105	5	1	2
780	TAX204	税法	3	\N	8	692	\N	0	3
1429	ENG333	财经英语时文阅读	2	\N	9	988	\N	0	2
354	IBS913	国际商务学术英语（听力）	2	\N	7	336	\N	0	1
1540	JOB100	大学生职业生涯规划与创业基础	2	\N	16	1200	\N	0	2
2409	IPT102	中国近现代史纲要	3	\N	22	1616	\N	0	2
524	FEG513	金融数学	3	\N	1	478	\N	0	3
2941	IPT206	形势与政策I	0.5	\N	22	1400	5	1	3
3069	MAT327	概率论与数理统计A	5	\N	12	179	4.5	2	3
1078	ECO100	政治经济学	3	\N	4	914	\N	0	3
2128	ECO101	微观经济学	3	\N	10	1497	\N	0	2
1475	CST119	程序设计及应用（Python）	3	\N	3	454	\N	0	2
1576	MAT303	高等数学II	3	\N	2	1223	\N	0	2
1730	ACC200	会计学	3	\N	11	946	4.333333333333333	3	2
1731	ACC200	会计学	3	\N	11	1142	4.5	4	2
1727	ACC200	会计学	3	\N	11	943	5	2	3
1742	ACC204	会计学原理	3	\N	11	1318	4	1	2
1743	ACC204	会计学原理	3	\N	11	1133	4	3	2
293	BBA100	管理学原理	3	\N	10	281	5	1	1
492	CST121	计算机与大数据基础	2	\N	3	449	4.666666666666667	3	3
1948	CST122	人工智能与现代科技	2	\N	3	149	5	1	2
650	CST122	人工智能与现代科技	2	\N	3	588	4.666666666666667	3	2
657	CST122	人工智能与现代科技	2	\N	3	593	4	2	3
1488	CST220	程序设计与python应用	3	\N	18	579	4.5	2	2
1786	CST121	计算机与大数据基础	2	\N	3	651	\N	0	2
1547	JOB100	大学生职业生涯规划与创业基础	2	\N	16	1206	\N	0	2
1729	ACC200	会计学	3	\N	11	1310	\N	0	2
1737	ACC200	会计学	3	\N	1	1316	\N	0	2
1745	ACC204	会计学原理	3	\N	11	947	4	1	2
1741	ACC204	会计学原理	3	\N	11	943	5	1	2
1744	ACC204	会计学原理	3	\N	11	1312	3	1	2
50	ACC302	成本管理会计	3	\N	11	49	\N	0	3
2995	ACC302	成本管理会计	3	\N	11	1145	\N	0	3
1116	ACC308	中级财务会计Ⅱ	3	\N	11	949	\N	0	3
3251	ACC400	高级财务会计	3	\N	11	1534	\N	0	3
1117	ACC903	中级财务会计Ⅱ（FA3，英语）	5	\N	11	950	\N	0	1
1118	ACC903	中级财务会计Ⅱ（FA3，英语）	5	\N	11	951	\N	0	1
1119	ACC903	中级财务会计Ⅱ（FA3，英语）	5	\N	13	53	\N	0	3
2744	ACC903	中级财务会计Ⅱ（FA3，英语）	5	\N	11	1705	\N	0	3
2745	ACC903	中级财务会计Ⅱ（FA3，英语）	5	\N	11	1706	\N	0	3
53	ACC905	成本会计（MA1，英语）	3	\N	11	52	\N	0	1
284	ACC906	管理会计（MA2，英语）	3	\N	11	52	\N	0	1
237	ACC907	高级财务会计（FA4，英语）	4	\N	13	53	\N	0	3
1722	ACC908	会计理论（AT，英语）	3	\N	11	1304	\N	0	2
28	ACC911	财务报告分析	3	\N	2	27	\N	0	3
3142	ADT100	综合能力训练（ERP模拟经营沙盘）	2	\N	11	1871	\N	0	3
2891	ADT200	审计学	3	\N	11	1790	\N	0	3
407	ADT201	会计信息系统	3	\N	11	378	\N	0	3
2770	ADT201	会计信息系统	3	\N	11	1721	\N	0	3
2876	ADT406	大数据审计	3	\N	11	379	\N	0	3
2877	ADT406	大数据审计	3	\N	11	1782	\N	0	3
408	ADT901	会计信息系统（AIS,英语）	4	\N	11	379	\N	0	3
1725	ADT901	会计信息系统（AIS, 英语）	4	\N	11	1307	\N	0	2
1726	ADT901	会计信息系统（AIS, 英语）	3	\N	2	1308	\N	0	2
703	ADT902	审计学（AU1，英语）	4	\N	11	630	\N	0	3
704	ADT902	审计学（AU1，英语）	4	\N	13	53	\N	0	3
1305	ART009	影视艺术	3	\N	19	1077	\N	0	3
2984	ART012	形式基础	3	\N	19	1464	\N	0	3
3183	ART013	计算机图形图像设计	3	\N	19	1697	\N	0	3
1149	ART014	字体设计	2	\N	19	970	\N	0	1
773	ART018	数字视听语言	4	\N	19	685	\N	0	1
3188	ART021	设计思维与创意表达	4	\N	19	1697	\N	0	3
684	ART023	摄影与摄像	3	\N	19	612	\N	0	1
685	ART023	摄影与摄像	3	\N	19	613	\N	0	3
2725	ART025	三维动画设计	3	\N	19	1697	\N	0	3
2750	ART026	交互界面设计	3	\N	19	1709	\N	0	3
2785	ART027	信息架构与可视化	3	\N	19	1300	\N	0	3
1717	ART029	互联网产品设计基础	3	\N	19	1300	\N	0	2
3014	ART030	数字产品概念设计	3	\N	19	1300	\N	0	3
3054	ART038	文化研究与概念探索	3	\N	19	684	\N	0	3
3036	ART043	数字装置艺术设计	3	\N	19	1833	\N	0	3
1947	CST122	人工智能与现代科技	2	\N	3	451	4.5	2	2
1950	CST122	人工智能与现代科技	2	\N	3	586	4.333333333333333	3	3
1077	ECO100	政治经济学	3	\N	4	913	4	1	3
834	ECO101	微观经济学	3	\N	10	738	4	1	2
1707	ECO102	宏观经济学	3	\N	4	1242	4.333333333333333	3	2
3023	ART045	数字娱乐策划	3	\N	19	1827	\N	0	3
2749	ART050	互动艺术基础	3	\N	19	684	\N	0	3
2751	ART051	交互设计原理	3	\N	19	1300	\N	0	3
292	BBA100	管理学原理	3	\N	10	280	\N	0	1
289	BBA100	管理学原理	3	\N	10	277	\N	0	1
290	BBA100	管理学原理	3	\N	10	278	\N	0	1
291	BBA100	管理学原理	3	\N	10	279	\N	0	1
295	BBA100	管理学原理	3	\N	10	283	\N	0	3
298	BBA100	管理学原理	3	\N	10	286	\N	0	1
296	BBA100	管理学原理	3	\N	10	284	\N	0	3
302	BBA100	管理学原理	3	\N	11	175	\N	0	1
300	BBA100	管理学原理	3	\N	17	288	\N	0	3
297	BBA100	管理学原理	3	\N	10	285	\N	0	3
299	BBA100	管理学原理	3	\N	10	287	\N	0	3
1649	BBA100	管理学原理	3	\N	20	519	\N	0	2
1648	BBA100	管理学原理	3	\N	10	672	4	1	2
3111	BBA100	管理学原理	3	\N	17	1852	\N	0	3
3112	BBA100	管理学原理	3	\N	10	1853	\N	0	3
3113	BBA100	管理学原理	3	\N	10	1854	\N	0	3
3114	BBA100	管理学原理	3	\N	10	975	\N	0	3
3115	BBA100	管理学原理	3	\N	10	1855	\N	0	3
3116	BBA100	管理学原理	3	\N	10	1856	\N	0	3
1616	BBA106	供应链管理毕业实习	6	\N	10	571	\N	0	2
1891	BBA107	旅游管理毕业实习	6	\N	10	571	\N	0	2
1955	BBA108	人力资源管理毕业实习	6	\N	10	571	\N	0	2
1614	BBA109	工商双语毕业实习	6	\N	10	571	\N	0	2
1611	BBA113	工商管理毕业论文	8	\N	10	1183	\N	0	2
1615	BBA115	供应链管理毕业论文	8	\N	10	1183	\N	0	2
1890	BBA116	旅游管理毕业论文	8	\N	10	1183	\N	0	2
1954	BBA117	人力资源管理毕业论文	8	\N	10	1183	\N	0	2
1613	BBA118	工商双语毕业论文	8	\N	10	1183	\N	0	2
640	BBA201	企业战略管理	3	\N	10	581	\N	0	1
2456	BBA203	组织行为学	3	\N	10	1636	\N	0	2
2457	BBA203	组织行为学	3	\N	10	286	\N	0	2
659	BBA204	人力资源管理	3	\N	17	428	\N	0	1
2753	BBA204	人力资源管理	3	\N	17	1710	\N	0	3
1643	BBA205	管理信息系统	4	\N	20	1253	\N	0	2
1644	BBA205	管理信息系统	3	\N	13	1254	\N	0	2
3017	BBA206	数字化管理	3	\N	10	1822	\N	0	3
3018	BBA206	数字化管理	3	\N	10	670	\N	0	3
3020	BBA206	数字化管理	3	\N	10	1824	\N	0	3
3019	BBA206	数字化管理	3	\N	10	1823	\N	0	3
3022	BBA206	数字化管理	3	\N	10	1826	\N	0	3
3021	BBA206	数字化管理	3	\N	10	1825	\N	0	3
1504	BBA301	创业管理	3	\N	10	1177	\N	0	2
1637	BBA306	股权设计与融资	3	\N	10	1248	\N	0	2
750	BBA307	数字化创新和评估	3	\N	10	290	\N	0	3
1931	BBA401	企业经营分析	3	\N	10	1413	\N	0	2
631	BBA404	培训开发	3	\N	10	573	\N	0	1
2844	BBA404	培训开发	3	\N	10	1760	\N	0	3
663	BBA503	商科导论	3	\N	20	597	\N	0	1
2828	BBA503	商科导论	3	\N	20	1751	\N	0	3
1565	BBA504	服务营运管理	3	\N	20	341	\N	0	2
310	BBA505	管理研究与论文写作	3	\N	10	296	\N	0	1
311	BBA505	管理研究与论文写作	3	\N	10	297	\N	0	1
312	BBA505	管理研究与论文写作	3	\N	10	298	\N	0	1
1657	BBA505	管理研究与论文写作	3	\N	10	784	\N	0	2
303	BBA800	管理学原理（双语）	3	\N	7	281	\N	0	2
2756	BBA804	人力资源管理（双语）	3	\N	10	1711	\N	0	3
305	BBA900	管理学原理（英）	3	\N	10	291	\N	0	1
306	BBA900	管理学原理（英）	3	\N	9	292	\N	0	3
307	BBA900	管理学原理（英）	3	\N	9	293	\N	0	3
304	BBA900	管理学原理（英）	3	\N	10	290	\N	0	3
1650	BBA900	管理学原理（英）	3	\N	10	1258	\N	0	2
1651	BBA900	管理学原理（英）	3	\N	2	1259	\N	0	2
1652	BBA900	管理学原理（英）	3	\N	2	1260	\N	0	2
1653	BBA900	管理学原理（英）	3	\N	2	1261	\N	0	2
3117	BBA900	管理学原理（英）	3	\N	10	1857	\N	0	3
2460	BBA903	组织行为学（英）	3	\N	2	1639	\N	0	3
660	BBA904	人力资源管理（英）	3	\N	10	519	\N	0	1
661	BBA904	人力资源管理（英）	3	\N	10	595	\N	0	1
1953	BBA904	人力资源管理（英）	3	\N	2	1420	\N	0	2
880	BBA911	现代企业战略管理（英）	3	\N	10	775	\N	0	3
754	BBA912	数字化技术与创新（英）	3	\N	10	670	\N	0	3
669	BEN101	商务英语Ⅰ	4	\N	9	603	\N	0	3
241	BEN200	高级商务英语Ⅰ	3	\N	9	233	\N	0	3
1603	BEN201	高级商务英语Ⅱ	3	\N	9	233	\N	0	2
671	BEN210	商务英语写作	4	\N	9	522	\N	0	1
1691	BEN304	国际支付与结算（英）	3	\N	9	604	\N	0	2
350	BEN305	国际商法导论（英）	3	\N	9	333	\N	0	3
1683	BEN306	国际商务谈判（英）	3	\N	7	343	\N	0	2
1684	BEN306	国际商务谈判（英）	3	\N	9	1276	\N	0	2
1975	BEN312	商务沟通导论	3	\N	13	865	4.666666666666667	3	2
1976	BEN312	商务沟通导论	3	\N	13	248	4	1	2
2448	BRT113	综合能力训练	2	\N	9	1632	\N	0	2
800	BST200	统计学	3	\N	10	707	\N	0	1
801	BST200	统计学	3	\N	10	708	\N	0	1
802	BST200	统计学	3	\N	10	709	\N	0	1
2104	BST200	统计学	3	\N	6	1483	\N	0	2
2105	BST200	统计学	3	\N	6	1484	\N	0	2
2107	BST200	统计学	3	\N	6	1327	\N	0	2
2108	BST200	统计学	3	\N	6	1485	\N	0	2
3140	BST200	统计学	3	\N	30	579	\N	0	3
3139	BST200	统计学	3	\N	30	1869	\N	0	3
64	BST201	抽样调查与应用	3	\N	6	63	\N	0	1
3006	BST201	抽样调查与应用	3	\N	30	1816	\N	0	3
471	BST300	计量经济学	3	\N	1	175	\N	0	1
481	BST300	计量经济学	3	\N	30	438	\N	0	3
475	BST300	计量经济学	3	\N	30	418	\N	0	3
478	BST300	计量经济学	3	\N	30	435	\N	0	3
1778	BST300	计量经济学	3	\N	6	1337	\N	0	2
3187	BST300	计量经济学	3	\N	30	1885	\N	0	3
1761	BST301	货币与金融统计	3	\N	6	1327	\N	0	2
2899	BST303	应用时间序列分析	3	\N	30	1795	\N	0	3
1694	BST304	国民经济统计学	3	\N	6	710	\N	0	2
3228	BST306	金融统计分析	3	\N	30	1795	\N	0	3
1780	BST900	计量经济学（英）	3	\N	2	1339	\N	0	2
3095	CLL101	现代汉语	3	\N	19	1597	\N	0	3
1636	CLL102	古代汉语	3	\N	19	930	\N	0	3
1097	CLL104	中国古代文学Ⅰ	3	\N	19	930	\N	0	2
2403	CLL105	中国古代文学Ⅱ	3	\N	19	1611	\N	0	3
849	CLL112	文化产业导论	3	\N	19	749	\N	0	1
848	CLL112	文化产业导论	3	\N	19	748	\N	0	3
3053	CLL112	文化产业导论	2	\N	19	1827	\N	0	3
892	CLL201	写作学	3	\N	19	263	\N	0	1
2417	CLL203	中国现当代文学	3	\N	19	748	\N	0	3
2153	CLL204	文学理论	3	\N	19	751	\N	0	3
2151	CLL317	文化资源概论	3	\N	19	1513	\N	0	2
847	CLL318	文化策划与营销	3	\N	19	747	\N	0	3
3096	CLL322	现代汉语语法前沿	2	\N	19	265	\N	0	3
913	CRM302	信用管理学	3	\N	1	796	\N	0	1
2786	CRM302	信用管理学	3	\N	1	1729	\N	0	3
2200	CRM303	信用评级	3	\N	1	1540	\N	0	2
914	CRM408	信用评分	3	\N	1	797	\N	0	1
2787	CRM408	信用评分	3	\N	1	1730	\N	0	3
3143	CRM410	绿色金融	3	\N	1	1872	\N	0	3
1910	CST116	面向对象程序设计（JAVASE）	3	\N	3	1163	\N	0	2
1909	CST116	面向对象程序设计（JAVASE）	3	\N	3	4	\N	0	3
56	CST117	程序设计（C语言）	3	\N	3	55	\N	0	3
57	CST117	程序设计（C语言）	3	\N	3	56	\N	0	3
3104	CST117	程序设计（C语言）	3	\N	3	217	\N	0	3
582	CST118	离散数学	3	\N	3	530	\N	0	2
1889	CST118	离散数学	3.5	\N	1	1389	\N	0	2
1469	CST119	程序设计及应用（Python）	3	\N	3	450	\N	0	2
1471	CST119	程序设计及应用（Python）	3	\N	3	58	\N	0	2
1474	CST119	程序设计及应用（Python）	3	\N	3	453	\N	0	2
1476	CST119	程序设计及应用（Python）	3	\N	3	1162	\N	0	2
1477	CST119	程序设计及应用（Python）	3	\N	3	457	\N	0	2
1478	CST119	程序设计及应用（Python）	3	\N	3	1163	\N	0	2
1479	CST119	程序设计及应用（Python）	3	\N	3	1164	\N	0	2
1480	CST119	程序设计及应用（Python）	3	\N	3	1165	\N	0	2
1482	CST119	程序设计及应用（Python）	3	\N	3	1167	\N	0	2
1483	CST119	程序设计及应用（Python）	3	\N	3	458	\N	0	2
1484	CST119	程序设计及应用（Python）	3	\N	3	1168	\N	0	2
1485	CST119	程序设计及应用（Python）	3	\N	3	448	\N	0	2
493	CST121	计算机与大数据基础	2	\N	3	450	\N	0	3
490	CST121	计算机与大数据基础	2	\N	18	447	\N	0	3
497	CST121	计算机与大数据基础	2	\N	3	453	\N	0	1
498	CST121	计算机与大数据基础	2	\N	3	454	\N	0	1
501	CST121	计算机与大数据基础	2	\N	3	457	\N	0	3
491	CST121	计算机与大数据基础	2	\N	3	448	\N	0	1
1787	CST121	计算机与大数据基础	2	\N	3	192	4	1	3
3177	CST121	计算机与大数据基础	2	\N	3	58	\N	0	3
3176	CST121	计算机与大数据基础	2	\N	3	5	\N	0	3
3178	CST121	计算机与大数据基础	2	\N	3	149	\N	0	3
3181	CST121	计算机与大数据基础	2	\N	3	57	\N	0	3
3179	CST121	计算机与大数据基础	2	\N	3	1169	\N	0	3
652	CST122	人工智能与现代科技	2	\N	3	589	\N	0	1
654	CST122	人工智能与现代科技	2	\N	3	590	\N	0	1
651	CST122	人工智能与现代科技	2	\N	3	452	\N	0	2
653	CST122	人工智能与现代科技	2	\N	3	455	\N	0	3
656	CST122	人工智能与现代科技	2	\N	3	592	4	1	3
1951	CST122	人工智能与现代科技	2	\N	3	1329	\N	0	3
1952	CST122	人工智能与现代科技	2	\N	3	582	\N	0	2
1949	CST122	人工智能与现代科技	2	\N	3	1419	\N	0	3
2759	CST122	人工智能与现代科技	2	\N	3	1713	\N	0	3
2758	CST122	人工智能与现代科技	2	\N	3	1712	\N	0	3
2761	CST122	人工智能与现代科技	2	\N	3	1714	\N	0	3
2762	CST122	人工智能与现代科技	2	\N	3	1715	\N	0	3
2763	CST122	人工智能与现代科技	2	\N	3	1521	\N	0	3
2809	CST130	创新程序设计实践	2	\N	3	1743	\N	0	3
4	CST132	JAVA EE开发实践	3	\N	3	4	\N	0	1
771	CST201	数字逻辑电路	3	\N	3	683	\N	0	3
489	CST203	计算机网络	3	\N	3	446	\N	0	3
3184	CST203	计算机网络	3	\N	3	1883	\N	0	3
1456	CST204	操作系统	3	\N	3	20	\N	0	2
1457	CST204	操作系统	3	\N	3	21	\N	0	2
1458	CST204	操作系统	3	\N	3	582	\N	0	2
2030	CST205	数据库原理与应用	3	\N	18	1450	\N	0	2
2031	CST205	数据库原理与应用	3	\N	3	645	\N	0	2
3049	CST205	数据库原理与应用	3	\N	18	1837	\N	0	3
3050	CST205	数据库原理与应用	3	\N	3	1838	\N	0	3
796	CST207	算法分析与设计	3	\N	3	646	\N	0	3
795	CST207	算法分析与设计	3	\N	3	704	\N	0	3
729	CST209	数据挖掘	3	\N	3	651	\N	0	3
3051	CST209	数据挖掘	3	\N	3	76	\N	0	3
5	CST213	Python程序设计	2	\N	3	5	\N	0	1
1790	CST214	计算金融	3	\N	1	3	\N	0	2
58	CST219	程序设计及应用（Python）Ⅱ	3	\N	3	57	\N	0	1
59	CST219	程序设计及应用（Python）Ⅱ	3	\N	3	58	\N	0	1
60	CST219	程序设计及应用（Python）Ⅱ	3	\N	3	59	\N	0	1
62	CST219	程序设计及应用（Python）Ⅱ	3	\N	3	61	\N	0	1
1489	CST220	程序设计与python应用	3	\N	18	64	5	2	2
1487	CST220	程序设计与python应用	3	\N	18	1160	\N	0	2
1490	CST220	程序设计与python应用	3	\N	18	6	\N	0	2
1491	CST220	程序设计与python应用	3	\N	18	1169	\N	0	2
646	CST221	人工智能导论	2	\N	3	586	\N	0	1
1769	CST303	机器学习基础	3	\N	3	1329	\N	0	2
2875	CST305	大数据处理	3	\N	1	193	\N	0	3
624	CST307	密码学	3	\N	3	569	\N	0	2
1146	CST308	自然语言处理	3	\N	3	583	\N	0	1
1147	CST308	自然语言处理	3	\N	3	591	\N	0	1
1148	CST308	自然语言处理	3	\N	3	969	\N	0	1
3150	CST308	自然语言处理	3	\N	3	452	\N	0	3
3151	CST308	自然语言处理	3	\N	3	1875	\N	0	3
643	CST326	区块链技术	3	\N	3	584	\N	0	1
2814	CST326	区块链技术	3	\N	3	1665	\N	0	3
2878	CST327	大数据技术	3	\N	3	1161	\N	0	3
3094	CST332	现代密码学	3	\N	3	569	\N	0	3
2882	CST338	大模型应用	2	\N	3	1328	\N	0	3
2880	CST338	大模型应用	2	\N	3	1783	\N	0	3
1820	CST339	金融科技基础	3	\N	3	1363	\N	0	2
1821	CST339	金融科技基础	3	\N	3	1364	\N	0	2
2784	CST340	信息安全基础	2	\N	3	569	\N	0	3
1750	CST402	汇编语言	2	\N	3	75	\N	0	2
1751	CST402	汇编语言	2	\N	3	1319	\N	0	2
1860	CST403	矩阵分析	3	\N	12	199	\N	0	2
2098	CST410	算法交易	3	\N	3	1364	\N	0	2
78	CST413	大数据可视化	3	\N	3	76	\N	0	2
2764	CST416	人工智能前沿科技研讨	3	\N	3	1716	\N	0	3
641	CST417	迁移学习与联邦学习	3	\N	3	582	\N	0	3
649	CST418	人工智能实训Ⅰ	2	\N	3	587	\N	0	3
648	CST418	人工智能实训Ⅰ	2	\N	3	21	\N	0	3
1945	CST419	人工智能实训Ⅱ	1	\N	3	21	\N	0	2
1946	CST419	人工智能实训Ⅱ	1	\N	3	587	\N	0	2
1785	CST901	计算机网络（英）	3	\N	3	446	\N	0	2
626	CST904	面向对象程序设计（JAVASE）（英）	3	\N	3	217	\N	0	3
723	CST906	数据结构（英）	3	\N	3	646	\N	0	3
3037	DFC200	数字财税概论	2	\N	8	1834	\N	0	3
1771	DMI200	机器学习与财税数据挖掘	3	\N	8	1055	\N	0	2
2768	DSC201	优化方法	3	\N	30	1719	\N	0	3
724	DSC202	数据可视化	3	\N	30	647	\N	0	3
3083	DSC203	概率论原理	4	\N	30	1843	\N	0	3
2048	DSC204	数理统计原理	3	\N	6	194	\N	0	2
453	DSC321	机器学习与数据挖掘	3	\N	10	418	\N	0	1
454	DSC321	机器学习与数据挖掘	3	\N	10	419	\N	0	1
455	DSC321	机器学习与数据挖掘	3	\N	10	242	\N	0	1
456	DSC321	机器学习与数据挖掘	3	\N	10	420	\N	0	1
457	DSC321	机器学习与数据挖掘	3	\N	1	421	\N	0	1
459	DSC321	机器学习与数据挖掘	3	\N	1	423	\N	0	1
460	DSC321	机器学习与数据挖掘	3	\N	12	416	\N	0	1
463	DSC321	机器学习与数据挖掘	3	\N	6	426	\N	0	1
465	DSC321	机器学习与数据挖掘	3	\N	6	17	\N	0	1
1772	DSC321	机器学习与数据挖掘	3	\N	1	1331	\N	0	2
1774	DSC321	机器学习与数据挖掘	3	\N	6	1333	\N	0	2
1775	DSC321	机器学习与数据挖掘	3	\N	6	1334	\N	0	2
3065	DSC321	机器学习与数据挖掘	3	\N	1	1840	\N	0	3
732	DSC322	数据智能方法I	2	\N	30	653	\N	0	3
2033	DSC323	数据智能方法II	2	\N	6	653	\N	0	2
2000	DSC401	深度学习	3	\N	30	898	\N	0	3
3091	DSC401	深度学习	3	\N	1	1331	\N	0	3
2901	DSC402	强化学习	3	\N	3	593	\N	0	3
2034	DSC403	数据智能前沿	3	\N	6	1452	\N	0	2
161	ECC101	电子商务	3	\N	18	157	\N	0	1
162	ECC102	电子支付与结算	3	\N	18	158	\N	0	3
1837	ECC111	经管实验班毕业实习	6	\N	2	1173	\N	0	2
1836	ECC112	经管实验班毕业论文	8	\N	2	572	\N	0	2
251	ECC204	供应链与物流管理	3	\N	18	242	\N	0	1
902	ECC211	新媒体营销与运营	3	\N	18	787	\N	0	1
403	ECC213	互联网产品设计	3	\N	18	374	\N	0	1
1505	ECC214	创业实践	4	\N	18	158	\N	0	2
1140	ECC215	专业文献综述	3	\N	18	6	\N	0	1
2446	ECC215	专业文献综述	4	\N	18	1630	\N	0	2
1718	ECC302	互联网金融	3	\N	18	1301	\N	0	2
1977	ECC903	商务研究方法（英）	3	\N	18	1428	\N	0	2
1072	ECO100	政治经济学	3	\N	4	909	\N	0	1
1066	ECO100	政治经济学	4	\N	1	175	\N	0	1
1080	ECO100	政治经济学	3	\N	4	916	\N	0	1
1076	ECO100	政治经济学	3	\N	4	912	\N	0	3
1081	ECO100	政治经济学	3	\N	4	917	\N	0	3
1079	ECO100	政治经济学	3	\N	4	915	\N	0	3
1067	ECO100	政治经济学	3	\N	4	905	\N	0	3
1071	ECO100	政治经济学	3	\N	4	908	\N	0	3
1068	ECO100	政治经济学	3	\N	4	552	\N	0	3
1069	ECO100	政治经济学	3	\N	4	906	3	1	3
1075	ECO100	政治经济学	3	\N	4	8	1	1	3
1074	ECO100	政治经济学	3	\N	4	911	5	1	3
3008	ECO100	政治经济学	3	\N	4	1817	\N	0	3
3011	ECO100	政治经济学	3	\N	4	1819	\N	0	3
3012	ECO100	政治经济学	3	\N	4	1820	\N	0	3
3009	ECO100	政治经济学	3	\N	4	1618	\N	0	3
3010	ECO100	政治经济学	3	\N	4	1818	\N	0	3
824	ECO101	微观经济学	3	\N	1	175	\N	0	1
825	ECO101	微观经济学	3	\N	4	730	\N	0	1
831	ECO101	微观经济学	3	\N	4	735	\N	0	1
832	ECO101	微观经济学	3	\N	4	736	\N	0	1
830	ECO101	微观经济学	3	\N	4	734	\N	0	3
836	ECO101	微观经济学	3	\N	4	740	\N	0	3
835	ECO101	微观经济学	3	\N	4	739	\N	0	3
829	ECO101	微观经济学	3	\N	4	733	4	1	1
837	ECO101	微观经济学	3	\N	4	741	3	1	3
828	ECO101	微观经济学	3	\N	4	732	3	1	3
827	ECO101	微观经济学	3	\N	4	492	4	2	3
2134	ECO101	微观经济学	3	\N	4	1503	4.25	8	3
2127	ECO101	微观经济学	3	\N	10	1496	\N	0	2
2129	ECO101	微观经济学	3	\N	10	1498	\N	0	2
2131	ECO101	微观经济学	3	\N	17	1500	\N	0	2
2133	ECO101	微观经济学	3	\N	4	1502	\N	0	2
2136	ECO101	微观经济学	3	\N	4	1505	\N	0	3
2135	ECO101	微观经济学	3	\N	4	1504	\N	0	3
2137	ECO101	微观经济学	3	\N	4	1285	\N	0	3
2139	ECO101	微观经济学	3	\N	4	1467	\N	0	3
2140	ECO101	微观经济学	3	\N	4	959	4	1	2
2132	ECO101	微观经济学	3	\N	20	1501	5	1	2
2138	ECO101	微观经济学	3	\N	4	1506	5	1	2
2986	ECO101	微观经济学	3	\N	4	1803	\N	0	3
2985	ECO101	微观经济学	3	\N	4	1802	\N	0	3
2987	ECO101	微观经济学	3	\N	4	1804	\N	0	3
2988	ECO101	微观经济学	3	\N	4	1805	\N	0	3
2989	ECO101	微观经济学	3	\N	4	1806	\N	0	3
388	ECO102	宏观经济学	3	\N	10	361	\N	0	1
389	ECO102	宏观经济学	3	\N	10	362	\N	0	1
390	ECO102	宏观经济学	3	\N	10	363	\N	0	1
400	ECO102	宏观经济学	3	\N	4	372	\N	0	1
394	ECO102	宏观经济学	3	\N	4	367	4.4	5	3
1698	ECO102	宏观经济学	3	\N	1	175	\N	0	2
1701	ECO102	宏观经济学	3	\N	4	1285	\N	0	2
1702	ECO102	宏观经济学	3	\N	4	1286	\N	0	2
1703	ECO102	宏观经济学	3	\N	4	1287	\N	0	2
1705	ECO102	宏观经济学	3	\N	4	1289	\N	0	2
1709	ECO102	宏观经济学	3	\N	4	1292	\N	0	2
1699	ECO102	宏观经济学	3	\N	4	1283	4	1	2
1708	ECO102	宏观经济学	3	\N	4	1291	3.5	2	2
2884	ECO102	宏观经济学	3	\N	4	1785	\N	0	3
2885	ECO102	宏观经济学	3	\N	4	1786	\N	0	3
2886	ECO102	宏观经济学	3	\N	4	1787	\N	0	3
2888	ECO102	宏观经济学	3	\N	4	1788	\N	0	3
393	ECO102	宏观经济学	3	\N	4	366	4	5	2
1706	ECO102	宏观经济学	3	\N	4	1290	3.3333333333333335	3	2
1704	ECO102	宏观经济学	3	\N	4	1288	4	3	2
1848	ECO105	经济学导论	3	\N	9	338	\N	0	3
606	ECO106	马克思主义政治经济学	3	\N	4	552	\N	0	3
2415	ECO107	中国特色社会主义政治经济学	3	\N	4	552	\N	0	2
2416	ECO107	中国特色社会主义政治经济学	3	\N	4	1618	\N	0	2
1850	ECO109	经济学基地班毕业实习	6	\N	4	116	\N	0	2
1846	ECO110	经济学拔尖班毕业实习	6	\N	4	116	\N	0	2
2078	ECO111	数字经济毕业实习	6	\N	4	116	\N	0	2
1849	ECO112	经济学基地班毕业论文	8	\N	4	1374	\N	0	2
1845	ECO113	经济学拔尖班毕业论文	8	\N	4	1374	\N	0	2
2077	ECO114	数字经济毕业论文	8	\N	4	1374	\N	0	2
1130	ECO200	中级微观经济学	3	\N	4	959	\N	0	1
1667	ECO202	国际经济学	3	\N	4	1270	\N	0	2
1123	ECO300	中级宏观经济学	3	\N	8	954	\N	0	3
2411	ECO301	中国经济史	3	\N	4	1617	\N	0	2
23	ECO303	博弈论与信息经济学	3	\N	4	22	\N	0	1
2815	ECO303	博弈论与信息经济学	3	\N	4	1745	\N	0	3
2816	ECO303	博弈论与信息经济学	3	\N	4	1746	\N	0	3
1559	ECO306	发展经济学	3	\N	4	1215	\N	0	2
2819	ECO306	发展经济学	3	\N	2	1748	\N	0	3
1852	ECO310	经济学研究方法与论文写作	3	\N	4	910	\N	0	2
1853	ECO310	经济学研究方法与论文写作	3	\N	4	1375	\N	0	2
1854	ECO310	经济学研究方法与论文写作	3	\N	4	8	\N	0	2
706	ECO311	实验与行为经济学	3	\N	4	632	\N	0	1
707	ECO311	实验与行为经济学	3	\N	4	633	\N	0	1
1555	ECO316	当代中国经济	3	\N	4	1212	\N	0	2
2412	ECO319	中国开放型经济学	3	\N	4	1270	\N	0	2
3253	ECO319	中国开放经济学	3	\N	4	1914	\N	0	3
765	ECO322	数字经济学	3	\N	4	679	\N	0	1
2079	ECO322	数字经济学	3	\N	4	909	\N	0	2
3034	ECO322	数字经济学	3	\N	4	905	\N	0	3
1143	ECO324	资源与环境经济学	3	\N	4	967	\N	0	1
1144	ECO324	资源与环境经济学	3	\N	4	968	\N	0	1
3205	ECO324	资源与环境经济学	3	\N	4	1895	\N	0	3
3206	ECO324	资源与环境经济学	3	\N	4	1896	\N	0	3
3165	ECO331	行为经济学	3	\N	4	1745	\N	0	3
3166	ECO331	行为经济学	3	\N	4	1879	\N	0	3
1202	ECO332	博弈论	2	\N	5	1013	\N	0	3
1422	ECO332	博弈论	3	\N	3	1135	\N	0	2
2752	ECO337	产业组织理论	3	\N	4	1607	\N	0	3
3247	ECO400	高级政治经济学	2	\N	4	909	\N	0	3
1605	ECO401	高级微观经济学Ⅰ	3	\N	4	1234	\N	0	2
3246	ECO401	高级微观经济学Ⅰ	2	\N	4	1502	\N	0	3
1601	ECO402	高级宏观经济学Ⅰ	3	\N	4	1233	\N	0	2
3245	ECO402	高级宏观经济学Ⅰ	2	\N	4	1912	\N	0	3
1415	ECO406	《资本论》等经典著作选读	2	\N	4	911	\N	0	2
536	ECO407	经济学文献研读与文献综述写作	4	\N	4	488	\N	0	1
1851	ECO408	经济学学科前沿动态	3	\N	4	917	\N	0	2
154	ECO409	当代中国经济问题分析	3	\N	4	150	\N	0	1
2902	ECO409	当代中国经济问题分析	3	\N	4	1797	\N	0	3
1692	ECO410	国家级项目专题研讨课	3	\N	4	1281	\N	0	2
248	ECO412	高阶经济数学	3	\N	4	239	\N	0	3
1609	ECO412	高阶经济数学	3	\N	4	1235	\N	0	2
2397	ECO414	中国产业经济学	3	\N	4	1607	\N	0	2
1847	ECO500	经济学大综合	2	\N	4	917	\N	0	2
839	ECO801	微观经济学（双语）	3	\N	7	742	\N	0	1
840	ECO801	微观经济学（双语）	3	\N	7	329	\N	0	3
1710	ECO802	宏观经济学（双语）	3	\N	7	1293	\N	0	2
1711	ECO802	宏观经济学（双语）	3	\N	7	1294	\N	0	2
1712	ECO802	宏观经济学（双语）	3	\N	7	1295	\N	0	2
2736	ECO803	中级微观经济学（双语）	3	\N	7	1702	\N	0	3
1126	ECO804	中级宏观经济学（双语）	3	\N	7	320	\N	0	3
2733	ECO804	中级宏观经济学（双语）	3	\N	7	1701	\N	0	3
328	ECO805	国际经济学（双语）	3	\N	7	314	\N	0	3
330	ECO805	国际经济学（双语）	3	\N	7	316	\N	0	3
1924	ECO808	批判视角下的人事管理	3	\N	7	1410	\N	0	2
1133	ECO900	中级微观经济学（英）	3	\N	4	961	\N	0	1
1135	ECO900	中级微观经济学（英）	3	\N	2	963	\N	0	1
1134	ECO900	中级微观经济学（英）	3	\N	2	962	\N	0	3
2737	ECO900	中级微观经济学（英）	3	\N	7	1702	\N	0	3
2738	ECO900	中级微观经济学（英）	3	\N	2	1703	\N	0	3
1128	ECO901	中级宏观经济学（英）	3	\N	2	958	\N	0	3
1127	ECO901	中级宏观经济学（英）	3	\N	2	957	\N	0	3
2734	ECO901	中级宏观经济学（英）	3	\N	7	1701	\N	0	3
843	ECO903	微观经济学（英）	3	\N	2	415	\N	0	1
845	ECO903	微观经济学（英）	3	\N	2	745	\N	0	3
844	ECO903	微观经济学（英）	3	\N	2	744	\N	0	3
2141	ECO903	微观经济学（英）	3	\N	10	1507	\N	0	2
2990	ECO903	微观经济学（英）	3	\N	7	1807	\N	0	3
402	ECO904	宏观经济学（英）	3	\N	14	368	\N	0	3
1714	ECO904	宏观经济学（英）	3	\N	2	1297	\N	0	2
1715	ECO904	宏观经济学（英）	3	\N	2	1298	\N	0	2
1716	ECO904	宏观经济学（英）	3	\N	2	1299	\N	0	2
1668	ECO905	国际经济学（英）	3	\N	2	1271	\N	0	2
86	ECO907	大数据与计量经济学	3	\N	4	84	\N	0	3
1719	ECO933	环境经济学（英）	3	\N	2	1302	\N	0	2
1798	ECO934	健康经济学（英）	3	\N	2	1299	\N	0	2
2410	ECO936	中国经济介绍（英）	3	\N	2	1297	\N	0	2
243	ECO940	高级微观经济学Ⅰ（英）	3	\N	2	234	\N	0	3
238	ECO941	高级宏观经济学Ⅰ（英）	3	\N	2	230	\N	0	3
3250	ECO942	高级计量经济学Ⅰ（英）	3	\N	2	745	\N	0	3
537	ECO949	经济学研究方法与论文写作	2	\N	2	489	\N	0	1
538	ECO949	经济学研究方法与论文写作	2	\N	2	230	\N	0	3
3132	ECO949	经济学研究方法与论文写作	2	\N	2	415	\N	0	3
3352	ENG103	综合英语Ⅲ	2	\N	9	1950	\N	0	3
3355	ENG103	综合英语Ⅲ	2	\N	9	1952	\N	0	3
1174	ENG103	综合英语Ⅲ	2	\N	9	333	\N	0	3
1175	ENG103	综合英语Ⅲ	2	\N	9	990	\N	0	3
1163	ENG103	综合英语Ⅲ	2	\N	9	980	\N	0	3
1165	ENG103	综合英语Ⅲ	2	\N	9	982	\N	0	3
1179	ENG103	综合英语Ⅲ	2	\N	9	994	\N	0	3
1176	ENG103	综合英语Ⅲ	2	\N	9	991	\N	0	1
1178	ENG103	综合英语Ⅲ	2	\N	9	993	\N	0	1
3358	ENG103	综合英语Ⅲ	2	\N	9	1954	\N	0	3
3356	ENG103	综合英语Ⅲ	2	\N	9	1953	\N	0	3
3353	ENG103	综合英语Ⅲ	2	\N	9	1951	\N	0	3
2454	ENG103	综合英语Ⅲ	2	\N	9	882	\N	0	2
447	ENG105	基础英语Ⅰ	4	\N	9	413	\N	0	3
1767	ENG106	基础英语Ⅱ	4	\N	9	413	\N	0	2
1043	ENG110	英语写作	3	\N	13	889	\N	0	3
1047	ENG110	英语写作	4	\N	9	238	\N	0	1
1044	ENG110	英语写作	3	\N	13	890	\N	0	3
1046	ENG110	英语写作	4	\N	9	892	4	4	1
3153	ENG110	英语写作	4	\N	9	604	\N	0	3
3155	ENG110	英语写作	4	\N	9	248	\N	0	3
1607	ENG111	高级英语写作	3	\N	13	889	\N	0	2
1608	ENG111	高级英语写作	3	\N	13	890	\N	0	2
2366	ENG112	英语演讲与辩论	3	\N	9	1590	\N	0	2
2367	ENG112	英语演讲与辩论	3	\N	9	248	\N	0	2
1049	ENG114	英语阅读	3	\N	9	894	\N	0	3
2369	ENG114	英语阅读	3	\N	9	165	\N	0	2
3161	ENG114	英语阅读	3	\N	9	1276	\N	0	3
2368	ENG114	英语阅读	3	\N	9	984	3.5	2	2
1048	ENG114	英语阅读	3	\N	9	893	4	2	1
1029	ENG115	英语精读Ⅰ	2	\N	10	883	\N	0	1
1028	ENG115	英语精读Ⅰ	2	\N	10	882	\N	0	3
1027	ENG115	英语精读Ⅰ	2	\N	10	881	\N	0	3
3159	ENG115	英语精读Ⅰ	2	\N	10	338	\N	0	3
2355	ENG116	英语精读Ⅱ	2	\N	10	882	\N	0	2
2356	ENG116	英语精读Ⅱ	2	\N	10	883	\N	0	2
2360	ENG117	英语实用写作	2	\N	10	1588	\N	0	2
2361	ENG117	英语实用写作	2	\N	10	1589	\N	0	2
623	ENG121	密集英语训练Ⅰ	2	\N	10	568	\N	0	1
2896	ENG121	密集英语训练Ⅰ	3	\N	10	1793	\N	0	3
1040	ENG122	英语听说	4	\N	9	887	4	2	1
3157	ENG122	英语听说	4	\N	9	1877	\N	0	3
1907	ENG123	密集英语训练II	2	\N	10	1401	\N	0	2
3147	ENG133	翻译理论与实践	3	\N	9	1873	\N	0	3
3171	ENG134	西方文明史	3	\N	9	760	\N	0	3
245	ENG205	高级英语Ⅰ	3	\N	9	236	\N	0	3
1606	ENG206	高级英语Ⅱ	3	\N	9	236	\N	0	2
257	ENG207	公共演讲（英）	2	\N	9	248	\N	0	1
1136	ENG209	中级英语Ⅰ	4	\N	9	900	\N	0	3
2441	ENG210	中级英语Ⅱ	4	\N	9	1629	\N	0	2
1036	ENG211	英语听力Ⅰ	2	\N	10	885	\N	0	1
1037	ENG211	英语听力Ⅰ	2	\N	9	882	\N	0	1
3156	ENG211	英语听力Ⅰ	2	\N	10	1876	\N	0	3
2364	ENG212	英语听力Ⅱ	2	\N	10	885	\N	0	2
1050	ENG214	英语综合技能与应用I	2	\N	14	879	\N	0	3
1051	ENG214	英语综合技能与应用I	2	\N	14	520	\N	0	3
3160	ENG214	英语综合技能与应用I	2	\N	14	1878	\N	0	3
1025	ENG215	英文精典导读	4	\N	13	53	\N	0	3
2370	ENG216	英语综合技能与应用II	2	\N	14	879	\N	0	2
2371	ENG216	英语综合技能与应用II	2	\N	14	338	4	1	2
1978	ENG302	商务英语	2	\N	9	292	5	2	2
1980	ENG302	商务英语	2	\N	9	886	3	1	2
1979	ENG302	商务英语	2	\N	9	232	4	2	2
668	ENG302	商务英语	2	\N	9	602	4.5	6	2
1022	ENG303	英美文学	2	\N	14	879	\N	0	3
2348	ENG304	英美文化	2	\N	14	879	\N	0	3
998	ENG305	学术英语	2	\N	9	25	4.5	2	2
2337	ENG305	学术英语	2	\N	9	522	3	1	2
158	ENG306	第二外语	3	\N	9	154	\N	0	1
156	ENG306	第二外语	3	\N	9	152	\N	0	3
157	ENG306	第二外语	3	\N	9	153	\N	0	3
159	ENG306	第二外语	3	\N	9	155	\N	0	3
3109	ENG306	第二外语	3	\N	9	759	\N	0	3
504	ENG307	交替传译	3	\N	9	460	\N	0	3
2152	ENG309	文体比较与翻译	3	\N	9	760	\N	0	2
851	ENG310	文学翻译	3	\N	9	726	\N	0	3
2442	ENG312	中西方文化比较	3	\N	19	263	\N	0	2
1058	ENG315	语言学导论	3	\N	9	900	\N	0	3
26	ENG318	财经专业学术英语	2	\N	9	25	\N	0	1
863	ENG324	西方文化概论	3	\N	9	760	\N	0	1
2161	ENG324	西方文化概论	3	\N	7	1515	\N	0	2
1869	ENG326	跨文化交际	3	\N	9	893	\N	0	2
2365	ENG327	英语文学导论	3	\N	9	894	\N	0	2
1936	ENG329	区域与国别研究	3	\N	9	1416	\N	0	2
572	ENG330	跨文化商务沟通	2	\N	9	522	\N	0	1
570	ENG330	跨文化商务沟通	2	\N	14	520	\N	0	3
1969	ENG331	商务翻译	2	\N	9	985	4.666666666666667	3	2
1970	ENG331	商务翻译	2	\N	9	987	4	2	2
1973	ENG331	商务翻译	2	\N	9	993	3	1	2
1972	ENG331	商务翻译	2	\N	9	992	4.333333333333333	3	2
1431	ENG333	财经英语时文阅读	2	\N	9	892	4	2	2
1426	ENG333	财经英语时文阅读	2	\N	9	980	3	1	2
1428	ENG333	财经英语时文阅读	2	\N	9	237	4.5	4	2
1430	ENG333	财经英语时文阅读	2	\N	9	989	4.5	2	2
1425	ENG333	财经英语时文阅读	2	\N	9	881	4.6	5	2
1427	ENG333	财经英语时文阅读	2	\N	9	983	4	6	2
1682	ENG335	国际商务谈判	2	\N	9	982	5	1	2
3169	FEG401	衍生金融工具	3	\N	1	469	\N	0	3
1807	FEG403	金融计量学	3	\N	1	1355	\N	0	2
509	FEG404	金融风险管理	3	\N	1	464	\N	0	3
505	FEG404	金融风险管理	3	\N	1	461	\N	0	3
507	FEG404	金融风险管理	3	\N	1	462	\N	0	2
1801	FEG404	金融风险管理	3	\N	1	1349	\N	0	2
3231	FEG404	金融风险管理	3	\N	1	591	\N	0	3
3230	FEG404	金融风险管理	3	\N	1	3	\N	0	3
516	FEG405	金融经济学	3	\N	1	471	\N	0	3
1823	FEG408	金融数据分析与编程	3	\N	1	1010	\N	0	2
1824	FEG408	金融数据分析与编程	3	\N	1	260	\N	0	2
3220	FEG408	金融数据分析与编程	3	\N	3	422	\N	0	3
3	FEG409	EXCEL金融建模与数据分析	2	\N	1	3	\N	0	1
1317	FEG410	中国资本市场异象：理论与SAS实践	3	\N	1	1084	\N	0	3
1316	FEG411	中国衍生品市场与风险管理	3	\N	1	1012	\N	0	1
1805	FEG514	金融工程理论与实务	3	\N	1	1353	\N	0	2
513	FEG515	金融计量学Ⅰ	3	\N	1	468	\N	0	3
1812	FEG515	金融计量学Ⅰ	3	\N	1	313	\N	0	2
514	FEG516	金融计量学Ⅱ	3	\N	1	469	\N	0	1
196	FEG517	概率论与数理统计	3	\N	3	192	\N	0	1
197	FEG517	概率论与数理统计	4	\N	1	193	\N	0	1
3229	FEG521	金融随机分析	3	\N	1	1353	\N	0	3
797	FEG523	算法交易与量化投资分析	3	\N	1	705	\N	0	3
1000	FEG801	衍生金融工具（双语）	3	\N	1	864	\N	0	3
428	FIN200	货币金融学	3	\N	1	398	\N	0	3
427	FIN200	货币金融学	3	\N	1	397	\N	0	1
435	FIN200	货币金融学	3	\N	1	310	\N	0	1
429	FIN200	货币金融学	3	\N	1	399	\N	0	3
420	FIN200	货币金融学	3	\N	1	390	\N	0	3
432	FIN200	货币金融学	3	\N	1	402	\N	0	2
431	FIN200	货币金融学	3	\N	1	401	\N	0	3
434	FIN200	货币金融学	3	\N	1	404	\N	0	3
421	FIN200	货币金融学	3	\N	1	391	\N	0	3
1756	FIN200	货币金融学	3	\N	1	1324	\N	0	2
1758	FIN200	货币金融学	3	\N	1	1326	\N	0	2
1752	FIN200	货币金融学	3	\N	1	1320	\N	0	2
1753	FIN200	货币金融学	3	\N	1	1321	\N	0	2
3200	FIN200	货币金融学	3	\N	1	1892	\N	0	3
425	FIN200	货币金融学	3	\N	1	395	\N	0	3
3201	FIN200	货币金融学	3	\N	1	406	\N	0	3
3198	FIN200	货币金融学	3	\N	1	1890	\N	0	3
3197	FIN200	货币金融学	3	\N	1	1889	\N	0	3
3199	FIN200	货币金融学	3	\N	1	1891	\N	0	3
679	FIN302	商业银行经营管理	3	\N	1	609	\N	0	3
677	FIN302	商业银行经营管理	3	\N	1	607	\N	0	2
676	FIN302	商业银行经营管理	3	\N	1	250	\N	0	3
1985	FIN302	商业银行经营管理	3	\N	1	1429	\N	0	2
2826	FIN302	商业银行经营管理	3	\N	1	610	\N	0	3
258	FIN303	公司金融	3	\N	8	249	\N	0	1
260	FIN303	公司金融	3	\N	1	251	\N	0	1
262	FIN303	公司金融	3	\N	1	253	\N	0	1
263	FIN303	公司金融	3	\N	1	254	\N	0	1
265	FIN303	公司金融	3	\N	1	256	\N	0	3
259	FIN303	公司金融	3	\N	1	250	\N	0	3
1626	FIN303	公司金融	3	\N	1	719	\N	0	2
2796	FIN303	公司金融	3	\N	8	1737	\N	0	3
2797	FIN303	公司金融	3	\N	1	260	\N	0	3
2798	FIN303	公司金融	3	\N	1	259	\N	0	3
2799	FIN303	公司金融	3	\N	1	1009	\N	0	3
815	FIN304	投资学	3	\N	1	721	\N	0	3
2112	FIN304	投资学	3	\N	1	1488	\N	0	2
2115	FIN304	投资学	3	\N	1	919	\N	0	2
2114	FIN304	投资学	3	\N	1	1490	\N	0	3
322	FIN305	国际金融学	3	\N	7	308	\N	0	1
324	FIN305	国际金融学	3	\N	1	310	\N	0	3
323	FIN305	国际金融学	3	\N	1	309	\N	0	2
1662	FIN305	国际金融学	3	\N	1	1267	\N	0	3
2842	FIN305	国际金融学	3	\N	7	1759	\N	0	3
2843	FIN305	国际金融学	3	\N	1	312	\N	0	3
1181	FIN512	最优化理论	3	\N	1	996	\N	0	3
1817	FIN514	金融科技	3	\N	1	421	\N	0	2
1818	FIN514	金融科技	3	\N	1	1362	\N	0	2
1819	FIN514	金融科技	3	\N	1	422	\N	0	2
3222	FIN514	金融科技	3	\N	10	1904	\N	0	3
3224	FIN514	金融科技	3	\N	10	1906	\N	0	3
3225	FIN514	金融科技	3	\N	10	1907	\N	0	3
3223	FIN514	金融科技	3	\N	10	1905	\N	0	3
2498	FIN517	公司财务案例	3	\N	1	1429	\N	0	2
1604	FIN519	高级投资学	3	\N	1	421	\N	0	2
438	FIN800	货币金融学（双语）	3	\N	1	406	\N	0	1
680	FIN802	商业银行经营管理（双语）	3	\N	1	610	\N	0	1
267	FIN803	公司金融（双语）	3	\N	1	258	\N	0	3
268	FIN803	公司金融（双语）	3	\N	1	259	\N	0	1
269	FIN803	公司金融（双语）	3	\N	1	254	\N	0	3
270	FIN803	公司金融（双语）	3	\N	1	260	\N	0	1
2117	FIN804	投资学（双语）	3	\N	1	1491	\N	0	2
2118	FIN804	投资学（双语）	3	\N	1	1492	\N	0	2
325	FIN805	国际金融学（双语）	3	\N	1	311	\N	0	3
3264	FIN812	公司并购原理（双语）	3	\N	1	253	\N	0	3
2039	FIN818	数理统计(双语）	3	\N	1	715	\N	0	2
485	FIN819	计量经济学（双语）	3	\N	1	442	\N	0	3
3227	FIN875	金融科技理论与实务	3	\N	1	421	\N	0	3
3226	FIN875	金融科技理论与实务	3	\N	1	1908	\N	0	3
440	FIN900	货币金融学（英）	3	\N	1	408	\N	0	3
1759	FIN900	货币金融学（英）	3	\N	10	175	\N	0	2
1760	FIN900	货币金融学（英）	3	\N	1	406	\N	0	2
271	FIN903	公司金融（英）	3	\N	2	261	\N	0	3
272	FIN903	公司金融（英）	3	\N	2	262	\N	0	1
1630	FIN903	公司金融（英）	3	\N	10	175	\N	0	2
1632	FIN903	公司金融（英）	3	\N	1	1246	\N	0	2
2801	FIN903	公司金融（英）	3	\N	2	1738	\N	0	3
2119	FIN904	投资学（英）	3	\N	2	1493	\N	0	2
2795	FIN912	公司并购原理（英）	3	\N	1	253	\N	0	3
3003	FIN917	投资组合管理（英）	3	\N	1	1010	\N	0	3
1449	FIN920	财务管理（英）	3	\N	2	1152	\N	0	2
1450	FIN920	财务管理（英）	3	\N	2	1153	\N	0	2
520	FIN931	金融经济学（英）	3	\N	2	475	\N	0	3
1791	FIN934	计算金融（英）	3	\N	2	1342	\N	0	2
3202	FIN935	货币银行学（英）	3	\N	2	1326	\N	0	3
512	FIN936	金融机构风险管理（英）	3	\N	2	467	\N	0	1
2338	FIN940	衍生工具定价（英）	3	\N	2	1583	\N	0	2
2900	FIN942	应用金融学	3	\N	2	1796	\N	0	3
2026	FIN944	数据分析与统计软件	2	\N	2	1447	\N	0	2
486	FIN945	计算机程序设计基础（英）	2	\N	2	443	\N	0	3
726	FIN946	数据库基础（英）	2	\N	2	443	\N	0	3
449	FIN947	机器学习（英）	2	\N	2	415	\N	0	3
487	FIT101	计算机和金融学导论	1	\N	1	444	\N	0	1
3182	FIT101	计算机和金融学导论	1	\N	1	1882	\N	0	3
1087	FIT102	智能合约平台搭建与实践	1	\N	1	921	\N	0	3
846	FIT201	微积分Ⅰ	6	\N	1	746	\N	0	1
2145	FIT202	微积分Ⅱ	5	\N	1	1511	\N	0	2
886	FIT203	线性代数与空间解析几何	4	\N	1	779	\N	0	3
2335	FIT305	学术论文写作	1	\N	1	1006	\N	0	2
1789	FIT403	计算机组成原理	3	\N	3	586	\N	0	2
644	FIT404	区块链与数字资产	3	\N	1	585	\N	0	1
2813	FIT404	区块链与数字资产	3	\N	1	1744	\N	0	3
731	FIT405	数据挖掘与大数据分析	3	\N	1	652	\N	0	3
1088	FIT502	智能金融和区块链金融综合实验II	2	\N	1	922	\N	0	1
2393	FIT503	智能金融和区块链金融综合实验III	2	\N	1	922	\N	0	2
1782	FIT507	计算机操作系统	3	\N	1	1341	\N	0	2
30	FMT200	财务管理	3	\N	11	29	\N	0	1
1439	FMT200	财务管理	3	\N	11	1143	\N	0	2
1441	FMT200	财务管理	3	\N	11	1145	\N	0	2
1444	FMT200	财务管理	3	\N	11	1148	\N	0	2
3190	FMT200	财务管理	3	\N	11	1140	\N	0	3
1987	FMT403	商业与财务分析	3	\N	11	29	\N	0	2
1988	FMT403	商业与财务分析	3	\N	11	1430	\N	0	2
1989	FMT403	商业与财务分析	3	\N	11	1431	\N	0	2
1517	FMT404	大数据与财务决策	3	\N	11	1182	\N	0	2
1634	FMT506	公司战略和风险管理	3	\N	1	7	\N	0	2
1445	FMT901	财务管理（FN1，英语）	4	\N	20	1149	\N	0	2
1448	FMT901	财务管理（FN1，英语）	4	\N	11	1151	\N	0	2
231	FMT902	高级财务管理（FN2，英语）	4	\N	11	224	\N	0	3
681	FMT906	商业政策	3	\N	13	53	\N	0	3
1762	FRA105	基础法语 I	2	\N	10	409	\N	0	2
1120	FRA108	中级法语Ⅰ	4	\N	9	409	\N	0	1
2739	FRA108	中级法语Ⅰ	4	\N	7	1278	\N	0	3
2437	FRA109	中级法语Ⅱ	4	\N	9	409	\N	0	2
164	FRA201	法国文化	3	\N	10	160	\N	0	1
41	FTA200	财政与税收	3	\N	8	40	\N	0	1
44	FTA200	财政与税收	3	\N	8	43	\N	0	3
3193	FTA200	财政与税收	3	\N	8	34	\N	0	3
3192	FTA200	财政与税收	3	\N	8	1886	\N	0	3
3281	GEC002	外语教学设计与实践	2	\N	9	994	\N	0	3
3324	GEC004	经济学、道德哲学与公共政策	2	\N	8	34	\N	0	3
3273	GEC006	因果推断与商业分析实践	2	\N	10	1811	\N	0	3
3269	GEC007	卫生系统与医疗改革	2	\N	17	1923	\N	0	3
3262	GEC008	健康认知与行为管理	2	\N	17	1919	\N	0	3
3274	GEC009	国家法学与政法理论	2	\N	5	161	\N	0	3
3258	GEC010	人生启航：认知升维的25个法律实战	3	\N	5	757	\N	0	3
3303	GEC012	智能平衡小车原理与应用	2	\N	3	149	\N	0	3
3287	GEC014	小说与人类学	2	\N	23	1929	\N	0	3
3299	GEC018	数智会计	1	\N	11	79	\N	0	3
3304	GEC019	智能财务管理	1	\N	11	1182	\N	0	3
3302	GEC020	智能决策的机器学习基础	1	\N	11	1933	\N	0	3
3347	PED101	篮球1	1	\N	28	1069	\N	0	3
2198	HRM100	心理学	3	\N	17	1538	\N	0	2
758	HRM101	数字化人力资源管理	3	\N	10	673	\N	0	1
3016	HRM101	数字化人力资源管理	3	\N	10	1710	\N	0	3
3015	HRM101	数字化人力资源管理	3	\N	10	1821	\N	0	3
576	HRM102	劳动经济学	3	\N	17	524	\N	0	3
1887	HRM102	劳动经济学	3	\N	17	1387	\N	0	2
2381	HRM104	员工招聘与配置	3	\N	10	785	\N	0	2
468	HRM105	绩效管理	3	\N	10	428	\N	0	1
3141	HRM105	绩效管理	3	\N	10	1870	\N	0	3
2754	HRM201	人力资源管理信息系统	3	\N	10	298	\N	0	3
3163	HRM302	薪酬管理	3	\N	10	785	\N	0	3
569	HRM304	跨文化人力资源管理	2	\N	10	519	\N	0	3
3208	HRM304	跨文化人力资源管理	2	\N	10	1898	\N	0	3
897	HRM402	薪酬管理与项目实践	3	\N	10	784	\N	0	1
898	HRM402	薪酬管理与项目实践	3	\N	10	785	\N	0	1
578	HRM902	劳动经济学（英）	3	\N	2	526	\N	0	3
591	HUM101	逻辑与批判性思维	2	\N	19	538	\N	0	2
592	HUM101	逻辑与批判性思维	2	\N	19	536	\N	0	1
593	HUM101	逻辑与批判性思维	2	\N	19	539	\N	0	1
3212	HUM101	逻辑与批判性思维	2	\N	19	1900	\N	0	3
273	HUM102	沟通与写作	2	\N	19	263	\N	0	2
278	HUM102	沟通与写作	2	\N	19	268	\N	0	3
276	HUM102	沟通与写作	2	\N	19	266	\N	0	3
279	HUM102	沟通与写作	2	\N	19	269	5	1	3
3086	HUM102	沟通与写作	2	\N	19	1845	\N	0	3
1092	HUM103	中国传统文化概论	2	\N	19	925	4	2	3
1094	HUM103	中国传统文化概论	2	\N	19	927	\N	0	1
1093	HUM103	中国传统文化概论	2	\N	19	926	\N	0	2
2398	HUM103	中国传统文化概论	2	\N	19	1608	3.5	2	3
2726	HUM103	中国传统文化概论	2	\N	19	1698	4	1	3
104	HUM104	大学生心理健康与人生发展	2	\N	15	102	\N	0	1
107	HUM104	大学生心理健康与人生发展	2	\N	15	105	\N	0	1
108	HUM104	大学生心理健康与人生发展	2	\N	15	106	\N	0	1
110	HUM104	大学生心理健康与人生发展	2	\N	15	108	\N	0	2
93	HUM104	大学生心理健康与人生发展	2	\N	15	91	\N	0	1
97	HUM104	大学生心理健康与人生发展	2	\N	15	95	\N	0	1
99	HUM104	大学生心理健康与人生发展	2	\N	15	97	\N	0	1
102	HUM104	大学生心理健康与人生发展	2	\N	15	100	\N	0	1
112	HUM104	大学生心理健康与人生发展	2	\N	15	110	\N	0	1
113	HUM104	大学生心理健康与人生发展	2	\N	15	111	\N	0	1
114	HUM104	大学生心理健康与人生发展	2	\N	15	112	\N	0	1
96	HUM104	大学生心理健康与人生发展	2	\N	15	94	\N	0	2
109	HUM104	大学生心理健康与人生发展	2	\N	15	107	\N	0	3
105	HUM104	大学生心理健康与人生发展	2	\N	15	103	\N	0	3
100	HUM104	大学生心理健康与人生发展	2	\N	15	98	\N	0	3
111	HUM104	大学生心理健康与人生发展	2	\N	15	109	4	1	3
106	HUM104	大学生心理健康与人生发展	2	\N	15	104	3	1	2
1523	HUM104	大学生心理健康与人生发展	2	\N	15	114	\N	0	2
94	HUM104	大学生心理健康与人生发展	2	\N	15	92	\N	0	2
1528	HUM104	大学生心理健康与人生发展	2	\N	15	1188	\N	0	2
1530	HUM104	大学生心理健康与人生发展	2	\N	15	1190	\N	0	2
1531	HUM104	大学生心理健康与人生发展	2	\N	15	1191	\N	0	2
1533	HUM104	大学生心理健康与人生发展	2	\N	15	1193	\N	0	2
1524	HUM104	大学生心理健康与人生发展	2	\N	15	1185	\N	0	3
1534	HUM104	大学生心理健康与人生发展	2	\N	15	1194	\N	0	2
1535	HUM104	大学生心理健康与人生发展	2	\N	15	1195	\N	0	2
1536	HUM104	大学生心理健康与人生发展	2	\N	15	1196	\N	0	2
1527	HUM104	大学生心理健康与人生发展	2	\N	15	1187	3	1	2
101	HUM104	大学生心理健康与人生发展	2	\N	15	99	3	2	3
2848	HUM104	大学生心理健康与人生发展	2	\N	15	1763	\N	0	3
2849	HUM104	大学生心理健康与人生发展	2	\N	15	1764	\N	0	3
2850	HUM104	大学生心理健康与人生发展	2	\N	15	1765	\N	0	3
2854	HUM104	大学生心理健康与人生发展	2	\N	15	1769	\N	0	3
2852	HUM104	大学生心理健康与人生发展	2	\N	15	1767	\N	0	3
95	HUM104	大学生心理健康与人生发展	2	\N	15	93	4	1	3
1525	HUM104	大学生心理健康与人生发展	2	\N	15	1186	3.3333333333333335	3	3
98	HUM104	大学生心理健康与人生发展	2	\N	15	96	3	2	2
689	HUM106	社会学思想与方法	2	\N	23	617	\N	0	3
691	HUM106	社会学思想与方法	2	\N	23	619	\N	0	3
1995	HUM106	社会学思想与方法	2	\N	23	1187	\N	0	2
1996	HUM106	社会学思想与方法	2	\N	23	1076	\N	0	2
692	HUM106	社会学思想与方法	2	\N	23	620	4.5	2	3
1997	HUM106	社会学思想与方法	2	\N	23	1436	\N	0	3
3101	HUM106	社会学思想与方法	2	\N	23	1764	\N	0	3
693	HUM106	社会学思想与方法	2	\N	23	621	4.5	2	1
1016	HUM108	艺术修养与审美体验	2	\N	19	641	\N	0	1
405	HUM113	环境生态学	3	\N	20	376	\N	0	1
3093	HUM113	环境生态学	3	\N	20	1847	\N	0	3
1019	HUM114	音乐与文明	3	\N	13	877	\N	0	3
1014	HUM116	艺术文化模块	3	\N	13	53	\N	0	3
2847	HUM117	大学物理	3	\N	3	149	\N	0	3
2168	HUM118	现代科技与人工智能	2	\N	3	1521	\N	0	2
709	HUM119	世界历史	3	\N	13	53	\N	0	3
1145	HUM126	自然科学模块	3	\N	13	53	\N	0	3
1013	HUM127	艺术导论	2	\N	19	874	\N	0	1
2346	HUM127	艺术导论	2	\N	19	1587	\N	0	3
1012	HUM127	艺术导论	2	\N	19	873	4.5	2	3
2824	HUM129	哲学导论	2	\N	19	517	\N	0	3
589	HUM130	逻辑导论	2	\N	19	536	\N	0	1
588	HUM130	逻辑导论	2	\N	19	535	\N	0	3
1926	HUM131	批判性思维	2	\N	19	693	\N	0	2
1928	HUM131	批判性思维	2	\N	19	1411	\N	0	2
1927	HUM131	批判性思维	2	\N	19	811	\N	0	3
1925	HUM131	批判性思维	2	\N	19	974	\N	0	3
2420	HUM132	中国哲学史	2	\N	19	925	4	3	2
3170	HUM133	西方哲学史	2	\N	19	517	\N	0	3
1696	HUM134	国学导论	2	\N	19	925	4.5	2	2
1697	HUM134	国学导论	2	\N	19	926	\N	0	2
2728	HUM137	中国文学经典选讲	2	\N	19	751	\N	0	3
1042	HUM138	英语文学与当代世界	2	\N	9	460	5	3	3
622	HUM139	美学导论	2	\N	19	567	4	1	3
2419	HUM140	中国艺术史	2	\N	19	565	4	1	3
2162	HUM141	西方艺术史	2	\N	19	1516	\N	0	3
1004	HUM142	艺术创作与表演	2	\N	19	867	\N	0	1
1005	HUM142	艺术创作与表演	2	\N	19	868	\N	0	1
1009	HUM142	艺术创作与表演	2	\N	19	871	\N	0	3
1006	HUM142	艺术创作与表演	2	\N	19	869	4.333333333333333	6	2
1008	HUM142	艺术创作与表演	2	\N	19	870	3.3333333333333335	3	3
866	HUM143	西方音乐史	2	\N	19	763	\N	0	3
864	HUM143	西方音乐史	2	\N	19	761	\N	0	3
865	HUM143	西方音乐史	2	\N	19	762	4.666666666666667	3	3
384	HUM145	国际组织与全球治理	2	\N	7	317	\N	0	3
2350	HUM146	英语国家与文化互鉴	2	\N	9	156	3	2	3
1026	HUM146	英语国家与文化互鉴	2	\N	9	878	3	3	3
776	HUM148	双碳战略与可持续发展	2	\N	17	688	\N	0	1
2818	HUM148	双碳战略与可持续发展	2	\N	17	1747	\N	0	3
1220	HUM149	德国文化与语言	2	\N	19	1023	\N	0	3
1552	HUM201	大学物理导论（英）	3	\N	14	1211	\N	0	2
893	HUM203	写作研讨（英）	3	\N	14	69	\N	0	1
894	HUM203	写作研讨（英）	3	\N	14	70	\N	0	1
895	HUM203	写作研讨（英）	3	\N	14	71	\N	0	2
896	HUM203	写作研讨（英）	3	\N	14	783	\N	0	2
2188	HUM203	写作研讨（英）	3	\N	14	1532	\N	0	2
2189	HUM203	写作研讨（英）	3	\N	14	174	\N	0	2
2190	HUM203	写作研讨（英）	3	\N	14	147	\N	0	2
2802	HUM203	写作研讨（英）	3	\N	14	1739	\N	0	3
688	HUM204	社会学课程	3	\N	14	616	\N	0	1
909	HUM205	心理学导论	3	\N	14	792	\N	0	1
764	HUM401	数字经济	2	\N	4	678	\N	0	1
2073	HUM401	数字经济	2	\N	4	1466	4	3	2
2075	HUM401	数字经济	2	\N	4	1467	\N	0	2
2076	HUM401	数字经济	2	\N	4	1468	\N	0	2
2074	HUM401	数字经济	2	\N	4	1119	4	1	2
3029	HUM401	数字经济	2	\N	4	1831	\N	0	3
3028	HUM401	数字经济	2	\N	4	961	\N	0	3
3031	HUM401	数字经济	2	\N	4	910	\N	0	3
3030	HUM401	数字经济	2	\N	4	1375	\N	0	3
366	IBS800	国际商务研究与管理（双语）	8	\N	7	282	\N	0	1
357	IBS800	国际商务研究与管理（双语）	8	\N	7	315	\N	0	1
358	IBS800	国际商务研究与管理（双语）	8	\N	7	339	\N	0	1
359	IBS800	国际商务研究与管理（双语）	8	\N	7	340	\N	0	1
361	IBS800	国际商务研究与管理（双语）	8	\N	7	342	\N	0	1
362	IBS800	国际商务研究与管理（双语）	8	\N	7	325	\N	0	1
363	IBS800	国际商务研究与管理（双语）	8	\N	7	281	\N	0	1
364	IBS800	国际商务研究与管理（双语）	8	\N	7	343	\N	0	1
367	IBS800	国际商务研究与管理（双语）	8	\N	7	345	\N	0	1
368	IBS800	国际商务研究与管理（双语）	8	\N	7	346	\N	0	1
369	IBS800	国际商务研究与管理（双语）	8	\N	7	347	\N	0	1
370	IBS800	国际商务研究与管理（双语）	8	\N	7	348	\N	0	1
371	IBS800	国际商务研究与管理（双语）	8	\N	7	349	\N	0	1
372	IBS800	国际商务研究与管理（双语）	8	\N	7	350	\N	0	1
373	IBS800	国际商务研究与管理（双语）	8	\N	7	351	\N	0	1
375	IBS800	国际商务研究与管理（双语）	8	\N	7	353	\N	0	1
376	IBS800	国际商务研究与管理（双语）	8	\N	7	354	\N	0	1
377	IBS800	国际商务研究与管理（双语）	8	\N	7	355	\N	0	1
378	IBS800	国际商务研究与管理（双语）	8	\N	7	356	\N	0	1
1686	IBS800	国际商务研究与管理（双语）	8	\N	7	1278	\N	0	2
2833	IBS800	国际商务研究与管理（双语）	8	\N	7	1754	\N	0	3
768	IBS809	数字经济与企业国际化	3	\N	7	680	\N	0	1
3032	IBS809	数字经济与企业国际化	3	\N	7	355	\N	0	3
1681	IBS810	国际商务大数据分析与应用	3	\N	7	351	\N	0	2
760	IBS811	数字化商业模式	3	\N	7	350	\N	0	3
352	IBS900	国际商务导论（英）	1	\N	7	334	\N	0	3
351	IBS902	国际商务（英）	3	\N	7	334	\N	0	1
1678	IBS902	国际商务（英）	3	\N	7	1275	\N	0	2
1679	IBS902	国际商务（英）	3	\N	7	346	\N	0	2
1680	IBS902	国际商务（英）	3	\N	7	347	\N	0	2
3209	IBS903	跨文化商务沟通（英）	3	\N	7	352	\N	0	3
2459	IBS904	组织行为学（英）	3	\N	7	1638	\N	0	2
3130	IBS904	组织行为学（英）	3	\N	7	1864	\N	0	3
383	IBS905	国际战略管理（英）	3	\N	7	282	\N	0	1
2834	IBS905	国际战略管理（英）	3	\N	7	343	\N	0	3
380	IBS906	国际营销管理（英）	3	\N	7	341	\N	0	3
382	IBS906	国际营销管理（英）	3	\N	7	347	\N	0	3
381	IBS906	国际营销管理（英）	3	\N	7	343	\N	0	3
1064	IBS910	战略管理	3	\N	10	904	\N	0	1
2386	IBS910	战略管理	3	\N	7	780	\N	0	2
2998	IBS910	战略管理	3	\N	10	1277	\N	0	3
2997	IBS910	战略管理	3	\N	10	1810	\N	0	3
2996	IBS910	战略管理	3	\N	10	1809	\N	0	3
2999	IBS910	战略管理	3	\N	10	1811	\N	0	3
356	IBS912	国际商务学术英语（阅读）	2	\N	7	338	\N	0	3
355	IBS914	国际商务学术英语（写作）	2	\N	7	337	\N	0	1
353	IBS915	国际商务学术英语（口语）	2	\N	7	335	\N	0	1
2832	IBS915	国际商务学术英语（口语）	2	\N	7	336	\N	0	3
244	IBS921	高级英语	3	\N	7	235	4.25	4	2
287	IBS922	管理学研究方法	3	\N	7	275	\N	0	1
3118	IBS922	管理学研究方法	3	\N	7	1858	\N	0	3
2422	IBS925	中级财务管理（英）	2	\N	7	64	\N	0	2
1232	IBS938	国际商务理论与在中国的应用	2	\N	7	1030	\N	0	1
3275	IBS938	国际商务理论与在中国的应用	2	\N	7	1925	\N	0	3
66	IBS941	初级管理学（英）	2	\N	7	65	\N	0	3
2439	IBS942	中级管理学（英）	2	\N	7	1627	\N	0	2
410	IDS207	会计学I（英）	3	\N	14	381	\N	0	1
2772	IDS207	会计学I（英）	3	\N	14	1722	\N	0	3
1738	IDS208	会计学II（英）	3	\N	14	1317	\N	0	2
1002	IDS213	演讲与问题解决	3	\N	14	866	\N	0	3
672	IDS225	商务应用程序编程（英）	3	\N	14	605	\N	0	1
3103	IDS226	程序设计基础（英）	3	\N	14	605	\N	0	3
1968	IDS250	商务电信网络（英）	3	\N	14	1256	\N	0	2
667	IDS263	商务分析基础（英）	3	\N	14	601	\N	0	3
178	IDS306	服务与运营管理（英）	3	\N	10	174	\N	0	3
2423	IDS312	中级财务管理（英）	3	\N	14	1619	\N	0	2
2120	IDS314	投资学（英）	3	\N	14	1494	\N	0	2
673	IDS317	商务专题课程（英）	3	\N	14	306	\N	0	3
451	IDS331	机器学习与商业应用（英）	3	\N	14	274	\N	0	3
452	IDS331	机器学习与商业应用（英）	3	\N	14	417	\N	0	3
1983	IDS350	商务应用程序开发（英）	3	\N	14	274	\N	0	2
662	IDS352	商法和社会问题（英）	3	\N	14	596	\N	0	3
320	IDS415	国际金融（英）	3	\N	14	306	\N	0	3
2341	IDS416	衍生证券及风险管理（英）	3	\N	14	1494	\N	0	2
523	IDS419	金融模型与评估（英）	3	\N	14	306	\N	0	3
876	IDS430	系统分析与实现（英）	3	\N	14	605	\N	0	3
1646	IDS431	管理信息系统项目管理（英）	3	\N	14	1256	\N	0	2
286	IDS433	管理信息系统选修（英）	3	\N	14	274	\N	0	3
2387	IDS441	战略管理（英）	3	\N	14	1601	\N	0	2
1974	IDS445	商务分析顶石 （英）	3	\N	14	1427	\N	0	2
2025	IDS447	数据分析和质量控制（英）	3	\N	14	1427	\N	0	2
675	IDS449	商业流程分析（英）	3	\N	14	606	\N	0	3
331	IET800	国际经贸研究与管理（双语）	8	\N	7	317	\N	0	1
332	IET800	国际经贸研究与管理（双语）	8	\N	7	314	\N	0	1
334	IET800	国际经贸研究与管理（双语）	8	\N	7	319	\N	0	1
340	IET800	国际经贸研究与管理（双语）	8	\N	7	324	\N	0	1
341	IET800	国际经贸研究与管理（双语）	8	\N	7	325	\N	0	1
343	IET800	国际经贸研究与管理（双语）	8	\N	7	326	\N	0	1
344	IET800	国际经贸研究与管理（双语）	8	\N	7	327	\N	0	1
345	IET800	国际经贸研究与管理（双语）	8	\N	7	328	\N	0	1
2841	IET800	国际经贸研究与管理（双语）	8	\N	7	1754	\N	0	3
1671	IET801	国际贸易实务（双语）	3	\N	7	1273	\N	0	2
1672	IET801	国际贸易实务（双语）	3	\N	7	354	\N	0	2
1660	IET805	国际服务贸易（双语）	3	\N	7	1265	\N	0	2
1675	IET806	国际商法（双语）	3	\N	7	323	\N	0	3
767	IET808	数字经济与贸易	3	\N	7	324	\N	0	1
3033	IET808	数字经济与贸易	3	\N	7	1832	\N	0	3
2400	IET809	中国对外贸易与数字化转型	3	\N	7	1609	\N	0	2
2401	IET809	中国对外贸易与数字化转型	3	\N	7	327	\N	0	2
1507	IET810	大数据分析与经济学实证研究方法（双语）	3	\N	7	319	\N	0	2
1508	IET810	大数据分析与经济学实证研究方法（双语）	3	\N	7	327	\N	0	2
1509	IET810	大数据分析与经济学实证研究方法（双语）	3	\N	7	328	\N	0	2
1510	IET810	大数据分析与经济学实证研究方法（双语）	3	\N	7	1179	\N	0	2
1937	IET811	全球治理与经济组织（双语）	3	\N	7	317	\N	0	2
1938	IET811	全球治理与经济组织（双语）	3	\N	7	323	\N	0	2
1939	IET811	全球治理与经济组织（双语）	3	\N	7	349	\N	0	2
285	IMS102	管理科学与工程导论	1	\N	18	158	\N	0	1
1793	IMS110	计算金融毕业论文	8	\N	12	1344	\N	0	2
912	IMS202	信息系统分析与设计	3	\N	18	795	\N	0	3
2462	IMS209	AIGC提示工程实战	3	\N	18	1640	\N	0	2
3215	IMS210	金融信息资源管理	3	\N	18	1539	\N	0	3
1831	IMS901	金融智能（英）	3	\N	18	1367	\N	0	2
1956	INS202	人寿与健康保险	3	\N	17	170	\N	0	2
1957	INS202	人寿与健康保险	3	\N	1	1421	\N	0	2
1423	INS203	财产与责任保险	3	\N	1	1136	\N	0	2
715	INS205	寿险精算	3	\N	1	639	\N	0	3
2777	INS206	保险学原理	3	\N	1	1696	\N	0	3
2778	INS206	保险学原理	3	\N	1	1725	\N	0	3
2779	INS206	保险学原理	3	\N	1	1726	\N	0	3
13	INS302	保险经营管理	3	\N	1	13	\N	0	1
1563	INS303	风险管理	3	\N	1	1217	\N	0	2
10	INS304	保险财务会计	3	\N	1	10	\N	0	3
1	INS306	个人风险管理与保险规划	3	\N	1	1	\N	0	3
172	INS307	非寿险精算	3	\N	1	168	\N	0	3
1561	INS307	非寿险精算	3	\N	1	1130	\N	0	2
3234	INS310	风险理论与精算模型	3	\N	1	172	\N	0	3
1413	INS312	Excel在经济管理中的应用	3	\N	3	449	\N	0	2
716	INS316	寿险精算I	3	\N	1	640	\N	0	3
176	INS320	风险理论与精算模型Ⅰ	3	\N	1	172	\N	0	1
14	INS321	保险科技	3	\N	1	14	\N	0	3
1414	INS323	R语言及其初步应用	2	\N	1	1130	\N	0	2
2021	INS326	寿险精算II	3	\N	1	640	\N	0	2
2782	INS328	保险投资	3	\N	1	1727	\N	0	3
1424	INS803	财产与责任保险（双语）	3	\N	1	9	\N	0	2
1562	INS807	非寿险精算（双语）	3	\N	1	168	\N	0	2
717	INS816	寿险精算Ⅰ（双语）	3	\N	1	14	\N	0	3
2022	INS826	寿险精算Ⅱ（双语）	3	\N	1	639	\N	0	2
1622	INV207	公共投资学	3	\N	8	1014	\N	0	2
1623	INV207	公共投资学	3	\N	8	1240	\N	0	2
2110	INV209	投资项目管理	3	\N	8	1487	\N	0	2
2179	INV308	项目可行性研究仿真	3	\N	8	718	\N	0	2
379	INV309	国际投资学	3	\N	8	357	\N	0	3
1100	IPT102	中国近现代史纲要	3	\N	22	933	\N	0	1
1108	IPT102	中国近现代史纲要	3	\N	22	941	\N	0	1
1102	IPT102	中国近现代史纲要	3	\N	22	935	\N	0	3
1105	IPT102	中国近现代史纲要	3	\N	22	938	\N	0	2
1104	IPT102	中国近现代史纲要	3	\N	22	937	\N	0	3
1103	IPT102	中国近现代史纲要	3	\N	22	936	\N	0	3
1099	IPT102	中国近现代史纲要	3	\N	22	932	3	1	3
1107	IPT102	中国近现代史纲要	3	\N	22	940	4.5	2	3
2404	IPT102	中国近现代史纲要	3	\N	22	1612	\N	0	2
2405	IPT102	中国近现代史纲要	3	\N	22	1613	\N	0	2
2408	IPT102	中国近现代史纲要	3	\N	22	561	\N	0	3
2731	IPT102	中国近现代史纲要	3	\N	22	1699	\N	0	3
2730	IPT102	中国近现代史纲要	3	\N	22	495	\N	0	3
1106	IPT102	中国近现代史纲要	3	\N	22	939	\N	0	3
1101	IPT102	中国近现代史纲要	3	\N	22	934	4	2	3
604	IPT103	马克思主义基本原理	3	\N	22	550	\N	0	3
599	IPT103	马克思主义基本原理	3	\N	22	545	\N	0	3
603	IPT103	马克思主义基本原理	3	\N	22	549	\N	0	3
1901	IPT103	马克思主义基本原理	3	\N	22	1396	\N	0	2
1898	IPT103	马克思主义基本原理	3	\N	22	1393	\N	0	2
1899	IPT103	马克思主义基本原理	3	\N	22	1394	\N	0	3
616	IPT104	毛泽东思想和中国特色社会主义理论体系概论	3	\N	22	562	\N	0	2
617	IPT104	毛泽东思想和中国特色社会主义理论体系概论	3	\N	22	563	\N	0	1
612	IPT104	毛泽东思想和中国特色社会主义理论体系概论	3	\N	22	558	\N	0	3
615	IPT104	毛泽东思想和中国特色社会主义理论体系概论	3	\N	22	561	\N	0	3
610	IPT104	毛泽东思想和中国特色社会主义理论体系概论	3	\N	22	556	\N	0	3
1903	IPT104	毛泽东思想和中国特色社会主义理论体系概论	3	\N	22	1398	\N	0	2
1904	IPT104	毛泽东思想和中国特色社会主义理论体系概论	3	\N	22	1399	\N	0	3
1905	IPT104	毛泽东思想和中国特色社会主义理论体系概论	3	\N	22	1400	\N	0	3
3084	IPT104	毛泽东思想和中国特色社会主义理论体系概论	3	\N	22	1844	\N	0	3
791	IPT107	思想道德与法治	3	\N	22	701	\N	0	3
786	IPT107	思想道德与法治	3	\N	22	696	\N	0	3
788	IPT107	思想道德与法治	3	\N	22	698	\N	0	2
789	IPT107	思想道德与法治	3	\N	22	699	4	1	3
794	IPT107	思想道德与法治	3	\N	22	703	5	1	3
790	IPT107	思想道德与法治	3	\N	22	700	\N	0	3
787	IPT107	思想道德与法治	3	\N	22	697	\N	0	3
2094	IPT107	思想道德与法治	3	\N	22	1477	\N	0	3
793	IPT107	思想道德与法治	3	\N	22	702	5	2	3
2096	IPT107	思想道德与法治	3	\N	22	1479	3	1	2
874	IPT109	习近平新时代中国特色社会主义思想概论	3	\N	22	771	\N	0	2
2163	IPT109	习近平新时代中国特色社会主义思想概论	3	\N	22	1517	\N	0	2
2164	IPT109	习近平新时代中国特色社会主义思想概论	3	\N	22	1518	\N	0	3
2747	IPT109	习近平新时代中国特色社会主义思想概论	3	\N	22	1708	\N	0	3
2746	IPT110	习近平文化思想导论	1	\N	22	1707	\N	0	3
3361	IPT201	形势与政策教育	0.5	\N	22	1955	\N	0	3
978	IPT203	形势与政策教育	0.5	\N	22	128	\N	0	1
956	IPT203	形势与政策教育	0.5	\N	22	495	\N	0	1
979	IPT203	形势与政策教育	0.5	\N	22	848	\N	0	1
957	IPT203	形势与政策教育	0.5	\N	22	837	\N	0	1
980	IPT203	形势与政策教育	0.5	\N	22	849	\N	0	1
959	IPT203	形势与政策教育	0.5	\N	22	93	\N	0	1
960	IPT203	形势与政策教育	0.5	\N	22	839	\N	0	1
981	IPT203	形势与政策教育	0.5	\N	22	850	\N	0	1
961	IPT203	形势与政策教育	0.5	\N	22	119	\N	0	1
982	IPT203	形势与政策教育	0.5	\N	22	851	\N	0	1
983	IPT203	形势与政策教育	0.5	\N	22	852	\N	0	1
962	IPT203	形势与政策教育	0.5	\N	22	840	\N	0	1
963	IPT203	形势与政策教育	0.5	\N	22	841	\N	0	1
964	IPT203	形势与政策教育	0.5	\N	22	810	\N	0	1
965	IPT203	形势与政策教育	0.5	\N	22	96	\N	0	1
966	IPT203	形势与政策教育	0.5	\N	22	811	\N	0	1
967	IPT203	形势与政策教育	0.5	\N	22	812	\N	0	1
968	IPT203	形势与政策教育	0.5	\N	22	842	\N	0	1
969	IPT203	形势与政策教育	0.5	\N	22	501	\N	0	1
970	IPT203	形势与政策教育	0.5	\N	22	843	\N	0	1
972	IPT203	形势与政策教育	0.5	\N	22	814	\N	0	1
973	IPT203	形势与政策教育	0.5	\N	22	815	\N	0	1
984	IPT203	形势与政策教育	0.5	\N	22	103	\N	0	1
974	IPT203	形势与政策教育	0.5	\N	22	845	\N	0	1
976	IPT203	形势与政策教育	0.5	\N	22	846	\N	0	1
985	IPT203	形势与政策教育	0.5	\N	22	853	\N	0	1
988	IPT203	形势与政策教育	0.5	\N	22	855	\N	0	1
989	IPT203	形势与政策教育	0.5	\N	22	833	\N	0	1
990	IPT203	形势与政策教育	0.5	\N	22	856	\N	0	1
991	IPT203	形势与政策教育	0.5	\N	22	857	\N	0	1
2266	IPT204	形势与政策教育	0.5	\N	22	1547	\N	0	2
2267	IPT204	形势与政策教育	0.5	\N	22	495	\N	0	2
2270	IPT204	形势与政策教育	0.5	\N	22	497	\N	0	2
2271	IPT204	形势与政策教育	0.5	\N	22	93	\N	0	2
2273	IPT204	形势与政策教育	0.5	\N	22	1518	\N	0	2
2274	IPT204	形势与政策教育	0.5	\N	22	1155	\N	0	2
2276	IPT204	形势与政策教育	0.5	\N	22	119	\N	0	2
2278	IPT204	形势与政策教育	0.5	\N	22	810	\N	0	2
2280	IPT204	形势与政策教育	0.5	\N	22	96	\N	0	2
2279	IPT204	形势与政策教育	0.5	\N	22	1561	\N	0	2
2281	IPT204	形势与政策教育	0.5	\N	22	811	\N	0	2
2282	IPT204	形势与政策教育	0.5	\N	22	812	\N	0	2
2283	IPT204	形势与政策教育	0.5	\N	22	1562	\N	0	2
2285	IPT204	形势与政策教育	0.5	\N	22	501	\N	0	2
2286	IPT204	形势与政策教育	0.5	\N	22	502	\N	0	2
2322	IPT204	形势与政策教育	0.5	\N	22	108	\N	0	2
2323	IPT204	形势与政策教育	0.5	\N	22	1576	\N	0	2
2289	IPT204	形势与政策教育	0.5	\N	22	815	\N	0	2
2290	IPT204	形势与政策教育	0.5	\N	22	1564	\N	0	2
2291	IPT204	形势与政策教育	0.5	\N	22	99	\N	0	2
2292	IPT204	形势与政策教育	0.5	\N	22	127	\N	0	2
2293	IPT204	形势与政策教育	0.5	\N	22	1207	\N	0	2
2294	IPT204	形势与政策教育	0.5	\N	22	1556	\N	0	2
2295	IPT204	形势与政策教育	0.5	\N	22	508	\N	0	2
2296	IPT204	形势与政策教育	0.5	\N	22	1565	\N	0	2
2297	IPT204	形势与政策教育	0.5	\N	22	131	\N	0	2
2298	IPT204	形势与政策教育	0.5	\N	22	1566	\N	0	2
2300	IPT204	形势与政策教育	0.5	\N	22	132	\N	0	2
2324	IPT204	形势与政策教育	0.5	\N	22	856	\N	0	2
2301	IPT204	形势与政策教育	0.5	\N	22	134	\N	0	2
2303	IPT204	形势与政策教育	0.5	\N	22	1568	\N	0	2
2305	IPT204	形势与政策教育	0.5	\N	22	138	\N	0	2
2307	IPT204	形势与政策教育	0.5	\N	22	104	\N	0	2
2308	IPT204	形势与政策教育	0.5	\N	22	1400	\N	0	2
2310	IPT204	形势与政策教育	0.5	\N	22	1570	\N	0	2
2311	IPT204	形势与政策教育	0.5	\N	22	1571	\N	0	2
2325	IPT204	形势与政策教育	0.5	\N	22	1577	\N	0	2
2313	IPT204	形势与政策教育	0.5	\N	22	1572	\N	0	2
2314	IPT204	形势与政策教育	0.5	\N	22	1558	\N	0	2
2316	IPT204	形势与政策教育	0.5	\N	22	854	\N	0	2
2317	IPT204	形势与政策教育	0.5	\N	22	1574	\N	0	2
2326	IPT204	形势与政策教育	0.5	\N	22	1578	\N	0	2
2319	IPT204	形势与政策教育	0.5	\N	22	512	\N	0	2
2320	IPT204	形势与政策教育	0.5	\N	22	513	\N	0	2
2321	IPT204	形势与政策教育	0.5	\N	22	1575	\N	0	2
919	IPT206	形势与政策I	0.5	\N	22	802	\N	0	1
920	IPT206	形势与政策I	0.5	\N	22	803	\N	0	1
930	IPT206	形势与政策I	0.5	\N	22	813	\N	0	1
931	IPT206	形势与政策I	0.5	\N	22	814	\N	0	1
921	IPT206	形势与政策I	0.5	\N	22	804	\N	0	1
932	IPT206	形势与政策I	0.5	\N	22	815	\N	0	1
922	IPT206	形势与政策I	0.5	\N	22	805	3	1	1
923	IPT206	形势与政策I	0.5	\N	22	806	\N	0	1
933	IPT206	形势与政策I	0.5	\N	22	504	\N	0	1
924	IPT206	形势与政策I	0.5	\N	22	807	\N	0	1
925	IPT206	形势与政策I	0.5	\N	22	808	\N	0	1
926	IPT206	形势与政策I	0.5	\N	22	809	4	1	1
927	IPT206	形势与政策I	0.5	\N	22	810	\N	0	3
928	IPT206	形势与政策I	0.5	\N	22	811	\N	0	1
934	IPT206	形势与政策I	0.5	\N	22	816	\N	0	1
935	IPT206	形势与政策I	0.5	\N	22	817	\N	0	1
944	IPT206	形势与政策I	0.5	\N	22	825	\N	0	1
938	IPT206	形势与政策I	0.5	\N	22	820	\N	0	1
936	IPT206	形势与政策I	0.5	\N	22	818	\N	0	1
940	IPT206	形势与政策I	0.5	\N	22	821	\N	0	1
941	IPT206	形势与政策I	0.5	\N	22	822	\N	0	1
942	IPT206	形势与政策I	0.5	\N	22	823	\N	0	1
943	IPT206	形势与政策I	0.5	\N	22	824	\N	0	1
945	IPT206	形势与政策I	0.5	\N	22	826	\N	0	1
946	IPT206	形势与政策I	0.5	\N	22	827	\N	0	1
947	IPT206	形势与政策I	0.5	\N	22	828	\N	0	1
948	IPT206	形势与政策I	0.5	\N	22	829	\N	0	1
949	IPT206	形势与政策I	0.5	\N	22	830	\N	0	1
950	IPT206	形势与政策I	0.5	\N	22	831	\N	0	1
951	IPT206	形势与政策I	0.5	\N	22	832	\N	0	1
937	IPT206	形势与政策I	0.5	\N	22	819	4	1	1
939	IPT206	形势与政策I	0.5	\N	22	129	3.6666666666666665	3	1
952	IPT206	形势与政策I	0.5	\N	22	833	\N	0	1
953	IPT206	形势与政策I	0.5	\N	22	834	\N	0	1
954	IPT206	形势与政策I	0.5	\N	22	835	\N	0	1
2904	IPT206	形势与政策I	0.5	\N	22	853	\N	0	3
2909	IPT206	形势与政策I	0.5	\N	22	115	\N	0	3
2910	IPT206	形势与政策I	0.5	\N	22	1189	\N	0	3
2905	IPT206	形势与政策I	0.5	\N	22	496	\N	0	3
2907	IPT206	形势与政策I	0.5	\N	22	513	\N	0	3
2906	IPT206	形势与政策I	0.5	\N	22	1556	\N	0	3
2940	IPT206	形势与政策I	0.5	\N	22	34	\N	0	3
2917	IPT206	形势与政策I	0.5	\N	22	1740	\N	0	3
2914	IPT206	形势与政策I	0.5	\N	22	128	\N	0	3
2920	IPT206	形势与政策I	0.5	\N	22	1562	\N	0	3
2923	IPT206	形势与政策I	0.5	\N	22	855	\N	0	3
2921	IPT206	形势与政策I	0.5	\N	22	501	\N	0	3
2931	IPT206	形势与政策I	0.5	\N	22	1186	\N	0	3
2922	IPT206	形势与政策I	0.5	\N	22	1568	\N	0	3
2918	IPT206	形势与政策I	0.5	\N	22	1773	\N	0	3
2928	IPT206	形势与政策I	0.5	\N	22	93	\N	0	3
2933	IPT206	形势与政策I	0.5	\N	22	109	\N	0	3
2935	IPT206	形势与政策I	0.5	\N	22	843	\N	0	3
2936	IPT206	形势与政策I	0.5	\N	22	1565	\N	0	3
2934	IPT206	形势与政策I	0.5	\N	22	122	\N	0	3
2937	IPT206	形势与政策I	0.5	\N	22	1574	\N	0	3
2919	IPT206	形势与政策I	0.5	\N	22	505	\N	0	3
2925	IPT206	形势与政策I	0.5	\N	22	1204	\N	0	3
2930	IPT206	形势与政策I	0.5	\N	22	1209	\N	0	3
2938	IPT206	形势与政策I	0.5	\N	22	105	\N	0	3
2913	IPT206	形势与政策I	0.5	\N	22	1554	5	1	3
2903	IPT206	形势与政策I	0.5	\N	22	1564	5	1	3
2932	IPT206	形势与政策I	0.5	\N	22	1559	5	1	3
2916	IPT206	形势与政策I	0.5	\N	22	1551	4	1	3
2927	IPT206	形势与政策I	0.5	\N	22	509	5	1	3
2207	IPT207	形势与政策II	0.5	\N	22	1545	\N	0	2
2208	IPT207	形势与政策II	0.5	\N	22	1546	\N	0	2
2209	IPT207	形势与政策II	0.5	\N	22	1547	\N	0	2
2210	IPT207	形势与政策II	0.5	\N	22	1548	\N	0	2
2211	IPT207	形势与政策II	0.5	\N	22	496	\N	0	2
2215	IPT207	形势与政策II	0.5	\N	22	117	\N	0	2
2220	IPT207	形势与政策II	0.5	\N	22	810	\N	0	2
2221	IPT207	形势与政策II	0.5	\N	22	96	\N	0	2
2223	IPT207	形势与政策II	0.5	\N	22	1550	\N	0	2
2227	IPT207	形势与政策II	0.5	\N	22	503	\N	0	2
2231	IPT207	形势与政策II	0.5	\N	22	505	\N	0	2
2232	IPT207	形势与政策II	0.5	\N	22	99	4.5	2	2
2235	IPT207	形势与政策II	0.5	\N	22	1552	\N	0	2
2236	IPT207	形势与政策II	0.5	\N	22	1553	\N	0	2
2237	IPT207	形势与政策II	0.5	\N	22	1379	\N	0	2
2238	IPT207	形势与政策II	0.5	\N	22	126	\N	0	2
2242	IPT207	形势与政策II	0.5	\N	22	1189	\N	0	2
2244	IPT207	形势与政策II	0.5	\N	22	129	\N	0	2
2241	IPT207	形势与政策II	0.5	\N	22	128	3	1	2
2233	IPT207	形势与政策II	0.5	\N	22	1204	4.5	2	2
2253	IPT207	形势与政策II	0.5	\N	22	853	4	1	2
2219	IPT207	形势与政策II	0.5	\N	22	1186	4	1	2
2224	IPT207	形势与政策II	0.5	\N	22	120	5	1	2
2234	IPT207	形势与政策II	0.5	\N	22	125	4	2	2
2239	IPT207	形势与政策II	0.5	\N	22	127	5	1	2
2230	IPT207	形势与政策II	0.5	\N	22	1551	4.5	2	2
2245	IPT207	形势与政策II	0.5	\N	22	1556	5	1	2
2250	IPT207	形势与政策II	0.5	\N	22	400	4.666666666666667	3	2
2251	IPT207	形势与政策II	0.5	\N	22	509	\N	0	2
2252	IPT207	形势与政策II	0.5	\N	22	137	\N	0	2
2258	IPT207	形势与政策II	0.5	\N	22	855	\N	0	2
2259	IPT207	形势与政策II	0.5	\N	22	1209	\N	0	2
2260	IPT207	形势与政策II	0.5	\N	22	109	\N	0	2
2261	IPT207	形势与政策II	0.5	\N	22	516	\N	0	2
2255	IPT207	形势与政策II	0.5	\N	22	1558	5	1	2
2254	IPT207	形势与政策II	0.5	\N	22	141	5	1	2
2246	IPT207	形势与政策II	0.5	\N	22	1557	4	1	2
2263	IPT207	形势与政策II	0.5	\N	22	148	5	1	2
2225	IPT207	形势与政策II	0.5	\N	22	843	4	1	2
2226	IPT207	形势与政策II	0.5	\N	22	34	3	1	2
2257	IPT207	形势与政策II	0.5	\N	22	144	4	1	2
2214	IPT207	形势与政策II	0.5	\N	22	838	4.333333333333333	3	2
2262	IPT207	形势与政策II	0.5	\N	22	147	3.5	2	2
2212	IPT207	形势与政策II	0.5	\N	22	115	3	1	2
2948	IPT208	形势与政策III	0.5	\N	22	810	\N	0	3
2957	IPT208	形势与政策III	0.5	\N	22	1566	\N	0	3
2946	IPT208	形势与政策III	0.5	\N	22	1560	\N	0	3
2950	IPT208	形势与政策III	0.5	\N	22	120	\N	0	3
2952	IPT208	形势与政策III	0.5	\N	22	838	\N	0	3
2960	IPT208	形势与政策III	0.5	\N	22	494	\N	0	3
2967	IPT208	形势与政策III	0.5	\N	22	495	\N	0	3
2966	IPT208	形势与政策III	0.5	\N	22	34	\N	0	3
2943	IPT208	形势与政策III	0.5	\N	22	1568	\N	0	3
2963	IPT208	形势与政策III	0.5	\N	22	91	\N	0	3
2964	IPT208	形势与政策III	0.5	\N	22	1799	\N	0	3
2944	IPT208	形势与政策III	0.5	\N	22	853	\N	0	3
2965	IPT208	形势与政策III	0.5	\N	22	136	\N	0	3
2972	IPT208	形势与政策III	0.5	\N	22	508	\N	0	3
2953	IPT208	形势与政策III	0.5	\N	22	843	\N	0	3
2961	IPT208	形势与政策III	0.5	\N	22	104	\N	0	3
2969	IPT208	形势与政策III	0.5	\N	22	856	\N	0	3
2970	IPT208	形势与政策III	0.5	\N	22	1553	\N	0	3
2971	IPT208	形势与政策III	0.5	\N	22	516	\N	0	3
2973	IPT208	形势与政策III	0.5	\N	22	497	\N	0	3
2956	IPT208	形势与政策III	0.5	\N	22	126	\N	0	3
2955	IPT208	形势与政策III	0.5	\N	22	815	\N	0	3
2947	IPT208	形势与政策III	0.5	\N	22	96	\N	0	3
2975	IPT208	形势与政策III	0.5	\N	22	1547	\N	0	3
2974	IPT208	形势与政策III	0.5	\N	22	1800	\N	0	3
2976	IPT208	形势与政策III	0.5	\N	22	1561	\N	0	3
2977	IPT208	形势与政策III	0.5	\N	22	1545	\N	0	3
3346	PED101	篮球1	1	\N	28	1101	\N	0	3
2979	IPT208	形势与政策III	0.5	\N	22	1548	\N	0	3
2980	IPT208	形势与政策III	0.5	\N	22	1518	\N	0	3
2981	IPT208	形势与政策III	0.5	\N	22	1801	\N	0	3
2982	IPT208	形势与政策III	0.5	\N	22	148	\N	0	3
2983	IPT208	形势与政策III	0.5	\N	22	140	\N	0	3
2197	JNL101	新闻学概论	3	\N	19	790	\N	0	2
904	JNL102	新闻采访	3	\N	19	788	\N	0	1
2776	JNL104	传播学概论	3	\N	19	1724	\N	0	3
3061	JNL108	新闻采访与写作	3	\N	19	267	\N	0	3
2418	JNL201	中国新闻事业史	3	\N	19	789	\N	0	2
906	JNL203	新闻评论	3	\N	19	790	\N	0	3
1906	JNL206	媒介经营与管理	3	\N	19	564	\N	0	2
899	JNL207	新媒体传播效果测评	3	\N	19	786	\N	0	1
3055	JNL207	新媒体传播效果测评	3	\N	19	269	\N	0	3
3102	JNL208	移动端拍摄与制作	3	\N	19	613	\N	0	3
1796	JNL312	纪录片创作	3	\N	19	1346	\N	0	2
822	JNL314	网络与新媒体概论	3	\N	19	728	\N	0	1
1959	JNL316	融媒体影像制作与传播	3	\N	19	791	\N	0	2
901	JNL319	新媒体文案创作与传播	3	\N	19	268	\N	0	1
3056	JNL320	新媒体广告	3	\N	19	268	\N	0	3
119	JOB100	大学生职业生涯规划与创业基础	2	\N	16	116	\N	0	1
120	JOB100	大学生职业生涯规划与创业基础	2	\N	16	117	\N	0	1
121	JOB100	大学生职业生涯规划与创业基础	2	\N	16	118	\N	0	1
123	JOB100	大学生职业生涯规划与创业基础	2	\N	16	97	\N	0	1
122	JOB100	大学生职业生涯规划与创业基础	2	\N	16	119	\N	0	3
118	JOB100	大学生职业生涯规划与创业基础	2	\N	16	115	\N	0	3
116	JOB100	大学生职业生涯规划与创业基础	2	\N	16	91	\N	0	3
127	JOB100	大学生职业生涯规划与创业基础	2	\N	16	123	\N	0	1
128	JOB100	大学生职业生涯规划与创业基础	2	\N	16	124	\N	0	1
144	JOB100	大学生职业生涯规划与创业基础	2	\N	16	140	4	2	2
133	JOB100	大学生职业生涯规划与创业基础	2	\N	16	129	3.5	2	3
131	JOB100	大学生职业生涯规划与创业基础	2	\N	16	127	5	1	1
117	JOB100	大学生职业生涯规划与创业基础	2	\N	16	114	5	1	1
142	JOB100	大学生职业生涯规划与创业基础	2	\N	16	138	\N	0	1
146	JOB100	大学生职业生涯规划与创业基础	2	\N	16	142	\N	0	1
147	JOB100	大学生职业生涯规划与创业基础	2	\N	16	143	\N	0	1
148	JOB100	大学生职业生涯规划与创业基础	2	\N	16	144	\N	0	1
137	JOB100	大学生职业生涯规划与创业基础	2	\N	16	133	3	1	2
135	JOB100	大学生职业生涯规划与创业基础	2	\N	16	131	\N	0	2
125	JOB100	大学生职业生涯规划与创业基础	2	\N	16	121	\N	0	3
140	JOB100	大学生职业生涯规划与创业基础	2	\N	16	136	\N	0	2
151	JOB100	大学生职业生涯规划与创业基础	2	\N	16	147	\N	0	2
152	JOB100	大学生职业生涯规划与创业基础	2	\N	16	148	\N	0	2
129	JOB100	大学生职业生涯规划与创业基础	2	\N	16	125	\N	0	3
150	JOB100	大学生职业生涯规划与创业基础	2	\N	16	146	\N	0	3
143	JOB100	大学生职业生涯规划与创业基础	2	\N	16	139	\N	0	3
138	JOB100	大学生职业生涯规划与创业基础	2	\N	16	134	\N	0	3
130	JOB100	大学生职业生涯规划与创业基础	2	\N	16	126	\N	0	3
132	JOB100	大学生职业生涯规划与创业基础	2	\N	16	128	\N	0	3
136	JOB100	大学生职业生涯规划与创业基础	2	\N	16	132	4	1	2
1538	JOB100	大学生职业生涯规划与创业基础	2	\N	2	1198	\N	0	2
1539	JOB100	大学生职业生涯规划与创业基础	2	\N	16	1199	\N	0	2
1542	JOB100	大学生职业生涯规划与创业基础	2	\N	16	1201	\N	0	2
1544	JOB100	大学生职业生涯规划与创业基础	2	\N	16	1203	\N	0	2
1549	JOB100	大学生职业生涯规划与创业基础	2	\N	16	1208	\N	0	2
1543	JOB100	大学生职业生涯规划与创业基础	2	\N	16	1202	\N	0	3
1550	JOB100	大学生职业生涯规划与创业基础	2	\N	16	1209	\N	0	3
1541	JOB100	大学生职业生涯规划与创业基础	2	\N	16	496	\N	0	3
1548	JOB100	大学生职业生涯规划与创业基础	2	\N	16	1207	4	1	2
1545	JOB100	大学生职业生涯规划与创业基础	2	\N	16	1204	4	1	3
1546	JOB100	大学生职业生涯规划与创业基础	2	\N	16	1205	3	1	2
2856	JOB100	大学生职业生涯规划与创业基础	2	\N	16	1771	\N	0	3
2858	JOB100	大学生职业生涯规划与创业基础	2	\N	16	1568	\N	0	3
2859	JOB100	大学生职业生涯规划与创业基础	2	\N	16	1773	\N	0	3
2860	JOB100	大学生职业生涯规划与创业基础	2	\N	16	1774	\N	0	3
2861	JOB100	大学生职业生涯规划与创业基础	2	\N	16	1775	\N	0	3
2864	JOB100	大学生职业生涯规划与创业基础	2	\N	16	1777	\N	0	3
2865	JOB100	大学生职业生涯规划与创业基础	2	\N	16	1778	\N	0	3
2866	JOB100	大学生职业生涯规划与创业基础	2	\N	16	1779	\N	0	3
124	JOB100	大学生职业生涯规划与创业基础	2	\N	16	120	4	2	3
145	JOB100	大学生职业生涯规划与创业基础	2	\N	16	141	4	2	2
2028	JTC002	数据结构与算法I	2.5	\N	1	1448	\N	0	2
3124	JTC019	系统软件原理与设计II-编译系统	2.5	\N	1	1861	\N	0	3
1784	JTC030	计算机科学与技术毕业实习	6	\N	3	67	\N	0	2
1942	JTC031	人工智能毕业实习	6	\N	3	67	\N	0	2
2395	JTC032	智能金融实验班毕业实习	6	\N	3	67	\N	0	2
1783	JTC033	计算机科学与技术毕业论文	8	\N	3	67	\N	0	2
1941	JTC034	人工智能毕业论文	8	\N	3	67	\N	0	2
2394	JTC035	智能金融实验班毕业论文	8	\N	3	67	\N	0	2
884	LAW102	宪法学	3	\N	5	778	\N	0	1
882	LAW102	宪法学	3	\N	5	776	\N	0	3
2894	LAW102	宪法学	3	\N	5	162	4	2	3
1911	LAW103	民法总论	3	\N	5	1403	\N	0	2
1912	LAW103	民法总论	3	\N	5	1404	\N	0	2
1913	LAW103	民法总论	3	\N	5	1405	\N	0	2
2202	LAW105	刑法总论	3	\N	5	1541	\N	0	2
2201	LAW105	刑法总论	3	\N	5	1017	4	1	2
915	LAW106	刑法分论	3	\N	5	798	\N	0	3
916	LAW106	刑法分论	3	\N	5	799	\N	0	3
2805	LAW106	刑法分论	3	\N	5	1742	\N	0	3
531	LAW107	经济法	3	\N	5	483	\N	0	1
532	LAW107	经济法	3	\N	5	484	\N	0	3
533	LAW107	经济法	3	\N	5	485	\N	0	3
1840	LAW107	经济法	3	\N	5	26	\N	0	2
1841	LAW107	经济法	3	\N	5	1370	\N	0	2
1844	LAW107	经济法	3	\N	5	1373	\N	0	2
1843	LAW107	经济法	3	\N	5	1372	\N	0	3
3133	LAW107	经济法	3	\N	5	1866	\N	0	3
859	LAW108	物权法	3	\N	5	758	\N	0	1
857	LAW108	物权法	3	\N	5	756	\N	0	3
856	LAW108	物权法	3	\N	5	755	\N	0	3
165	LAW110	法理学（含社会主义法治理念）	3	\N	5	161	\N	0	3
318	LAW113	国际环境法	2	\N	5	304	\N	0	3
1914	LAW201	民事诉讼法	3	\N	5	1406	\N	0	2
1916	LAW201	民事诉讼法	3	\N	5	1408	\N	0	2
2204	LAW202	刑事诉讼法	3	\N	5	1543	\N	0	2
2205	LAW202	刑事诉讼法	3	\N	5	1544	\N	0	2
1962	LAW203	商法	3	\N	5	358	\N	0	2
1963	LAW203	商法	3	\N	5	1424	\N	0	2
1964	LAW203	商法	3	\N	5	1425	\N	0	2
1965	LAW203	商法	3	\N	5	1426	\N	0	2
1966	LAW203	商法	3	\N	13	611	\N	0	2
1085	LAW204	知识产权法	3	\N	5	73	\N	0	3
994	LAW206	行政法与行政诉讼法	3	\N	5	860	\N	0	1
996	LAW206	行政法与行政诉讼法	3	\N	5	862	\N	0	3
995	LAW206	行政法与行政诉讼法	3	\N	5	861	\N	0	3
3167	LAW206	行政法与行政诉讼法	3	\N	5	1880	\N	0	3
167	LAW207	法律谈判与思维优化	2	\N	5	163	\N	0	3
168	LAW208	法律职业伦理	2	\N	5	164	\N	0	1
3087	LAW208	法律职业伦理	2	\N	5	800	\N	0	3
1240	LAW303	婚姻法与继承法	3	\N	5	1036	\N	0	2
387	LAW304	合同法	3	\N	5	360	\N	0	1
386	LAW304	合同法	3	\N	5	359	\N	0	3
2820	LAW304	合同法	3	\N	5	1749	\N	0	3
1932	LAW305	侵权责任法	3	\N	5	304	\N	0	2
1933	LAW305	侵权责任法	3	\N	5	1414	\N	0	2
1665	LAW310	国际经济法	3	\N	5	1268	\N	0	2
314	LAW311	国际法	3	\N	5	300	\N	0	1
315	LAW311	国际法	3	\N	5	301	\N	0	1
2839	LAW311	国际法	3	\N	5	1274	\N	0	3
2836	LAW311	国际法	3	\N	5	1756	\N	0	3
2837	LAW311	国际法	3	\N	5	1757	\N	0	3
2838	LAW311	国际法	3	\N	5	1758	\N	0	3
404	LAW316	环境法	3	\N	5	375	\N	0	3
541	LAW317	竞争法	2	\N	5	492	\N	0	3
542	LAW317	竞争法	2	\N	5	163	\N	0	3
2402	LAW320	中国法律史	2	\N	5	1610	\N	0	2
3189	LAW322	证据法	2	\N	5	1408	\N	0	3
682	LAW326	商业组织法	3	\N	13	611	\N	0	1
3089	LAW327	消费者权益保护法	2	\N	5	1830	\N	0	3
639	LAW330	企业投融资法律实务	2	\N	5	580	\N	0	1
2766	LAW330	企业投融资法律实务	2	\N	5	1717	\N	0	3
3085	LAW401	民事案例研究	2	\N	5	1749	\N	0	3
917	LAW402	刑事案例研究	2	\N	5	800	\N	0	3
1560	LAW409	法律统计学	3	\N	5	1216	\N	0	2
1056	LMT201	优化理论与应用	3	\N	12	222	\N	0	1
2377	LMT201	优化理论与应用	3	\N	10	1595	\N	0	2
2769	LMT201	优化理论与应用	3	\N	12	1720	\N	0	3
3210	LMT202	运作管理	3	\N	10	1899	\N	0	3
249	LMT203	供应链管理	3	\N	10	240	\N	0	3
45	LMT301	采购与供应管理	3	\N	10	44	\N	0	3
2156	LMT302	物流系统分析与设计	3	\N	10	1514	\N	0	2
728	LMT303	数据模型与决策	3	\N	10	650	\N	0	1
250	LMT307	供应链金融	3	\N	10	241	\N	0	3
2871	LMT401	大数据与统计学	3	\N	10	1781	\N	0	3
2874	LMT401	大数据与统计学	3	\N	10	277	\N	0	3
2873	LMT401	大数据与统计学	3	\N	10	707	\N	0	3
2872	LMT401	大数据与统计学	3	\N	10	709	\N	0	3
665	LMT504	商务大数据分析与决策	3	\N	10	599	\N	0	3
2378	LMT901	优化理论与应用（英）	3	\N	10	1596	\N	0	2
686	LSS201	社会保险	3	\N	17	614	\N	0	1
687	LSS201	社会保险	3	\N	1	615	\N	0	1
1991	LSS201	社会保险	3	\N	17	973	\N	0	2
3097	LSS201	社会保险	3	\N	17	1848	\N	0	3
1992	LSS202	社会保险基金管理	3	\N	17	1433	\N	0	2
1994	LSS204	社会救助与社会福利	3	\N	17	1435	\N	0	2
2343	LSS207	医疗保障与健康管理	3	\N	17	1585	\N	0	2
2342	LSS208	养老保障与退休规划	3	\N	17	1584	\N	0	2
581	LSS303	老龄金融理论与政策	3	\N	17	529	\N	0	1
3148	LSS303	老龄金融理论与政策	3	\N	17	1874	\N	0	3
3099	LSS308	社会保险精算与统计分析	3	\N	17	973	\N	0	3
696	LSS309	社会研究设计与写作	3	\N	17	624	\N	0	3
1993	LSS406	社会保障数字化场景实务实训	3	\N	17	1434	\N	0	2
2382	MAN931	运筹与信息管理（英）	3	\N	2	1598	\N	0	2
637	MAN941	企业家创业（英）	3	\N	2	578	\N	0	1
3120	MAN951	管理科学专题讲座	3	\N	2	443	\N	0	3
1003	MAT101	一元微积分	3	\N	12	208	\N	0	1
2724	MAT101	一元微积分	3	\N	12	1231	\N	0	3
2063	MAT103	数学与应用数学毕业实习	6	\N	12	1344	\N	0	2
1827	MAT104	金融数学毕业实习	6	\N	12	1344	\N	0	2
1833	MAT105	金数实验班毕业实习	6	\N	12	1344	\N	0	2
2062	MAT106	数学与应用数学毕业论文	8	\N	12	1344	\N	0	2
1832	MAT108	金数实验班毕业论文	8	\N	12	1344	\N	0	2
1834	MAT109	金数实验班辅修毕业论文	8	\N	12	1344	\N	0	2
885	MAT211	线性代数	3	\N	3	569	\N	0	1
2171	MAT211	线性代数	3	\N	12	197	\N	0	2
2178	MAT211	线性代数	3	\N	12	205	4.5	4	3
2177	MAT211	线性代数	3	\N	12	665	5	1	3
2175	MAT211	线性代数	3	\N	12	1523	\N	0	2
2174	MAT211	线性代数	3	\N	12	201	\N	0	3
2170	MAT211	线性代数	3	\N	12	1522	5	1	3
3128	MAT211	线性代数	3	\N	12	1862	\N	0	3
3126	MAT211	线性代数	3	\N	12	202	\N	0	3
3127	MAT211	线性代数	3	\N	12	1438	\N	0	3
2172	MAT211	线性代数	3	\N	12	198	4.333333333333333	6	3
2176	MAT211	线性代数	3	\N	12	204	4.2	5	2
2173	MAT211	线性代数	3	\N	12	200	4.333333333333333	3	2
214	MAT301	高等数学Ⅰ	5	\N	12	208	\N	0	3
222	MAT301	高等数学Ⅰ	5	\N	12	215	\N	0	1
224	MAT301	高等数学Ⅰ（重修）	5	\N	12	217	\N	0	2
225	MAT301	高等数学Ⅰ	5	\N	12	218	\N	0	3
220	MAT301	高等数学Ⅰ	5	\N	12	213	\N	0	3
221	MAT301	高等数学Ⅰ	5	\N	12	214	\N	0	3
3238	MAT301	高等数学Ⅰ	5	\N	12	1229	\N	0	3
3243	MAT301	高等数学Ⅰ	5	\N	12	1178	\N	0	3
3244	MAT301	高等数学Ⅰ	5	\N	12	1911	\N	0	3
3242	MAT301	高等数学Ⅰ	5	\N	12	1461	\N	0	3
1594	MAT302	高等数学Ⅱ	5	\N	12	1228	\N	0	2
1595	MAT302	高等数学Ⅱ	5	\N	12	1229	\N	0	2
1577	MAT302	高等数学Ⅱ	5	\N	12	208	\N	0	2
1580	MAT302	高等数学Ⅱ	5	\N	12	1224	\N	0	2
1581	MAT302	高等数学Ⅱ	5	\N	12	1225	\N	0	2
1585	MAT302	高等数学Ⅱ	5	\N	12	213	\N	0	2
1586	MAT302	高等数学Ⅱ	5	\N	12	1226	\N	0	2
1591	MAT302	高等数学Ⅱ	5	\N	12	218	\N	0	2
1598	MAT302	高等数学Ⅱ	5	\N	12	1230	\N	0	2
242	MAT310	高级数学模块	3	\N	13	53	\N	0	3
199	MAT313	高等代数Ⅰ	4	\N	1	175	\N	0	1
200	MAT313	高等代数Ⅰ	4	\N	12	195	\N	0	1
202	MAT313	高等代数Ⅰ	4	\N	12	197	\N	0	1
204	MAT313	高等代数Ⅰ	4	\N	12	199	\N	0	1
206	MAT313	高等代数Ⅰ	4	\N	12	201	\N	0	1
207	MAT313	高等代数Ⅰ	4	\N	12	202	\N	0	1
3235	MAT313	高等代数Ⅰ	4	\N	12	1220	\N	0	3
1569	MAT314	高等代数Ⅱ	4	\N	12	195	\N	0	2
1571	MAT314	高等代数Ⅱ	3	\N	12	199	\N	0	2
179	MAT324	概率论（理科）	4	\N	1	175	\N	0	1
180	MAT324	概率论（理科）	4	\N	12	176	\N	0	3
183	MAT324	概率论（理科）	4	\N	12	179	\N	0	1
184	MAT324	概率论（理科）	4	\N	12	180	\N	0	1
186	MAT324	概率论（理科）	4	\N	12	182	\N	0	1
193	MAT324	概率论（理科）	4	\N	6	189	\N	0	1
188	MAT324	概率论（理科）	4	\N	12	184	\N	0	3
1567	MAT324	概率论（理科）	4	\N	12	1218	\N	0	3
3071	MAT327	概率论与数理统计A	5	\N	12	183	\N	0	3
3073	MAT327	概率论与数理统计A	5	\N	12	186	\N	0	3
3074	MAT327	概率论与数理统计A	5	\N	12	180	\N	0	3
3078	MAT328	概率论与数理统计B	4	\N	30	1455	\N	0	3
3080	MAT328	概率论与数理统计B	4	\N	30	1170	\N	0	3
3081	MAT328	概率论与数理统计B	4	\N	30	1842	\N	0	3
737	MAT401	数学分析Ⅰ	6	\N	12	657	\N	0	1
738	MAT401	数学分析Ⅰ	6	\N	12	658	\N	0	3
739	MAT401	数学分析Ⅰ	6	\N	12	659	\N	0	1
3040	MAT401	数学分析Ⅰ	6	\N	12	662	\N	0	3
3038	MAT401	数学分析Ⅰ	6	\N	12	1835	\N	0	3
3039	MAT401	数学分析Ⅰ	6	\N	12	1226	\N	0	3
3041	MAT401	数学分析Ⅰ	6	\N	12	1731	\N	0	3
2054	MAT402	数学分析Ⅱ	6	\N	12	657	\N	0	2
2055	MAT402	数学分析Ⅱ	6	\N	12	658	\N	0	2
2056	MAT402	数学分析Ⅱ	6	\N	12	1460	\N	0	2
2057	MAT402	数学分析Ⅱ	6	\N	12	659	\N	0	2
3214	MAT444	金融优化	3	\N	12	222	\N	0	3
3248	MAT450	高级数理经济学	3	\N	12	183	\N	0	3
1770	MAT451	机器学习数学基础	3	\N	12	1330	\N	0	2
2099	MAT453	随机分析	3	\N	12	1228	\N	0	2
47	MAT501	常微分方程	3	\N	12	46	\N	0	3
2897	MAT501	常微分方程	3	\N	12	223	\N	0	3
2124	MAT502	拓扑学	3	\N	12	166	\N	0	3
212	MAT506	高等代数Ⅰ（理科）	4	\N	12	207	\N	0	3
211	MAT506	高等代数Ⅰ（理科）	4	\N	12	206	\N	0	3
1573	MAT507	高等代数Ⅱ（理科）	4	\N	12	206	\N	0	2
633	MAT510	偏微分方程	3	\N	12	574	\N	0	3
2539	MAT510	偏微分方程	3	\N	12	1222	\N	0	2
2788	MAT510	偏微分方程	3	\N	12	1731	\N	0	3
705	MAT512	实变函数论	3	\N	12	631	\N	0	1
2568	MAT512	实变函数论	3	\N	12	223	\N	0	2
2005	MAT512	实变函数论	3	\N	12	429	\N	0	3
2037	MAT513	数理统计	3	\N	12	180	\N	0	2
740	MAT514	数学分析Ⅰ（理科）	6	\N	1	175	\N	0	1
741	MAT514	数学分析Ⅰ（理科）	6	\N	12	660	\N	0	1
743	MAT514	数学分析Ⅰ（理科）	6	\N	12	47	\N	0	1
2050	MAT514	数学分析Ⅰ（理科）（重修）	6	\N	12	1459	\N	0	2
3042	MAT514	数学分析Ⅰ（理科）	6	\N	12	659	\N	0	3
3043	MAT514	数学分析Ⅰ（理科）	6	\N	12	663	\N	0	3
3044	MAT514	数学分析Ⅰ（理科）	6	\N	12	46	\N	0	3
2058	MAT515	数学分析Ⅱ（理科）	6	\N	12	660	\N	0	2
2059	MAT515	数学分析Ⅱ（理科）	6	\N	12	661	\N	0	2
2060	MAT515	数学分析Ⅱ（理科）	6	\N	12	47	\N	0	2
3362	MAT515	数学分析Ⅱ（理科）	6	\N	12	1956	\N	0	3
745	MAT516	数学分析Ⅲ（理科）	5	\N	12	662	\N	0	1
746	MAT516	数学分析Ⅲ（理科）	5	\N	12	663	\N	0	1
3046	MAT516	数学分析Ⅲ（理科）	5	\N	12	47	\N	0	3
3045	MAT516	数学分析Ⅲ（理科）	5	\N	12	660	\N	0	3
3047	MAT516	数学分析Ⅲ（理科）	5	\N	12	661	\N	0	3
2573	MAT517	数学建模与数学实验	3	\N	12	208	\N	0	2
2064	MAT518	数值分析	3	\N	12	1461	\N	0	2
3013	MAT518	数值分析	3	\N	12	176	\N	0	3
3292	MAT518	数值分析	0	\N	12	1862	\N	0	3
2102	MAT520	随机微分方程	3	\N	12	574	\N	0	2
2126	MAT521	微分方程数值解	3	\N	12	1495	\N	0	2
823	MAT523	微分几何	3	\N	12	729	\N	0	1
530	MAT524	近世代数	3	\N	12	195	\N	0	3
3125	MAT525	索伯列夫空间	3	\N	12	201	\N	0	3
2812	MAT526	区块链与密码学技术	3	\N	12	206	\N	0	3
470	MAT529	几何学	3	\N	12	429	\N	0	1
48	MAT900	常微分方程（英文）	3	\N	12	47	\N	0	3
734	MAT901	数学分析I（英文）	5	\N	12	655	\N	0	3
2049	MAT902	数学分析II（英文）	5	\N	12	655	\N	0	2
194	MAT921	概率论（英语）	3	\N	2	190	\N	0	1
195	MAT921	概率论（英语）	3	\N	2	191	\N	0	1
3066	MAT924	概率论与数理统计(英)	4	\N	2	191	\N	0	3
3067	MAT924	概率论与数理统计(英)	4	\N	2	190	\N	0	3
711	MKT101	市场营销学	3	\N	10	635	\N	0	2
713	MKT101	市场营销学	3	\N	13	637	\N	0	3
2008	MKT101	市场营销学	3	\N	10	1439	\N	0	2
2010	MKT101	市场营销学	3	\N	10	976	\N	0	2
2012	MKT101	市场营销学	3	\N	10	1441	\N	0	2
2013	MKT101	市场营销学	3	\N	10	634	4	3	2
2374	MKT102	营销策划	3	\N	10	1592	\N	0	2
2375	MKT102	营销策划	3	\N	10	1593	\N	0	2
1658	MKT201	广告及传媒管理	3	\N	10	1264	\N	0	2
2182	MKT305	消费者行为与心理洞察	3	\N	10	1526	\N	0	2
2183	MKT305	消费者行为与心理洞察	3	\N	10	1527	\N	0	2
2376	MKT306	营销调研与数据分析	3	\N	10	1594	\N	0	2
91	MKT307	大数据与智能营销	3	\N	10	89	\N	0	3
90	MKT307	大数据与智能营销	3	\N	10	88	\N	0	3
1520	MKT307	大数据与智能营销	3	\N	10	1184	\N	0	2
1803	MKT401	金融服务营销	3	\N	10	1351	\N	0	2
1804	MKT401	金融服务营销	3	\N	10	1352	\N	0	2
683	MKT404	奢侈品牌多媒体营销技巧（英）	3	\N	10	175	\N	0	1
2883	MKT404	奢侈品牌多媒体营销技巧（英）	3	\N	10	1784	\N	0	3
755	MKT406	数字化客户管理	3	\N	10	671	\N	0	3
2018	MKT901	市场营销学（英）	3	\N	2	1445	\N	0	2
890	MKT902	消费者行为学	3	\N	10	782	\N	0	3
1895	MKT903	绿色营销与社会责任（英）	3	\N	10	175	\N	0	2
2103	MKT904	谈判与冲突解决（英）	3	\N	10	1482	\N	0	2
761	MKT906	数字化商业营销（英）	3	\N	10	675	\N	0	3
2069	MKT907	数字化品牌管理（英）	3	\N	10	175	\N	0	2
3119	MSC100	管理实务	3	\N	18	1836	\N	0	3
2383	MSC202	运营管理	3	\N	18	1599	\N	0	2
887	MSC206	项目管理	3	\N	10	599	\N	0	1
888	MSC206	项目管理	3	\N	7	780	\N	0	3
3233	MSC206	项目管理	3	\N	18	1910	\N	0	3
1275	MSC207	数据分析（Python）	3	\N	8	1055	\N	0	1
313	MSC300	管理运筹学	3	\N	18	299	\N	0	1
3122	MSC300	管理运筹学	3	\N	18	1860	\N	0	3
3121	MSC300	管理运筹学	3	\N	18	1859	\N	0	3
3123	MSC300	管理运筹学	3	\N	18	521	\N	0	3
1642	MSC301	管理决策模型与方法	3	\N	18	1252	\N	0	2
3217	MSC903	金融数据分析与可视化	3	\N	18	1902	\N	0	3
3219	MSC903	金融数据分析与可视化	3	\N	18	643	\N	0	3
2767	MTA100	休闲与旅游管理概论	3	\N	10	1718	\N	0	3
1893	MTA101	旅游文化学	3	\N	10	1391	\N	0	2
762	MTA103	数字化休闲与旅游管理概论	3	\N	10	676	\N	0	1
2070	MTA103	数字化休闲与旅游管理概论	3	\N	10	532	\N	0	2
1799	MTA200	接待业服务与运作管理	3	\N	10	1347	\N	0	2
543	MTA204	酒店管理学	3	\N	10	493	\N	0	1
3213	MTA204	酒店管理学	3	\N	10	1901	\N	0	3
585	MTA207	旅游投融资管理	3	\N	10	532	\N	0	3
3063	MTA208	旅行社与在线旅行商管理	3	\N	10	1718	\N	0	3
1894	MTA301	旅游消费者行为	3	\N	10	1392	\N	0	2
3062	MTA302	旅游吸引物开发与设计	3	\N	10	1718	\N	0	3
1857	MTA304	酒店经营模拟	3	\N	10	1377	\N	0	2
1892	MTA307	旅游目的地管理与新媒体营销	3	\N	10	1390	\N	0	2
546	MTT101	军事理论	2	\N	21	496	\N	0	1
558	MTT101	军事理论	2	\N	21	508	\N	0	3
555	MTT101	军事理论	2	\N	21	505	\N	0	1
544	MTT101	军事理论	2	\N	21	494	\N	0	2
559	MTT101	军事理论	2	\N	21	509	\N	0	2
553	MTT101	军事理论	2	\N	21	503	\N	0	3
557	MTT101	军事理论	2	\N	21	507	\N	0	3
560	MTT101	军事理论	2	\N	21	510	\N	0	3
545	MTT101	军事理论	2	\N	21	495	\N	0	3
556	MTT101	军事理论	2	\N	21	506	\N	0	3
563	MTT101	军事理论	2	\N	21	513	\N	0	3
551	MTT101	军事理论	2	\N	21	501	\N	0	3
554	MTT101	军事理论	2	\N	21	504	4	1	1
564	MTT101	军事理论	2	\N	21	514	4	1	3
547	MTT101	军事理论	2	\N	21	497	4	2	2
562	MTT101	军事理论	2	\N	21	512	4	1	3
1864	MTT101	军事理论	2	\N	21	1380	\N	0	2
1865	MTT101	军事理论	2	\N	21	1381	\N	0	3
1863	MTT101	军事理论	2	\N	21	1379	\N	0	3
2803	MTT101	军事理论	2	\N	21	1740	\N	0	3
2804	MTT101	军事理论	2	\N	21	1741	\N	0	3
550	MTT101	军事理论	2	\N	21	500	\N	0	3
552	MTT101	军事理论	2	\N	21	502	4	2	2
2496	NET008	服装色彩搭配	3	\N	19	1316	\N	0	3
1223	NET023	发展与教育心理学	2	\N	17	1026	\N	0	1
2561	OPT043	社会性别与法	3	\N	5	1403	\N	0	2
1193	OPT058	本科学术论文研究与写作	2	\N	1	1006	\N	0	1
1197	OPT058	本科学术论文研究与写作	2	\N	1	442	\N	0	3
1198	OPT058	本科学术论文研究与写作	2	\N	1	1010	\N	0	1
1200	OPT058	本科学术论文研究与写作	2	\N	1	1012	\N	0	1
1199	OPT058	本科学术论文研究与写作	2	\N	1	1011	\N	0	3
1196	OPT058	本科学术论文研究与写作	2	\N	1	1009	\N	0	3
3305	OPT058	本科学术论文研究与写作	2	\N	1	1934	\N	0	3
3307	OPT058	本科学术论文研究与写作	2	\N	1	1935	\N	0	3
3306	OPT058	本科学术论文研究与写作	2	\N	1	1908	\N	0	3
1287	OPT101	网球	2	\N	28	1066	\N	0	2
1288	OPT101	网球	2	\N	28	1067	\N	0	2
3326	OPT101	网球	2	\N	28	1942	\N	0	3
1247	OPT105	近现代国际关系史：从文艺复兴到1945	2	\N	22	561	\N	0	3
2624	OPT116	中国近代知识分子人物述评	2	\N	18	855	\N	0	2
3265	OPT149	公益项目管理	2	\N	23	1920	\N	0	3
900	OPT173	新媒体创作与应用	3	\N	19	266	\N	0	3
1299	OPT173	新媒体创作与应用	3	\N	19	1074	\N	0	1
2597	OPT173	新媒体创作与应用	3	\N	19	1683	\N	0	3
1322	OPT180	综合汉语Ⅰ	3	\N	29	1034	\N	0	3
1323	OPT180	综合汉语Ⅰ	3	\N	29	1087	\N	0	3
1324	OPT181	综合汉语Ⅱ	3	\N	29	1088	\N	0	1
2634	OPT181	综合汉语Ⅱ	3	\N	29	1087	\N	0	2
2617	OPT197	中国概况	3	\N	29	1688	\N	0	2
2507	OPT199	汉语IV	3	\N	29	1088	\N	0	3
448	OPT228	机器学习	3	\N	10	414	\N	0	1
3064	OPT228	机器学习	3	\N	10	1839	\N	0	3
2607	OPT242	优化思维实训	2	\N	5	1079	\N	0	2
821	OPT244	网络经济学	3	\N	4	727	\N	0	1
1313	OPT247	中国金融学发展前沿	2	\N	1	1083	\N	0	2
2623	OPT255	中国画基础-白描	3	\N	19	1464	\N	0	3
2611	OPT256	职业足球中的经济学	3	\N	27	1687	\N	0	2
568	OPT261	跨境电子商务与供应链管理创新	3	\N	7	518	\N	0	1
3207	OPT261	跨境电子商务与供应链管理创新	3	\N	7	1897	\N	0	3
2825	OPT263	商业模式创新与创业	3	\N	7	1750	\N	0	3
19	OPT270	比较政治制度	3	\N	7	18	\N	0	3
49	OPT287	城市经济学与中国实践	3	\N	27	48	\N	0	3
1292	OPT291	五人制足球	2	\N	28	1069	\N	0	2
3255	OPT291	五人制足球	2	\N	28	1126	\N	0	3
2599	OPT302	刑事庭审技能训练	3	\N	5	800	\N	0	2
1257	OPT305	烹饪技能实训	2	\N	19	1044	\N	0	3
1238	OPT306	红十字救护员技能培训	1	\N	19	1035	\N	0	3
2630	OPT339	中华人民共和国史	3	\N	22	1694	\N	0	2
1263	OPT340	人文地理学导论	3	\N	23	1048	\N	0	1
3257	OPT340	人文地理学导论	2	\N	23	1916	\N	0	3
2501	OPT346	古琴文化与演奏	3	\N	19	868	\N	0	2
1264	OPT353	人文地理与城乡规划	3	\N	27	1049	\N	0	3
1298	OPT355	消费者决策的经济学分析	2	\N	27	1073	\N	0	2
3317	OPT355	消费者决策的经济学分析	2	\N	27	1938	\N	0	3
1227	OPT360	反洗钱理论与实务	2	\N	1	1028	\N	0	1
3270	OPT360	反洗钱理论与实务	2	\N	1	1924	\N	0	3
2513	OPT364	基础西班牙语Ⅱ	2	\N	9	759	\N	0	3
2527	OPT369	经济地理学	2	\N	27	1658	\N	0	2
3252	OPT374	“古币艺秀”版画艺术工作坊	3	\N	19	1913	\N	0	3
1254	OPT376	女性主义导论	3	\N	23	1041	\N	0	2
2601	OPT390	颜值经济学：理论与实践	2	\N	23	1684	\N	0	2
3314	OPT392	民族室内乐演奏	3	\N	19	868	\N	0	3
2625	OPT393	中国历史政治地理	3	\N	27	1049	\N	0	2
1242	OPT401	基础法语Ⅲ	4	\N	9	409	\N	0	1
1213	OPT410	初级西班牙语	2	\N	9	759	\N	0	1
2476	OPT410	初级西班牙语	2	\N	9	490	\N	0	3
2616	OPT411	中国传统文化	0.5	\N	19	1643	\N	0	3
2526	OPT413	金融危机简史	3	\N	1	1657	\N	0	2
1278	OPT422	素质拓展	2	\N	28	1058	\N	0	3
3323	OPT422	素质拓展	2	\N	28	1040	\N	0	3
3271	OPT423	古琴文化与演奏（中级）	3	\N	19	868	\N	0	3
1234	OPT426	果蔬种植技能实训课程	2	\N	19	1031	\N	0	2
2547	OPT432	清廉金融	2	\N	1	1664	\N	0	2
2461	OPT445	3dmax效果图制作	3	\N	10	1000	\N	0	3
1185	OPT448	photoshop图形处理	3	\N	10	1000	\N	0	3
2473	OPT450	成语与中国文化	0.5	\N	19	1643	\N	0	3
2520	OPT451	讲中国教育故事悟中华教育智慧	0.5	\N	19	1643	\N	0	3
2621	OPT452	中国国家安全概论	2	\N	22	1690	\N	0	2
1262	OPT455	人口健康与社会发展	3	\N	23	1047	\N	0	1
2627	OPT461	中国早期文明	0.5	\N	19	1643	\N	0	3
1297	OPT465	相声表演艺术	2	\N	19	1072	\N	0	3
2	OPT467	AdvancedMath	3	\N	2	2	\N	0	3
1301	OPT476	心理咨询导论	2	\N	23	1075	\N	0	3
3316	OPT478	法学原典导读	2	\N	5	777	\N	0	3
2569	OPT486	实时大数据分析实践	2	\N	3	74	\N	0	2
2465	OPT489	《红楼梦》的空间艺术	0.5	\N	19	1643	\N	0	3
2468	OPT490	不朽的艺术：走进大师与经典	0.5	\N	19	1643	\N	0	3
2603	OPT491	艺术的启示	0.5	\N	19	1643	\N	0	3
2619	OPT492	中国古代建筑艺术	0.5	\N	19	1643	\N	0	3
2471	OPT493	茶文化赏析	0.5	\N	19	1643	\N	0	3
2482	OPT494	大美川剧	0.5	\N	19	1643	\N	0	3
2535	OPT496	明园境赏析：明代四大胜园	0.5	\N	19	1643	\N	0	3
2563	OPT497	设计的力量	0.5	\N	19	1643	\N	0	3
2604	OPT498	意在象中—中国古典诗词鉴赏	0.5	\N	19	1643	\N	0	3
2492	OPT499	俄罗斯历史（一）	0.5	\N	19	1643	\N	0	3
2504	OPT500	国际劳工法	0.5	\N	19	1643	\N	0	3
2505	OPT501	国际旅游发展动态	0.5	\N	19	1643	\N	0	3
2541	OPT502	气候变化科学与谈判	0.5	\N	19	1643	\N	0	3
2550	OPT503	全球化与世界空间	0.5	\N	19	1643	\N	0	3
2540	OPT504	葡萄牙语语言文化赏析	0.5	\N	19	1643	\N	0	3
2551	OPT505	全球卫生导论	0.5	\N	19	1643	\N	0	3
2556	OPT506	日语与日本文化进阶	0.5	\N	19	1643	\N	0	3
2571	OPT507	世界农业概论	0.5	\N	19	1643	\N	0	3
2614	OPT508	中东文明与国别史	0.5	\N	19	1643	\N	0	3
2479	OPT509	大国钢铁	0.5	\N	19	1643	\N	0	3
2517	OPT511	极地探秘	0.5	\N	19	1643	\N	0	3
2543	OPT512	气象与飞行	0.5	\N	19	1643	\N	0	3
2544	OPT513	汽车行走的艺术	0.5	\N	19	1643	\N	0	3
2567	OPT514	生物材料伴我行	0.5	\N	19	1643	\N	0	3
2579	OPT515	太空生存	0.5	\N	19	1643	\N	0	3
2588	OPT516	物理与人类生活	0.5	\N	19	1643	\N	0	3
2613	OPT518	智能医学发展前沿	0.5	\N	19	1643	\N	0	3
3334	OPT520	金融数据分析	1	\N	30	1948	\N	0	3
3298	OPT523	数据采集技术	1	\N	30	1816	\N	0	3
2548	OPT525	区块链技术导论	1	\N	3	1665	\N	0	3
2483	OPT526	大数据技术	1	\N	3	74	\N	0	3
2572	OPT527	数据挖掘与可视化	1	\N	3	217	\N	0	3
2552	OPT528	人工智能导论	1	\N	3	21	\N	0	2
3256	OPT528	人工智能导论	1	\N	3	593	\N	0	3
3310	OPT530	机器学习与财税数据挖掘	1	\N	8	1055	\N	0	3
3322	OPT531	税法知识图谱	1	\N	8	692	\N	0	3
2532	OPT535	漫谈草坪	2	\N	19	175	\N	0	2
2510	OPT537	环境工程原理	2	\N	19	175	\N	0	2
3336	OPT538	金融科技与信息安全区块链以太坊(ETA)与加密货币技术	2	\N	14	1529	\N	0	3
2530	OPT550	科学研究与论文写作指导	1	\N	3	1521	\N	0	2
2529	OPT550	科学研究与论文写作指导	3	\N	18	157	\N	0	3
1273	OPT551	书法	3	\N	19	871	\N	0	3
1285	OPT552	网络信息检索方法	2	\N	3	1064	\N	0	3
1286	OPT552	网络信息检索方法	2	\N	19	1065	\N	0	1
2581	OPT552	网络信息检索方法	2	\N	19	1676	\N	0	2
3263	OPT558	公关礼仪与面试技巧	2	\N	19	812	\N	0	3
3330	OPT562	英国社会与文化	2	\N	23	1946	\N	0	3
1224	OPT564	法律电影解析	2	\N	5	777	\N	0	1
1318	OPT565	中日关系	2	\N	5	492	\N	0	3
2584	OPT574	文化旅游概论	2	\N	23	1678	\N	0	2
878	OPT580	戏剧与电影艺术(英)	2	\N	14	774	\N	0	1
2593	OPT580	戏剧与电影艺术(英)	2	\N	14	69	\N	0	2
1261	OPT586	趣味乒乓球	2	\N	28	1046	\N	0	2
1308	OPT587	羽毛球技战术与文化欣赏	2	\N	28	1080	\N	0	3
1218	OPT588	大众排球	2	\N	28	1021	\N	0	3
1219	OPT588	大众排球	2	\N	28	1022	\N	0	2
1251	OPT590	篮球运动	2	\N	28	1040	\N	0	2
3284	OPT594	女子防身术	2	\N	28	1105	\N	0	3
1267	OPT595	社会心理学	2	\N	23	619	\N	0	1
1268	OPT595	社会心理学	2	\N	23	1052	\N	0	3
1320	OPT601	资产配置与风险管理	1	\N	1	401	\N	0	3
1191	OPT602	保险与税务规划	1	\N	1	1005	\N	0	1
2466	OPT602	保险与税务规划	1	\N	1	691	\N	0	2
3261	OPT602	保险与税务规划	1	\N	1	1918	\N	0	3
1206	OPT612	初级德语I	2	\N	5	1017	\N	0	1
1207	OPT612	初级德语I	2	\N	9	155	\N	0	3
2474	OPT613	初级德语II	2	\N	9	155	\N	0	3
1210	OPT614	初级日语1	2	\N	9	153	\N	0	3
1211	OPT614	初级日语1	2	\N	27	1018	\N	0	3
1209	OPT614	初级日语1	2	\N	9	90	\N	0	3
1208	OPT620	初级法语I	2	\N	9	409	\N	0	2
1250	OPT625	客户服务与管理	1	\N	1	671	\N	0	3
3290	OPT629	性别教育与恋爱观	2	\N	23	1932	\N	0	3
2086	OPT632	数字政府与智慧治理	3	\N	17	1473	\N	0	2
2495	OPT635	犯罪学	3	\N	23	1027	\N	0	2
2560	OPT636	社会调查研究方法	2	\N	27	1669	\N	0	2
2546	OPT641	亲密关系心理学	2	\N	17	1663	\N	0	2
1300	OPT642	心理复原力提升工作坊	2	\N	19	108	\N	0	2
2600	OPT646	学术写作	2	\N	1	258	\N	0	2
2488	OPT652	大学生求职技能训练	2	\N	19	91	\N	0	2
1290	OPT654	文化大革命简史	2	\N	22	935	\N	0	3
1302	OPT655	养生八段锦	2	\N	28	1042	\N	0	2
1281	OPT656	台球	2	\N	28	1060	\N	0	3
2578	OPT656	台球	2	\N	28	1123	\N	0	2
1214	OPT673	大国人口	2	\N	23	1019	\N	0	1
2480	OPT673	大国人口	2	\N	23	1644	\N	0	2
3282	OPT673	大国人口	2	\N	23	1927	\N	0	3
75	OPT682	大数据法学概论	2	\N	5	73	\N	0	1
2879	OPT682	大数据法学概论	3	\N	5	1424	\N	0	3
1294	OPT685	习近平法治思想指导下的创新创业与法律	2	\N	5	1070	\N	0	1
3254	OPT685	习近平法治思想指导下的创新创业与法律	2	\N	5	1915	\N	0	3
3320	OPT687	社会网络与行为	2	\N	23	1941	\N	0	3
3335	OPT688	金融数据量化分析	2	\N	14	1949	\N	0	3
1236	OPT695	汉语Ⅴ	3	\N	29	1033	\N	0	3
1237	OPT696	汉语Ⅵ	3	\N	29	1034	\N	0	3
2351	OPT700	英语基础强化训练	2	\N	14	69	\N	0	2
2352	OPT700	英语基础强化训练	2	\N	14	70	\N	0	2
2353	OPT700	英语基础强化训练	2	\N	14	1552	\N	0	2
3259	OPT705	企业数据模型搭建与分析	2	\N	14	1917	\N	0	3
3318	OPT706	深度强化学习与图神经网络	2	\N	14	1939	\N	0	3
7	OPT707	STATA运用与科研训练	2	\N	1	7	\N	0	3
2723	OPT707	STATA运用与科研训练	2	\N	1	1696	\N	0	3
1277	OPT716	思维训练与口头表达	2	\N	19	1057	\N	0	1
2576	OPT716	思维训练与口头表达	2	\N	19	1675	\N	0	2
3289	OPT716	思维训练与口头表达	2	\N	19	1931	\N	0	3
2587	OPT718	舞蹈编创与表演	2	\N	19	870	\N	0	3
3311	OPT720	校史剧创排实训	3	\N	19	1936	\N	0	3
2564	OPT721	声乐技巧与合唱	3	\N	19	1671	\N	0	2
3278	OPT721	声乐技巧与合唱	3	\N	19	1587	\N	0	3
1289	OPT763	威士忌经济学	2	\N	17	279	\N	0	3
1311	OPT770	智慧园艺	2	\N	19	175	\N	0	2
1233	OPT771	国学经典《老子》导读	2	\N	19	263	\N	0	1
2620	OPT772	中国古典舞身韵与形体训练	3	\N	19	869	\N	0	3
2536	OPT774	农村社会学	2	\N	23	1659	\N	0	2
2565	OPT776	声乐技巧与合唱Ⅰ	3	\N	19	1671	\N	0	2
3279	OPT776	声乐技巧与合唱Ⅰ	3	\N	19	876	\N	0	3
2534	OPT779	民族室内乐演奏Ⅱ	3	\N	19	868	\N	0	2
2595	OPT781	现代心理学	3	\N	19	1538	\N	0	2
2463	OPT792	R语言与论文写作	3	\N	17	1641	\N	0	2
2522	OPT795	金融大语言模型	3	\N	1	1654	\N	0	2
1241	OPT796	婚姻家庭社会学	2	\N	23	1037	\N	0	2
3285	OPT796	婚姻家庭社会学	2	\N	23	1928	\N	0	3
2626	OPT802	中国粮食经济	2	\N	27	1692	\N	0	2
2583	OPT803	微信小程序开发实践	2	\N	3	74	\N	0	2
1222	OPT809	儿童、家庭与社区服务：实务与研究工作坊	2	\N	23	1025	\N	0	1
1226	OPT810	法律社会学实证研究	3	\N	23	1027	\N	0	1
2533	OPT812	民国先生	2	\N	18	855	\N	0	3
3288	OPT820	幸福心理学：运动与心流	2	\N	28	1930	\N	0	3
1309	OPT822	增肌减脂和康复	2	\N	4	917	\N	0	1
2610	OPT845	正念生活与身心锻炼实践	2	\N	19	104	\N	0	2
3313	OPT845	正念生活与身心锻炼实践	2	\N	19	1937	\N	0	3
1274	OPT846	书法鉴赏与技法基础	3	\N	19	1051	\N	0	3
1266	OPT847	山水画鉴赏与技法基础	3	\N	19	1051	\N	0	3
1253	OPT849	民族室内乐演奏Ⅰ	2	\N	19	868	\N	0	1
1230	OPT853	古琴文化与演奏Ⅰ	3	\N	19	868	\N	0	1
1293	OPT854	西方室内乐演奏Ⅰ	3	\N	19	762	\N	0	3
3267	OPT862	劳动法案例	2	\N	5	1922	\N	0	3
1276	OPT863	数字法律实务	1	\N	5	1056	\N	0	1
2559	OPT864	涉外法治理论与实践	2	\N	5	1668	\N	0	2
1221	OPT867	电影中的社会学	2	\N	23	1024	\N	0	2
1304	OPT868	医学社会学	2	\N	23	1076	\N	0	3
1265	OPT872	日本社会与文化	2	\N	23	1050	\N	0	3
1321	OPT874	自我保护与防身—社会理论与实践	2	\N	23	1086	\N	0	3
1184	OPT880	IPO与企业估值	3	\N	25	999	\N	0	3
1279	OPT881	孙子兵法与领导艺术	2	\N	25	999	\N	0	3
2586	OPT886	文艺复兴时期的艺术与科学	2	\N	14	69	\N	0	2
1768	OPT898	机器学习	3	\N	3	1328	\N	0	2
2514	OPT898	机器学习	2	\N	3	995	\N	0	2
1228	OPT902	非遗传承与中国漆艺	2	\N	19	448	\N	0	2
1272	OPT906	生理与健康	3	\N	19	1029	\N	0	1
1192	OPT910	本草养生与艺术—认识身边的中药	2	\N	19	175	\N	0	2
2555	OPT911	人兽共患病学	1	\N	19	1667	\N	0	2
1296	OPT914	现代商务幻灯片制作	3	\N	19	1071	\N	0	1
2594	OPT914	现代商务幻灯片制作	3	\N	11	1681	\N	0	2
1188	OPT939	伴侣动物学	2	\N	19	1002	\N	0	1
1231	OPT942	国画鉴赏与花鸟画技法	3	\N	19	1029	\N	0	1
1282	OPT943	体育与娱乐管理	2	\N	28	1061	\N	0	1
1325	OPT955	鲲鹏生态技术与应用开发	1	\N	3	1089	\N	0	1
2574	OPT956	数学学术论文研究与写作	2	\N	12	1673	\N	0	2
3297	OPT956	数学学术论文研究与写作	2	\N	12	1438	\N	0	3
2570	OPT959	实验方法在经济研究中的应用	2	\N	27	1672	\N	0	3
2582	OPT963	网络与数字法学	2	\N	5	1677	\N	0	2
2598	OPT964	刑事司法实证研究工作坊	2	\N	23	1027	\N	0	2
2518	OPT965	计算社会学：实验与模拟	2	\N	23	1647	\N	0	2
2545	OPT966	钱袋子的学问：家庭金融入门	2	\N	23	1662	\N	0	3
3276	OPT969	地理信息系统（GIS）与时空	2	\N	23	1926	\N	0	3
2566	OPT971	声乐作品赏析与舞台表演	2	\N	19	763	\N	0	2
2489	OPT972	道家哲学专题	0.5	\N	19	1643	\N	0	3
2590	OPT973	西方哲学精神探源	0.5	\N	19	1643	\N	0	3
2632	OPT975	庄子哲学导读	0.5	\N	19	1643	\N	0	3
2609	OPT977	战略性思维：竞争、合作与全局意识	0.5	\N	19	1643	\N	0	3
2502	OPT978	管理沟通	0.5	\N	19	1643	\N	0	3
2506	OPT979	国际商务文化--一门关于沟通的学问	0.5	\N	19	1643	\N	0	3
2553	OPT980	人际沟通	0.5	\N	19	1643	\N	0	3
2500	OPT981	沟通心理学	0.5	\N	19	1643	\N	0	3
2484	OPT982	大学国文—北宋至现代文学赏析	0.5	\N	19	1643	\N	0	3
2485	OPT983	大学国文—先秦至唐文学赏析	0.5	\N	19	1643	\N	0	3
2478	OPT984	从天下到世界：近代中国的历程	0.5	\N	19	1643	\N	0	3
2585	OPT985	文物精品与文化中国	0.5	\N	19	1643	\N	0	3
2472	OPT986	长安与中国佛教	0.5	\N	19	1643	\N	0	3
2615	OPT987	中国茶道	0.5	\N	19	1643	\N	0	3
1270	OPT988	神奇的昆虫世界	2	\N	19	175	\N	0	2
1239	OPT989	化妆品应用	2	\N	19	175	\N	0	1
1246	OPT990	进化心理学	2	\N	19	175	\N	0	2
1260	OPT991	轻松学韩语（一）	2	\N	19	175	\N	0	2
1082	PAD101	政治学	3	\N	17	918	\N	0	3
254	PAD102	公共经济学	3	\N	17	245	\N	0	1
255	PAD102	公共经济学	3	\N	17	246	\N	0	1
2792	PAD102	公共经济学	3	\N	17	1734	\N	0	3
2793	PAD102	公共经济学	3	\N	17	1735	\N	0	3
1625	PAD103	公共政策分析	3	\N	17	1241	\N	0	2
256	PAD104	公共行政学	3	\N	17	247	\N	0	1
1617	PAD105	公共管理导论	3	\N	17	1236	\N	0	2
774	PAD108	数字政府与社会	2	\N	17	686	\N	0	1
775	PAD108	数字政府与社会	2	\N	17	687	\N	0	1
2084	PAD108	数字政府与社会	2	\N	17	1471	\N	0	2
2085	PAD108	数字政府与社会	2	\N	17	1472	\N	0	2
3024	PAD108	数字政府与社会	2	\N	17	1663	\N	0	3
3025	PAD108	数字政府与社会	2	\N	17	1828	\N	0	3
1258	PAD109	气候变化与碳治理	3	\N	17	1045	\N	0	3
252	PAD202	公共管理大数据基础与运用	3	\N	17	243	\N	0	3
253	PAD202	公共管理大数据基础与运用	3	\N	17	244	\N	0	3
1635	PAD207	公务员制度与考试	3	\N	17	1247	\N	0	2
2413	PAD302	中国社会政策概论	3	\N	17	244	\N	0	2
2327	PAD304	行为公共管理	3	\N	17	1579	\N	0	2
2562	PAD306	社会研究方法	3	\N	17	1670	\N	0	2
3232	PAD307	非营利组织管理	3	\N	17	1909	\N	0	3
2789	PAD310	健康投资与管理	3	\N	17	1732	\N	0	3
993	PAD311	行政法学	3	\N	17	859	\N	0	1
3168	PAD311	行政法学	3	\N	17	1881	\N	0	3
2791	PAD324	公共经济制度与政策	3	\N	17	1733	\N	0	3
1342	PED101	篮球1	1	\N	28	1099	\N	0	3
1344	PED101	篮球1	1	\N	28	1040	\N	0	3
1400	PED102	足球1	1	\N	28	1123	\N	0	1
1402	PED102	足球1	1	\N	28	1125	\N	0	3
1403	PED102	足球1	1	\N	28	1126	\N	0	3
1401	PED102	足球1	1	\N	28	1124	\N	0	3
1351	PED103	排球1	1	\N	28	1022	\N	0	3
1350	PED103	排球1	1	\N	28	1021	\N	0	3
1349	PED103	排球1	1	\N	28	1060	\N	0	3
1390	PED104	羽毛球1	1	\N	28	1080	\N	0	3
1387	PED104	羽毛球1	1	\N	28	1058	\N	0	3
1388	PED104	羽毛球1	1	\N	28	1118	\N	0	3
1389	PED104	羽毛球1	1	\N	28	1119	\N	0	3
1357	PED105	乒乓球1	1	\N	28	1103	\N	0	3
1356	PED105	乒乓球1	1	\N	28	1046	\N	0	3
1371	PED106	网球1	1	\N	28	1066	\N	0	3
1370	PED106	网球1	1	\N	28	1111	\N	0	3
1372	PED106	网球1	1	\N	28	1112	\N	0	3
1369	PED106	网球1	1	\N	28	1110	\N	0	3
1373	PED106	网球1	1	\N	28	1113	\N	0	3
1365	PED107	体育舞蹈1	1	\N	28	1108	\N	0	3
1332	PED108	健美操1	1	\N	28	1093	\N	0	3
3340	PED108	健美操1	1	\N	28	1094	\N	0	3
1408	PED109	瑜伽1	1	\N	28	1127	\N	0	3
1383	PED110	形体与礼仪1	1	\N	28	1115	\N	0	3
1384	PED110	形体与礼仪1	1	\N	28	1116	\N	0	3
1378	PED111	武术1	1	\N	28	1042	\N	0	3
1379	PED111	武术1	1	\N	28	1090	\N	0	3
1329	PED113	定向越野1	1	\N	28	1092	\N	0	3
1328	PED113	定向越野1	1	\N	28	1091	\N	0	3
1326	PED114	保健班1	1	\N	28	1090	\N	0	1
1411	PED115	跆拳道1	1	\N	28	1129	\N	0	3
1259	PED116	气排球	2	\N	28	1022	\N	0	2
2542	PED116	气排球	2	\N	28	1046	\N	0	3
3315	PED116	气排球	2	\N	28	1060	\N	0	3
1336	PED118	健身健美1	1	\N	28	1097	\N	0	1
1337	PED118	健身健美1	1	\N	28	1095	\N	0	3
1335	PED118	健身健美1	1	\N	28	1096	\N	0	3
1363	PED119	体适能1	1	\N	28	1107	\N	0	1
1360	PED120	散打1	1	\N	28	1105	\N	0	3
2654	PED201	篮球2	1	\N	28	1040	\N	0	2
2652	PED201	篮球2	1	\N	28	1099	\N	0	2
2651	PED201	篮球2	1	\N	28	1098	\N	0	2
2653	PED201	篮球2	1	\N	28	1100	\N	0	2
2709	PED202	足球2	1	\N	28	1122	\N	0	2
2710	PED202	足球2	1	\N	28	1123	\N	0	2
2711	PED202	足球2	1	\N	28	1124	\N	0	2
2712	PED202	足球2	1	\N	28	1125	\N	0	2
2659	PED203	排球2	1	\N	28	1060	\N	0	2
2660	PED203	排球2	1	\N	28	1021	\N	0	2
2661	PED203	排球2	1	\N	28	1022	\N	0	2
2697	PED204	羽毛球2	1	\N	28	1058	\N	0	2
2698	PED204	羽毛球2	1	\N	28	1118	\N	0	2
2699	PED204	羽毛球2	1	\N	28	1119	\N	0	2
2700	PED204	羽毛球2	1	\N	28	1080	\N	0	2
2701	PED204	羽毛球2	1	\N	28	1120	\N	0	2
2666	PED205	乒乓球2	1	\N	28	1046	\N	0	2
2667	PED205	乒乓球2	1	\N	28	1103	\N	0	2
2679	PED206	网球2	1	\N	28	1110	\N	0	2
2680	PED206	网球2	1	\N	28	1111	\N	0	2
2682	PED206	网球2	1	\N	28	1112	\N	0	2
2675	PED207	体育舞蹈2	1	\N	28	1108	\N	0	2
2676	PED207	体育舞蹈2	1	\N	28	1109	\N	0	2
2694	PED210	形体与礼仪2	1	\N	28	1116	\N	0	2
2693	PED210	形体与礼仪2	1	\N	28	1115	\N	0	2
2688	PED211	武术2	1	\N	28	1042	\N	0	2
2689	PED211	武术2	1	\N	28	1090	\N	0	2
2638	PED213	定向越野2	1	\N	28	1091	\N	0	2
2639	PED213	定向越野2	1	\N	28	1092	\N	0	2
2636	PED214	保健班2	1	\N	28	1090	\N	0	2
2721	PED215	跆拳道2	1	\N	28	1129	\N	0	2
2645	PED218	健身健美2	1	\N	28	1096	\N	0	2
2646	PED218	健身健美2	1	\N	28	1097	\N	0	2
2647	PED218	健身健美2	1	\N	28	1095	\N	0	2
2672	PED219	体适能2	1	\N	28	1106	\N	0	2
2670	PED220	散打2	1	\N	28	1105	\N	0	2
3350	PED301	篮球3	1	\N	28	1100	\N	0	3
1347	PED301	篮球3	1	\N	28	1040	\N	0	3
1348	PED301	篮球3	1	\N	28	1101	\N	0	3
1345	PED301	篮球3	1	\N	28	1098	\N	0	3
1405	PED302	足球3	1	\N	28	1124	\N	0	3
1406	PED302	足球3	1	\N	28	1125	\N	0	3
1354	PED303	排球3	1	\N	28	1022	\N	0	3
1395	PED304	羽毛球3	1	\N	28	1080	\N	0	3
1392	PED304	羽毛球3	1	\N	28	1058	\N	0	3
1393	PED304	羽毛球3	1	\N	28	1118	\N	0	3
3360	PED304	羽毛球3	1	\N	28	1120	\N	0	3
1358	PED305	乒乓球3	1	\N	28	1104	\N	0	3
1359	PED305	乒乓球3	1	\N	28	1103	\N	0	3
3339	PED305	乒乓球3	1	\N	28	1046	\N	0	3
1375	PED306	网球3	1	\N	28	1111	\N	0	3
1377	PED306	网球3	1	\N	28	1112	\N	0	3
1376	PED306	网球3	1	\N	28	1066	\N	0	3
3359	PED306	网球3	1	\N	28	1113	\N	0	3
1368	PED307	体育舞蹈3	1	\N	28	1109	\N	0	3
1367	PED307	体育舞蹈3	1	\N	28	1108	\N	0	3
1334	PED308	健美操3	1	\N	28	1095	\N	0	3
1333	PED308	健美操3	1	\N	28	1094	\N	0	3
3341	PED308	健美操3	1	\N	28	1093	\N	0	3
1409	PED309	瑜伽3	1	\N	28	1127	\N	0	3
1410	PED309	瑜伽3	1	\N	28	1128	\N	0	1
1386	PED310	形体与礼仪3	1	\N	28	1116	\N	0	3
1381	PED311	武术3	1	\N	28	1114	\N	0	3
1382	PED311	武术3	1	\N	28	1090	\N	0	3
1380	PED311	武术3	1	\N	28	1042	\N	0	3
1327	PED314	保健班3	1	\N	28	1090	\N	0	1
1412	PED315	跆拳道3	1	\N	28	1129	\N	0	3
1338	PED318	健身健美3	1	\N	28	1094	\N	0	1
1340	PED318	健身健美3	1	\N	28	1095	\N	0	1
1361	PED320	散打3	1	\N	28	1105	\N	0	3
2656	PED401	篮球4	1	\N	28	1099	\N	0	2
2657	PED401	篮球4	1	\N	28	1040	\N	0	2
2658	PED401	篮球4	1	\N	28	1101	\N	0	2
2714	PED402	足球4	1	\N	28	1122	\N	0	2
2716	PED402	足球4	1	\N	28	1125	\N	0	2
2663	PED403	排球4	1	\N	28	1021	\N	0	2
2664	PED403	排球4	1	\N	28	1022	\N	0	2
2704	PED404	羽毛球4	1	\N	28	1119	\N	0	2
2705	PED404	羽毛球4	1	\N	28	1080	\N	0	2
2702	PED404	羽毛球4	1	\N	28	1058	\N	0	2
2703	PED404	羽毛球4	1	\N	28	1118	\N	0	2
2668	PED405	乒乓球4	1	\N	28	1104	\N	0	2
2669	PED405	乒乓球4	1	\N	28	1103	\N	0	2
2684	PED406	网球4	1	\N	28	1110	\N	0	2
2685	PED406	网球4	1	\N	28	1111	\N	0	2
2687	PED406	网球4	1	\N	28	1112	\N	0	2
2678	PED407	体育舞蹈4	1	\N	28	1109	\N	0	2
2677	PED407	体育舞蹈4	1	\N	28	1108	\N	0	2
2644	PED408	健美操4	1	\N	28	1095	\N	0	2
2720	PED409	瑜伽4	1	\N	28	1128	\N	0	2
2696	PED410	形体与礼仪4	1	\N	28	1116	\N	0	2
2691	PED411	武术4	1	\N	28	1114	\N	0	2
2692	PED411	武术4	1	\N	28	1090	\N	0	2
2641	PED413	定向越野4	1	\N	28	1092	\N	0	2
2722	PED415	跆拳道4	1	\N	28	1129	\N	0	2
2649	PED418	健身健美4	1	\N	28	1096	\N	0	2
2648	PED418	健身健美4	1	\N	28	1094	\N	0	2
2650	PED418	健身健美4	1	\N	28	1095	\N	0	2
2674	PED419	体适能4	1	\N	28	1106	\N	0	2
1396	PED503	运动科学基础3	0.5	\N	28	1121	\N	0	1
1397	PED505	运动科学基础5	0.5	\N	28	1095	\N	0	1
2707	PED506	运动科学基础6	0.5	\N	28	1095	\N	0	2
1398	PED507	运动科学基础7	0.5	\N	28	1095	\N	0	1
2708	PED508	运动科学基础8	0.5	\N	28	1095	\N	0	2
33	PFC200	财政学	3	\N	8	32	\N	0	1
37	PFC200	财政学	3	\N	8	36	\N	0	3
39	PFC200	财政学	3	\N	8	38	\N	0	3
40	PFC200	财政学	3	\N	8	39	\N	0	1
35	PFC200	财政学	3	\N	8	34	\N	0	3
38	PFC200	财政学	3	\N	8	37	\N	0	3
2470	PFC200	财政学	3	\N	8	954	\N	0	2
3194	PFC200	财政学	3	\N	8	1887	\N	0	3
3196	PFC200	财政学	3	\N	8	1888	\N	0	3
1693	PFC201	国家税收	3	\N	8	693	\N	0	2
2391	PFC202	政府预算	3	\N	8	1605	\N	0	2
1090	PFC301	中国财税史	3	\N	8	923	\N	0	1
1091	PFC301	中国财税史	3	\N	8	924	\N	0	3
2729	PFC301	中国财税史	3	\N	8	32	\N	0	3
1419	PFC302	比较财政学	3	\N	8	1133	\N	0	2
32	PFC303	财政绩效评价	3	\N	8	31	\N	0	1
1618	PFC306	公共经济政策分析	3	\N	8	1237	\N	0	2
1620	PFC306	公共经济政策分析	3	\N	8	1238	\N	0	2
1621	PFC306	公共经济政策分析	3	\N	8	1239	\N	0	2
2790	PFC312	公债经济学	3	\N	8	954	\N	0	3
469	PFC466	绩效评价与预算联网监督	2	\N	8	31	\N	0	3
630	PRT102	名著阅读	4	\N	12	68	\N	0	1
629	PRT102	名著阅读	4	\N	2	572	\N	0	3
1917	PRT102	名著阅读	4	\N	8	66	\N	0	2
628	PRT102	名著阅读	4	\N	10	571	\N	0	2
1918	PRT102	名著阅读	4	\N	18	1171	\N	0	2
1919	PRT102	名著阅读	4	\N	11	1134	\N	0	2
1920	PRT102	名著阅读	4	\N	1	964	\N	0	2
1921	PRT102	名著阅读	4	\N	4	116	\N	0	2
2823	PRT102	名著阅读	4	\N	3	67	\N	0	3
2821	PRT102	名著阅读	4	\N	12	1344	\N	0	3
2822	PRT102	名著阅读	4	\N	5	777	\N	0	3
1418	PRT103	本科生科研训练	2	\N	1	964	\N	0	2
1139	PRT104	专业实习	2	\N	1	964	\N	0	3
1420	PRT105	毕业论文	8	\N	11	1134	\N	0	2
1154	PRT107	综合实验	2	\N	24	974	\N	0	1
1158	PRT107	综合实验	2	\N	24	977	\N	0	1
1153	PRT107	综合实验	2	\N	17	973	\N	0	3
1155	PRT107	综合实验	2	\N	24	975	\N	0	3
2449	PRT107	综合实验	2	\N	10	1415	\N	0	2
2452	PRT107	综合实验	2	\N	17	1635	\N	0	2
2451	PRT107	综合实验	2	\N	10	1634	\N	0	2
67	PRT109	创新、创业与社会实践	2	\N	8	66	\N	0	1
68	PRT109	创新、创业与社会实践	2	\N	3	67	\N	0	1
69	PRT109	创新、创业与社会实践	2	\N	12	68	\N	0	1
1493	PRT109	创新、创业与社会实践	2	\N	10	782	\N	0	2
1497	PRT109	创新、创业与社会实践	2	\N	1	964	\N	0	2
1494	PRT109	创新、创业与社会实践	2	\N	10	571	\N	0	2
1498	PRT109	创新、创业与社会实践	2	\N	4	116	\N	0	2
1495	PRT109	创新、创业与社会实践	2	\N	18	1171	\N	0	2
1499	PRT109	创新、创业与社会实践	2	\N	2	1173	\N	0	2
1496	PRT109	创新、创业与社会实践	2	\N	11	1172	\N	0	2
73	PRT109	创新、创业与社会实践	2	\N	6	19	\N	0	2
1501	PRT109	创新、创业与社会实践	2	\N	9	1174	\N	0	2
2806	PRT109	创新、创业与社会实践	2	\N	12	1344	\N	0	3
2807	PRT109	创新、创业与社会实践	2	\N	2	1196	\N	0	3
2808	PRT109	创新、创业与社会实践	2	\N	8	1154	\N	0	3
70	PRT112	创新、创业与社会实践	2	\N	14	69	\N	0	1
71	PRT112	创新、创业与社会实践	2	\N	14	70	\N	0	1
72	PRT112	创新、创业与社会实践	2	\N	14	71	\N	0	1
1500	PRT112	创新、创业与社会实践	2	\N	14	129	\N	0	2
1421	PRT114	毕业论文（辅修学位）	8	\N	1	964	\N	0	2
575	PRT115	劳动教育	2	\N	19	175	\N	0	2
574	PRT115	劳动教育	2	\N	5	137	\N	0	3
1872	PRT115	劳动教育	2	\N	8	66	\N	0	2
1881	PRT115	劳动教育	2	\N	1	964	\N	0	2
1873	PRT115	劳动教育	2	\N	10	571	\N	0	2
1874	PRT115	劳动教育	2	\N	10	447	\N	0	2
1877	PRT115	劳动教育	2	\N	11	1386	\N	0	2
1880	PRT115	劳动教育	2	\N	3	67	\N	0	2
1884	PRT115	劳动教育	2	\N	12	1344	\N	0	2
2810	PRT115	劳动教育	2	\N	2	1196	\N	0	3
1676	PRT117	国际商贸综合实验	2	\N	7	342	\N	0	2
1677	PRT117	国际商贸综合实验	2	\N	7	1273	\N	0	2
2528	SEM118	经济伦理学	2	\N	22	701	\N	0	3
1855	SEM130	经济学原理运用与分析	3	\N	19	1376	\N	0	2
1243	SEM136	积极心理训练与幸福感的培育	2	\N	17	573	\N	0	1
3321	SEM136	积极心理训练与幸福感的培育	2	\N	19	34	\N	0	3
2537	SEM140	农业经济问题研讨	2	\N	27	1660	\N	0	2
3266	SEM140	农业经济问题研讨	2	\N	27	1921	\N	0	3
321	SFS303	国际金融市场（英）	3	\N	1	307	\N	0	3
1638	SFS304	固定收益证券	3	\N	1	1249	\N	0	3
2830	SFS304	固定收益证券	3	\N	1	1753	\N	0	3
1806	SFS306	金融机构与市场	3	\N	1	1354	\N	0	2
818	SFS404	投资银行学	3	\N	8	724	\N	0	3
1142	SFS405	资产定价	3	\N	1	966	\N	0	1
3203	SFS405	资产定价	3	\N	1	1893	\N	0	3
1141	SFS501	资本运作案例	3	\N	1	965	\N	0	1
1083	SFS502	证券期货模拟交易	3	\N	1	919	\N	0	3
2023	SFS503	数据处理分析及软件应用	3	\N	1	1084	\N	0	2
2895	SFS504	家庭理财实务	3	\N	1	1792	\N	0	3
860	SPA100	西班牙语会话 III	2	\N	9	490	\N	0	1
445	SPA102	基础西班牙语Ⅰ	6	\N	9	411	\N	0	1
1765	SPA103	基础西班牙语Ⅱ	6	\N	9	411	\N	0	2
444	SPA108	基础西班牙语III	8	\N	9	410	\N	0	1
2845	SPA108	基础西班牙语III	6	\N	9	1761	\N	0	3
862	SPA109	西班牙语听力III	2	\N	9	759	\N	0	1
1764	SPA110	基础西班牙语IV	6	\N	9	410	\N	0	2
2160	SPA111	西班牙语听力IV	2	\N	9	759	\N	0	2
2158	SPA112	西班牙语会话IV	2	\N	9	490	\N	0	2
2159	SPA114	西班牙语视听说II	2	\N	9	490	\N	0	2
3173	SPA115	西班牙语视听说III	2	\N	9	411	\N	0	3
3136	SPA122	经贸西班牙语	2	\N	9	490	\N	0	3
539	SPA201	经贸西班牙语I	2	\N	9	490	\N	0	1
1856	SPA202	经贸西班牙语II	2	\N	9	490	\N	0	2
2157	SPA203	西班牙国家概况	2	\N	9	411	\N	0	2
3007	SPA204	拉丁美洲概况	2	\N	9	490	\N	0	3
2740	SPA205	中级西班牙语	4	\N	9	410	\N	0	3
3174	SPA206	西班牙语读写I	2	\N	9	759	\N	0	3
3175	SPA207	西班牙语高级会话I	2	\N	9	490	\N	0	3
3135	SPA302	经贸应用文（西）	2	\N	9	1761	\N	0	3
3145	SPA306	翻译导论	2	\N	9	411	\N	0	3
3172	SPA310	西班牙语国家国际关系	2	\N	9	410	\N	0	3
808	STA100	统计与数据科学导论	3	\N	30	714	4	2	3
809	STA100	统计与数据科学导论	3	\N	6	715	\N	0	1
806	STA100	统计与数据科学导论	3	\N	6	273	\N	0	1
3137	STA100	统计与数据科学导论	3	\N	30	1867	\N	0	3
3138	STA100	统计与数据科学导论	3	\N	30	1868	\N	0	3
810	STA100	统计与数据科学导论	3	\N	6	716	3	1	1
171	STA201	非参数统计	3	\N	6	167	\N	0	1
18	STA203	贝叶斯统计	3	\N	30	17	\N	0	3
2889	STA204	实变函数与泛函分析	3	\N	30	1214	\N	0	3
2040	STA302	数理统计（理）	4	\N	1	175	\N	0	2
2041	STA302	数理统计（理）	3	\N	6	1454	\N	0	2
2044	STA302	数理统计（理）	3	\N	6	1457	\N	0	2
2046	STA302	数理统计（理）	3	\N	6	1458	\N	0	2
2045	STA302	数理统计（理）	3	\N	30	189	\N	0	3
1795	STA303	计算统计	3	\N	6	1345	\N	0	2
1557	STA304	多元统计分析	3	\N	6	1214	\N	0	2
2846	STA304	多元统计分析	3	\N	30	1762	\N	0	3
2100	STA305	随机过程	3	\N	6	1481	\N	0	2
2101	STA305	随机过程	3	\N	6	1458	\N	0	2
799	STA307	统计软件编程	3	\N	6	706	\N	0	1
2829	STA308	回归分析	3	\N	30	1752	\N	0	3
781	TAL200	税法知识图谱	3	\N	8	692	\N	0	1
1432	TAP200	财税大数据及其应用	3	\N	8	1137	\N	0	2
1455	TAX102	财政学毕业实习	6	\N	8	1154	\N	0	2
2092	TAX103	税收学毕业实习	6	\N	8	1154	\N	0	2
1454	TAX106	财政学毕业论文	8	\N	8	1154	\N	0	2
2091	TAX107	税收学毕业论文	8	\N	8	1154	\N	0	2
2066	TAX109	数字财税实验班毕业论文	8	\N	8	1154	\N	0	2
2080	TAX200	数字经济与国际税收	3	\N	8	1469	\N	0	2
2088	TAX202	税收学	3	\N	8	1474	\N	0	3
2090	TAX202	税收学	3	\N	8	1476	\N	0	3
2087	TAX202	税收学	3	\N	8	40	\N	0	3
778	TAX204	税法	3	\N	8	690	\N	0	1
779	TAX204	税法	3	\N	8	691	\N	0	1
3107	TAX204	税法	3	\N	8	1850	\N	0	3
3106	TAX205	税收筹划	3	\N	8	1849	\N	0	3
1688	TAX301	国际税收	3	\N	8	1280	\N	0	2
1687	TAX301	国际税收	2	\N	8	1279	\N	0	3
2093	TAX302	税务稽查与管理	3	\N	8	1462	\N	0	2
811	TAX306	投资经济学	3	\N	8	717	\N	0	1
2109	TAX306	投资经济学	3	\N	8	1486	\N	0	2
3004	TAX306	投资经济学	3	\N	8	1814	\N	0	3
785	TAX320	税务会计	3	\N	8	695	\N	0	3
1689	TAX324	国际税收实务前沿	1	\N	8	691	\N	0	2
3105	TAX325	税务代理	3	\N	8	1849	\N	0	3
3134	TAX405	经济研究中的数学方法	3	\N	8	34	\N	0	3
619	TAX906	美国联邦税收	3	\N	13	53	\N	0	3
\.


--
-- Data for Name: jcourse_api_course_categories; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.jcourse_api_course_categories (id, course_id, category_id) FROM stdin;
1	1	1
2	2	2
3	3	3
5	4	3
7	5	1
9	6	1
10	7	3
11	8	4
12	9	1
13	10	1
14	11	4
16	12	1
18	13	1
19	14	4
20	15	4
21	16	4
22	17	3
23	18	1
24	19	4
25	20	3
26	21	4
27	22	4
28	23	1
29	24	1
30	25	4
31	25	1
32	26	2
34	27	1
36	28	1
38	29	4
39	29	1
40	30	4
41	31	1
42	32	1
43	33	4
44	34	4
46	35	4
49	36	4
51	37	1
52	37	4
53	38	4
54	39	4
56	40	4
57	41	1
58	42	1
59	43	1
60	44	1
61	45	1
62	46	1
63	47	4
65	48	4
66	49	1
67	50	4
70	51	4
71	52	1
74	53	4
76	54	4
77	55	4
78	56	2
80	57	2
82	58	2
83	58	1
84	59	2
86	60	2
87	61	2
88	62	2
89	63	2
91	64	4
92	64	1
93	65	4
95	66	4
97	67	3
101	68	3
102	69	3
106	70	3
107	71	3
108	72	3
109	73	3
110	74	3
113	75	3
114	76	1
116	77	1
118	78	1
119	79	4
122	80	4
123	81	1
126	82	4
128	83	4
129	84	4
132	85	4
133	86	4
134	87	4
135	88	4
136	89	4
137	90	1
138	91	4
139	92	2
140	93	2
141	94	2
143	95	2
144	96	2
145	97	2
146	98	2
147	99	2
148	100	2
149	101	2
150	102	2
151	103	2
152	104	2
153	105	2
154	106	2
155	107	2
156	108	2
157	109	2
159	110	2
161	111	2
163	112	2
164	113	2
166	114	2
167	115	2
168	116	2
169	117	2
170	118	2
171	119	2
172	120	2
173	121	2
174	122	2
176	123	2
177	124	2
178	125	2
179	126	2
180	127	2
181	128	2
182	129	2
183	130	2
184	131	2
185	132	2
186	133	2
187	134	2
188	135	2
189	136	2
190	137	2
191	138	2
192	139	2
194	140	2
195	141	2
196	142	2
198	143	2
199	144	2
201	145	2
202	146	2
203	147	2
204	148	2
205	149	2
206	150	2
207	151	2
208	152	2
210	153	3
217	154	3
218	155	1
219	156	4
220	157	4
221	158	4
222	159	4
223	160	4
224	161	4
225	162	1
226	163	4
227	164	4
228	165	4
229	166	1
230	167	1
231	168	4
233	169	4
234	170	4
236	171	1
237	172	1
238	173	1
240	174	4
241	175	4
242	176	4
243	176	1
244	177	4
245	178	4
246	178	1
247	179	2
248	180	2
250	181	2
252	182	2
253	183	2
255	184	2
258	185	2
260	186	2
261	187	2
264	188	2
267	189	2
269	190	2
272	191	2
274	192	2
277	193	2
279	194	4
281	195	4
283	196	4
286	197	2
287	198	4
288	199	4
289	199	2
290	200	2
291	201	2
293	202	2
297	203	2
300	204	2
302	205	2
303	206	2
305	207	2
308	208	4
309	208	2
310	209	2
312	210	2
314	211	2
317	212	2
319	213	2
320	214	2
322	215	2
325	216	2
327	217	2
329	218	2
331	219	2
333	220	2
335	221	2
337	222	2
339	223	2
341	224	2
342	225	2
344	226	2
346	227	2
348	228	2
350	229	2
352	230	2
353	231	1
355	232	4
356	233	4
357	234	4
360	235	4
362	236	4
363	237	4
364	238	1
365	239	4
366	240	4
367	241	4
368	242	2
369	243	1
370	244	2
371	245	4
372	246	2
375	247	2
376	248	1
377	249	4
379	250	4
380	251	1
381	252	4
382	253	4
383	254	4
384	255	4
385	256	4
386	257	2
389	258	4
390	259	4
391	260	4
393	261	4
394	262	4
396	263	4
397	264	1
398	265	4
400	266	4
402	267	4
404	268	4
406	269	4
408	270	4
409	271	4
411	272	4
413	273	4
414	274	4
415	275	4
416	276	4
418	277	4
419	278	4
420	279	4
422	280	4
423	281	1
425	282	1
427	283	1
428	284	1
429	285	2
430	286	1
431	287	4
432	288	4
434	289	4
435	290	4
436	291	4
437	292	4
439	293	4
440	294	4
441	295	4
442	296	4
445	297	4
446	298	4
447	299	4
449	300	4
450	301	4
451	302	4
452	303	4
454	304	4
456	305	4
458	306	4
459	307	4
460	308	1
461	309	1
462	310	1
463	311	4
464	312	1
465	313	4
468	314	1
469	315	4
470	316	1
472	317	4
473	318	1
474	319	1
475	320	1
477	321	1
478	322	1
480	323	4
481	324	4
482	325	4
484	326	4
487	327	1
488	328	4
490	329	4
491	330	1
492	331	3
493	332	3
494	333	3
495	334	3
496	335	3
497	336	3
498	337	3
499	338	3
500	339	3
501	340	3
502	341	3
503	342	3
504	343	3
505	344	3
506	345	3
507	346	3
508	347	3
509	348	3
510	349	1
512	350	4
514	351	4
515	352	4
517	353	2
520	354	2
523	355	2
526	356	2
529	357	3
530	358	3
531	359	3
532	360	3
533	361	3
534	362	3
535	363	3
536	364	3
537	365	3
538	366	3
539	367	3
540	368	3
541	369	3
542	370	3
543	371	3
544	372	3
545	373	3
546	374	3
547	375	3
548	376	3
549	377	3
550	378	3
551	379	1
553	380	1
554	381	1
555	382	1
556	383	1
557	384	4
558	385	1
559	386	1
560	387	1
562	388	4
563	389	4
565	390	4
566	391	4
567	392	4
569	393	4
570	394	4
571	395	4
572	396	4
574	397	4
575	398	4
576	399	4
577	400	4
579	401	4
580	402	4
582	403	1
583	404	4
585	405	4
587	406	4
588	407	4
590	408	3
592	409	4
593	410	4
594	410	1
597	411	4
599	412	4
601	413	4
604	414	4
605	415	4
607	416	4
609	417	4
612	418	4
615	419	4
616	420	4
618	421	4
619	422	4
621	423	4
623	424	4
625	425	4
626	426	4
629	427	4
630	428	4
632	429	4
634	430	4
635	431	4
636	432	4
637	433	4
639	434	4
640	435	4
641	436	4
644	437	4
645	438	4
647	439	4
648	440	4
650	441	1
652	442	2
653	443	4
654	444	4
655	445	4
656	446	4
658	447	4
660	448	1
661	449	1
662	450	4
663	451	4
664	452	4
666	453	1
667	454	1
668	455	1
669	456	1
670	457	1
671	458	1
672	459	1
674	460	4
675	461	4
676	462	1
677	463	4
678	464	4
679	465	4
680	466	4
681	467	2
682	467	4
683	468	4
684	469	1
685	470	4
686	471	4
687	472	4
688	472	1
689	473	4
690	474	4
692	475	4
693	476	4
694	477	1
695	478	4
696	479	4
697	479	1
698	480	4
699	480	1
700	481	4
702	482	4
703	483	4
704	484	1
706	485	4
709	486	1
711	487	4
712	488	4
713	489	4
716	490	4
717	491	4
718	492	4
722	493	4
724	493	2
725	494	2
726	494	4
727	495	4
728	495	2
729	496	4
731	497	4
732	497	2
734	498	2
735	498	4
736	499	2
737	499	4
738	500	4
740	501	2
742	502	2
743	491	2
745	503	1
746	504	1
747	505	4
748	506	4
749	507	1
750	508	1
752	509	4
753	510	1
754	511	1
756	512	1
758	513	4
760	514	4
761	515	4
762	515	1
763	516	1
764	517	1
766	518	1
767	519	4
768	520	4
770	521	1
771	522	4
772	523	1
773	524	4
774	525	4
776	526	4
779	527	1
780	528	2
781	529	4
782	530	4
783	531	1
784	532	1
785	533	1
786	534	4
789	535	1
790	536	3
791	537	3
792	538	3
793	539	4
794	540	1
795	541	1
796	542	1
797	543	1
798	544	2
799	545	2
800	546	2
801	547	2
802	548	2
804	549	2
805	550	2
806	551	2
808	552	2
809	553	2
810	554	2
811	555	2
813	556	2
814	557	2
815	558	2
816	559	2
817	560	2
818	561	2
819	562	2
820	563	2
821	564	2
822	565	2
823	566	2
824	567	4
825	568	1
827	569	1
828	570	4
829	571	2
834	572	2
837	573	4
839	573	1
841	574	2
842	575	2
844	576	1
845	577	1
846	578	1
847	579	1
848	580	1
849	581	1
850	582	1
851	583	4
852	584	1
853	585	4
854	586	1
855	587	1
856	588	4
857	589	4
858	590	4
859	591	4
862	592	4
865	593	4
866	594	4
867	595	2
869	596	2
872	597	2
874	598	2
877	599	2
880	600	2
882	601	2
883	602	2
885	603	2
888	604	2
890	605	2
893	606	4
894	607	2
895	608	2
897	609	2
899	610	2
902	611	2
904	612	2
905	613	2
907	614	2
909	615	2
911	616	2
913	617	2
914	618	1
915	619	4
916	620	4
918	621	4
920	622	4
921	623	4
925	624	1
926	625	2
929	626	2
930	627	3
931	628	3
939	629	3
943	630	3
947	631	1
948	632	4
949	633	4
950	634	1
951	635	1
952	636	1
953	637	1
954	638	1
955	639	1
956	640	1
957	641	1
958	642	1
959	643	1
960	644	1
961	645	4
963	646	4
964	647	3
965	648	3
966	649	3
967	650	2
969	651	2
971	652	2
972	653	2
974	654	2
976	655	2
977	656	2
978	657	2
980	658	2
982	659	1
983	660	4
984	661	4
985	662	1
988	663	1
990	664	4
991	664	1
992	665	4
993	666	2
996	667	1
999	668	2
1001	669	2
1003	670	4
1005	671	4
1006	672	4
1007	673	1
1008	674	1
1009	675	1
1010	676	4
1011	677	4
1012	678	4
1014	679	4
1016	680	4
1018	681	1
1019	682	1
1021	683	4
1023	684	4
1024	685	4
1025	686	4
1026	687	1
1027	688	4
1028	689	4
1030	690	4
1031	691	4
1032	692	4
1033	693	4
1037	694	4
1038	695	1
1039	696	1
1040	697	1
1041	698	1
1043	699	4
1044	700	4
1045	701	4
1046	701	1
1047	702	4
1048	703	4
1050	704	4
1051	705	1
1052	706	1
1053	707	1
1054	708	1
1055	709	4
1056	710	4
1057	711	4
1059	712	4
1060	713	4
1062	714	4
1063	715	1
1064	715	4
1065	716	4
1066	717	4
1067	718	4
1069	719	1
1070	720	1
1071	721	4
1072	722	4
1073	723	4
1074	724	4
1075	725	4
1076	726	1
1077	727	1
1079	728	1
1081	729	4
1082	730	1
1083	730	4
1084	731	1
1085	732	4
1086	733	4
1087	734	2
1090	735	2
1092	736	2
1093	737	2
1095	738	2
1097	739	2
1098	740	4
1099	740	2
1100	741	2
1102	742	2
1104	743	2
1105	744	2
1106	745	2
1107	745	4
1108	746	2
1109	746	4
1110	747	4
1111	748	4
1112	749	1
1113	749	4
1114	750	1
1116	751	1
1117	752	4
1119	753	1
1120	754	4
1121	755	1
1122	756	1
1123	757	1
1124	758	4
1125	759	1
1126	760	1
1127	761	4
1129	762	4
1130	763	4
1132	764	4
1134	765	4
1135	766	4
1137	767	4
1138	768	4
1140	769	1
1143	770	1
1144	771	4
1146	772	4
1147	773	4
1148	774	4
1149	775	4
1150	776	4
1152	777	1
1153	778	1
1157	779	4
1158	780	4
1159	781	4
1160	782	1
1161	783	4
1162	784	1
1163	785	1
1164	786	4
1168	787	4
1171	788	4
1173	789	4
1177	790	4
1180	791	4
1183	792	4
1184	793	4
1186	794	4
1189	795	4
1191	796	4
1192	797	1
1193	798	4
1195	799	4
1196	800	4
1198	801	4
1201	802	4
1204	803	4
1205	804	4
1206	805	4
1207	806	4
1208	807	4
1209	808	4
1210	809	4
1211	810	4
1212	811	1
1213	812	4
1216	813	4
1217	814	4
1218	815	4
1219	815	1
1220	816	4
1221	817	4
1222	818	4
1223	819	1
1227	820	4
1228	821	4
1229	822	4
1230	823	4
1231	824	4
1233	825	4
1234	825	1
1235	826	4
1236	827	4
1237	828	4
1239	829	4
1241	830	4
1242	831	4
1243	832	4
1244	833	4
1246	834	4
1248	835	4
1250	836	4
1251	837	4
1252	838	4
1254	839	4
1255	840	4
1257	841	4
1259	842	4
1261	843	4
1262	844	4
1264	845	4
1265	846	4
1266	847	1
1267	848	1
1268	849	4
1269	850	4
1270	851	1
1271	852	1
1272	853	4
1276	854	4
1279	855	4
1280	856	4
1281	857	1
1282	858	1
1283	859	1
1284	860	4
1285	861	4
1286	862	4
1287	863	4
1289	864	4
1290	865	4
1293	866	4
1295	867	2
1297	868	2
1302	869	2
1305	870	2
1308	871	2
1311	872	2
1314	873	2
1317	874	2
1319	875	2
1323	876	4
1324	877	4
1325	878	4
1326	879	4
1328	880	4
1329	881	4
1330	882	4
1331	883	4
1332	884	4
1334	885	2
1337	886	4
1338	887	1
1339	888	4
1340	889	1
1341	890	4
1343	891	1
1344	892	4
1345	893	4
1346	894	4
1347	895	4
1348	896	4
1349	897	4
1350	898	4
1351	899	4
1352	900	1
1353	901	1
1354	902	1
1355	903	4
1356	904	4
1357	905	4
1358	906	4
1359	907	4
1360	908	4
1361	909	4
1362	910	1
1363	911	1
1364	912	4
1365	913	4
1366	914	4
1367	914	1
1368	915	4
1369	916	4
1370	917	3
1371	918	4
1372	919	4
1375	920	4
1378	921	4
1383	922	4
1387	923	4
1390	924	4
1394	925	4
1396	926	4
1397	927	4
1399	928	4
1400	929	4
1402	930	4
1403	931	4
1405	932	4
1406	933	4
1409	934	4
1412	935	4
1414	936	4
1418	937	4
1420	938	4
1423	939	4
1424	940	4
1426	941	4
1427	942	4
1428	943	4
1429	944	4
1430	945	4
1432	946	4
1434	947	4
1436	948	4
1440	949	4
1443	950	4
1444	951	4
1446	952	4
1451	953	4
1452	954	4
1455	955	2
1457	956	2
1459	957	2
1462	958	2
1466	959	2
1468	960	2
1470	961	2
1473	962	2
1478	963	2
1480	964	2
1482	965	2
1484	966	2
1485	967	2
1487	968	2
1488	969	2
1490	970	2
1492	971	2
1494	972	2
1497	973	2
1498	974	2
1501	975	2
1502	976	2
1505	977	2
1507	978	2
1509	979	2
1511	980	2
1512	981	2
1514	982	2
1515	983	2
1517	984	2
1519	985	2
1522	986	2
1524	987	2
1526	988	2
1527	989	2
1528	990	2
1529	991	2
1531	992	1
1532	993	4
1533	994	4
1534	995	4
1536	996	4
1537	997	4
1538	998	2
1541	999	1
1542	1000	4
1545	1001	2
1547	1002	4
1550	1003	2
1551	1004	4
1553	1005	4
1554	1006	4
1556	1007	4
1557	1008	4
1559	1009	4
1560	1010	4
1561	1011	4
1562	1012	4
1564	1013	4
1565	1014	2
1566	1015	2
1567	1016	2
1568	1017	4
1569	1018	4
1572	1019	4
1575	1020	2
1580	1021	2
1583	1022	4
1584	1023	2
1586	1024	2
1588	1025	3
1589	1026	4
1590	1027	2
1592	1028	2
1593	1029	2
1597	1030	2
1601	1031	2
1605	1032	2
1610	1033	2
1611	1034	2
1612	1035	2
1614	1036	2
1616	1037	2
1619	1038	2
1620	1039	2
1624	1040	4
1625	1041	4
1629	1042	4
1630	1043	2
1632	1044	2
1634	1045	2
1637	1046	2
1640	1047	2
1642	1048	2
1644	1049	2
1646	1050	2
1650	1051	2
1655	1052	1
1656	1053	4
1657	1054	4
1658	1055	4
1660	1056	1
1661	1057	1
1662	1058	4
1663	1059	1
1664	1060	4
1666	1060	1
1668	1061	1
1669	1061	4
1670	1062	4
1671	1063	1
1673	1064	4
1674	1064	1
1675	1065	4
1676	1066	4
1677	1067	4
1678	1068	4
1679	1069	4
1681	1070	4
1683	1071	4
1685	1072	4
1686	1073	4
1687	1074	4
1689	1075	4
1690	1076	4
1691	1077	4
1692	1078	4
1694	1079	4
1695	1080	4
1696	1081	4
1697	1082	4
1698	1083	1
1699	1084	1
1701	1085	4
1703	1086	4
1704	1087	4
1705	1088	3
1706	1089	1
1707	1090	4
1711	1091	1
1712	1092	4
1716	1093	4
1717	1094	4
1719	1095	4
1720	1096	4
1721	1097	4
1722	1098	4
1724	1099	4
1727	1100	4
1728	1101	4
1729	1102	4
1732	1103	4
1734	1104	4
1735	1105	4
1736	1106	4
1737	1107	4
1739	1108	4
1741	1109	4
1742	1110	4
1743	1111	4
1745	1112	4
1746	1113	4
1748	1114	4
1750	1115	1
1752	1116	4
1753	1117	4
1754	1118	4
1756	1119	4
1757	1120	2
1758	1121	1
1760	1122	1
1762	1123	1
1765	1124	1
1766	1125	1
1769	1126	1
1770	1127	4
1771	1128	4
1773	1129	1
1774	1130	4
1775	1131	1
1776	1132	1
1778	1133	4
1779	1134	4
1780	1135	4
1782	1136	2
1783	1137	4
1784	1138	4
1785	1139	3
1786	1140	3
1787	1141	1
1788	1142	4
1790	1143	1
1791	1144	1
1792	1145	4
1793	1146	4
1794	1147	1
1795	1148	1
1796	1149	2
1797	1150	3
1799	1151	3
1800	1152	3
1803	1153	3
1804	1154	3
1805	1155	3
1806	1156	3
1807	1157	3
1808	1158	3
1810	1159	3
1813	1160	3
1815	1161	3
1816	1162	2
1819	1163	2
1825	1164	2
1828	1165	2
1831	1166	2
1837	1167	2
1843	1168	2
1849	1169	2
1852	1170	2
1855	1171	2
1861	1172	2
1867	1173	2
1873	1174	2
1876	1175	2
1879	1176	2
1882	1177	2
1888	1178	2
1892	1179	2
1893	1180	1
1894	1181	4
1895	1182	4
1896	1183	4
1897	1184	4
1898	1185	4
1899	1186	4
1900	1187	4
1901	1188	4
1903	1189	4
1905	1190	4
1906	1191	4
1907	1192	4
1908	1193	4
1909	1194	4
1910	1195	4
1912	1196	4
1914	1197	4
1915	1198	4
1916	1199	4
1917	1200	4
1919	1201	4
1920	1202	4
1921	1203	4
1922	1204	4
1923	1205	4
1924	1206	4
1925	1207	4
1926	1208	4
1927	1209	4
1928	1210	4
1929	1211	4
1930	1212	4
1931	1213	4
1933	1214	4
1934	1215	4
1935	1216	4
1936	1217	4
1937	1218	4
1939	1219	4
1940	1220	4
1941	1221	4
1943	1222	4
1944	1223	4
1945	1224	4
1946	1225	4
1947	1226	4
1948	1227	4
1949	1228	4
1950	1229	4
1952	1230	4
1954	1231	4
1955	1232	4
1956	1233	4
1957	1234	4
1958	1235	4
1959	1236	4
1960	1237	4
1961	1238	4
1962	1239	4
1963	1240	4
1964	1241	4
1966	1242	4
1967	1243	4
1968	1244	4
1969	1245	4
1970	1246	4
1971	1247	4
1972	1248	4
1973	1249	4
1974	1250	4
1975	1251	4
1977	1252	4
1978	1253	4
1979	1254	4
1980	1255	4
1981	1256	4
1982	1257	4
1984	1258	4
1985	1259	4
1987	1260	4
1988	1261	4
1991	1262	4
1992	1263	4
1993	1264	4
1994	1265	4
1995	1266	4
1997	1267	4
1998	1268	4
1999	1269	4
2001	1270	4
2002	1271	4
2003	1272	4
2004	1273	4
2005	1274	4
2007	1275	4
2009	1276	4
2010	1277	4
2011	1278	4
2013	1279	4
2014	1280	4
2016	1281	4
2018	1282	4
2020	1283	4
2021	1284	4
2022	1285	4
2026	1286	4
2027	1287	4
2029	1288	4
2030	1289	4
2031	1290	4
2032	1291	4
2033	1292	4
2034	1293	4
2035	1294	4
2036	1295	4
2037	1296	4
2039	1297	4
2040	1298	4
2041	1299	4
2042	1300	4
2043	1301	4
2044	1302	4
2046	1303	4
2047	1304	4
2048	1305	4
2049	1306	4
2050	1307	4
2051	1308	4
2052	1309	4
2053	1310	4
2054	1311	4
2055	1312	4
2056	1313	4
2057	1314	4
2059	1315	4
2060	1316	4
2061	1317	4
2062	1318	4
2063	1319	4
2065	1320	4
2066	1321	4
2067	1322	4
2068	1323	4
2069	1324	4
2070	1325	4
2071	1326	4
2072	1327	4
2073	1328	4
2074	1329	4
2077	1330	4
2083	1331	4
2087	1332	4
2092	1333	4
2095	1334	4
2096	1335	4
2097	1336	4
2099	1337	4
2102	1338	4
2105	1339	4
2109	1340	4
2110	1341	4
2113	1342	4
2116	1343	4
2121	1344	4
2127	1345	4
2130	1346	4
2134	1347	4
2135	1348	4
2141	1349	4
2144	1350	4
2145	1351	4
2150	1352	4
2153	1353	4
2159	1354	4
2161	1355	4
2166	1356	4
2171	1357	4
2172	1358	4
2179	1359	4
2185	1360	4
2188	1361	4
2192	1362	4
2194	1363	4
2200	1364	4
2206	1365	4
2207	1366	4
2210	1367	4
2213	1368	4
2217	1369	4
2219	1370	4
2224	1371	4
2225	1372	4
2228	1373	4
2234	1374	4
2239	1375	4
2240	1376	4
2243	1377	4
2246	1378	4
2250	1379	4
2252	1380	4
2255	1381	4
2256	1382	4
2260	1383	4
2265	1384	4
2268	1385	4
2274	1386	4
2276	1387	4
2279	1388	4
2282	1389	4
2284	1390	4
2288	1391	4
2289	1392	4
2292	1393	4
2296	1394	4
2300	1395	4
2303	1396	4
2304	1397	4
2305	1398	4
2306	1399	4
2311	1400	4
2316	1401	4
2318	1402	4
2319	1403	4
2320	1404	4
2322	1405	4
2326	1406	4
2332	1407	4
2339	1408	4
2342	1409	4
2345	1410	4
2347	1411	4
2350	1412	4
2353	1413	1
2354	1414	3
2355	1415	3
2356	1416	2
2357	1417	1
2359	1418	3
2371	1419	1
2372	1420	3
2373	1421	3
2374	1422	1
2375	1423	4
2377	1424	4
2379	1425	2
2385	1426	2
2389	1427	2
2395	1428	2
2401	1429	2
2407	1430	2
2413	1431	2
2416	1432	1
2417	1432	4
2418	1433	1
2419	1434	1
2422	1435	1
2423	1436	1
2424	1437	1
2426	1438	4
2427	1439	1
2429	1440	4
2431	1441	1
2432	31	4
2433	1442	4
2434	1443	1
2436	1444	1
2438	1445	4
2440	1446	4
2441	1447	4
2442	1448	4
2443	1449	4
2445	1450	4
2447	1451	4
2448	1452	3
2449	1453	3
2450	1454	3
2451	1455	3
2452	1456	4
2453	1457	4
2454	1458	4
2455	1459	1
2456	1460	1
2457	1461	1
2458	1462	1
2459	1463	1
2462	1464	2
2464	1465	2
2465	1466	2
2467	1467	2
2468	1468	2
2470	1469	2
2474	1470	2
2476	1471	2
2479	1472	2
2480	1473	2
2482	1474	2
2486	1475	2
2489	1476	2
2491	1477	2
2493	1478	2
2495	1479	2
2496	1480	2
2497	1481	2
2502	1482	2
2504	1483	2
2507	1484	2
2509	1485	2
2511	1486	2
2513	1487	2
2517	1488	2
2518	1489	2
2519	1490	4
2521	1490	2
2523	1491	2
2525	1492	4
2527	1493	3
2529	1494	3
2536	1495	3
2539	1496	3
2546	1497	3
2560	1498	3
2561	1499	3
2565	1500	3
2569	1501	3
2570	1502	4
2571	1503	1
2572	1504	4
2574	1505	3
2575	1506	4
2576	1507	4
2577	1508	4
2578	1509	4
2579	1510	4
2580	1511	4
2581	1512	3
2582	1513	3
2585	1514	1
2586	1515	1
2587	1516	1
2588	1517	4
2590	1518	3
2591	1519	3
2592	1520	4
2593	1521	4
2594	1522	2
2595	1523	2
2597	1524	2
2600	1525	2
2601	1526	2
2604	1527	2
2606	1528	2
2608	1529	2
2609	1530	2
2610	1531	2
2611	1532	2
2613	1533	2
2614	1534	2
2615	1535	2
2616	1536	2
2621	1537	2
2622	1538	2
2623	1539	2
2624	1540	2
2625	1541	2
2627	1542	2
2629	1543	2
2630	1544	2
2634	1545	2
2635	1546	2
2638	1547	2
2639	1548	2
2647	1549	2
2652	1550	2
2654	1551	2
2656	1552	4
2659	1553	2
2662	1554	2
2665	1555	1
2666	1556	4
2667	1557	1
2668	1558	2
2669	1559	1
2670	1560	4
2671	1561	1
2672	1562	1
2673	1563	4
2675	1564	1
2676	1565	4
2678	1566	4
2679	1566	1
2683	1567	2
2693	1568	2
2695	1569	2
2696	1570	2
2698	1571	2
2700	1572	2
2703	1573	2
2707	1574	2
2709	1575	2
2710	1576	2
2712	1577	2
2714	1578	2
2716	1579	2
2718	1580	2
2719	1581	2
2720	1582	2
2722	1583	2
2723	1584	2
2725	1585	2
2726	1586	2
2728	1587	2
2729	1588	2
2731	1589	2
2732	1590	2
2733	1591	2
2735	1592	2
2736	1593	2
2738	1594	2
2739	1595	2
2740	1596	2
2742	1597	2
2743	1598	2
2745	1599	2
2746	1600	4
2750	1601	4
2751	1602	4
2752	1603	4
2755	1604	1
2756	1605	4
2760	1606	4
2761	1607	2
2763	1608	2
2765	1609	1
2766	1610	4
2768	1611	3
2769	1612	3
2770	1613	3
2771	1614	3
2772	1615	3
2773	1616	3
2774	1617	4
2775	1618	1
2776	1619	1
2777	1620	1
2778	1621	1
2779	1622	4
2780	1623	4
2781	1624	1
2782	1625	4
2783	1626	4
2784	1626	1
2785	1627	1
2786	1628	1
2790	1629	4
2791	1630	4
2793	1631	4
2794	1631	1
2795	1632	4
2796	1633	4
2797	1634	1
2798	1635	1
2810	1636	4
2811	1637	1
2812	1638	1
2813	1639	1
2817	1640	4
2819	1641	1
2821	1642	4
2823	1643	1
2825	1644	1
2827	1645	4
2828	1646	1
2829	1647	1
2830	1648	1
2831	1649	4
2836	1650	4
2838	1651	4
2839	1652	4
2841	1653	4
2842	1654	1
2844	1655	1
2845	1656	1
2846	1657	1
2847	1658	4
2849	1659	4
2851	1660	1
2852	1661	4
2853	1662	4
2854	1663	1
2855	1664	4
2859	323	1
2862	1665	4
2864	1666	1
2865	1667	1
2866	1668	4
2869	1669	4
2870	1670	4
2872	1671	4
2874	1672	1
2875	1672	4
2876	1673	1
2878	1674	4
2879	1675	1
2880	1676	3
2883	1677	3
2886	1678	4
2888	1679	1
2890	1680	4
2892	1681	4
2893	1681	1
2894	1682	2
2896	1683	1
2897	1684	1
2898	1685	1
2899	1686	3
2900	1687	4
2901	1688	4
2902	1689	1
2903	1690	1
2904	1691	1
2907	1692	3
2908	1693	4
2909	1694	1
2910	1695	4
2911	1696	4
2912	1697	4
2913	1698	4
2916	1699	4
2917	1700	4
2919	1701	4
2921	1702	4
2922	1703	4
2926	1704	4
2927	1705	4
2928	1706	4
2930	1707	4
2932	1708	4
2933	1709	4
2935	1710	4
2937	1711	4
2938	1712	4
2939	1713	4
2941	1714	4
2942	1715	4
2944	1716	4
2946	1717	1
2947	1718	1
2948	1719	1
2949	1720	1
2952	1721	1
2954	1722	1
2956	1723	1
2958	1723	4
2959	1724	4
2961	1725	1
2962	1726	1
2964	1727	4
2965	1728	4
2967	1729	4
2968	1729	1
2969	1730	4
2970	1731	4
2971	1732	4
2974	1733	4
2977	1734	4
2979	1735	4
2981	1736	4
2986	1737	4
2987	1738	1
2990	1739	3
2991	1740	3
2992	1741	4
2993	1742	4
2994	1743	4
2997	1744	4
2998	1745	4
3000	1746	3
3002	1747	3
3004	1748	3
3005	1749	3
3006	1750	4
3007	1751	4
3008	1240	1
3012	1752	4
3017	1753	4
3019	1754	4
3023	1755	4
3027	1756	4
3030	1757	4
3031	1758	4
3038	1759	4
3040	1760	4
3042	1761	1
3043	1762	4
3044	1763	2
3045	1764	4
3046	1765	4
3047	1766	4
3049	1767	4
3051	1768	4
3054	1769	1
3056	1770	4
3057	1771	4
3058	1772	4
3060	1773	4
3061	1773	1
3063	1774	4
3064	1775	1
3065	1776	1
3066	1777	4
3067	1778	1
3068	1779	1
3069	1780	4
3071	1781	4
3072	1782	1
3073	1783	3
3074	1784	3
3075	1785	4
3076	1786	4
3078	502	4
3080	1787	4
3082	1788	4
3083	1789	4
3084	1790	1
3085	1791	1
3086	1792	1
3088	1793	3
3089	1794	3
3090	1795	4
3091	1796	1
3092	1797	1
3093	1798	1
3094	1799	1
3095	1800	1
3096	507	4
3099	1801	4
3100	1802	1
3101	1803	4
3102	1803	1
3103	1804	4
3105	1805	3
3107	1806	4
3109	1807	4
3110	1808	4
3111	1809	4
3112	1810	4
3113	1811	4
3116	1812	1
3117	1813	4
3118	1814	1
3119	1815	1
3120	1816	1
3122	1817	1
3123	1818	1
3124	1818	3
3125	1819	3
3126	1820	1
3127	1821	1
3129	1822	1
3130	1823	1
3131	1824	1
3132	1825	4
3133	1826	3
3134	1827	3
3135	1828	1
3138	1829	1
3139	1830	4
3141	1831	1
3142	1832	3
3143	1833	3
3144	1834	3
3145	1247	1
3146	1835	1
3148	1836	3
3152	1837	3
3157	1838	4
3158	1838	1
3160	1839	1
3161	1839	4
3162	1840	4
3163	1841	4
3164	1842	4
3165	1843	1
3166	1844	4
3167	1845	3
3168	1846	3
3169	1847	4
3170	1848	4
3171	1849	3
3172	1850	3
3173	1851	3
3174	1852	1
3175	1853	1
3176	1854	3
3177	1855	1
3178	1856	4
3179	1857	3
3180	1858	1
3181	1859	1
3183	1860	1
3184	1861	4
3192	1862	2
3199	1863	2
3202	1864	2
3210	1865	2
3212	1866	4
3213	1867	3
3214	1868	1
3215	1869	4
3216	1869	1
3217	1870	4
3218	1871	2
3223	1872	2
3227	1873	2
3231	1873	3
3234	1874	2
3235	1875	2
3236	1876	2
3237	1877	2
3238	1878	2
3239	1879	2
3242	1880	2
3243	1881	2
3255	1881	3
3258	1882	2
3259	1882	3
3260	1883	2
3266	1884	2
3270	1885	2
3273	1886	2
3275	1887	1
3276	1888	1
3277	582	2
3280	1889	4
3283	1890	3
3284	1891	3
3285	1892	4
3286	1893	1
3287	1894	4
3288	1895	1
3289	1896	4
3294	1897	4
3312	1898	2
3315	1899	2
3317	1900	2
3323	1901	2
3324	1902	2
3334	1903	2
3336	1904	2
3350	1905	2
3351	1906	4
3355	1907	4
3357	1908	4
3359	1909	2
3361	1910	2
3363	1911	4
3365	1912	4
3367	1913	4
3368	1914	4
3369	1915	4
3370	1916	4
3371	1917	3
3376	1918	3
3377	1919	3
3381	1920	3
3394	1921	3
3396	1922	3
3397	1923	1
3398	1924	4
3399	1925	4
3401	1926	4
3403	1927	4
3404	1928	4
3408	1929	4
3410	1930	1
3411	1931	1
3412	1932	1
3413	1933	1
3414	1934	4
3415	1935	1
3416	1936	1
3417	1937	1
3418	1937	4
3419	1938	4
3420	1939	4
3421	1940	4
3422	1941	3
3423	1942	3
3425	1943	4
3426	1944	3
3427	1945	3
3428	1946	3
3431	1947	2
3433	1948	2
3434	1949	2
3436	1950	2
3440	1951	2
3445	1952	2
3450	1953	1
3451	1954	3
3452	1955	3
3453	1956	1
3454	1957	4
3456	1958	4
3460	1959	1
3462	1960	4
3464	1961	4
3465	1962	4
3466	1963	4
3467	1964	4
3469	1965	4
3470	1966	4
3472	1967	4
3474	1968	1
3475	1969	2
3481	1970	2
3484	1971	2
3490	1972	2
3496	1973	2
3500	1974	4
3503	1975	2
3505	1976	2
3507	1977	1
3508	1978	2
3511	1979	2
3514	1980	2
3515	1981	2
3517	1982	4
3520	1983	1
3521	1984	4
3523	1985	1
3524	1986	1
3525	1986	4
3527	1987	4
3528	1988	1
3530	1989	1
3532	1990	4
3536	1991	1
3537	1992	4
3538	1993	4
3539	1994	4
3542	1995	4
3544	1996	4
3546	1997	4
3547	1998	4
3549	1999	1
3550	2000	1
3551	700	1
3554	2001	3
3555	2002	3
3556	2003	1
3557	2004	4
3558	2005	1
3559	2005	4
3562	2006	3
3563	2007	3
3564	2008	4
3565	2009	4
3566	2010	4
3569	2011	4
3572	2012	4
3575	2013	4
3576	2014	4
3577	2015	4
3579	2016	4
3580	2017	1
3582	714	1
3583	2018	1
3584	2019	3
3585	2020	3
3586	2021	1
3587	2022	1
3589	2023	1
3591	2024	1
3592	2025	1
3593	2026	1
3595	721	1
3597	721	2
3598	2027	4
3600	2027	2
3601	2028	4
3602	724	1
3603	2029	4
3606	2030	4
3608	2031	1
3609	727	4
3612	2032	1
3614	2033	4
3615	2034	4
3616	2035	1
3617	2036	4
3618	2037	4
3622	2038	4
3624	2039	4
3626	2040	4
3627	2041	4
3628	2042	1
3629	2043	4
3630	2043	2
3631	2044	4
3634	2045	4
3636	2046	4
3637	2047	4
3638	2048	4
3639	2049	2
3642	2050	2
3643	2051	2
3644	2052	2
3646	2053	2
3648	2054	2
3650	2055	2
3651	2056	2
3652	2057	2
3653	2058	2
3655	2059	2
3657	2060	2
3658	2061	1
3659	2061	3
3661	2062	3
3662	2063	3
3663	2064	4
3664	2065	1
3665	2066	3
3666	2067	3
3667	2068	4
3669	2069	1
3670	2070	1
3671	2071	4
3672	2072	4
3673	2073	4
3675	2074	4
3676	2075	4
3677	2076	4
3678	2077	3
3679	2078	3
3680	2079	4
3681	2080	1
3682	2081	1
3683	2081	4
3684	2082	4
3685	2083	4
3686	2084	4
3687	2085	4
3688	2086	1
3690	780	1
3692	2087	1
3693	2088	1
3695	2089	1
3696	2090	1
3697	2091	3
3698	2092	3
3699	2093	1
3704	2094	4
3713	2095	4
3718	2096	4
3721	2096	2
3724	2097	4
3728	796	1
3729	2098	4
3730	2098	1
3731	2099	1
3733	798	1
3734	2100	4
3735	2101	4
3737	2102	1
3738	2103	1
3740	2104	4
3742	2105	4
3743	2106	4
3747	2107	4
3748	2108	4
3749	2109	1
3750	2110	1
3751	2111	4
3752	2112	4
3754	2113	1
3757	2114	4
3758	2115	4
3763	2116	4
3764	2117	4
3765	2118	4
3767	2119	1
3769	2120	4
3770	2121	3
3771	2122	3
3772	2123	1
3773	2124	4
3774	2125	4
3775	2126	1
3776	2127	4
3777	2128	4
3779	2129	4
3781	2130	4
3783	2131	4
3784	2132	4
3785	2133	4
3786	2134	4
3787	2135	4
3788	2136	4
3790	2137	4
3791	2138	4
3796	2139	4
3797	2140	4
3798	2141	4
3800	2142	4
3801	2143	4
3802	2144	4
3803	2145	4
3804	2146	1
3805	847	4
3807	2147	1
3808	2148	1
3809	2149	4
3810	2150	1
3811	2151	1
3812	2152	1
3813	2153	4
3818	2154	4
3820	2155	4
3824	2156	1
3826	2157	4
3827	2158	4
3828	2159	4
3829	2160	4
3830	2161	1
3831	2162	4
3841	2163	2
3845	2164	2
3854	2165	2
3857	2166	2
3867	2167	2
3872	2168	4
3874	2169	4
3875	2170	2
3878	2171	2
3880	2172	2
3884	2173	2
3888	2174	2
3891	2175	2
3892	2176	4
3893	2177	2
3895	2178	2
3897	2179	1
3898	2180	1
3900	2181	1
3901	2182	4
3902	2183	1
3904	2184	4
3905	2185	4
3906	2186	4
3907	2187	4
3910	2188	4
3911	2189	4
3913	2190	4
3914	2191	1
3915	2192	4
3916	2193	3
3918	2194	3
3920	2195	3
3922	2196	3
3924	2197	4
3925	2198	1
3926	2199	1
3927	2200	4
3928	2201	4
3929	2202	4
3930	2203	4
3931	2204	4
3932	2205	4
3933	2206	1
3935	2207	4
3936	2208	4
3937	2209	4
3938	2210	4
3940	2211	4
3941	2212	4
3942	2213	4
3947	2214	4
3951	2215	4
3955	2216	4
3957	2217	4
3959	2218	4
3968	2219	4
3971	2220	4
3973	2221	4
3974	2222	4
3976	2223	4
3977	2224	4
3980	2225	4
3982	2226	4
3983	2227	4
3985	2228	4
3989	2229	4
3992	2230	4
3994	2231	4
3998	2232	4
4000	2233	4
4002	2234	4
4006	2235	4
4007	2236	4
4008	2237	4
4010	2238	4
4012	2239	4
4014	2240	4
4016	2241	4
4018	2242	4
4020	2243	4
4022	2244	4
4024	2245	4
4025	2246	4
4026	2247	4
4028	2248	4
4030	2249	4
4032	2250	4
4033	2251	4
4035	2252	4
4036	2253	4
4043	2254	4
4047	2255	4
4048	2256	4
4049	2256	2
4050	2257	4
4052	2258	4
4054	2259	4
4055	2260	4
4059	2261	4
4061	2262	4
4063	2263	4
4064	2264	2
4066	2265	2
4068	2266	2
4070	2267	2
4072	2268	2
4074	2269	2
4075	2270	2
4078	2271	2
4080	2272	2
4082	2273	2
4083	2274	2
4084	2275	2
4085	2276	2
4088	2277	2
4093	2278	2
4095	2279	2
4096	2280	2
4097	2281	2
4099	2282	2
4101	2283	2
4103	2284	2
4107	2285	2
4109	2286	2
4110	2287	2
4111	2288	2
4115	2289	2
4118	2290	2
4121	2291	2
4123	2292	2
4125	2293	2
4127	2294	2
4129	2295	2
4130	2296	2
4131	2297	2
4133	2298	2
4134	2299	2
4136	2300	2
4138	2301	2
4141	2302	2
4142	2303	2
4143	2304	2
4144	2305	2
4145	2306	2
4146	2307	2
4148	2308	2
4149	2309	2
4151	2310	2
4152	2311	2
4153	2312	2
4154	2313	2
4158	2314	2
4159	2315	2
4160	2316	2
4162	2317	2
4163	2318	2
4164	2319	2
4167	2320	2
4168	2321	2
4170	2322	2
4173	2323	2
4174	2324	2
4176	2325	2
4177	2326	2
4179	2327	1
4180	2328	1
4183	2329	1
4185	2330	1
4186	2331	1
4187	2332	4
4188	2333	1
4189	2334	1
4190	2335	4
4191	2336	4
4197	2337	2
4199	2338	1
4201	2339	4
4202	2339	1
4203	999	4
4204	2340	4
4206	2341	4
4207	2342	4
4208	2343	4
4209	2344	3
4211	2345	1
4219	2346	4
4227	2347	1
4232	2348	4
4236	2349	1
4241	2350	4
4243	2351	4
4244	2352	4
4245	2353	4
4246	2354	2
4248	2355	2
4249	2356	2
4250	2357	2
4251	2358	2
4259	2359	2
4263	2360	2
4265	2361	2
4267	2362	2
4269	2363	2
4271	2364	2
4273	2365	1
4274	2365	4
4278	2366	4
4279	2367	4
4281	2368	4
4284	2369	4
4285	2370	2
4292	2371	2
4294	2372	4
4295	2373	3
4296	2374	3
4297	2375	3
4298	2376	1
4301	2377	4
4303	2378	4
4306	2379	4
4307	2380	1
4308	2381	4
4310	2382	1
4311	2383	4
4313	2384	4
4314	2385	4
4315	2386	4
4316	2387	1
4318	2388	1
4319	2389	1
4320	2390	1
4322	2391	1
4325	2392	4
4335	2393	3
4336	2394	3
4337	2395	3
4338	2396	1
4339	2397	1
4343	2398	4
4345	2399	4
4346	2400	4
4347	2401	1
4348	2401	4
4349	2402	4
4352	2403	4
4353	2404	4
4355	2405	4
4363	2406	4
4367	2407	4
4369	2408	4
4370	2409	4
4372	2410	4
4373	2411	1
4375	2412	1
4376	2413	1
4377	2414	4
4378	2415	4
4379	2416	4
4380	2417	4
4381	2418	4
4382	2419	4
4384	2420	4
4385	2421	1
4386	2422	4
4388	2423	1
4389	2424	4
4390	2425	4
4392	2426	4
4393	2427	4
4395	2428	4
4397	2429	4
4398	2430	4
4399	2431	4
4400	2432	4
4402	2433	4
4403	2434	4
4404	2435	4
4406	2436	1
4409	2437	2
4410	2438	1
4411	1121	4
4413	2439	4
4415	2440	4
4416	2440	1
4417	1124	4
4418	2441	2
4420	2442	1
4421	2443	4
4422	2444	3
4423	2445	3
4424	2446	3
4426	2447	1
4430	2448	3
4435	2449	3
4436	2450	3
4440	2451	3
4441	2452	3
4442	2453	2
4445	2454	4
4446	2455	4
4448	2456	1
4450	2457	1
4452	2458	4
4453	2459	4
4454	2459	1
4456	2460	1
4457	2461	4
4458	2462	4
4460	2463	4
4462	2464	4
4463	2465	5
4466	2466	4
4468	2467	4
4469	2468	5
4472	2469	4
4473	2470	4
4474	2471	5
4475	2472	5
4476	2473	5
4478	2474	4
4482	2475	4
4483	2476	4
4485	2477	4
4486	2478	5
4487	2479	5
4488	2480	4
4489	2481	5
4490	2482	5
4491	2483	5
4492	2484	5
4493	2485	5
4494	2486	4
4495	2487	4
4496	2488	4
4501	2489	5
4503	2490	4
4505	2491	5
4506	2492	5
4507	2493	4
4509	2494	4
4510	2495	4
4513	2496	4
4514	2497	4
4516	2498	4
4517	2499	4
4519	2500	5
4520	2501	4
4521	2502	5
4522	2503	4
4523	2504	5
4524	2505	5
4525	2506	5
4528	2507	4
4531	2508	4
4533	2509	4
4534	2510	4
4535	2511	4
4538	2512	4
4539	2513	4
4540	2514	4
4541	2515	5
4542	2516	4
4543	2517	5
4544	2518	5
4545	2519	4
4546	2520	5
4547	2521	4
4548	2522	4
4549	2523	4
4550	2524	4
4551	2525	4
4552	2526	4
4555	2527	4
4556	2528	4
4559	2529	4
4560	2530	4
4562	2531	4
4566	2532	4
4567	624	4
4569	2533	4
4570	2534	4
4571	2535	5
4572	2536	4
4574	2537	4
4576	2538	4
4582	2539	4
4583	2540	5
4584	2541	5
4587	2542	4
4588	2543	5
4589	2544	5
4590	2545	5
4591	2546	4
4593	2547	4
4594	2548	5
4595	2549	4
4600	2550	5
4601	2551	5
4602	2552	5
4603	2553	5
4604	2554	4
4605	2555	4
4606	2556	5
4607	2557	5
4610	2558	4
4611	2559	4
4612	2560	4
4616	2561	4
4617	2562	4
4618	2563	5
4620	2564	4
4622	2565	4
4623	2566	4
4624	2567	5
4625	2568	4
4626	2569	4
4628	2570	4
4629	2571	5
4633	2572	5
4634	2573	4
4635	2574	5
4636	2575	5
4637	2576	4
4642	2577	4
4647	2578	4
4649	2579	5
4650	2580	4
4657	2581	4
4658	2582	4
4662	2583	4
4665	2584	4
4667	2585	5
4668	2586	4
4670	2587	4
4672	2588	5
4673	2589	4
4674	2590	5
4675	2591	4
4676	2592	4
4680	2593	4
4681	2594	4
4683	2595	4
4686	2596	4
4689	2597	4
4691	2598	5
4692	2599	4
4693	2600	4
4694	2601	4
4696	2602	4
4697	2603	5
4698	2604	5
4699	2605	5
4701	2606	4
4702	2607	4
4703	2608	4
4705	2609	5
4706	2610	4
4707	2611	4
4708	2612	5
4711	2613	5
4712	2614	5
4713	2615	5
4714	2616	5
4715	2617	4
4716	2618	4
4717	2619	5
4718	2620	4
4720	2621	4
4721	2622	4
4722	2623	4
4724	2624	4
4725	2625	4
4726	2626	4
4729	2627	5
4730	2628	5
4731	2629	4
4732	2630	4
4733	1123	4
4735	2631	4
4736	2632	5
4738	2633	4
4739	2634	4
4740	2635	4
4741	2636	4
4742	2637	4
4743	2638	4
4744	2639	4
4747	2640	4
4753	2641	4
4757	2642	4
4762	2643	4
4765	2644	4
4766	2645	4
4767	2646	4
4769	2647	4
4772	2648	4
4775	2649	4
4779	2650	4
4780	2651	4
4783	2652	4
4786	2653	4
4791	2654	4
4797	2655	4
4800	2656	4
4804	2657	4
4805	2658	4
4811	2659	4
4814	2660	4
4815	2661	4
4820	2662	4
4823	2663	4
4829	2664	4
4831	2665	4
4836	2666	4
4841	2667	4
4842	2668	4
4849	2669	4
4855	2670	4
4858	2671	4
4862	2672	4
4864	2673	4
4870	2674	4
4876	2675	4
4877	2676	4
4880	2677	4
4883	2678	4
4887	2679	4
4889	2680	4
4894	2681	4
4895	2682	4
4898	2683	4
4904	2684	4
4909	2685	4
4910	2686	4
4913	2687	4
4916	2688	4
4920	2689	4
4922	2690	4
4925	2691	4
4926	2692	4
4930	2693	4
4935	2694	4
4938	2695	4
4944	2696	4
4946	2697	4
4949	2698	4
4952	2699	4
4954	2700	4
4958	2701	4
4959	2702	4
4962	2703	4
4966	2704	4
4970	2705	4
4973	2706	4
4974	2707	4
4975	2708	4
4976	2709	4
4981	2710	4
4986	2711	4
4988	2712	4
4989	2713	4
4990	2714	4
4992	2715	4
4996	2716	4
5002	2717	4
5009	2718	4
5012	2719	4
5015	2720	4
5017	2721	4
5020	2722	4
5024	2723	3
5027	2724	2
5028	2725	4
5034	2726	4
5042	2727	4
5043	2728	4
5047	2729	4
5066	2730	4
5072	2731	4
5077	2732	4
5080	2443	1
5084	2733	1
5087	2734	1
5091	2735	4
5092	1131	4
5093	2736	1
5095	2737	1
5098	2738	4
5099	2739	2
5100	1136	1
5101	2740	4
5103	1113	1
5105	2741	4
5108	2742	4
5112	2743	1
5113	1116	1
5114	2744	4
5116	2745	4
5118	2746	4
5122	2747	2
5135	2748	2
5149	2749	4
5150	2750	4
5151	2751	1
5153	2752	1
5154	2753	1
5155	2754	1
5156	2755	1
5157	2756	1
5158	2757	1
5161	2758	2
5164	2759	2
5166	2760	2
5171	2761	2
5172	2762	2
5178	2763	2
5179	2764	1
5184	2765	4
5185	2766	1
5187	2767	1
5188	2768	4
5189	2769	1
5190	2770	4
5195	408	1
5201	2771	4
5203	2772	4
5208	2773	4
5210	2774	4
5212	411	1
5217	2775	4
5218	2776	4
5219	249	1
5222	2777	4
5225	2778	4
5226	2779	4
5227	2780	4
5228	2781	1
5229	2782	1
5234	2783	1
5240	2784	1
5242	2785	4
5244	2786	1
5245	2787	1
5246	2787	4
5247	2788	4
5248	633	1
5249	2789	1
5250	2790	1
5253	2791	1
5254	2792	4
5255	2793	4
5256	2794	1
5257	2795	1
5259	2796	4
5260	2797	4
5261	2798	4
5262	266	1
5266	261	1
5270	2799	1
5275	2800	4
5277	2801	4
5280	2802	4
5297	2803	2
5302	2804	2
5308	2805	1
5309	916	1
5310	915	1
5312	2806	3
5317	2807	3
5321	2808	3
5325	2809	4
5334	2810	3
5338	2811	4
5342	2812	4
5343	2813	1
5344	2814	1
5345	2815	1
5346	2816	1
5347	2817	1
5348	2818	4
5350	2819	1
5353	2820	1
5356	2821	3
5361	2822	3
5364	2823	3
5366	2824	4
5368	674	4
5370	2825	1
5373	2826	4
5375	2826	1
5378	676	1
5388	669	1
5392	2827	1
5394	2828	1
5397	2829	4
5400	2830	1
5401	2831	1
5402	2832	2
5410	2833	3
5414	2834	1
5416	2835	1
5417	2836	4
5418	2837	1
5419	2838	4
5420	2839	4
5423	2840	1
5425	330	4
5426	329	1
5429	2841	3
5435	2842	1
5437	2843	1
5438	324	1
5449	2844	4
5457	2845	4
5459	2846	4
5460	2847	4
5463	2848	2
5467	2849	2
5469	2850	2
5471	2851	2
5473	2852	2
5475	2853	2
5477	2854	2
5483	2855	2
5488	2856	2
5493	2857	2
5494	2858	2
5496	2859	2
5498	2860	2
5500	2861	2
5501	2862	2
5503	2863	2
5507	2864	2
5510	2865	2
5512	2866	2
5517	2867	2
5522	2868	1
5525	82	1
5526	89	1
5527	91	1
5529	2869	1
5530	2870	4
5531	2871	4
5532	2872	4
5534	2873	4
5535	2874	4
5541	2875	4
5542	2876	4
5543	2877	4
5545	2878	1
5547	77	4
5550	2879	3
5553	2880	2
5554	2881	2
5555	2882	4
5557	2883	4
5560	2884	4
5561	2885	4
5562	2886	4
5566	2887	4
5572	2888	4
5577	2889	4
5581	2890	1
5583	2891	1
5585	2892	4
5591	2893	1
5595	2894	4
5596	2895	1
5597	2896	4
5610	2897	4
5612	48	1
5613	2898	1
5614	2899	4
5615	2900	1
5616	2901	1
5617	2902	3
5618	2903	4
5619	2904	4
5620	2905	4
5621	2906	4
5623	2907	4
5625	2908	4
5626	2909	4
5628	2910	4
5630	2911	4
5632	2912	4
5635	2913	4
5637	2914	4
5639	2915	4
5640	2916	4
5642	2917	4
5648	2918	4
5649	2919	4
5650	2920	4
5651	2921	4
5652	2922	4
5653	2923	4
5654	2924	4
5656	2925	4
5657	2926	4
5659	2927	4
5662	2928	4
5664	2929	4
5666	2930	4
5669	2931	4
5671	2932	4
5673	2933	4
5676	2934	4
5682	2935	4
5684	2936	4
5688	2937	4
5697	2938	4
5698	2939	4
5699	2940	4
5703	2941	4
5709	2942	4
5710	2943	4
5711	2944	4
5712	2945	4
5713	2946	4
5714	2947	4
5715	2948	4
5716	2949	4
5717	2950	4
5721	2951	4
5729	2952	4
5730	2953	4
5731	2954	4
5733	2955	4
5734	2956	4
5735	2957	4
5737	2958	4
5738	2959	4
5739	2960	4
5741	2961	4
5742	2962	4
5748	2963	4
5750	2964	4
5751	2965	4
5752	2966	4
5753	2967	4
5755	2968	4
5759	2969	4
5760	2970	2
5761	2971	4
5762	2972	4
5764	2973	4
5765	2974	4
5766	2975	4
5769	2976	4
5779	2970	4
5780	2977	4
5790	2978	4
5793	2979	4
5794	2980	4
5796	2981	4
5799	2982	4
5800	2983	4
5807	2984	4
5808	2985	4
5809	837	1
5811	2986	4
5817	2987	4
5825	2988	4
5834	2989	4
5842	2990	4
5872	2991	4
5873	2992	1
5876	2993	1
5877	2994	4
5879	50	1
5884	2995	4
5886	2996	1
5887	1065	1
5888	2997	1
5889	2998	1
5893	2999	1
5895	3000	1
5897	3001	4
5899	3002	4
5904	2111	1
5912	3003	4
5914	3004	4
5917	3005	1
5922	3006	1
5923	3006	4
5924	3007	4
5925	2124	1
5927	1082	1
5929	3008	4
5939	3009	4
5945	3010	4
5947	3011	4
5954	3012	1
5956	3013	4
5957	3013	1
5960	3014	1
5961	3015	1
5962	3016	1
5969	3017	1
5970	3018	4
5971	3019	1
5972	3020	4
5973	3019	4
5974	3021	4
5975	3022	4
5978	3023	1
5980	3024	4
5981	3025	4
5982	3026	4
5983	3027	1
5984	3028	4
5985	3029	4
5986	3030	4
5988	3031	4
5990	3032	4
5991	3033	4
5994	3034	4
5995	3035	4
5997	3036	1
5998	3037	4
5999	3037	1
6004	771	1
6010	3038	2
6012	3039	2
6014	3040	2
6016	3041	2
6019	3042	2
6020	3043	2
6022	3044	2
6023	3045	4
6024	3046	4
6026	3047	2
6028	3048	1
6029	725	1
6032	3049	4
6036	3050	1
6038	3051	1
6039	3051	4
6041	3052	4
6050	3053	4
6051	848	4
6052	3054	1
6056	3055	4
6058	3056	4
6059	3057	1
6060	3058	1
6061	3059	1
6062	3060	1
6064	907	1
6068	3061	4
6069	3062	1
6071	3063	1
6073	1087	1
6078	3064	1
6082	462	4
6084	3065	1
6085	450	2
6088	3066	2
6090	3067	2
6092	3068	2
6094	3069	2
6095	3070	2
6097	3071	2
6099	3072	2
6100	3073	2
6102	3074	2
6106	3075	2
6107	3076	2
6109	3077	2
6110	3078	2
6111	3079	2
6112	3080	2
6113	3081	2
6116	3082	4
6117	3083	4
6125	613	4
6126	1904	4
6127	1905	4
6128	610	4
6129	3084	4
6130	611	4
6132	608	4
6136	612	4
6138	615	4
6142	607	4
6145	614	4
6150	3085	3
6158	3086	4
6164	3087	4
6167	3088	4
6173	170	1
6174	3089	1
6178	697	4
6179	3090	1
6180	3091	1
6181	1999	4
6183	3092	4
6188	857	4
6189	858	4
6192	3093	4
6195	3094	4
6196	3094	1
6197	3095	4
6198	3096	4
6203	3097	1
6204	3098	1
6206	3099	1
6207	3100	1
6213	3101	4
6220	3102	1
6221	3103	1
6226	3104	2
6228	3105	1
6231	2090	4
6233	3106	4
6234	3106	1
6237	3107	1
6243	3108	4
6247	3109	4
6252	3110	1
6255	1645	1
6257	3111	4
6258	3112	4
6262	3113	4
6265	3114	4
6267	3115	4
6272	3116	4
6274	306	1
6275	307	1
6276	3117	4
6281	3118	4
6283	3119	1
6284	3120	1
6285	3121	4
6286	3122	4
6288	3123	4
6291	877	1
6292	3124	1
6293	3125	1
6300	3126	2
6304	3127	2
6307	3128	2
6319	3129	4
6320	3130	4
6322	3131	3
6323	1848	1
6326	3132	3
6331	3133	1
6333	3134	1
6334	3135	1
6335	3136	1
6337	3137	4
6339	3138	4
6340	3139	4
6342	3140	4
6343	3141	4
6364	1151	4
6366	3142	4
6371	3143	1
6374	3144	4
6377	3145	1
6378	3146	4
6379	3147	4
6381	3148	1
6384	3149	1
6385	3150	1
6386	3151	4
6402	3152	4
6412	3153	4
6413	3154	4
6415	3155	2
6436	3156	2
6440	3157	4
6455	3158	2
6456	3159	2
6462	3160	2
6471	3161	2
6473	3162	2
6474	3163	4
6475	3164	4
6476	3165	1
6477	3166	1
6480	3167	4
6482	3168	4
6483	3169	1
6484	3169	4
6488	3170	4
6489	3171	4
6498	3172	1
6499	3173	4
6500	3174	4
6501	3175	4
6505	3176	4
6507	1787	2
6508	3177	2
6509	3177	4
6510	3178	2
6515	3179	4
6517	501	4
6521	3180	4
6529	3181	4
6531	3179	2
6532	3182	4
6533	3183	4
6538	3184	4
6541	3185	4
6542	477	4
6543	3186	4
6546	1779	4
6555	474	1
6560	3187	4
6568	3188	4
6572	3189	1
6579	3190	1
6581	3191	4
6582	3191	1
6585	3192	4
6586	3193	4
6587	44	4
6588	43	4
6591	42	4
6595	3194	4
6598	3195	4
6603	3196	4
6604	35	1
6613	3197	4
6614	3198	4
6617	3199	4
6618	431	1
6622	3200	4
6627	434	1
6628	425	1
6631	3201	4
6642	3202	1
6644	3203	4
6646	3204	1
6647	3205	1
6648	3206	1
6649	3207	1
6651	3208	4
6652	569	4
6657	3209	4
6658	3209	1
6665	3210	1
6667	3210	4
6675	3211	4
6677	3212	4
6680	3213	1
6683	3214	1
6686	3215	1
6687	3215	4
6688	524	1
6689	3216	4
6690	3217	4
6691	3218	4
6692	3219	4
6693	3220	1
6694	3221	1
6697	3222	4
6698	3223	4
6699	3224	4
6701	3225	4
6706	3226	1
6707	3227	1
6712	517	4
6719	3228	1
6720	529	1
6726	526	1
6728	3229	1
6733	3230	1
6734	505	1
6736	3231	4
6737	3230	4
6742	3232	1
6743	1909	4
6752	3233	1
6754	3234	4
6755	3234	1
6756	174	1
6757	605	4
6758	597	4
6759	604	4
6761	596	4
6762	598	4
6763	601	4
6766	603	4
6767	599	4
6768	1900	4
6775	1899	4
6778	595	4
6782	602	4
6791	3235	2
6799	3236	2
6807	3237	2
6809	3238	2
6810	3239	2
6811	3240	2
6812	3241	2
6813	3242	2
6822	3243	2
6825	3244	2
6839	3245	4
6841	3246	4
6843	3247	4
6845	3248	1
6847	3249	2
6854	3250	1
6858	3251	4
6872	3252	5
6873	1186	5
6875	1187	5
6882	2620	5
6883	1312	5
6885	3253	4
6887	1314	5
6889	2623	5
6892	2631	5
6896	3254	4
6897	1273	5
6898	1274	5
6899	3255	4
6901	3256	4
6902	1264	5
6903	3257	5
6905	3258	4
6908	3259	4
6910	3260	4
6912	3261	4
6913	3262	4
6917	3263	5
6918	3264	4
6919	3265	5
6920	3266	4
6923	1211	5
6929	3267	4
6930	3268	5
6931	2548	4
6932	1304	5
6935	3269	4
6936	3270	4
6937	3271	5
6939	3272	4
6944	3273	4
6945	3274	4
6948	3275	4
6951	3276	5
6953	49	5
6955	3277	5
6956	3278	5
6957	3279	5
6958	3280	5
6959	3281	4
6962	3282	5
6966	3283	4
6968	1217	5
6969	2483	4
6973	3284	4
6976	3285	5
6979	3286	4
6981	2570	5
6983	3287	5
6985	1266	5
6987	3288	4
6991	1220	5
6992	1301	5
6993	3289	5
6994	3290	5
6997	1295	5
7002	3291	4
7003	3292	4
7004	3293	4
7005	760	4
7006	3294	5
7008	3295	5
7009	3296	5
7010	3297	4
7011	2572	4
7012	3298	5
7013	3299	4
7014	3300	4
7016	1291	5
7019	1265	5
7022	3301	4
7023	3302	4
7025	3303	4
7026	3304	4
7027	2496	5
7031	3305	4
7034	3306	4
7035	3307	4
7037	3308	4
7038	3309	4
7040	2515	4
7041	3310	5
7043	3311	5
7044	1229	5
7045	3312	5
7046	3313	5
7048	3314	5
7051	3315	4
7061	3316	4
7062	1225	5
7064	3317	5
7065	3318	4
7066	1257	5
7069	3319	5
7072	1297	5
7075	1268	5
7076	3320	5
7079	3321	5
7080	3322	5
7082	3323	4
7085	1238	5
7087	3324	4
7088	3325	5
7089	2511	5
7092	3326	4
7093	3327	5
7100	3328	4
7104	3329	5
7105	1321	5
7107	2587	5
7109	3330	5
7110	2605	4
7115	1293	5
7120	3331	5
7121	3332	5
7123	3333	4
7127	3334	5
7128	3335	4
7129	1244	5
7130	3336	4
7132	2497	5
7137	1235	5
7139	3337	4
7154	3338	4
7155	3339	4
7189	3340	4
7193	3341	4
7201	3342	4
7227	3343	4
7236	3344	4
7237	3345	4
7293	3346	4
7299	3347	4
7306	3348	4
7311	3349	4
7313	3350	4
7335	3351	2
7340	3352	2
7346	3353	2
7349	3354	2
7362	3355	2
7363	3356	2
7367	3357	2
7386	3358	2
7430	3359	4
7461	3360	4
7507	3361	4
7511	3362	2
\.


--
-- Data for Name: jcourse_api_course_teacher_group; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.jcourse_api_course_teacher_group (id, course_id, teacher_id) FROM stdin;
1	1	1
2	2	2
3	3	3
5	4	4
7	5	5
9	6	6
10	7	7
11	8	8
12	9	9
13	10	10
14	11	11
16	12	12
18	13	13
19	14	14
20	15	15
21	16	16
22	17	16
23	18	17
24	19	18
25	20	19
26	21	20
27	22	21
28	23	22
29	24	23
30	25	24
32	26	25
34	27	26
36	28	27
38	29	28
40	30	29
41	31	30
42	32	31
43	33	32
44	34	33
46	35	34
49	36	35
51	37	36
53	38	37
54	39	38
56	40	39
57	41	40
58	42	41
59	43	42
60	44	43
61	45	44
62	46	45
63	47	46
65	48	47
66	49	48
67	50	49
70	51	50
71	52	51
74	53	52
76	54	53
77	55	54
78	56	55
80	57	56
82	58	57
84	59	58
86	60	59
87	61	60
88	62	61
89	63	62
91	64	63
93	65	64
95	66	65
97	67	66
101	68	67
102	69	68
106	70	69
107	71	70
108	72	71
109	73	19
110	74	72
113	75	73
114	76	74
116	77	75
118	78	76
119	79	77
122	80	78
123	81	79
126	82	80
128	83	81
129	84	82
132	85	83
133	86	84
134	87	85
135	88	86
136	89	87
137	90	88
138	91	89
139	92	90
140	93	91
141	94	92
143	95	93
144	96	94
145	97	95
146	98	96
147	99	97
148	100	98
149	101	99
150	102	100
151	103	101
152	104	102
153	105	103
154	106	104
155	107	105
156	108	106
157	109	107
159	110	108
161	111	109
163	112	110
164	113	111
166	114	112
167	115	113
168	116	91
169	117	114
170	118	115
171	119	116
172	120	117
173	121	118
174	122	119
176	123	97
177	124	120
178	125	121
179	126	122
180	127	123
181	128	124
182	129	125
183	130	126
184	131	127
185	132	128
186	133	129
187	134	130
188	135	131
189	136	132
190	137	133
191	138	134
192	139	135
194	140	136
195	141	137
196	142	138
198	143	139
199	144	140
201	145	141
202	146	142
203	147	143
204	148	144
205	149	145
206	150	146
207	151	147
208	152	148
210	153	149
217	154	150
218	155	151
219	156	152
220	157	153
221	158	154
222	159	155
223	160	156
224	161	157
225	162	158
226	163	159
227	164	160
228	165	161
229	166	162
230	167	163
231	168	164
233	169	165
234	170	166
236	171	167
237	172	168
238	173	169
240	174	170
241	175	171
242	176	172
244	177	173
245	178	174
247	179	175
248	180	176
250	181	177
252	182	178
253	183	179
255	184	180
258	185	181
260	186	182
261	187	183
264	188	184
267	189	185
269	190	186
272	191	187
274	192	188
277	193	189
279	194	190
281	195	191
283	196	192
286	197	193
287	198	194
288	199	175
290	200	195
291	201	196
293	202	197
297	203	198
300	204	199
302	205	200
303	206	201
305	207	202
308	208	203
310	209	204
312	210	205
314	211	206
317	212	207
319	213	200
320	214	208
322	215	209
325	216	210
327	217	211
329	218	34
331	219	212
333	220	213
335	221	214
337	222	215
339	223	216
341	224	217
342	225	218
344	226	219
346	227	220
348	228	221
350	229	222
352	230	223
353	231	224
355	232	225
356	233	226
357	234	227
360	235	228
362	236	229
363	237	53
364	238	230
365	239	231
366	240	232
367	241	233
368	242	53
369	243	234
370	244	235
371	245	236
372	246	237
375	247	238
376	248	239
377	249	240
379	250	241
380	251	242
381	252	243
382	253	244
383	254	245
384	255	246
385	256	247
386	257	248
389	258	249
390	259	250
391	260	251
393	261	252
394	262	253
396	263	254
397	264	255
398	265	256
400	266	257
402	267	258
404	268	259
406	269	254
408	270	260
409	271	261
411	272	262
413	273	263
414	274	264
415	275	265
416	276	266
418	277	267
419	278	268
420	279	269
422	280	270
423	281	271
425	282	272
427	283	273
428	284	52
429	285	158
430	286	274
431	287	275
432	288	276
434	289	277
435	290	278
436	291	279
437	292	280
439	293	281
440	294	282
441	295	283
442	296	284
445	297	285
446	298	286
447	299	287
449	300	288
450	301	289
451	302	175
452	303	281
454	304	290
456	305	291
458	306	292
459	307	293
460	308	294
461	309	295
462	310	296
463	311	297
464	312	298
465	313	299
468	314	300
469	315	301
470	316	302
472	317	303
473	318	304
474	319	305
475	320	306
477	321	307
478	322	308
480	323	309
481	324	310
482	325	311
484	326	312
487	327	313
488	328	314
490	329	315
491	330	316
492	331	317
493	332	314
494	333	318
495	334	319
496	335	320
497	336	305
498	337	321
499	338	322
500	339	323
501	340	324
502	341	325
503	342	316
504	343	326
505	344	327
506	345	328
507	346	329
508	347	330
509	348	331
510	349	332
512	350	333
514	351	334
515	352	334
517	353	335
520	354	336
523	355	337
526	356	338
529	357	315
530	358	339
531	359	340
532	360	341
533	361	342
534	362	325
535	363	281
536	364	343
537	365	344
538	366	282
539	367	345
540	368	346
541	369	347
542	370	348
543	371	349
544	372	350
545	373	351
546	374	352
547	375	353
548	376	354
549	377	355
550	378	356
551	379	357
553	380	341
554	381	343
555	382	347
556	383	282
557	384	317
558	385	358
559	386	359
560	387	360
562	388	361
563	389	362
565	390	363
566	391	364
567	392	365
569	393	366
570	394	367
571	395	368
572	396	369
574	397	370
575	398	85
576	399	371
577	400	372
579	401	373
580	402	368
582	403	374
583	404	375
585	405	376
587	406	377
588	407	378
590	408	379
592	409	380
593	410	381
597	411	382
599	412	383
601	413	384
604	414	27
605	415	385
607	416	386
609	417	387
612	418	388
615	419	389
616	420	390
618	421	391
619	422	392
621	423	393
623	424	394
625	425	395
626	426	396
629	427	397
630	428	398
632	429	399
634	430	400
635	431	401
636	432	402
637	433	403
639	434	404
640	435	310
641	436	405
644	437	175
645	438	406
647	439	407
648	440	408
650	441	407
652	442	152
653	443	409
654	444	410
655	445	411
656	446	412
658	447	413
660	448	414
661	449	415
662	450	416
663	451	274
664	452	417
666	453	418
667	454	419
668	455	242
669	456	420
670	457	421
671	458	422
672	459	423
674	460	416
675	461	424
676	462	425
677	463	426
678	464	427
679	465	17
680	466	257
681	467	99
683	468	428
684	469	31
685	470	429
686	471	175
687	472	430
689	473	431
690	474	432
692	475	418
693	476	433
694	477	434
695	478	435
696	479	436
698	480	437
700	481	438
702	482	439
703	483	440
704	484	441
706	485	442
709	486	443
711	487	444
712	488	445
713	489	446
716	490	447
717	491	448
718	492	449
722	493	450
725	494	451
727	495	74
729	496	452
731	497	453
734	498	454
736	499	455
738	500	456
740	501	457
742	502	458
745	503	459
746	504	460
747	505	461
748	506	122
749	507	462
750	508	463
752	509	464
753	510	465
754	511	466
756	512	467
758	513	468
760	514	469
761	515	470
763	516	471
764	517	472
766	518	473
767	519	474
768	520	475
770	521	476
771	522	477
772	523	306
773	524	478
774	525	479
776	526	480
779	527	481
780	528	482
781	529	221
782	530	195
783	531	483
784	532	484
785	533	485
786	534	486
789	535	487
790	536	488
791	537	489
792	538	230
793	539	490
794	540	491
795	541	492
796	542	163
797	543	493
798	544	494
799	545	495
800	546	496
801	547	497
802	548	498
804	549	499
805	550	500
806	551	501
808	552	502
809	553	503
810	554	504
811	555	505
813	556	506
814	557	507
815	558	508
816	559	509
817	560	510
818	561	511
819	562	512
820	563	513
821	564	514
822	565	515
823	566	516
824	567	517
825	568	518
827	569	519
828	570	520
829	571	521
834	572	522
837	573	523
841	574	137
842	575	175
844	576	524
845	577	525
846	578	526
847	579	527
848	580	528
849	581	529
850	582	530
851	583	53
852	584	531
853	585	532
854	586	533
855	587	534
856	588	535
857	589	536
858	590	537
859	591	538
862	592	536
865	593	539
866	594	540
867	595	541
869	596	542
872	597	543
874	598	544
877	599	545
880	600	546
882	601	547
883	602	548
885	603	549
888	604	550
890	605	551
893	606	552
894	607	553
895	608	554
897	609	555
899	610	556
902	611	557
904	612	558
905	613	559
907	614	560
909	615	561
911	616	562
913	617	563
914	618	564
915	619	53
916	620	565
918	621	566
920	622	567
921	623	568
925	624	569
926	625	570
929	626	217
930	627	360
931	628	571
939	629	572
943	630	68
947	631	573
948	632	175
949	633	574
950	634	575
951	635	576
952	636	577
953	637	578
954	638	579
955	639	580
956	640	581
957	641	582
958	642	583
959	643	584
960	644	585
961	645	451
963	646	586
964	647	231
965	648	21
966	649	587
967	650	588
969	651	452
971	652	589
972	653	455
974	654	590
976	655	591
977	656	592
978	657	593
980	658	594
982	659	428
983	660	519
984	661	595
985	662	596
988	663	597
990	664	598
992	665	599
993	666	600
996	667	601
999	668	602
1001	669	603
1003	670	604
1005	671	522
1006	672	605
1007	673	306
1008	674	173
1009	675	606
1010	676	250
1011	677	607
1012	678	608
1014	679	609
1016	680	610
1018	681	53
1019	682	611
1021	683	175
1023	684	612
1024	685	613
1025	686	614
1026	687	615
1027	688	616
1028	689	617
1030	690	618
1031	691	619
1032	692	620
1033	693	621
1037	694	622
1038	695	623
1039	696	624
1040	697	231
1041	698	625
1043	699	626
1044	700	627
1045	701	628
1047	702	629
1048	703	630
1050	704	53
1051	705	631
1052	706	632
1053	707	633
1054	708	602
1055	709	53
1056	710	634
1057	711	635
1059	712	636
1060	713	637
1062	714	638
1063	715	639
1065	716	640
1066	717	14
1067	718	641
1069	719	642
1070	720	643
1071	721	644
1072	722	645
1073	723	646
1074	724	647
1075	725	648
1076	726	443
1077	727	649
1079	728	650
1081	729	651
1082	730	217
1084	731	652
1085	732	653
1086	733	654
1087	734	655
1090	735	656
1092	736	46
1093	737	657
1095	738	658
1097	739	659
1098	740	175
1100	741	660
1102	742	661
1104	743	47
1105	744	166
1106	745	662
1108	746	663
1110	747	664
1111	748	665
1112	749	666
1114	750	290
1116	751	667
1117	752	668
1119	753	669
1120	754	670
1121	755	671
1122	756	672
1123	757	595
1124	758	673
1125	759	674
1126	760	350
1127	761	675
1129	762	676
1130	763	677
1132	764	678
1134	765	679
1135	766	322
1137	767	324
1138	768	680
1140	769	681
1143	770	682
1144	771	683
1146	772	684
1147	773	685
1148	774	686
1149	775	687
1150	776	688
1152	777	689
1153	778	690
1157	779	691
1158	780	692
1159	781	692
1160	782	693
1161	783	666
1162	784	694
1163	785	695
1164	786	696
1168	787	697
1171	788	698
1173	789	699
1177	790	700
1180	791	701
1183	792	217
1184	793	702
1186	794	703
1189	795	704
1191	796	646
1192	797	705
1193	798	181
1195	799	706
1196	800	707
1198	801	708
1201	802	709
1204	803	710
1205	804	711
1206	805	712
1207	806	273
1208	807	713
1209	808	714
1210	809	715
1211	810	716
1212	811	717
1213	812	718
1216	813	719
1217	814	720
1218	815	721
1220	816	722
1221	817	723
1222	818	724
1223	819	725
1227	820	726
1228	821	727
1229	822	728
1230	823	729
1231	824	175
1233	825	730
1235	826	731
1236	827	492
1237	828	732
1239	829	733
1241	830	734
1242	831	735
1243	832	736
1244	833	737
1246	834	738
1248	835	739
1250	836	740
1251	837	741
1252	838	321
1254	839	742
1255	840	329
1257	841	331
1259	842	743
1261	843	415
1262	844	744
1264	845	745
1265	846	746
1266	847	747
1267	848	748
1268	849	749
1269	850	750
1270	851	726
1271	852	751
1272	853	752
1276	854	753
1279	855	754
1280	856	755
1281	857	756
1282	858	757
1283	859	758
1284	860	490
1285	861	490
1286	862	759
1287	863	760
1289	864	761
1290	865	762
1293	866	763
1295	867	764
1297	868	765
1302	869	766
1305	870	767
1308	871	768
1311	872	769
1314	873	770
1317	874	771
1319	875	772
1323	876	605
1324	877	773
1325	878	774
1326	879	594
1328	880	775
1329	881	44
1330	882	776
1331	883	777
1332	884	778
1334	885	569
1337	886	779
1338	887	599
1339	888	780
1340	889	781
1341	890	782
1343	891	382
1344	892	263
1345	893	69
1346	894	70
1347	895	71
1348	896	783
1349	897	784
1350	898	785
1351	899	786
1352	900	266
1353	901	268
1354	902	787
1355	903	270
1356	904	788
1357	905	789
1358	906	790
1359	907	791
1360	908	267
1361	909	792
1362	910	793
1363	911	794
1364	912	795
1365	913	796
1366	914	797
1368	915	798
1369	916	799
1370	917	800
1371	918	801
1372	919	802
1375	920	803
1378	921	804
1383	922	805
1387	923	806
1390	924	807
1394	925	808
1396	926	809
1397	927	810
1399	928	811
1400	929	812
1402	930	813
1403	931	814
1405	932	815
1406	933	504
1409	934	816
1412	935	817
1414	936	818
1418	937	819
1420	938	820
1423	939	129
1424	940	821
1426	941	822
1427	942	823
1428	943	824
1429	944	825
1430	945	826
1432	946	827
1434	947	828
1436	948	829
1440	949	830
1443	950	831
1444	951	832
1446	952	833
1451	953	834
1452	954	835
1455	955	836
1457	956	495
1459	957	837
1462	958	838
1466	959	93
1468	960	839
1470	961	119
1473	962	840
1478	963	841
1480	964	810
1482	965	96
1484	966	811
1485	967	812
1487	968	842
1488	969	501
1490	970	843
1492	971	844
1494	972	814
1497	973	815
1498	974	845
1501	975	816
1502	976	846
1505	977	847
1507	978	128
1509	979	848
1511	980	849
1512	981	850
1514	982	851
1515	983	852
1517	984	103
1519	985	853
1522	986	140
1524	987	854
1526	988	855
1527	989	833
1528	990	856
1529	991	857
1531	992	858
1532	993	859
1533	994	860
1534	995	861
1536	996	862
1537	997	476
1538	998	25
1541	999	863
1542	1000	864
1545	1001	865
1547	1002	866
1550	1003	208
1551	1004	867
1553	1005	868
1554	1006	869
1556	1007	754
1557	1008	870
1559	1009	871
1560	1010	872
1561	1011	641
1562	1012	873
1564	1013	874
1565	1014	53
1566	1015	872
1567	1016	641
1568	1017	875
1569	1018	876
1572	1019	877
1575	1020	878
1580	1021	156
1583	1022	879
1584	1023	880
1586	1024	460
1588	1025	53
1589	1026	878
1590	1027	881
1592	1028	882
1593	1029	883
1597	1030	336
1601	1031	338
1605	1032	235
1610	1033	336
1611	1034	522
1612	1035	884
1614	1036	885
1616	1037	882
1619	1038	886
1620	1039	232
1624	1040	887
1625	1041	888
1629	1042	460
1630	1043	889
1632	1044	890
1634	1045	891
1637	1046	892
1640	1047	238
1642	1048	893
1644	1049	894
1646	1050	879
1650	1051	520
1655	1052	895
1656	1053	896
1657	1054	897
1658	1055	898
1660	1056	222
1661	1057	899
1662	1058	900
1663	1059	570
1664	1060	901
1668	1061	650
1670	1062	902
1671	1063	903
1673	1064	904
1675	1065	581
1676	1066	175
1677	1067	905
1678	1068	552
1679	1069	906
1681	1070	907
1683	1071	908
1685	1072	909
1686	1073	910
1687	1074	911
1689	1075	8
1690	1076	912
1691	1077	913
1692	1078	914
1694	1079	915
1695	1080	916
1696	1081	917
1697	1082	918
1698	1083	919
1699	1084	920
1701	1085	73
1703	1086	53
1704	1087	921
1705	1088	922
1706	1089	577
1707	1090	923
1711	1091	924
1712	1092	925
1716	1093	926
1717	1094	927
1719	1095	928
1720	1096	929
1721	1097	930
1722	1098	931
1724	1099	932
1727	1100	933
1728	1101	934
1729	1102	935
1732	1103	936
1734	1104	937
1735	1105	938
1736	1106	939
1737	1107	940
1739	1108	941
1741	1109	942
1742	1110	943
1743	1111	944
1745	1112	945
1746	1113	946
1748	1114	947
1750	1115	948
1752	1116	949
1753	1117	950
1754	1118	951
1756	1119	53
1757	1120	409
1758	1121	952
1760	1122	953
1762	1123	954
1765	1124	955
1766	1125	956
1769	1126	320
1770	1127	957
1771	1128	958
1773	1129	953
1774	1130	959
1775	1131	960
1776	1132	316
1778	1133	961
1779	1134	962
1780	1135	963
1782	1136	900
1783	1137	942
1784	1138	751
1785	1139	964
1786	1140	6
1787	1141	965
1788	1142	966
1790	1143	967
1791	1144	968
1792	1145	53
1793	1146	583
1794	1147	591
1795	1148	969
1796	1149	970
1797	1150	971
1799	1151	229
1800	1152	972
1803	1153	973
1804	1154	974
1805	1155	975
1806	1156	976
1807	1157	672
1808	1158	977
1810	1159	487
1813	1160	433
1815	1161	978
1816	1162	979
1819	1163	980
1825	1164	981
1828	1165	982
1831	1166	983
1837	1167	984
1843	1168	985
1849	1169	979
1852	1170	986
1855	1171	987
1861	1172	988
1867	1173	989
1873	1174	333
1876	1175	990
1879	1176	991
1882	1177	992
1888	1178	993
1892	1179	994
1893	1180	995
1894	1181	996
1895	1182	997
1896	1183	998
1897	1184	999
1898	1185	1000
1899	1186	1001
1900	1187	1001
1901	1188	1002
1903	1189	1003
1905	1190	1004
1906	1191	1005
1907	1192	175
1908	1193	1006
1909	1194	1007
1910	1195	1008
1912	1196	1009
1914	1197	442
1915	1198	1010
1916	1199	1011
1917	1200	1012
1919	1201	309
1920	1202	1013
1921	1203	1014
1922	1204	1015
1923	1205	1016
1924	1206	1017
1925	1207	155
1926	1208	409
1927	1209	90
1928	1210	153
1929	1211	1018
1930	1212	90
1931	1213	759
1933	1214	1019
1934	1215	1020
1935	1216	764
1936	1217	876
1937	1218	1021
1939	1219	1022
1940	1220	1023
1941	1221	1024
1943	1222	1025
1944	1223	1026
1945	1224	777
1946	1225	767
1947	1226	1027
1948	1227	1028
1949	1228	448
1950	1229	876
1952	1230	868
1954	1231	1029
1955	1232	1030
1956	1233	263
1957	1234	1031
1958	1235	1032
1959	1236	1033
1960	1237	1034
1961	1238	1035
1962	1239	175
1963	1240	1036
1964	1241	1037
1966	1242	409
1967	1243	573
1968	1244	1038
1969	1245	480
1970	1246	175
1971	1247	561
1972	1248	175
1973	1249	1039
1974	1250	671
1975	1251	1040
1977	1252	757
1978	1253	868
1979	1254	1041
1980	1255	1042
1981	1256	1043
1982	1257	1044
1984	1258	1045
1985	1259	1022
1987	1260	175
1988	1261	1046
1991	1262	1047
1992	1263	1048
1993	1264	1049
1994	1265	1050
1995	1266	1051
1997	1267	619
1998	1268	1052
1999	1269	1053
2001	1270	175
2002	1271	1054
2003	1272	1029
2004	1273	871
2005	1274	1051
2007	1275	1055
2009	1276	1056
2010	1277	1057
2011	1278	1058
2013	1279	999
2014	1280	1059
2016	1281	1060
2018	1282	1061
2020	1283	1062
2021	1284	1063
2022	1285	1064
2026	1286	1065
2027	1287	1066
2029	1288	1067
2030	1289	279
2031	1290	935
2032	1291	1068
2033	1292	1069
2034	1293	762
2035	1294	1070
2036	1295	873
2037	1296	1071
2039	1297	1072
2040	1298	1073
2041	1299	1074
2042	1300	108
2043	1301	1075
2044	1302	1042
2046	1303	175
2047	1304	1076
2048	1305	1077
2049	1306	1078
2050	1307	1079
2051	1308	1080
2052	1309	917
2053	1310	1081
2054	1311	175
2055	1312	1082
2056	1313	1083
2057	1314	875
2059	1315	641
2060	1316	1012
2061	1317	1084
2062	1318	492
2063	1319	1085
2065	1320	401
2066	1321	1086
2067	1322	1034
2068	1323	1087
2069	1324	1088
2070	1325	1089
2071	1326	1090
2072	1327	1090
2073	1328	1091
2074	1329	1092
2077	1330	1091
2083	1331	1092
2087	1332	1093
2092	1333	1094
2095	1334	1095
2096	1335	1096
2097	1336	1097
2099	1337	1095
2102	1338	1094
2105	1339	1096
2109	1340	1095
2110	1341	1098
2113	1342	1099
2116	1343	1100
2121	1344	1040
2127	1345	1098
2130	1346	1099
2134	1347	1040
2135	1348	1101
2141	1349	1060
2144	1350	1021
2145	1351	1022
2150	1352	1060
2153	1353	1021
2159	1354	1022
2161	1355	1102
2166	1356	1046
2171	1357	1103
2172	1358	1104
2179	1359	1103
2185	1360	1105
2188	1361	1105
2192	1362	1106
2194	1363	1107
2200	1364	1106
2206	1365	1108
2207	1366	1109
2210	1367	1108
2213	1368	1109
2217	1369	1110
2219	1370	1111
2224	1371	1066
2225	1372	1112
2228	1373	1113
2234	1374	1110
2239	1375	1111
2240	1376	1066
2243	1377	1112
2246	1378	1042
2250	1379	1090
2252	1380	1042
2255	1381	1114
2256	1382	1090
2260	1383	1115
2265	1384	1116
2268	1385	1117
2274	1386	1116
2276	1387	1058
2279	1388	1118
2282	1389	1119
2284	1390	1080
2288	1391	1120
2289	1392	1058
2292	1393	1118
2296	1394	1119
2300	1395	1080
2303	1396	1121
2304	1397	1095
2305	1398	1095
2306	1399	1122
2311	1400	1123
2316	1401	1124
2318	1402	1125
2319	1403	1126
2320	1404	1122
2322	1405	1124
2326	1406	1125
2332	1407	1126
2339	1408	1127
2342	1409	1127
2345	1410	1128
2347	1411	1129
2350	1412	1129
2353	1413	449
2354	1414	1130
2355	1415	911
2356	1416	1131
2357	1417	1132
2359	1418	964
2371	1419	1133
2372	1420	1134
2373	1421	964
2374	1422	1135
2375	1423	1136
2377	1424	9
2379	1425	881
2385	1426	980
2389	1427	983
2395	1428	237
2401	1429	988
2407	1430	989
2413	1431	892
2416	1432	1137
2418	1433	1138
2419	1434	1139
2422	1435	1140
2423	1436	1141
2424	1437	1142
2426	1438	1141
2427	1439	1143
2429	1440	1144
2431	1441	1145
2433	1442	1146
2434	1443	1147
2436	1444	1148
2438	1445	1149
2440	1446	891
2441	1447	1150
2442	1448	1151
2443	1449	1152
2445	1450	1153
2447	1451	402
2448	1452	1134
2449	1453	1134
2450	1454	1154
2451	1455	1154
2452	1456	20
2453	1457	21
2454	1458	582
2455	1459	1039
2456	1460	1155
2457	1461	1156
2458	1462	1157
2459	1463	255
2462	1464	1158
2464	1465	4
2465	1466	1159
2467	1467	1160
2468	1468	449
2470	1469	450
2474	1470	5
2476	1471	58
2479	1472	56
2480	1473	1161
2482	1474	453
2486	1475	454
2489	1476	1162
2491	1477	457
2493	1478	1163
2495	1479	1164
2496	1480	1165
2497	1481	1166
2502	1482	1167
2504	1483	458
2507	1484	1168
2509	1485	448
2511	1486	579
2513	1487	1160
2517	1488	579
2518	1489	64
2519	1490	6
2523	1491	1169
2525	1492	1170
2527	1493	782
2529	1494	571
2536	1495	1171
2539	1496	1172
2546	1497	964
2560	1498	116
2561	1499	1173
2565	1500	129
2569	1501	1174
2570	1502	1175
2571	1503	1176
2572	1504	1177
2574	1505	158
2575	1506	1178
2576	1507	319
2577	1508	327
2578	1509	328
2579	1510	1179
2580	1511	1180
2581	1512	1134
2582	1513	1134
2585	1514	647
2586	1515	7
2587	1516	1181
2588	1517	1182
2590	1518	1183
2591	1519	571
2592	1520	1184
2593	1521	1015
2594	1522	90
2595	1523	114
2597	1524	1185
2600	1525	1186
2601	1526	810
2604	1527	1187
2606	1528	1188
2608	1529	1189
2609	1530	1190
2610	1531	1191
2611	1532	1192
2613	1533	1193
2614	1534	1194
2615	1535	1195
2616	1536	1196
2621	1537	1197
2622	1538	1198
2623	1539	1199
2624	1540	1200
2625	1541	496
2627	1542	1201
2629	1543	1202
2630	1544	1203
2634	1545	1204
2635	1546	1205
2638	1547	1206
2639	1548	1207
2647	1549	1208
2652	1550	1209
2654	1551	1210
2656	1552	1211
2659	1553	891
2662	1554	238
2665	1555	1212
2666	1556	1213
2667	1557	1214
2668	1558	901
2669	1559	1215
2670	1560	1216
2671	1561	1130
2672	1562	168
2673	1563	1217
2675	1564	478
2676	1565	341
2678	1566	664
2683	1567	1218
2693	1568	1219
2695	1569	195
2696	1570	196
2698	1571	199
2700	1572	1220
2703	1573	206
2707	1574	1221
2709	1575	1222
2710	1576	1223
2712	1577	208
2714	1578	209
2716	1579	210
2718	1580	1224
2719	1581	1225
2720	1582	34
2722	1583	664
2723	1584	212
2725	1585	213
2726	1586	1226
2728	1587	1227
2729	1588	216
2731	1589	217
2732	1590	1178
2733	1591	218
2735	1592	219
2736	1593	220
2738	1594	1228
2739	1595	1229
2740	1596	221
2742	1597	222
2743	1598	1230
2745	1599	1231
2746	1600	1232
2750	1601	1233
2751	1602	232
2752	1603	233
2755	1604	421
2756	1605	1234
2760	1606	236
2761	1607	889
2763	1608	890
2765	1609	1235
2766	1610	289
2768	1611	1183
2769	1612	571
2770	1613	1183
2771	1614	571
2772	1615	1183
2773	1616	571
2774	1617	1236
2775	1618	1237
2776	1619	41
2777	1620	1238
2778	1621	1239
2779	1622	1014
2780	1623	1240
2781	1624	1039
2782	1625	1241
2783	1626	719
2785	1627	1242
2786	1628	1243
2790	1629	1244
2791	1630	175
2793	1631	1245
2795	1632	1246
2796	1633	259
2797	1634	7
2798	1635	1247
2810	1636	930
2811	1637	1248
2812	1638	1249
2813	1639	858
2817	1640	1250
2819	1641	1251
2821	1642	1252
2823	1643	1253
2825	1644	1254
2827	1645	1255
2828	1646	1256
2829	1647	1257
2830	1648	672
2831	1649	519
2836	1650	1258
2838	1651	1259
2839	1652	1260
2841	1653	1261
2842	1654	1262
2844	1655	650
2845	1656	1263
2846	1657	784
2847	1658	1264
2849	1659	1000
2851	1660	1265
2852	1661	1266
2853	1662	1267
2854	1663	1244
2855	1664	682
2862	1665	1268
2864	1666	1269
2865	1667	1270
2866	1668	1271
2869	1669	1272
2870	1670	305
2872	1671	1273
2874	1672	354
2876	1673	349
2878	1674	1274
2879	1675	323
2880	1676	342
2883	1677	1273
2886	1678	1275
2888	1679	346
2890	1680	347
2892	1681	351
2894	1682	982
2896	1683	343
2897	1684	1276
2898	1685	1277
2899	1686	1278
2900	1687	1279
2901	1688	1280
2902	1689	691
2903	1690	293
2904	1691	604
2907	1692	1281
2908	1693	693
2909	1694	710
2910	1695	1282
2911	1696	925
2912	1697	926
2913	1698	175
2916	1699	1283
2917	1700	1284
2919	1701	1285
2921	1702	1286
2922	1703	1287
2926	1704	1288
2927	1705	1289
2928	1706	1290
2930	1707	1242
2932	1708	1291
2933	1709	1292
2935	1710	1293
2937	1711	1294
2938	1712	1295
2939	1713	1296
2941	1714	1297
2942	1715	1298
2944	1716	1299
2946	1717	1300
2947	1718	1301
2948	1719	1302
2949	1720	1303
2952	1721	1304
2954	1722	1304
2956	1723	1305
2959	1724	1306
2961	1725	1307
2962	1726	1308
2964	1727	943
2965	1728	1309
2967	1729	1310
2969	1730	946
2970	1731	1142
2971	1732	1311
2974	1733	1312
2977	1734	1313
2979	1735	1314
2981	1736	1315
2986	1737	1316
2987	1738	1317
2990	1739	1134
2991	1740	1134
2992	1741	943
2993	1742	1318
2994	1743	1133
2997	1744	1312
2998	1745	947
3000	1746	53
3002	1747	53
3004	1748	1134
3005	1749	1134
3006	1750	75
3007	1751	1319
3012	1752	1320
3017	1753	1321
3019	1754	1322
3023	1755	1323
3027	1756	1324
3030	1757	1325
3031	1758	1326
3038	1759	175
3040	1760	406
3042	1761	1327
3043	1762	409
3044	1763	152
3045	1764	410
3046	1765	411
3047	1766	412
3049	1767	413
3051	1768	1328
3054	1769	1329
3056	1770	1330
3057	1771	1055
3058	1772	1331
3060	1773	1332
3063	1774	1333
3064	1775	1334
3065	1776	1335
3066	1777	1336
3067	1778	1337
3068	1779	1338
3069	1780	1339
3071	1781	1340
3072	1782	1341
3073	1783	67
3074	1784	67
3075	1785	446
3076	1786	651
3080	1787	192
3082	1788	20
3083	1789	586
3084	1790	3
3085	1791	1342
3086	1792	1343
3088	1793	1344
3089	1794	1344
3090	1795	1345
3091	1796	1346
3092	1797	393
3093	1798	1299
3094	1799	1347
3095	1800	1348
3099	1801	1349
3100	1802	1350
3101	1803	1351
3103	1804	1352
3105	1805	1353
3107	1806	1354
3109	1807	1355
3110	1808	24
3111	1809	1356
3112	1810	1357
3113	1811	1358
3116	1812	313
3117	1813	193
3118	1814	1359
3119	1815	1360
3120	1816	1361
3122	1817	421
3123	1818	1362
3125	1819	422
3126	1820	1363
3127	1821	1364
3129	1822	394
3130	1823	1010
3131	1824	260
3132	1825	1365
3133	1826	1344
3134	1827	1344
3135	1828	1366
3138	1829	891
3139	1830	470
3141	1831	1367
3142	1832	1344
3143	1833	1344
3144	1834	1344
3146	1835	168
3148	1836	572
3152	1837	1173
3157	1838	1368
3160	1839	1369
3162	1840	26
3163	1841	1370
3164	1842	1371
3165	1843	1372
3166	1844	1373
3167	1845	1374
3168	1846	116
3169	1847	917
3170	1848	338
3171	1849	1374
3172	1850	116
3173	1851	917
3174	1852	910
3175	1853	1375
3176	1854	8
3177	1855	1376
3178	1856	490
3179	1857	1377
3180	1858	569
3181	1859	192
3183	1860	199
3184	1861	1378
3192	1862	838
3199	1863	1379
3202	1864	1380
3210	1865	1381
3212	1866	1382
3213	1867	158
3214	1868	1383
3215	1869	893
3217	1870	490
3218	1871	893
3223	1872	66
3227	1873	571
3234	1874	447
3235	1875	1384
3236	1876	1385
3237	1877	1386
3238	1878	853
3239	1879	1210
3242	1880	67
3243	1881	964
3258	1882	843
3260	1883	1173
3266	1884	1344
3270	1885	129
3273	1886	507
3275	1887	1387
3276	1888	1388
3280	1889	1389
3283	1890	1183
3284	1891	571
3285	1892	1390
3286	1893	1391
3287	1894	1392
3288	1895	175
3289	1896	537
3294	1897	1062
3312	1898	1393
3315	1899	1394
3317	1900	1395
3323	1901	1396
3324	1902	1397
3334	1903	1398
3336	1904	1399
3350	1905	1400
3351	1906	564
3355	1907	1401
3357	1908	1402
3359	1909	4
3361	1910	1163
3363	1911	1403
3365	1912	1404
3367	1913	1405
3368	1914	1406
3369	1915	1407
3370	1916	1408
3371	1917	66
3376	1918	1171
3377	1919	1134
3381	1920	964
3394	1921	116
3396	1922	884
3397	1923	1409
3398	1924	1410
3399	1925	974
3401	1926	693
3403	1927	811
3404	1928	1411
3408	1929	863
3410	1930	1412
3411	1931	1413
3412	1932	304
3413	1933	1414
3414	1934	1415
3415	1935	584
3416	1936	1416
3417	1937	317
3419	1938	323
3420	1939	349
3421	1940	1417
3422	1941	67
3423	1942	67
3425	1943	1418
3426	1944	231
3427	1945	21
3428	1946	587
3431	1947	451
3433	1948	149
3434	1949	1419
3436	1950	586
3440	1951	1329
3445	1952	582
3450	1953	1420
3451	1954	1183
3452	1955	571
3453	1956	170
3454	1957	1421
3456	1958	1422
3460	1959	791
3462	1960	1158
3464	1961	1423
3465	1962	358
3466	1963	1424
3467	1964	1425
3469	1965	1426
3470	1966	611
3472	1967	865
3474	1968	1256
3475	1969	985
3481	1970	987
3484	1971	990
3490	1972	992
3496	1973	993
3500	1974	1427
3503	1975	865
3505	1976	248
3507	1977	1428
3508	1978	292
3511	1979	232
3514	1980	886
3515	1981	521
3517	1982	884
3520	1983	274
3521	1984	1277
3523	1985	1429
3524	1986	329
3527	1987	29
3528	1988	1430
3530	1989	1431
3532	1990	1432
3536	1991	973
3537	1992	1433
3538	1993	1434
3539	1994	1435
3542	1995	1187
3544	1996	1076
3546	1997	1436
3547	1998	623
3549	1999	1437
3550	2000	898
3554	2001	1134
3555	2002	1134
3556	2003	1438
3557	2004	648
3558	2005	429
3562	2006	1183
3563	2007	571
3564	2008	1439
3565	2009	87
3566	2010	976
3569	2011	1440
3572	2012	1441
3575	2013	634
3576	2014	638
3577	2015	1442
3579	2016	1443
3580	2017	1444
3583	2018	1445
3584	2019	1183
3585	2020	447
3586	2021	640
3587	2022	639
3589	2023	1084
3591	2024	1446
3592	2025	1427
3593	2026	1447
3598	2027	57
3601	2028	1448
3603	2029	1449
3606	2030	1450
3608	2031	645
3612	2032	1451
3614	2033	653
3615	2034	1452
3616	2035	1453
3617	2036	183
3618	2037	180
3622	2038	1438
3624	2039	715
3626	2040	175
3627	2041	1454
3628	2042	1455
3629	2043	1456
3631	2044	1457
3634	2045	189
3636	2046	1458
3637	2047	273
3638	2048	194
3639	2049	655
3642	2050	1459
3643	2051	662
3644	2052	656
3646	2053	663
3648	2054	657
3650	2055	658
3651	2056	1460
3652	2057	659
3653	2058	660
3655	2059	661
3657	2060	47
3658	2061	203
3661	2062	1344
3662	2063	1344
3663	2064	1461
3664	2065	1462
3665	2066	1154
3666	2067	1154
3667	2068	1463
3669	2069	175
3670	2070	532
3671	2071	1464
3672	2072	1465
3673	2073	1466
3675	2074	1119
3676	2075	1467
3677	2076	1468
3678	2077	1374
3679	2078	116
3680	2079	909
3681	2080	1469
3682	2081	1470
3684	2082	613
3685	2083	613
3686	2084	1471
3687	2085	1472
3688	2086	1473
3692	2087	40
3693	2088	1474
3695	2089	1475
3696	2090	1476
3697	2091	1154
3698	2092	1154
3699	2093	1462
3704	2094	1477
3713	2095	1478
3718	2096	1479
3724	2097	1480
3729	2098	1364
3731	2099	1228
3734	2100	1481
3735	2101	1458
3737	2102	574
3738	2103	1482
3740	2104	1483
3742	2105	1484
3743	2106	1282
3747	2107	1327
3748	2108	1485
3749	2109	1486
3750	2110	1487
3751	2111	1487
3752	2112	1488
3754	2113	1489
3757	2114	1490
3758	2115	919
3763	2116	259
3764	2117	1491
3765	2118	1492
3767	2119	1493
3769	2120	1494
3770	2121	1154
3771	2122	1154
3772	2123	455
3773	2124	166
3774	2125	267
3775	2126	1495
3776	2127	1496
3777	2128	1497
3779	2129	1498
3781	2130	1499
3783	2131	1500
3784	2132	1501
3785	2133	1502
3786	2134	1503
3787	2135	1504
3788	2136	1505
3790	2137	1285
3791	2138	1506
3796	2139	1467
3797	2140	959
3798	2141	1507
3800	2142	1508
3801	2143	1509
3802	2144	1510
3803	2145	1511
3804	2146	747
3807	2147	750
3808	2148	1512
3809	2149	747
3810	2150	1376
3811	2151	1513
3812	2152	760
3813	2153	751
3818	2154	869
3820	2155	1082
3824	2156	1514
3826	2157	411
3827	2158	490
3828	2159	490
3829	2160	759
3830	2161	1515
3831	2162	1516
3841	2163	1517
3845	2164	1518
3854	2165	1519
3857	2166	1520
3867	2167	1266
3872	2168	1521
3874	2169	684
3875	2170	1522
3878	2171	197
3880	2172	198
3884	2173	200
3888	2174	201
3891	2175	1523
3892	2176	204
3893	2177	665
3895	2178	205
3897	2179	718
3898	2180	1524
3900	2181	1525
3901	2182	1526
3902	2183	1527
3904	2184	1528
3905	2185	1529
3906	2186	1530
3907	2187	1531
3910	2188	1532
3911	2189	174
3913	2190	147
3914	2191	1533
3915	2192	784
3916	2193	1534
3918	2194	1535
3920	2195	1536
3922	2196	1537
3924	2197	790
3925	2198	1538
3926	2199	1539
3927	2200	1540
3928	2201	1017
3929	2202	1541
3930	2203	1542
3931	2204	1543
3932	2205	1544
3933	2206	1216
3935	2207	1545
3936	2208	1546
3937	2209	1547
3938	2210	1548
3940	2211	496
3941	2212	115
3942	2213	498
3947	2214	838
3951	2215	117
3955	2216	1549
3957	2217	499
3959	2218	840
3968	2219	1186
3971	2220	810
3973	2221	96
3974	2222	812
3976	2223	1550
3977	2224	120
3980	2225	843
3982	2226	34
3983	2227	503
3985	2228	122
3989	2229	815
3992	2230	1551
3994	2231	505
3998	2232	99
4000	2233	1204
4002	2234	125
4006	2235	1552
4007	2236	1553
4008	2237	1379
4010	2238	126
4012	2239	127
4014	2240	1554
4016	2241	128
4018	2242	1189
4020	2243	1555
4022	2244	129
4024	2245	1556
4025	2246	1557
4026	2247	823
4028	2248	1192
4030	2249	1530
4032	2250	400
4033	2251	509
4035	2252	137
4036	2253	853
4043	2254	141
4047	2255	1558
4048	2256	1559
4050	2257	144
4052	2258	855
4054	2259	1209
4055	2260	109
4059	2261	516
4061	2262	147
4063	2263	148
4064	2264	494
4066	2265	91
4068	2266	1547
4070	2267	495
4072	2268	496
4074	2269	115
4075	2270	497
4078	2271	93
4080	2272	1201
4082	2273	1518
4083	2274	1155
4084	2275	1560
4085	2276	119
4088	2277	840
4093	2278	810
4095	2279	1561
4096	2280	96
4097	2281	811
4099	2282	812
4101	2283	1562
4103	2284	1384
4107	2285	501
4109	2286	502
4110	2287	34
4111	2288	1563
4115	2289	815
4118	2290	1564
4121	2291	99
4123	2292	127
4125	2293	1207
4127	2294	1556
4129	2295	508
4130	2296	1565
4131	2297	131
4133	2298	1566
4134	2299	1192
4136	2300	132
4138	2301	134
4141	2302	1567
4142	2303	1568
4143	2304	137
4144	2305	138
4145	2306	1569
4146	2307	104
4148	2308	1400
4149	2309	140
4151	2310	1570
4152	2311	1571
4153	2312	186
4154	2313	1572
4158	2314	1558
4159	2315	1573
4160	2316	854
4162	2317	1574
4163	2318	145
4164	2319	512
4167	2320	513
4168	2321	1575
4170	2322	108
4173	2323	1576
4174	2324	856
4176	2325	1577
4177	2326	1578
4179	2327	1579
4180	2328	1038
4183	2329	1580
4185	2330	272
4186	2331	1581
4187	2332	684
4188	2333	1582
4189	2334	1039
4190	2335	1006
4191	2336	522
4197	2337	522
4199	2338	1583
4201	2339	461
4204	2340	465
4206	2341	1494
4207	2342	1584
4208	2343	1585
4209	2344	570
4211	2345	1586
4219	2346	1587
4227	2347	981
4232	2348	879
4236	2349	156
4241	2350	156
4243	2351	69
4244	2352	70
4245	2353	1552
4246	2354	881
4248	2355	882
4249	2356	883
4250	2357	336
4251	2358	338
4259	2359	336
4263	2360	1588
4265	2361	1589
4267	2362	238
4269	2363	884
4271	2364	885
4273	2365	894
4278	2366	1590
4279	2367	248
4281	2368	984
4284	2369	165
4285	2370	879
4292	2371	338
4294	2372	1591
4295	2373	1000
4296	2374	1592
4297	2375	1593
4298	2376	1594
4301	2377	1595
4303	2378	1596
4306	2379	1597
4307	2380	1004
4308	2381	785
4310	2382	1598
4311	2383	1599
4313	2384	1600
4314	2385	173
4315	2386	780
4316	2387	1601
4318	2388	1602
4319	2389	1603
4320	2390	1604
4322	2391	1605
4325	2392	1606
4335	2393	922
4336	2394	67
4337	2395	67
4338	2396	42
4339	2397	1607
4343	2398	1608
4345	2399	320
4346	2400	1609
4347	2401	327
4349	2402	1610
4352	2403	1611
4353	2404	1612
4355	2405	1613
4363	2406	1614
4367	2407	1615
4369	2408	561
4370	2409	1616
4372	2410	1297
4373	2411	1617
4375	2412	1270
4376	2413	244
4377	2414	935
4378	2415	552
4379	2416	1618
4380	2417	748
4381	2418	789
4382	2419	565
4384	2420	925
4385	2421	919
4386	2422	64
4388	2423	1619
4389	2424	1620
4390	2425	971
4392	2426	949
4393	2427	1314
4395	2428	1621
4397	2429	1622
4398	2430	943
4399	2431	1620
4400	2432	1623
4402	2433	1624
4403	2434	1625
4404	2435	947
4406	2436	1626
4409	2437	409
4410	2438	953
4413	2439	1627
4415	2440	1628
4418	2441	1629
4420	2442	263
4421	2443	313
4422	2444	1134
4423	2445	1134
4424	2446	1630
4426	2447	1631
4430	2448	1632
4435	2449	1415
4436	2450	1633
4440	2451	1634
4441	2452	1635
4442	2453	979
4445	2454	882
4446	2455	1533
4448	2456	1636
4450	2457	286
4452	2458	1637
4453	2459	1638
4456	2460	1639
4457	2461	1000
4458	2462	1640
4460	2463	1641
4462	2464	1642
4463	2465	1643
4466	2466	691
4468	2467	322
4469	2468	1643
4472	2469	924
4473	2470	954
4474	2471	1643
4475	2472	1643
4476	2473	1643
4478	2474	155
4482	2475	153
4483	2476	490
4485	2477	752
4486	2478	1643
4487	2479	1643
4488	2480	1644
4489	2481	1643
4490	2482	1643
4491	2483	74
4492	2484	1643
4493	2485	1643
4494	2486	1645
4495	2487	1646
4496	2488	91
4501	2489	1643
4503	2490	1647
4505	2491	1643
4506	2492	1643
4507	2493	1648
4509	2494	1649
4510	2495	1027
4513	2496	1316
4514	2497	1587
4516	2498	1429
4517	2499	1556
4519	2500	1643
4520	2501	868
4521	2502	1643
4522	2503	1274
4523	2504	1643
4524	2505	1643
4525	2506	1643
4528	2507	1088
4531	2508	1650
4533	2509	1651
4534	2510	175
4535	2511	1652
4538	2512	152
4539	2513	759
4540	2514	995
4541	2515	995
4542	2516	1653
4543	2517	1643
4544	2518	1647
4545	2519	364
4546	2520	1643
4547	2521	618
4548	2522	1654
4549	2523	1372
4550	2524	1655
4551	2525	1656
4552	2526	1657
4555	2527	1658
4556	2528	701
4559	2529	157
4560	2530	1521
4562	2531	386
4566	2532	175
4569	2533	855
4570	2534	868
4571	2535	1643
4572	2536	1659
4574	2537	1660
4576	2538	1661
4582	2539	1222
4583	2540	1643
4584	2541	1643
4587	2542	1046
4588	2543	1643
4589	2544	1643
4590	2545	1662
4591	2546	1663
4593	2547	1664
4594	2548	1665
4595	2549	672
4600	2550	1643
4601	2551	1643
4602	2552	21
4603	2553	1643
4604	2554	1666
4605	2555	1667
4606	2556	1643
4607	2557	1643
4610	2558	1159
4611	2559	1668
4612	2560	1669
4616	2561	1403
4617	2562	1670
4618	2563	1643
4620	2564	1671
4622	2565	1671
4623	2566	763
4624	2567	1643
4625	2568	223
4626	2569	74
4628	2570	1672
4629	2571	1643
4633	2572	217
4634	2573	208
4635	2574	1673
4636	2575	1674
4637	2576	1675
4642	2577	322
4647	2578	1123
4649	2579	1643
4650	2580	175
4657	2581	1676
4658	2582	1677
4662	2583	74
4665	2584	1678
4667	2585	1643
4668	2586	69
4670	2587	870
4672	2588	1643
4673	2589	762
4674	2590	1643
4675	2591	1679
4676	2592	1680
4680	2593	69
4681	2594	1681
4683	2595	1538
4686	2596	1682
4689	2597	1683
4691	2598	1027
4692	2599	800
4693	2600	258
4694	2601	1684
4696	2602	1685
4697	2603	1643
4698	2604	1643
4699	2605	522
4701	2606	1686
4702	2607	1079
4703	2608	1091
4705	2609	1643
4706	2610	104
4707	2611	1687
4708	2612	1643
4711	2613	1643
4712	2614	1643
4713	2615	1643
4714	2616	1643
4715	2617	1688
4716	2618	1689
4717	2619	1643
4718	2620	869
4720	2621	1690
4721	2622	1691
4722	2623	1464
4724	2624	855
4725	2625	1049
4726	2626	1692
4729	2627	1643
4730	2628	1643
4731	2629	1693
4732	2630	1694
4735	2631	565
4736	2632	1643
4738	2633	1034
4739	2634	1087
4740	2635	1695
4741	2636	1090
4742	2637	1090
4743	2638	1091
4744	2639	1092
4747	2640	1091
4753	2641	1092
4757	2642	1093
4762	2643	1094
4765	2644	1095
4766	2645	1096
4767	2646	1097
4769	2647	1095
4772	2648	1094
4775	2649	1096
4779	2650	1095
4780	2651	1098
4783	2652	1099
4786	2653	1100
4791	2654	1040
4797	2655	1098
4800	2656	1099
4804	2657	1040
4805	2658	1101
4811	2659	1060
4814	2660	1021
4815	2661	1022
4820	2662	1060
4823	2663	1021
4829	2664	1022
4831	2665	1102
4836	2666	1046
4841	2667	1103
4842	2668	1104
4849	2669	1103
4855	2670	1105
4858	2671	1105
4862	2672	1106
4864	2673	1107
4870	2674	1106
4876	2675	1108
4877	2676	1109
4880	2677	1108
4883	2678	1109
4887	2679	1110
4889	2680	1111
4894	2681	1066
4895	2682	1112
4898	2683	1113
4904	2684	1110
4909	2685	1111
4910	2686	1066
4913	2687	1112
4916	2688	1042
4920	2689	1090
4922	2690	1042
4925	2691	1114
4926	2692	1090
4930	2693	1115
4935	2694	1116
4938	2695	1117
4944	2696	1116
4946	2697	1058
4949	2698	1118
4952	2699	1119
4954	2700	1080
4958	2701	1120
4959	2702	1058
4962	2703	1118
4966	2704	1119
4970	2705	1080
4973	2706	1121
4974	2707	1095
4975	2708	1095
4976	2709	1122
4981	2710	1123
4986	2711	1124
4988	2712	1125
4989	2713	1126
4990	2714	1122
4992	2715	1124
4996	2716	1125
5002	2717	1126
5009	2718	1127
5012	2719	1127
5015	2720	1128
5017	2721	1129
5020	2722	1129
5024	2723	1696
5027	2724	1231
5028	2725	1697
5034	2726	1698
5042	2727	517
5043	2728	751
5047	2729	32
5066	2730	495
5072	2731	1699
5077	2732	1700
5084	2733	1701
5087	2734	1701
5091	2735	961
5093	2736	1702
5095	2737	1702
5098	2738	1703
5099	2739	1278
5101	2740	410
5105	2741	1623
5108	2742	1704
5112	2743	7
5114	2744	1705
5116	2745	1706
5118	2746	1707
5122	2747	1708
5135	2748	562
5149	2749	684
5150	2750	1709
5151	2751	1300
5153	2752	1607
5154	2753	1710
5155	2754	298
5156	2755	519
5157	2756	1711
5158	2757	595
5161	2758	1712
5164	2759	1713
5166	2760	62
5171	2761	1714
5172	2762	1715
5178	2763	1521
5179	2764	1716
5184	2765	1465
5185	2766	1717
5187	2767	1718
5188	2768	1719
5189	2769	1720
5190	2770	1721
5201	2771	1133
5203	2772	1722
5208	2773	1366
5210	2774	1723
5217	2775	1724
5218	2776	1724
5222	2777	1696
5225	2778	1725
5226	2779	1726
5227	2780	170
5228	2781	471
5229	2782	1727
5234	2783	1728
5240	2784	569
5242	2785	1300
5244	2786	1729
5245	2787	1730
5247	2788	1731
5249	2789	1732
5250	2790	954
5253	2791	1733
5254	2792	1734
5255	2793	1735
5256	2794	1736
5257	2795	253
5259	2796	1737
5260	2797	260
5261	2798	259
5270	2799	1009
5275	2800	597
5277	2801	1738
5280	2802	1739
5297	2803	1740
5302	2804	1741
5308	2805	1742
5312	2806	1344
5317	2807	1196
5321	2808	1154
5325	2809	1743
5334	2810	1196
5338	2811	527
5342	2812	206
5343	2813	1744
5344	2814	1665
5345	2815	1745
5346	2816	1746
5347	2817	1584
5348	2818	1747
5350	2819	1748
5353	2820	1749
5356	2821	1344
5361	2822	777
5364	2823	67
5366	2824	517
5370	2825	1750
5373	2826	610
5392	2827	231
5394	2828	1751
5397	2829	1752
5400	2830	1753
5401	2831	591
5402	2832	336
5410	2833	1754
5414	2834	343
5416	2835	1755
5417	2836	1756
5418	2837	1757
5419	2838	1758
5420	2839	1274
5423	2840	1274
5429	2841	1754
5435	2842	1759
5437	2843	312
5449	2844	1760
5457	2845	1761
5459	2846	1762
5460	2847	149
5463	2848	1763
5467	2849	1764
5469	2850	1765
5471	2851	1766
5473	2852	1767
5475	2853	1768
5477	2854	1769
5483	2855	1770
5488	2856	1771
5493	2857	1772
5494	2858	1568
5496	2859	1773
5498	2860	1774
5500	2861	1775
5501	2862	998
5503	2863	1776
5507	2864	1777
5510	2865	1778
5512	2866	1779
5517	2867	1575
5522	2868	1780
5529	2869	80
5530	2870	708
5531	2871	1781
5532	2872	709
5534	2873	707
5535	2874	277
5541	2875	193
5542	2876	379
5543	2877	1782
5545	2878	1161
5550	2879	1424
5553	2880	1783
5554	2881	452
5555	2882	1328
5557	2883	1784
5560	2884	1785
5561	2885	1786
5562	2886	1787
5566	2887	955
5572	2888	1788
5577	2889	1214
5581	2890	1789
5583	2891	1790
5585	2892	1791
5591	2893	1251
5595	2894	162
5596	2895	1792
5597	2896	1793
5610	2897	223
5613	2898	1794
5614	2899	1795
5615	2900	1796
5616	2901	593
5617	2902	1797
5618	2903	1564
5619	2904	853
5620	2905	496
5621	2906	1556
5623	2907	513
5625	2908	91
5626	2909	115
5628	2910	1189
5630	2911	1798
5632	2912	1550
5635	2913	1554
5637	2914	128
5639	2915	838
5640	2916	1551
5642	2917	1740
5648	2918	1773
5649	2919	505
5650	2920	1562
5651	2921	501
5652	2922	1568
5653	2923	855
5654	2924	134
5656	2925	1204
5657	2926	1575
5659	2927	509
5662	2928	93
5664	2929	1384
5666	2930	1209
5669	2931	1186
5671	2932	1559
5673	2933	109
5676	2934	122
5682	2935	843
5684	2936	1565
5688	2937	1574
5697	2938	105
5698	2939	140
5699	2940	34
5703	2941	1400
5709	2942	512
5710	2943	1568
5711	2944	853
5712	2945	141
5713	2946	1560
5714	2947	96
5715	2948	810
5716	2949	503
5717	2950	120
5721	2951	840
5729	2952	838
5730	2953	843
5731	2954	812
5733	2955	815
5734	2956	126
5735	2957	1566
5737	2958	1379
5738	2959	507
5739	2960	494
5741	2961	104
5742	2962	498
5748	2963	91
5750	2964	1799
5751	2965	136
5752	2966	34
5753	2967	495
5755	2968	1207
5759	2969	856
5760	2970	1553
5761	2971	516
5762	2972	508
5764	2973	497
5765	2974	1800
5766	2975	1547
5769	2976	1561
5780	2977	1545
5790	2978	1558
5793	2979	1548
5794	2980	1518
5796	2981	1801
5799	2982	148
5800	2983	140
5807	2984	1464
5808	2985	1802
5811	2986	1803
5817	2987	1804
5825	2988	1805
5834	2989	1806
5842	2990	1807
5872	2991	52
5873	2992	273
5876	2993	52
5877	2994	1808
5884	2995	1145
5886	2996	1809
5888	2997	1810
5889	2998	1277
5893	2999	1811
5895	3000	1812
5897	3001	1813
5899	3002	538
5912	3003	1010
5914	3004	1814
5917	3005	1815
5922	3006	1816
5924	3007	490
5929	3008	1817
5939	3009	1618
5945	3010	1818
5947	3011	1819
5954	3012	1820
5956	3013	176
5960	3014	1300
5961	3015	1821
5962	3016	1710
5969	3017	1822
5970	3018	670
5971	3019	1823
5972	3020	1824
5974	3021	1825
5975	3022	1826
5978	3023	1827
5980	3024	1663
5981	3025	1828
5982	3026	1829
5983	3027	1830
5984	3028	961
5985	3029	1831
5986	3030	1375
5988	3031	910
5990	3032	355
5991	3033	1832
5994	3034	905
5995	3035	677
5997	3036	1833
5998	3037	1834
6010	3038	1835
6012	3039	1226
6014	3040	662
6016	3041	1731
6019	3042	659
6020	3043	663
6022	3044	46
6023	3045	660
6024	3046	47
6026	3047	661
6028	3048	1836
6032	3049	1837
6036	3050	1838
6038	3051	76
6041	3052	1135
6050	3053	1827
6052	3054	684
6056	3055	269
6058	3056	268
6059	3057	297
6060	3058	1262
6061	3059	298
6062	3060	1263
6068	3061	267
6069	3062	1718
6071	3063	1718
6078	3064	1839
6084	3065	1840
6088	3066	191
6090	3067	190
6092	3068	188
6094	3069	179
6095	3070	185
6097	3071	183
6099	3072	177
6100	3073	186
6102	3074	180
6106	3075	189
6107	3076	654
6109	3077	1841
6110	3078	1455
6111	3079	242
6112	3080	1170
6113	3081	1842
6116	3082	273
6117	3083	1843
6129	3084	1844
6150	3085	1749
6158	3086	1845
6164	3087	800
6167	3088	1677
6174	3089	1830
6179	3090	1329
6180	3091	1331
6183	3092	1846
6192	3093	1847
6195	3094	569
6197	3095	1597
6198	3096	265
6203	3097	1848
6204	3098	170
6206	3099	973
6207	3100	243
6213	3101	1764
6220	3102	613
6221	3103	605
6226	3104	217
6228	3105	1849
6233	3106	1849
6237	3107	1850
6243	3108	156
6247	3109	759
6252	3110	1851
6257	3111	1852
6258	3112	1853
6262	3113	1854
6265	3114	975
6267	3115	1855
6272	3116	1856
6276	3117	1857
6281	3118	1858
6283	3119	1836
6284	3120	443
6285	3121	1859
6286	3122	1860
6288	3123	521
6292	3124	1861
6293	3125	201
6300	3126	202
6304	3127	1438
6307	3128	1862
6319	3129	1863
6320	3130	1864
6322	3131	1865
6326	3132	415
6331	3133	1866
6333	3134	34
6334	3135	1761
6335	3136	490
6337	3137	1867
6339	3138	1868
6340	3139	1869
6342	3140	579
6343	3141	1870
6366	3142	1871
6371	3143	1872
6374	3144	268
6377	3145	411
6378	3146	865
6379	3147	1873
6381	3148	1874
6384	3149	588
6385	3150	452
6386	3151	1875
6402	3152	752
6412	3153	604
6413	3154	522
6415	3155	248
6436	3156	1876
6440	3157	1877
6455	3158	893
6456	3159	338
6462	3160	1878
6471	3161	1276
6473	3162	25
6474	3163	785
6475	3164	784
6476	3165	1745
6477	3166	1879
6480	3167	1880
6482	3168	1881
6483	3169	469
6488	3170	517
6489	3171	760
6498	3172	410
6499	3173	411
6500	3174	759
6501	3175	490
6505	3176	5
6508	3177	58
6510	3178	149
6515	3179	1169
6521	3180	1162
6529	3181	57
6532	3182	1882
6533	3183	1697
6538	3184	1883
6541	3185	86
6543	3186	1884
6560	3187	1885
6568	3188	1697
6572	3189	1408
6579	3190	1140
6581	3191	28
6585	3192	1886
6586	3193	34
6595	3194	1887
6598	3195	1603
6603	3196	1888
6613	3197	1889
6614	3198	1890
6617	3199	1891
6622	3200	1892
6631	3201	406
6642	3202	1326
6644	3203	1893
6646	3204	1894
6647	3205	1895
6648	3206	1896
6649	3207	1897
6651	3208	1898
6657	3209	352
6665	3210	1899
6675	3211	537
6677	3212	1900
6680	3213	1901
6683	3214	222
6686	3215	1539
6689	3216	1446
6690	3217	1902
6691	3218	1903
6692	3219	643
6693	3220	422
6694	3221	462
6697	3222	1904
6698	3223	1905
6699	3224	1906
6701	3225	1907
6706	3226	1908
6707	3227	421
6719	3228	1795
6728	3229	1353
6733	3230	3
6736	3231	591
6742	3232	1909
6752	3233	1910
6754	3234	172
6791	3235	1220
6799	3236	195
6807	3237	1230
6809	3238	1229
6810	3239	1228
6811	3240	1227
6812	3241	187
6813	3242	1461
6822	3243	1178
6825	3244	1911
6839	3245	1912
6841	3246	1502
6843	3247	909
6845	3248	183
6847	3249	232
6854	3250	745
6858	3251	1534
6872	3252	1913
6885	3253	1914
6896	3254	1915
6899	3255	1126
6901	3256	593
6903	3257	1916
6905	3258	757
6908	3259	1917
6910	3260	222
6912	3261	1918
6913	3262	1919
6917	3263	812
6918	3264	253
6919	3265	1920
6920	3266	1921
6929	3267	1922
6930	3268	972
6935	3269	1923
6936	3270	1924
6937	3271	868
6939	3272	1069
6944	3273	1811
6945	3274	161
6948	3275	1925
6951	3276	1926
6955	3277	876
6956	3278	1587
6957	3279	876
6958	3280	1587
6959	3281	994
6962	3282	1927
6966	3283	1571
6973	3284	1105
6976	3285	1928
6979	3286	522
6983	3287	1929
6987	3288	1930
6993	3289	1931
6994	3290	1932
7002	3291	1852
7003	3292	1862
7004	3293	80
7006	3294	621
7008	3295	1462
7009	3296	666
7010	3297	1438
7012	3298	1816
7013	3299	79
7014	3300	1851
7022	3301	374
7023	3302	1933
7025	3303	149
7026	3304	1182
7031	3305	1934
7034	3306	1908
7035	3307	1935
7037	3308	394
7038	3309	1648
7041	3310	1055
7043	3311	1936
7045	3312	875
7046	3313	1937
7048	3314	868
7051	3315	1060
7061	3316	777
7064	3317	1938
7065	3318	1939
7069	3319	1940
7076	3320	1941
7079	3321	34
7080	3322	692
7082	3323	1040
7087	3324	34
7088	3325	439
7092	3326	1942
7093	3327	1943
7100	3328	1944
7104	3329	1945
7109	3330	1946
7120	3331	1947
7121	3332	647
7123	3333	522
7127	3334	1948
7128	3335	1949
7130	3336	1529
7139	3337	1104
7154	3338	1102
7155	3339	1046
7189	3340	1094
7193	3341	1093
7201	3342	1094
7227	3343	1117
7236	3344	1128
7237	3345	1115
7293	3346	1101
7299	3347	1069
7306	3348	1124
7311	3349	1069
7313	3350	1100
7335	3351	25
7340	3352	1950
7346	3353	1951
7349	3354	892
7362	3355	1952
7363	3356	1953
7367	3357	521
7386	3358	1954
7430	3359	1113
7461	3360	1120
7507	3361	1955
7511	3362	1956
\.


--
-- Data for Name: jcourse_api_coursenotificationlevel; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.jcourse_api_coursenotificationlevel (id, notification_level, modified_at, course_id, user_id) FROM stdin;
\.


--
-- Data for Name: jcourse_api_enrollcourse; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.jcourse_api_enrollcourse (id, course_id, semester_id, user_id, created_at) FROM stdin;
\.


--
-- Data for Name: jcourse_api_formercode; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.jcourse_api_formercode (id, old_code, new_code) FROM stdin;
\.


--
-- Data for Name: jcourse_api_notification; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.jcourse_api_notification (id, type, description, object_id, created_at, read_at, public, content_type_id, recipient_id) FROM stdin;
\.


--
-- Data for Name: jcourse_api_report; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.jcourse_api_report (id, solved, comment, created_at, user_id, reply) FROM stdin;
\.


--
-- Data for Name: jcourse_api_review; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.jcourse_api_review (id, rating, comment, created_at, score, moderator_remark, course_id, semester_id, user_id, approve_count, disapprove_count, modified_at, search_vector) FROM stdin;
907	4	给分正常，八九十的样子，事不多，记不太清了，好像是论文和开卷考试	2025-07-20 01:14:58.427373+00	\N	\N	174	3	9	0	0	\N	\N
908	5	给分正常，八九十的样子，事不多，记不太清了，好像是论文和开卷考试	2025-07-20 01:14:58.444285+00	\N	\N	3098	3	10	0	0	\N	\N
909	5	快跑 没见过概率论有小组作业的，事太多了 要是分再低的话那那真是受不了一点儿。只能说太负责。	2025-07-20 01:14:58.465903+00	\N	\N	1839	3	11	0	0	\N	\N
911	4	四次考试  期末是不是论文待定  平时有作业  不准玩手机	2025-07-20 01:14:58.505468+00	\N	\N	1839	3	4	0	0	\N	\N
912	4	听了一下，老师讲课挺清晰的	2025-07-20 01:14:58.534248+00	\N	\N	480	3	5	0	0	\N	\N
914	5	有论文，组队写，上课讲得有点快，建议提前预习	2025-07-20 01:14:58.576202+00	\N	\N	480	3	7	0	0	\N	\N
915	5	付敏老师风趣幽默！人超不错的！	2025-07-20 01:14:58.590657+00	\N	\N	3211	3	3	0	0	\N	\N
916	4	逻辑学闭卷 不太难 但是上课要听 momo听的复习的比较认真也挺感兴趣 90分期末  但是追求更高的分就很难了 不是水课 内容也蛮多	2025-07-20 01:14:58.598959+00	\N	\N	1896	3	8	0	0	\N	\N
917	4	我觉得还好 因为我之前高中zz学过 没基础的话学的时候可能觉得有点抽象 但我室友她们就是没基础期末也速成了 而且分不错Ŀ	2025-07-20 01:14:58.608821+00	\N	\N	590	3	9	0	0	\N	\N
918	4	基本每节课都会教课堂作业，但是看你学号尾号单数还是双数来交，看运气	2025-07-20 01:14:58.617454+00	\N	\N	1896	3	10	0	0	\N	\N
919	4	代老师讲的很好！我考试很一般，作业都按时完成了，平时分90多，期末感觉很正常的给分，及格边上的狠狠捞了一波。对了，她上课不抽人回答问题。	2025-07-20 01:14:58.630765+00	\N	\N	1578	3	11	0	0	\N	\N
920	5	代老师讲的很好！我考试很一般，作业都按时完成了，平时分90多，期末感觉很正常的给分，及格边上的狠狠捞了一波。对了，她上课不抽人回答问题。	2025-07-20 01:14:58.639695+00	\N	\N	215	3	12	0	0	\N	\N
921	5	任平老师人非常好，不点名，但不能迟到	2025-07-20 01:14:58.655512+00	\N	\N	134	3	4	0	0	\N	\N
923	4	给分很好，人很好，超级潮流	2025-07-20 01:14:58.67256+00	\N	\N	134	3	6	0	0	\N	\N
924	5	没上过，但是听朋友反馈老师人挺好	2025-07-20 01:14:58.685145+00	\N	\N	757	3	7	0	0	\N	\N
926	5	上过rqy的人力资源管理（英），每次都点名	2025-07-20 01:14:58.705575+00	\N	\N	309	3	8	0	0	\N	\N
928	4	严 而且我不喜欢老师上课方式	2025-07-20 01:14:58.732949+00	\N	\N	319	3	10	0	0	\N	\N
930	4	国贸实务千万别选何奕，千万千万	2025-07-20 01:14:58.760355+00	\N	\N	319	3	12	0	0	\N	\N
931	4	难度还好，就是教excel。我感觉他讲的挺好的，每节课都很流畅。我们这学期是六周，平时没事，总评分就是期末分（回答问题能加分），但不知道之后的课如果延长到十几周平时会不会有作业	2025-07-20 01:14:58.779308+00	\N	\N	2380	3	4	0	0	\N	\N
933	4	难度还好，就是教excel。讲的挺好的，每节课都很流畅	2025-07-20 01:14:58.808916+00	\N	\N	1189	3	6	0	0	\N	\N
934	4	事比较少 没缺勤过发过一次言平时分90	2025-07-20 01:14:58.824886+00	\N	\N	869	3	7	0	0	\N	\N
936	4	还好吧，就是偶尔要签到	2025-07-20 01:14:58.845686+00	\N	\N	869	3	8	0	0	\N	\N
937	5	她人挺好的，但是我们当时事情特别特别多每周都很多作业，期末考核有可能是小组讨论	2025-07-20 01:14:58.877767+00	\N	\N	668	3	9	0	0	\N	\N
938	4	她人挺好的，但是我们当时事情特别特别多每周都很多作业，期末考核有可能是小组讨论	2025-07-20 01:14:58.891976+00	\N	\N	708	3	10	0	0	\N	\N
939	5	事情有点多，但是据我了解那个板块的事都多	2025-07-20 01:14:58.909259+00	\N	\N	708	3	11	0	0	\N	\N
940	4	几乎周周突击考，题型不说，题量不说，经我们是期末写论文，字数不多，平时只有一个小组作业，很简单，没有pre，上课有好几次小测，不定期，建议好好做，请假都会过但是一定要请常做不完。	2025-07-20 01:14:58.927705+00	\N	\N	668	3	12	0	0	\N	\N
941	5	分不高 小组作业多 不过上课可以划水不会点人回答好喜欢老师！只要喜欢pre 最后94	2025-07-20 01:14:58.94076+00	\N	\N	708	3	4	0	0	\N	\N
942	5	喜欢余老师讲课 简洁精练 思路很清晰 人很好👍助教也很负责	2025-07-20 01:14:58.966954+00	\N	\N	529	3	5	0	0	\N	\N
943	4	事不多，上课不管，给分还行	2025-07-20 01:14:58.985239+00	\N	\N	2434	3	6	0	0	\N	\N
944	5	兰人很好，就是讲的一般般 对着电子课本讲 两年之前是这样的 现在咋样不知道	2025-07-20 01:14:59.016531+00	\N	\N	406	3	7	0	0	\N	\N
946	5	一个字也听不懂，但是给分真的好	2025-07-20 01:14:59.038726+00	\N	\N	406	3	8	0	0	\N	\N
947	5	老师人挺好的 这个课比你想象中简单很多	2025-07-20 01:14:59.060125+00	\N	\N	2606	3	9	0	0	\N	\N
948	4	冯华老师特别好，给分也不错，事也很少。	2025-07-20 01:14:59.076129+00	\N	\N	1998	3	10	0	0	\N	\N
950	5	期末是论文，老师要求挺严格的。但是认真就能拿高分	2025-07-20 01:14:59.096032+00	\N	\N	695	3	12	0	0	\N	\N
951	4	期末是论文，平时有一次展示	2025-07-20 01:14:59.106763+00	\N	\N	1998	3	4	0	0	\N	\N
952	5	我也不知道大家为什么避雷，momo全勤，认真完成了小组作业，平时分有98	2025-07-20 01:14:59.123985+00	\N	\N	422	3	5	0	0	\N	\N
953	5	好！给分高（我90+）教的也好人也有趣	2025-07-20 01:14:59.140042+00	\N	\N	467	3	6	0	0	\N	\N
955	5	上过他的大心理，挺好的	2025-07-20 01:14:59.171628+00	\N	\N	2232	3	3	0	0	\N	\N
956	4	lyh！没有pre！给分高！	2025-07-20 01:14:59.191412+00	\N	\N	3308	3	8	0	0	\N	\N
957	5	lyh！没有pre！给分高！	2025-07-20 01:14:59.204101+00	\N	\N	424	3	9	0	0	\N	\N
958	4	狠狠避雷刘军老师的口语 ，得主动回答问题，他说不主动回答最后给分会低，还有三次小组展示，上课就是跟他念句子，每节课有一个讨论的话题	2025-07-20 01:14:59.22059+00	\N	\N	244	3	10	0	0	\N	\N
959	4	他不抽或者说很少，这才是最恐怖的，因为他要你主动上台去发言不然给你70来平时分，当然，发言了的可能也不高，不发更是低中低	2025-07-20 01:14:59.232228+00	\N	\N	244	3	11	0	0	\N	\N
960	5	事多给分贼低，全年级最高分91	2025-07-20 01:14:59.244866+00	\N	\N	244	3	12	0	0	\N	\N
963	4	事多给分贼低，全年级最高分91	2025-07-20 01:14:59.294588+00	\N	\N	1032	3	6	0	0	\N	\N
964	5	老师人很好！给分也还可以！	2025-07-20 01:14:59.314194+00	\N	\N	1984	3	7	0	0	\N	\N
965	5	老师人很好！给分也还可以！	2025-07-20 01:14:59.336202+00	\N	\N	1685	3	3	0	0	\N	\N
966	4	刘凌老师人非常好，课没上过	2025-07-20 01:14:59.355111+00	\N	\N	719	3	8	0	0	\N	\N
968	4	刘凌老师人超级好给分也超级好，王俊老师人好给分不知道	2025-07-20 01:14:59.390394+00	\N	\N	719	3	10	0	0	\N	\N
969	4	刘老师我没上，但是能选到就冲！老师很好。	2025-07-20 01:14:59.425595+00	\N	\N	573	3	11	0	0	\N	\N
971	5	给分挺高的，划重点也很准	2025-07-20 01:14:59.473149+00	\N	\N	3294	3	4	0	0	\N	\N
973	5	社会学强推刘婵老师！！！平时分给了我100	2025-07-20 01:14:59.508567+00	\N	\N	3294	3	6	0	0	\N	\N
974	4	真的超爱，平时分好高	2025-07-20 01:14:59.531037+00	\N	\N	3294	3	7	0	0	\N	\N
975	4	刘老师讲课很好，收获很大，期中期末分别一个案例分析，要拿高分就要认真，不能水。跨选还是可以的，基础要求不高，学过微经就行。但不是那种很轻松拿高分的水课。	2025-07-20 01:14:59.560611+00	\N	\N	1838	3	3	0	0	\N	\N
977	5	刘不错，平时分可以拉满，但期中期末论文要写的好	2025-07-20 01:14:59.599186+00	\N	\N	1838	3	9	0	0	\N	\N
978	5	老师真的人美心善。。她真的好美给分还高	2025-07-20 01:14:59.628255+00	\N	\N	439	3	10	0	0	\N	\N
980	4	上货金虽然没怎么认真听但都没玩手机	2025-07-20 01:14:59.66896+00	\N	\N	441	3	12	0	0	\N	\N
981	5	她好美好温柔给分好高	2025-07-20 01:14:59.692839+00	\N	\N	441	3	4	0	0	\N	\N
982	5	刘悦老师很好  人美心善手把手教	2025-07-20 01:14:59.71703+00	\N	\N	84	3	5	0	0	\N	\N
984	4	挺好的  平时分很高	2025-07-20 01:14:59.758037+00	\N	\N	84	3	7	0	0	\N	\N
985	4	她的英语写作好到我一次都没迟到过	2025-07-20 01:14:59.780135+00	\N	\N	1446	3	3	0	0	\N	\N
987	4	课很轻松，平时的作业可以用手机做，而且不会点名，也没有什么小测	2025-07-20 01:14:59.805554+00	\N	\N	1045	3	9	0	0	\N	\N
988	4	多的很，给分不算友好	2025-07-20 01:14:59.827916+00	\N	\N	1187	3	10	0	0	\N	\N
989	5	挺好的，事不多，给分好	2025-07-20 01:14:59.856954+00	\N	\N	1186	3	11	0	0	\N	\N
990	5	刘老师人很好给分挺高的 上课也比较宽 考核什么的都挺松的，会给不错的分，人也好说话	2025-07-20 01:14:59.878851+00	\N	\N	1366	3	12	0	0	\N	\N
991	4	刘田给分可以，平时95+，PPT也挺详细的	2025-07-20 01:14:59.895801+00	\N	\N	1160	3	4	0	0	\N	\N
993	4	温温柔柔的，事情也不多，喜欢	2025-07-20 01:14:59.9275+00	\N	\N	2228	3	6	0	0	\N	\N
994	5	温温柔柔的，事情也不多，喜欢	2025-07-20 01:14:59.954421+00	\N	\N	126	3	7	0	0	\N	\N
995	5	刘畅之前教我们行测 还挺好的	2025-07-20 01:14:59.974962+00	\N	\N	126	3	3	0	0	\N	\N
996	4	给分挺高的，能学到不少	2025-07-20 01:14:59.992886+00	\N	\N	2862	3	8	0	0	\N	\N
997	4	冲！英文授课，但当时我上课的时候人少加疫情所以期末是take-home exam，期末真的努力在捞	2025-07-20 01:15:00.02559+00	\N	\N	2519	3	9	0	0	\N	\N
998	4	微宏都是两位老师教的 非常好	2025-07-20 01:15:00.044036+00	\N	\N	2519	3	10	0	0	\N	\N
999	5	期末论文分好低，但平时分又还可以	2025-07-20 01:15:00.069089+00	\N	\N	749	3	11	0	0	\N	\N
1001	5	她好像有两门课，税收筹划和数字财税概论，分都低低的很安心	2025-07-20 01:15:00.10464+00	\N	\N	783	3	4	0	0	\N	\N
1002	4	平时分很低（期末也低，但是平时分比期末还低）	2025-07-20 01:15:00.12681+00	\N	\N	2575	3	5	0	0	\N	\N
1003	5	挺好的 人很和善，平时分确实好高，作业都交了平时分就是100吧	2025-07-20 01:15:00.151188+00	\N	\N	3002	3	6	0	0	\N	\N
1005	5	刘越帅哥，平时分拉满	2025-07-20 01:15:00.180656+00	\N	\N	3002	3	3	0	0	\N	\N
1006	4	我们当时是一学期三次，不定日期随机点名	2025-07-20 01:15:00.194899+00	\N	\N	3002	3	8	0	0	\N	\N
1007	4	给分高，非常好。Excel基础和Wind应用难度不是很大，就是他上课讲的，你照他讲的东西做就可以咧，实在不会还可以上网上搜	2025-07-20 01:15:00.218737+00	\N	\N	1159	3	9	0	0	\N	\N
1009	4	我们是期中期末一共两次小组作业，期末一次个人作业。老师挺好说话的感觉，一般点名都会提前通知	2025-07-20 01:15:00.252646+00	\N	\N	1159	3	11	0	0	\N	\N
1010	5	觉得还好吧，考试的话我猜测是小组作业和个人作业结合（因为我这学期上的他的Excel和金融建模	2025-07-20 01:15:00.268643+00	\N	\N	1159	3	12	0	0	\N	\N
1011	5	华晨长得帅，但讲的中规中矩， 给分还华晨长得帅，但讲的中规中矩， 给分还可以可以	2025-07-20 01:15:00.295477+00	\N	\N	1730	3	4	0	0	\N	\N
1013	5	高的挺高，低的也挺低	2025-07-20 01:15:00.321074+00	\N	\N	1730	3	6	0	0	\N	\N
1015	5	上课很有趣，老师人特别好	2025-07-20 01:15:00.378611+00	\N	\N	2155	3	3	0	0	\N	\N
1016	4	上课很有趣，老师人特别好	2025-07-20 01:15:00.394584+00	\N	\N	1312	3	8	0	0	\N	\N
1017	5	温柔大美女，人超级好，我期末平时分96	2025-07-20 01:15:00.407362+00	\N	\N	1312	3	9	0	0	\N	\N
1018	5	nxt上课很有趣，老师人特别好，还没结课，不知道分数咋样	2025-07-20 01:15:00.419587+00	\N	\N	2155	3	10	0	0	\N	\N
1019	5	温柔大美女，人超级好，我期末平时分96➕	2025-07-20 01:15:00.432263+00	\N	\N	2155	3	11	0	0	\N	\N
1020	5	每节课都会点名 但老师讲课很有意思给分也很好	2025-07-20 01:15:00.445461+00	\N	\N	1312	3	12	0	0	\N	\N
1021	5	三次小作文期末是跳舞，人挺好	2025-07-20 01:15:00.488052+00	\N	\N	1312	3	4	0	0	\N	\N
1022	5	放心大胆冲卢冲老师的计算社会学 非PPTreader课，教软件 ，以后其他课上的pre包有的装的\n(上次选老师的微观就给我平时分99	2025-07-20 01:15:00.512938+00	\N	\N	2490	3	5	0	0	\N	\N
1023	4	挺好的 ，平时分和期末都是90+	2025-07-20 01:15:00.541568+00	\N	\N	1271	3	6	0	0	\N	\N
1024	4	挺好的，事不多，给分好	2025-07-20 01:15:00.574655+00	\N	\N	1271	3	7	0	0	\N	\N
1025	5	还可以，就是老师有时候有点严格	2025-07-20 01:15:00.620454+00	\N	\N	586	3	3	0	0	\N	\N
1027	5	给分一般吧，作业整个学期有个4、5次，我记得好像是读书笔记和汇报，期末是汇报结课	2025-07-20 01:15:00.665792+00	\N	\N	586	3	9	0	0	\N	\N
1028	5	怎么点过名，但是因为旅游管理专业本身人很少，所以来没来其实很明显 。。。。课本身不难	2025-07-20 01:15:00.698051+00	\N	\N	586	3	10	0	0	\N	\N
1326	5	老师人不错，但是小组pre很多	2025-07-20 01:15:07.514216+00	\N	\N	1720	3	8	0	0	\N	\N
1029	5	这个老师脾气不好，对不同的人态度不一样 而且他公选课给我的感觉就是不会上课	2025-07-20 01:15:00.727795+00	\N	\N	1666	3	11	0	0	\N	\N
1031	4	早就听说老师很严，四大挂王	2025-07-20 01:15:00.774071+00	\N	\N	1666	3	4	0	0	\N	\N
1032	5	新老师，但人很帅也很好	2025-07-20 01:15:00.829416+00	\N	\N	2329	3	5	0	0	\N	\N
1034	5	人美心善\b，给分超级高事情也少	2025-07-20 01:15:00.884429+00	\N	\N	1438	3	7	0	0	\N	\N
1036	4	上课会点人回答问题，但是给分很高	2025-07-20 01:15:00.930814+00	\N	\N	1436	3	8	0	0	\N	\N
1037	5	老师记人会找人回答问题 但是给分还可以 人特别好	2025-07-20 01:15:00.981109+00	\N	\N	1436	3	9	0	0	\N	\N
1038	5	吴老师上课一般，给分高	2025-07-20 01:15:01.009046+00	\N	\N	752	3	10	0	0	\N	\N
1040	5	上学期她给我平时分打满了（可能也因为mo的体测太差需要捞一下ċ	2025-07-20 01:15:01.048226+00	\N	\N	2695	3	12	0	0	\N	\N
1041	4	没错！讲课好事少分高	2025-07-20 01:15:01.094325+00	\N	\N	877	3	4	0	0	\N	\N
1043	5	吴江老师给分比较公正。就是你平时做的好了，就会给的高，平时做的不好的话也不会手软感觉	2025-07-20 01:15:01.147732+00	\N	\N	877	3	6	0	0	\N	\N
1044	4	给分比较公正吧，讲的还不错，不过平时任务挺多	2025-07-20 01:15:01.173244+00	\N	\N	877	3	7	0	0	\N	\N
1045	5	事少，分也不错，每节课都要点人回答问题	2025-07-20 01:15:01.230036+00	\N	\N	1900	3	3	0	0	\N	\N
1046	4	上课很有趣，性格很好	2025-07-20 01:15:01.284959+00	\N	\N	710	3	8	0	0	\N	\N
1048	4	前半学期不点名，让同学尽量坐固定的位置，凭印象给考勤分。后半学期按小组签到，好好学了期末能给也会尽量给的	2025-07-20 01:15:01.350799+00	\N	\N	2013	3	10	0	0	\N	\N
1049	4	给量哥打call！！讲得很清楚老师人也很好！！	2025-07-20 01:15:01.396161+00	\N	\N	173	3	11	0	0	\N	\N
1051	4	挺好的 期末给分也挺高	2025-07-20 01:15:01.483871+00	\N	\N	1161	3	4	0	0	\N	\N
1053	5	wj老师平时分我们按小组给….然后全班就两个小组….最后两个小组一样的分	2025-07-20 01:15:01.536934+00	\N	\N	2706	3	6	0	0	\N	\N
1054	5	喜欢周丽晖，虽然每次上课之前要提问，但是会提前给问题，这样确实能强制我学会点什么东西ţ	2025-07-20 01:15:01.562459+00	\N	\N	436	3	7	0	0	\N	\N
1056	5	还可以，上课抽问（可以照着书读），平时分90+	2025-07-20 01:15:01.613836+00	\N	\N	436	3	8	0	0	\N	\N
1057	5	教的很好，好好做作业不然你的平时分会很难看。	2025-07-20 01:15:01.630877+00	\N	\N	436	3	9	0	0	\N	\N
1058	4	只能说给研究生讲东西很认真	2025-07-20 01:15:01.682099+00	\N	\N	2004	3	10	0	0	\N	\N
1060	5	dq上形体与礼仪，不难，老师人挺好的	2025-07-20 01:15:01.76275+00	\N	\N	2683	3	12	0	0	\N	\N
1061	5	不过他给分一向很好，不会很低，就是他要求的，要给他看作业，每节课都有任务，但是我们组没有完成	2025-07-20 01:15:01.788991+00	\N	\N	1059	3	4	0	0	\N	\N
1063	4	人很好，就是经常讲话我听不懂，而且很快	2025-07-20 01:15:01.837514+00	\N	\N	1059	3	6	0	0	\N	\N
1064	5	周周老师上课挺好的，也温柔	2025-07-20 01:15:01.89103+00	\N	\N	24	3	7	0	0	\N	\N
1066	4	上过周周的课，老师挺好	2025-07-20 01:15:01.944765+00	\N	\N	24	3	8	0	0	\N	\N
1067	4	我们那次给分还蛮好的 上课也允许做其他事情	2025-07-20 01:15:02.014533+00	\N	\N	875	3	9	0	0	\N	\N
1069	4	事挺多的，时不时会点名和叫人回答问题，很不喜欢学生在下面玩手机不听课，不过最后平时分开的挺高的	2025-07-20 01:15:02.115212+00	\N	\N	1902	3	11	0	0	\N	\N
1071	5	没有平时作业，但是有小组pre。平时分给我开到了95，而且我还有一次缺勤的情况	2025-07-20 01:15:02.171254+00	\N	\N	1902	3	4	0	0	\N	\N
1072	5	周海荣老师挺好的，有小组作业但形式自由，平时成绩实验成绩都90+	2025-07-20 01:15:02.186298+00	\N	\N	1902	3	5	0	0	\N	\N
1073	4	考核方式挺简单的就是写平时作业（期末才交）最后一个小组论文，老师给分很高，放心选	2025-07-20 01:15:02.222705+00	\N	\N	1084	3	6	0	0	\N	\N
1075	5	冲就可以了，作业少，考核是小组论文	2025-07-20 01:15:02.279039+00	\N	\N	1084	3	3	0	0	\N	\N
1076	4	老师挺好的，给分很高，我总评93。期末只有小组展示和每章的一点点作业。	2025-07-20 01:15:02.332793+00	\N	\N	1084	3	8	0	0	\N	\N
1077	4	周老师！平时分拉满！	2025-07-20 01:15:02.401721+00	\N	\N	466	3	9	0	0	\N	\N
1078	5	周老师！平时分拉满！	2025-07-20 01:15:02.427576+00	\N	\N	266	3	10	0	0	\N	\N
1079	4	周茂老师讲的好，给分90	2025-07-20 01:15:02.473435+00	\N	\N	841	3	11	0	0	\N	\N
1080	4	周茂老师讲的好，给分90	2025-07-20 01:15:02.505826+00	\N	\N	348	3	12	0	0	\N	\N
1081	5	和老师是新老师，上课就是吧啦吧啦一直低着头念，语调很平很催眠，考核方式全课题组统一	2025-07-20 01:15:02.561272+00	\N	\N	2328	3	4	0	0	\N	\N
1082	4	很好，不点名，但是给分不知道，讲得很好ww很生动	2025-07-20 01:15:02.616025+00	\N	\N	601	3	5	0	0	\N	\N
1083	4	我是这个学期选的所以不知道给分（听说很高） 我们没有小组 只有一个读书报告 老师人真的很好～事情很少而且很体谅大家	2025-07-20 01:15:02.660842+00	\N	\N	601	3	6	0	0	\N	\N
1084	5	讲的挺细的，给分也很好，是个很温柔的老师	2025-07-20 01:15:02.744932+00	\N	\N	1115	3	7	0	0	\N	\N
1086	4	平时分挺高的，老师人很好，也幽默，上的挺好的	2025-07-20 01:15:02.803219+00	\N	\N	1463	3	8	0	0	\N	\N
1087	4	平时分挺高的，老师人很好，也幽默，上的挺好的	2025-07-20 01:15:02.853115+00	\N	\N	264	3	9	0	0	\N	\N
1088	5	老师人超好，讲的也很好	2025-07-20 01:15:02.87503+00	\N	\N	264	3	10	0	0	\N	\N
1089	5	讲的可以，夏老时会划重点	2025-07-20 01:15:02.935754+00	\N	\N	2372	3	11	0	0	\N	\N
1091	5	不高，老师人很好，经常会帮助你	2025-07-20 01:15:03.007265+00	\N	\N	1374	3	4	0	0	\N	\N
1092	5	他狂捞，也不是 主要他期末重点划很细 认真看看不至于挂	2025-07-20 01:15:03.04426+00	\N	\N	208	3	5	0	0	\N	\N
1093	5	他狂捞，也不是 主要他期末重点划很细 认真看看不至于挂	2025-07-20 01:15:03.075249+00	\N	\N	2061	3	6	0	0	\N	\N
1094	5	人好，上过孙老师数模，虽然是老教师但是特别有意思	2025-07-20 01:15:03.098174+00	\N	\N	2061	3	7	0	0	\N	\N
1095	5	把人当幼儿园小朋友一样教，特好	2025-07-20 01:15:03.137999+00	\N	\N	2686	3	3	0	0	\N	\N
1096	5	可以演讲也可辩论 孙老师的课放心选 给分好 有作业 但作业不会很难 老师很随和	2025-07-20 01:15:03.194539+00	\N	\N	1975	3	8	0	0	\N	\N
1098	5	当时有期中期末两次考核，期中考背稿演讲，期末可选背稿演讲or跟同学组队辩论，不过大多数人都选择的是演讲	2025-07-20 01:15:03.264245+00	\N	\N	1975	3	10	0	0	\N	\N
1099	5	孙老师很好呀 人美温柔很细致 给分也高！	2025-07-20 01:15:03.334924+00	\N	\N	701	3	11	0	0	\N	\N
1101	5	有小组作业（15%），慕课（30%），期末考核是6000-8000字的论文（40%）	2025-07-20 01:15:03.376967+00	\N	\N	701	3	4	0	0	\N	\N
1102	5	孙老师很可爱可亲并且超级温柔鼓励式教育蛮好蛮好	2025-07-20 01:15:03.405037+00	\N	\N	701	3	5	0	0	\N	\N
1103	4	大康好，温和有耐心，讲课我觉得挺清楚的，不清楚去问他他也很耐心地给你再讲一遍，之前期中听说帮我们捞了十多分，平时分90+	2025-07-20 01:15:03.471374+00	\N	\N	910	3	6	0	0	\N	\N
1105	4	还行吧 每次课去上了作业做了 期末大作业也做了 总评92	2025-07-20 01:15:03.542035+00	\N	\N	1723	3	3	0	0	\N	\N
1107	5	没有小组作业 只有一个期末大作业 就是平时课上只要跟着做都会做的 不会提问	2025-07-20 01:15:03.587725+00	\N	\N	1723	3	9	0	0	\N	\N
1108	4	期末不给题库 其他老师都会给题库 然后期末很多重复或类似的很好过 他就不会管这些 慎重	2025-07-20 01:15:03.619703+00	\N	\N	25	3	10	0	0	\N	\N
1110	5	上过宋老师的货金，讲的非常好	2025-07-20 01:15:03.717282+00	\N	\N	2113	3	12	0	0	\N	\N
1112	5	好的很美女老师讲课很有趣，事儿不多，给分我觉得还行，又美又温柔	2025-07-20 01:15:03.763423+00	\N	\N	613	3	5	0	0	\N	\N
1114	4	非常友好，老师人也很好，期末还会给我们总结的PPT	2025-07-20 01:15:03.810475+00	\N	\N	613	3	7	0	0	\N	\N
1115	5	她超好，我们上课时候她不查签到的！讲课也很有趣！！给分也高，momo最后拿了94	2025-07-20 01:15:03.836846+00	\N	\N	613	3	3	0	0	\N	\N
1116	5	老师给分挺高的，平时也没啥事	2025-07-20 01:15:03.869851+00	\N	\N	1315	3	8	0	0	\N	\N
1117	5	老师给分挺高的，平时也没啥事	2025-07-20 01:15:03.888496+00	\N	\N	718	3	9	0	0	\N	\N
1118	5	不是数学专业的看宋浩就行	2025-07-20 01:15:03.915834+00	\N	\N	55	3	10	0	0	\N	\N
1120	4	基础可以听，但就是他在课堂上讲的习题太简单了，你要自己多做一些有难度的题	2025-07-20 01:15:03.948614+00	\N	\N	55	3	12	0	0	\N	\N
1121	5	上过课，老师很认真上课也很用心	2025-07-20 01:15:04.020106+00	\N	\N	2081	3	4	0	0	\N	\N
1123	5	老师讲地好认真，真的是 大二了终于感觉遇到了好数学老师	2025-07-20 01:15:04.072804+00	\N	\N	192	3	6	0	0	\N	\N
1124	5	老师讲地好认真，真的是 大二了终于感觉遇到了好数学老师	2025-07-20 01:15:04.100936+00	\N	\N	3068	3	7	0	0	\N	\N
1125	5	老师超级认真 是我三年来见过最最负责的老师了	2025-07-20 01:15:04.147051+00	\N	\N	3068	3	3	0	0	\N	\N
1126	5	超级无敌好，老师特别细心负责 板书也很工整 讲得很清楚！	2025-07-20 01:15:04.170586+00	\N	\N	192	3	8	0	0	\N	\N
1127	4	但是yj老师不太捞人，我们专业两个概率论老师，另外一位一个没挂，全是yj班上的去补考	2025-07-20 01:15:04.192241+00	\N	\N	192	3	9	0	0	\N	\N
1128	5	好像是会捞吧？说是平时分给的还挺高的，如果期末考的确实不好那可能真的捞不起来	2025-07-20 01:15:04.211376+00	\N	\N	3068	3	10	0	0	\N	\N
1129	5	梦中情师，课后每周都会有线上习题课，还把录播发群里。还有整理的往届期末试题，亲自手写的答案，各种资料往群里发。就连这次期末考试的卷子和答案讲解都发了	2025-07-20 01:15:04.23826+00	\N	\N	3068	3	11	0	0	\N	\N
1130	4	挺好的，会有课堂考勤，期中论文，但是老师人很好，很热心的一个老师，有问必答	2025-07-20 01:15:04.296005+00	\N	\N	2420	3	12	0	0	\N	\N
1131	4	挺好的，会有课堂考勤，期中论文，但是老师人很好，很热心的一个老师，有问必答	2025-07-20 01:15:04.316736+00	\N	\N	1092	3	4	0	0	\N	\N
1132	5	崔老师会捞的 你只要课都去然后论文好好写 她平时分给很高的	2025-07-20 01:15:04.332798+00	\N	\N	1696	3	5	0	0	\N	\N
1133	4	语速贼快，而且不完全按书讲，勾书的时候找半天找不到她说的那句话在哪儿	2025-07-20 01:15:04.347856+00	\N	\N	2420	3	6	0	0	\N	\N
1134	4	廖老师人很好的，教的也很好，也不会故意卡分	2025-07-20 01:15:04.387166+00	\N	\N	620	3	7	0	0	\N	\N
1135	4	人非常好，会给很多未来规划的建议	2025-07-20 01:15:04.430211+00	\N	\N	674	3	3	0	0	\N	\N
1136	5	人非常好，会给很多未来规划的建议	2025-07-20 01:15:04.452133+00	\N	\N	2385	3	8	0	0	\N	\N
1137	4	老师人特别好选她选她	2025-07-20 01:15:04.473762+00	\N	\N	658	3	9	0	0	\N	\N
1138	5	平时分给分很高了基本90+95左右吧，会计主要看期末考试吧，上课也挺好的。我是3年前上过她的会计，当时她期末捞人甚至给了平时100	2025-07-20 01:15:04.508157+00	\N	\N	2196	3	10	0	0	\N	\N
1139	5	很高，基本上都是满的	2025-07-20 01:15:04.536724+00	\N	\N	2196	3	11	0	0	\N	\N
1140	4	会计信息系统张冬老师 人很好，但期末实难，期末不机考，在规定时间交就行，	2025-07-20 01:15:04.569741+00	\N	\N	1724	3	12	0	0	\N	\N
1142	4	zh 我期末九十多 平时给我打八十几 作业回答问题全勤	2025-07-20 01:15:04.626092+00	\N	\N	1096	3	5	0	0	\N	\N
1144	5	林老师还行，偶尔点名	2025-07-20 01:15:04.65895+00	\N	\N	1096	3	7	0	0	\N	\N
1145	4	这学期上的张华节老师的计量，讲课挺好的，老师也是个幽默的人	2025-07-20 01:15:04.68089+00	\N	\N	482	3	3	0	0	\N	\N
1147	4	挺好的 你作业认真写上课认真学 期末没啥问题	2025-07-20 01:15:04.767203+00	\N	\N	3325	3	9	0	0	\N	\N
1148	4	很折磨，需要小组展示，要求很高，有效提问可以加分，具体里面没有展示的人好像还要准备小论文。当时是期末论文布置的也比较晚，导致同学们怨念很大。但是在专业能力提升上面比较厉害，听说最后给分还可以。总之要在这个课上花很大的精力，也是真的能学到东西。	2025-07-20 01:15:04.808437+00	\N	\N	483	3	10	0	0	\N	\N
1150	4	老师超级可爱，事不多，平时两三次作业，一次小组展示，期末因为疫情开放提前回家就变成开卷回答问题，可以选！	2025-07-20 01:15:04.867788+00	\N	\N	1628	3	12	0	0	\N	\N
1152	5	出勤5，作业20，课堂表现25，期末考核50	2025-07-20 01:15:04.919417+00	\N	\N	1628	3	5	0	0	\N	\N
1153	5	大职规张太富！我的神	2025-07-20 01:15:04.962933+00	\N	\N	2318	3	6	0	0	\N	\N
1155	5	老师挺好的，给分挺不错，偶尔点名，期中好像是一次小组pre	2025-07-20 01:15:05.040376+00	\N	\N	2167	3	3	0	0	\N	\N
1156	5	事少分高 老师人超好	2025-07-20 01:15:05.054802+00	\N	\N	2167	3	8	0	0	\N	\N
1157	4	老师挺好的，给分挺不错，偶尔点名，期中好像是一次小组pre	2025-07-20 01:15:05.071637+00	\N	\N	1661	3	9	0	0	\N	\N
1159	5	没有作业，没有期末考试，好像有两次辩论，分数应该还不错	2025-07-20 01:15:05.135683+00	\N	\N	1502	3	11	0	0	\N	\N
1161	4	张怡然老师人超级nice	2025-07-20 01:15:05.19481+00	\N	\N	1295	3	4	0	0	\N	\N
1163	4	给分高 老师很好 但是很社恐的不太建议 因为会单独表演小节目啥的	2025-07-20 01:15:05.222698+00	\N	\N	1295	3	6	0	0	\N	\N
1164	5	张怡然老师的戏剧表演基础训练，好玩，i人最好不要，期末表演剧目。就是要当场自我介绍或者即兴表演的地步，大家都会看着你，这种程度	2025-07-20 01:15:05.238274+00	\N	\N	1012	3	7	0	0	\N	\N
1165	5	老师大美女人超好超有趣 分高不高还不知道 但是建议冲！（公选课	2025-07-20 01:15:05.253956+00	\N	\N	1295	3	3	0	0	\N	\N
1166	5	上课教的很详细，适合基础不好的	2025-07-20 01:15:05.272771+00	\N	\N	2524	3	8	0	0	\N	\N
1167	4	老师讲得挺细，考试炒鸡捞人，好，冲就完了	2025-07-20 01:15:05.294582+00	\N	\N	1558	3	9	0	0	\N	\N
1168	5	老师讲得挺细，考试炒鸡捞人，好，冲就完了	2025-07-20 01:15:05.308852+00	\N	\N	1060	3	10	0	0	\N	\N
1169	5	人超好，其他课分很高	2025-07-20 01:15:05.333627+00	\N	\N	1060	3	11	0	0	\N	\N
1170	4	无脑冲！考前会把复习资料发给你，分很高	2025-07-20 01:15:05.358719+00	\N	\N	1558	3	12	0	0	\N	\N
1171	4	考试，给分还可以，出题不一定很简单	2025-07-20 01:15:05.373401+00	\N	\N	1060	3	4	0	0	\N	\N
1172	5	我觉得蛮好的，我当时基本拉满了	2025-07-20 01:15:05.399625+00	\N	\N	748	3	5	0	0	\N	\N
1174	4	求求你一定要上她的课！！！这么好的老师错过太亏了	2025-07-20 01:15:05.428406+00	\N	\N	1201	3	7	0	0	\N	\N
1175	4	我期末九十多 平时给我打八十几 作业回答问题全勤	2025-07-20 01:15:05.453141+00	\N	\N	1707	3	3	0	0	\N	\N
1176	4	我期末九十多 平时给我打八十几 作业回答问题全勤	2025-07-20 01:15:05.466664+00	\N	\N	1627	3	8	0	0	\N	\N
1177	5	平时分按四五次作业外加一次学习通开卷期中考试  ，一次小组作业  拿分全凭本事 但是作业找不到答案 AI也不是很靠谱...	2025-07-20 01:15:05.483506+00	\N	\N	1627	3	9	0	0	\N	\N
1178	5	考选择 判断 填空 大题，考多少就在期末成绩占比多少	2025-07-20 01:15:05.494975+00	\N	\N	1707	3	10	0	0	\N	\N
1179	4	期中期末都是论文 但是老师要求有点严格。但是你想认真学就选他	2025-07-20 01:15:05.509415+00	\N	\N	678	3	11	0	0	\N	\N
1181	5	他就是很看重出勤，如果要经常逃课就别选，我身边平时分低的都是因为点名有几次没来，他也不常点名的	2025-07-20 01:15:05.534255+00	\N	\N	678	3	4	0	0	\N	\N
1182	4	认真的话大概率能上90吧，老师上课很多干货，平常也没考试，我平时分好像也上90了，就是期末论文我是赶工出来的比较水，所以分不算很高，但是我很满意了	2025-07-20 01:15:05.546583+00	\N	\N	678	3	5	0	0	\N	\N
1183	4	法学院的张欣老师人美心善，但是这门课没上过，有幸上过老师的宪法学	2025-07-20 01:15:05.564468+00	\N	\N	166	3	6	0	0	\N	\N
1184	4	法学院的张欣老师人美心善，但是这门课没上过，有幸上过老师的宪法学	2025-07-20 01:15:05.576841+00	\N	\N	2894	3	7	0	0	\N	\N
1185	5	会捞，而且期末考的相对好的话，平时成绩会给你拉满	2025-07-20 01:15:05.611893+00	\N	\N	1597	3	3	0	0	\N	\N
1186	5	会捞，而且期末考的相对好的话，平时成绩会给你拉满	2025-07-20 01:15:05.623284+00	\N	\N	3260	3	8	0	0	\N	\N
1187	4	又水得分又高 上个学期只去过两次课给了95	2025-07-20 01:15:05.637538+00	\N	\N	621	3	9	0	0	\N	\N
1189	5	他讲课逻辑很清晰，比较爱写板书，手稿超级详细，	2025-07-20 01:15:05.66175+00	\N	\N	2178	3	11	0	0	\N	\N
1190	4	我上过他的课，他会捞人，知道这一点对你们来说就够了	2025-07-20 01:15:05.671852+00	\N	\N	2178	3	12	0	0	\N	\N
1191	5	感觉他讲的很细，而且超有梗	2025-07-20 01:15:05.682216+00	\N	\N	2178	3	4	0	0	\N	\N
1192	4	上课疯狂抽人 要求每个人写姓名牌放在桌上。但是这学期作业挺水的，也只做了2个pre 她人还行，就是讲课emm感觉学不到什么东西	2025-07-20 01:15:05.695762+00	\N	\N	2015	3	5	0	0	\N	\N
1194	4	期末考试，期中写了一个论文，平时展示，上学期每个组至少展示了2次，有些组展示了3次	2025-07-20 01:15:05.714649+00	\N	\N	2015	3	7	0	0	\N	\N
1195	5	好！很轻松，特别搞笑一老师	2025-07-20 01:15:05.72766+00	\N	\N	3333	3	3	0	0	\N	\N
1196	4	好！很轻松，特别搞笑一老师	2025-07-20 01:15:05.737436+00	\N	\N	3154	3	8	0	0	\N	\N
1197	4	zw真的很轻松，无脑冲，无小组作业无小测，只有期中期末两篇paper。难抢，已经爆满了。	2025-07-20 01:15:05.748888+00	\N	\N	3286	3	9	0	0	\N	\N
1198	5	zw老师事少，基本不点名，但是留期中作业和期末作业的时候一定要去，期中要求他是纯口述滴	2025-07-20 01:15:05.760043+00	\N	\N	3286	3	10	0	0	\N	\N
1199	5	上过他的跨文化商务沟通，人很好，讲课蛮幽默的，给分也不错	2025-07-20 01:15:05.769761+00	\N	\N	3286	3	11	0	0	\N	\N
1200	5	之前是我们辅导员  老师人美而且对学生好  给分就不知道咧	2025-07-20 01:15:05.78297+00	\N	\N	2926	3	12	0	0	\N	\N
1201	4	我是她这学期课代表，反正人很好也没那么多事	2025-07-20 01:15:05.792906+00	\N	\N	2867	3	4	0	0	\N	\N
1202	5	老师本身很好，分数不会很低	2025-07-20 01:15:05.806581+00	\N	\N	1269	3	5	0	0	\N	\N
1203	4	老师教的很好很扎实，什么都讲，所以学起来比较累，但是确实能学到东西。平时分就是学习通上做作业的分数	2025-07-20 01:15:05.81985+00	\N	\N	817	3	6	0	0	\N	\N
1205	4	不点名，讲的很仔细，平时分跟平时作业关系很大，没有期中考试，期末闭卷考试	2025-07-20 01:15:05.841806+00	\N	\N	817	3	3	0	0	\N	\N
1206	5	事多（即答）而且讲课风格一言难尽	2025-07-20 01:15:05.857281+00	\N	\N	1203	3	8	0	0	\N	\N
1208	5	老师人挺好的，就是课的内容有点复杂	2025-07-20 01:15:05.9124+00	\N	\N	3216	3	10	0	0	\N	\N
1210	5	老师人挺好的，就是课的内容有点复杂	2025-07-20 01:15:05.94566+00	\N	\N	2032	3	12	0	0	\N	\N
1212	4	老师人蛮好的，课不难 就是写论文	2025-07-20 01:15:06.005108+00	\N	\N	280	3	5	0	0	\N	\N
1214	5	事情很多 分倒是不高	2025-07-20 01:15:06.02748+00	\N	\N	1979	3	7	0	0	\N	\N
1215	4	事情很多 分倒是不高	2025-07-20 01:15:06.037294+00	\N	\N	1039	3	3	0	0	\N	\N
1216	5	一点东西都学不到，事情还超级多，分数还给的很低，狠狠避雷这个老师	2025-07-20 01:15:06.046922+00	\N	\N	3249	3	8	0	0	\N	\N
1217	4	上课还会讲一些莫名奇妙的东西，反正选她大概率就是完蛋啦	2025-07-20 01:15:06.058304+00	\N	\N	240	3	9	0	0	\N	\N
1218	5	讲的一般 平时分拉满 可以冲	2025-07-20 01:15:06.078546+00	\N	\N	1489	3	10	0	0	\N	\N
1219	5	xf讲的很好，给分也很好	2025-07-20 01:15:06.102027+00	\N	\N	3070	3	11	0	0	\N	\N
1220	4	她捞过我，我觉得她人挺好的	2025-07-20 01:15:06.113503+00	\N	\N	3070	3	12	0	0	\N	\N
1221	4	从来不点名，讲得也不错	2025-07-20 01:15:06.124503+00	\N	\N	3070	3	4	0	0	\N	\N
1222	4	老教授了，老师人很好，上过他的行为金融，给分高。	2025-07-20 01:15:06.142468+00	\N	\N	282	3	5	0	0	\N	\N
1223	4	老教授了，老师人很好，上过他的行为金融，给分高。	2025-07-20 01:15:06.156435+00	\N	\N	2330	3	6	0	0	\N	\N
1224	5	认真完成作业分还挺高的，事情也少，期末考试也简单	2025-07-20 01:15:06.18204+00	\N	\N	2330	3	7	0	0	\N	\N
1225	5	老教授了，老师人很好，上过他的行为金融，给分高。	2025-07-20 01:15:06.204507+00	\N	\N	2331	3	3	0	0	\N	\N
1227	4	徐老师说李志生老师可能就只上1.2次课	2025-07-20 01:15:06.229822+00	\N	\N	2331	3	9	0	0	\N	\N
1228	4	上过老师的课 老师人很好	2025-07-20 01:15:06.246075+00	\N	\N	175	3	10	0	0	\N	\N
1230	5	徐老师平时分给的不错的，认真完成作业的话没问题	2025-07-20 01:15:06.305651+00	\N	\N	759	3	12	0	0	\N	\N
1232	5	老师特别好！平时分超高	2025-07-20 01:15:06.334916+00	\N	\N	1451	3	5	0	0	\N	\N
1233	4	老师人很好，给分也不错	2025-07-20 01:15:06.356555+00	\N	\N	1310	3	6	0	0	\N	\N
1234	4	放心选 老师人特别好 讲课也很有趣	2025-07-20 01:15:06.371715+00	\N	\N	2592	3	7	0	0	\N	\N
1235	4	挺好的，老师给分不错，人也挺好的	2025-07-20 01:15:06.386966+00	\N	\N	2673	3	3	0	0	\N	\N
1236	4	请假很严，固定位置，随机分组，小组作业巨多	2025-07-20 01:15:06.402649+00	\N	\N	986	3	8	0	0	\N	\N
1237	5	请假很严，固定位置，随机分组，小组作业巨多	2025-07-20 01:15:06.41343+00	\N	\N	2939	3	9	0	0	\N	\N
1238	5	但是给分高啊，虽然每节课都要签到	2025-07-20 01:15:06.424761+00	\N	\N	144	3	10	0	0	\N	\N
1239	5	狠狠壁垒大职规徐淼，事多分超低	2025-07-20 01:15:06.435807+00	\N	\N	2309	3	11	0	0	\N	\N
1240	5	给拔尖班开的小班专业课，据说比较考验自学能力，期末不参加全校统考他自己出卷，慎选	2025-07-20 01:15:06.448583+00	\N	\N	3185	3	12	0	0	\N	\N
1241	5	给拔尖班开的小班专业课，据说比较考验自学能力，期末不参加全校统考他自己出卷，慎选	2025-07-20 01:15:06.457625+00	\N	\N	88	3	4	0	0	\N	\N
1242	5	cb人很好，那门课是非标考试，我期末论文88平时分90，中规中矩的样子。就是小组pre和论文好好做应该还会高一点点，但是这种形式的一般不会太高到9896那种？	2025-07-20 01:15:06.470885+00	\N	\N	819	3	5	0	0	\N	\N
1244	5	平时分要看你们组的实践报告，到时候会评奖。获奖了就高	2025-07-20 01:15:06.502055+00	\N	\N	2941	3	7	0	0	\N	\N
1245	4	事情不多，主要是考核，作业少，好像所有的课程有一个统一的期中小考，但是听老师讲考试会很简单的，不用担心	2025-07-20 01:15:06.518525+00	\N	\N	461	3	3	0	0	\N	\N
1247	4	梁巧小姐姐人超级超级好的\b\b\b	2025-07-20 01:15:06.542109+00	\N	\N	1773	3	9	0	0	\N	\N
1249	4	人不错，课不行（程序设计）	2025-07-20 01:15:06.564365+00	\N	\N	1492	3	11	0	0	\N	\N
1250	4	人很好，考试给很多次机会	2025-07-20 01:15:06.579227+00	\N	\N	1404	3	12	0	0	\N	\N
1251	5	dzw讲得很好！我感觉听他讲课特别清楚，真的能学到东西，而且把会计的基础搞好	2025-07-20 01:15:06.591758+00	\N	\N	2424	3	4	0	0	\N	\N
1252	5	dzw讲得很好！我感觉听他讲课特别清楚，真的能学到东西，而且把会计的基础搞好	2025-07-20 01:15:06.599845+00	\N	\N	2431	3	5	0	0	\N	\N
1253	5	dzw其实平时分给分不太明确（虽然大致说了怎么给，但是感觉执行的不是很明确），但他教得很不错	2025-07-20 01:15:06.609278+00	\N	\N	2431	3	6	0	0	\N	\N
1254	4	戴泽伟上课会讲很多拓展，然后讲的也很细，个人感觉如果是都能认真听下来是非常有用的	2025-07-20 01:15:06.619651+00	\N	\N	2424	3	7	0	0	\N	\N
1255	4	讲课讲得好！很负责！	2025-07-20 01:15:06.630263+00	\N	\N	2431	3	3	0	0	\N	\N
1256	4	戴老师可以的，上过她教的r语言，人很好的	2025-07-20 01:15:06.644598+00	\N	\N	163	3	8	0	0	\N	\N
1258	4	巨巨巨巨巨好 讲的好特别好（刚开始第一节课以为她会特别严格 但是后面发现她就是第一节课吓吓我们 还有说什么两次小测七次作业都要记入平时分 这些只要一步步跟着她就完全不用担心 国庆想提前走跟她说的时候她还笑着说好的去吧去吧注意安全）	2025-07-20 01:15:06.671248+00	\N	\N	418	3	10	0	0	\N	\N
1260	5	讲的特别好，作业会多一点，有两次测验，但都是选择题十几道的样子，但这些是应该的，货金这门课内容确实不少，老师非常负责非常认真，闭眼冲就完事了	2025-07-20 01:15:06.693521+00	\N	\N	418	3	12	0	0	\N	\N
1261	4	讲的还是挺好，我下课问问题比较多，平时测验还行，平时分就还不错，我听其他同学说老师平时分不太高	2025-07-20 01:15:06.705508+00	\N	\N	418	3	4	0	0	\N	\N
1262	5	挺负责的老师 给分蛮正常的	2025-07-20 01:15:06.716618+00	\N	\N	418	3	5	0	0	\N	\N
1263	4	戴薇真的好人，讲的好又很细心很温柔，每节课还会发自己整理的笔记和ppt	2025-07-20 01:15:06.732651+00	\N	\N	393	3	6	0	0	\N	\N
1264	4	推荐戴薇，她是纯干货输出，认真听课，可以学到很多东西，	2025-07-20 01:15:06.744006+00	\N	\N	393	3	7	0	0	\N	\N
1265	5	戴薇老师的风格就是：很认真，包括讲解板书都很全面细致，认真听作业认真做这门课很简单，平时分构成就是平时作业➕期中考试   她平时作业发在学习通上（作业不难，但我个人觉得她批的有些严了）不知道最后给分怎么样，但是整体来说这个老师很温柔，讲解也很到位。	2025-07-20 01:15:06.756113+00	\N	\N	393	3	3	0	0	\N	\N
1266	5	想认真学就戴老师，想水一水就张博	2025-07-20 01:15:06.767175+00	\N	\N	393	3	8	0	0	\N	\N
1267	4	上过老师的社会学，讲课很好很有趣，上课喜欢提问，期中期末都是论文，给分很高	2025-07-20 01:15:06.784248+00	\N	\N	2554	3	9	0	0	\N	\N
1268	5	不抽人回答问题 不点名 性格也挺幽默的	2025-07-20 01:15:06.803944+00	\N	\N	1871	3	10	0	0	\N	\N
1269	4	不抽人回答问题 不点名 性格也挺幽默的	2025-07-20 01:15:06.822074+00	\N	\N	3158	3	11	0	0	\N	\N
1270	5	ay课很水很水，啥都不用干，就有两次十分钟的小测试，我朋友上lq的还有pre啥的	2025-07-20 01:15:06.831706+00	\N	\N	1048	3	12	0	0	\N	\N
1271	5	快去选吧 美式男孩 很chill	2025-07-20 01:15:06.840152+00	\N	\N	1871	3	4	0	0	\N	\N
1272	4	上课一般，就会念PPT	2025-07-20 01:15:06.853489+00	\N	\N	3309	3	5	0	0	\N	\N
1273	4	文杰老师人超好，给分很好，冲冲冲	2025-07-20 01:15:06.871664+00	\N	\N	812	3	6	0	0	\N	\N
1275	4	还可以，就是课程本身很难，所以考试得上心	2025-07-20 01:15:06.895676+00	\N	\N	2339	3	3	0	0	\N	\N
1276	5	人超好，我当时是平时分拉满	2025-07-20 01:15:06.908771+00	\N	\N	2195	3	8	0	0	\N	\N
1278	4	我巨爱易阳幽默风趣教的又好	2025-07-20 01:15:06.926799+00	\N	\N	2195	3	10	0	0	\N	\N
1279	4	上过易阳老师的会计学，人超级好	2025-07-20 01:15:06.936757+00	\N	\N	2195	3	11	0	0	\N	\N
1280	5	曹冬梅老师人很好，备考也很好，胡务老师不清楚	2025-07-20 01:15:06.951754+00	\N	\N	2811	3	12	0	0	\N	\N
1281	5	曹冬梅老师人很好，备考也很好，胡务老师不清楚	2025-07-20 01:15:06.965125+00	\N	\N	579	3	4	0	0	\N	\N
1282	5	zr！！他人好好！上课也很有意思！	2025-07-20 01:15:06.984566+00	\N	\N	1568	3	5	0	0	\N	\N
1283	5	曾嵘的平时分是在85的基础上+你半期得分十位数字-没做作业-缺勤（但没有点过名），也就是说半期100最多也才95，你99只有两种情况，期末差了被捞起来和期末太好在90以上	2025-07-20 01:15:06.994274+00	\N	\N	1568	3	6	0	0	\N	\N
1284	5	特别好！平时分高，重点教得很清晰而且分也高	2025-07-20 01:15:07.006124+00	\N	\N	1568	3	7	0	0	\N	\N
1288	5	讲得很好就是喜欢吹牛，平时期末46开，要点到，平时成绩是根据三次作业的成绩算的	2025-07-20 01:15:07.05284+00	\N	\N	1124	3	10	0	0	\N	\N
1290	4	中宏给分很高很好，我论文稀烂也给我八十几	2025-07-20 01:15:07.068777+00	\N	\N	2887	3	12	0	0	\N	\N
1291	5	别管什么给分事多不多，能选上就不错了	2025-07-20 01:15:07.080157+00	\N	\N	2887	3	4	0	0	\N	\N
1292	5	喜欢他讲课（个人观点），但是很多人夸他讲的好	2025-07-20 01:15:07.090836+00	\N	\N	2887	3	5	0	0	\N	\N
1293	4	人好，我觉得学的难但是考核很简单	2025-07-20 01:15:07.105856+00	\N	\N	518	3	6	0	0	\N	\N
1295	4	老师很有趣，课堂很好玩，要是图分数高，逻辑不好学，比较适合感兴趣的同学。	2025-07-20 01:15:07.12864+00	\N	\N	1283	3	3	0	0	\N	\N
1296	4	老师很有趣，课堂很好玩，要是图分数高，逻辑不好学，比较适合感兴趣的同学。	2025-07-20 01:15:07.140747+00	\N	\N	1897	3	8	0	0	\N	\N
1297	4	两极分化比较严重，高的95，98都可，低的就不知道了	2025-07-20 01:15:07.153654+00	\N	\N	1283	3	9	0	0	\N	\N
1298	5	刘越挺好的 人很和善	2025-07-20 01:15:07.175315+00	\N	\N	594	3	10	0	0	\N	\N
1300	4	金融风险管理还好吧，主播就是讲话听不清楚，会删减ppt，随机摇号收作业外，会在群里踢人，会全员禁言，其他也没啥	2025-07-20 01:15:07.214958+00	\N	\N	510	3	12	0	0	\N	\N
1301	5	金融风险管理还好吧，主播就是讲话听不清楚，会删减ppt，随机摇号收作业外，会在群里踢人，会全员禁言，其他也没啥	2025-07-20 01:15:07.227696+00	\N	\N	2340	3	4	0	0	\N	\N
1302	5	从来不点名，一百多人只来三四十个都不点名	2025-07-20 01:15:07.23821+00	\N	\N	2340	3	5	0	0	\N	\N
1303	5	我上的是他的投资学，老师教课不错，但是有一点严。	2025-07-20 01:15:07.248477+00	\N	\N	2340	3	6	0	0	\N	\N
1304	5	给分还行，但讲课逻辑不太行，几乎都得靠自己整理	2025-07-20 01:15:07.26559+00	\N	\N	1447	3	7	0	0	\N	\N
1305	4	很公正，他会跟大家讲清楚什么成绩占比多少，题不会太难，有原题出现。除成绩以外的部分也不低，反正我最后平时分比小测综合下来的高一点，还可以哦，我觉得不用太担心，好好学就行了	2025-07-20 01:15:07.282927+00	\N	\N	1306	3	3	0	0	\N	\N
1306	4	给分超高，老师教的也很好。	2025-07-20 01:15:07.298072+00	\N	\N	281	3	8	0	0	\N	\N
1308	5	考核会有一点，但教得真的很好！	2025-07-20 01:15:07.320205+00	\N	\N	3337	3	10	0	0	\N	\N
1309	4	平时分一般，一定挑战性	2025-07-20 01:15:07.33101+00	\N	\N	808	3	11	0	0	\N	\N
1310	4	很好的一个老师，上课例题会讲好几遍，这课很容易听懂	2025-07-20 01:15:07.342593+00	\N	\N	1062	3	12	0	0	\N	\N
1312	4	李俭富的课纯自学（不是），但是老师人挺好挺亲切的	2025-07-20 01:15:07.364084+00	\N	\N	805	3	5	0	0	\N	\N
1314	5	李俭富讲课很难评，基本靠自学，但是平时分给我还蛮高的	2025-07-20 01:15:07.385996+00	\N	\N	805	3	7	0	0	\N	\N
1315	5	认真听课每节课都跟着做的话分很高，我那次总评98分	2025-07-20 01:15:07.397958+00	\N	\N	2373	3	3	0	0	\N	\N
1316	5	认真听课每节课都跟着做的话分很高，我那次总评98分	2025-07-20 01:15:07.405864+00	\N	\N	1659	3	8	0	0	\N	\N
1317	4	lf，平时分给满分，事也不多就一两个作业	2025-07-20 01:15:07.422676+00	\N	\N	1797	3	9	0	0	\N	\N
1318	5	lf，平时分给满分，事也不多就一两个作业	2025-07-20 01:15:07.431644+00	\N	\N	423	3	10	0	0	\N	\N
1319	5	我特别喜欢她上课风格，平时分给了我100 老师也很有气质 推荐！	2025-07-20 01:15:07.441733+00	\N	\N	1797	3	11	0	0	\N	\N
1320	5	老师人挺好的，人美心善	2025-07-20 01:15:07.451038+00	\N	\N	423	3	12	0	0	\N	\N
1321	5	给分很ok，平时分甚至会打满	2025-07-20 01:15:07.463846+00	\N	\N	216	3	4	0	0	\N	\N
1322	5	给分很ok，平时分甚至会打满	2025-07-20 01:15:07.472713+00	\N	\N	1579	3	5	0	0	\N	\N
1323	4	讲清楚了，最基本的，我以为你们学了。老师水平高	2025-07-20 01:15:07.485225+00	\N	\N	807	3	6	0	0	\N	\N
1324	5	老师超好，选到就是赚到	2025-07-20 01:15:07.495009+00	\N	\N	2727	3	7	0	0	\N	\N
1325	4	老师超好，选到就是赚到	2025-07-20 01:15:07.502075+00	\N	\N	567	3	3	0	0	\N	\N
1328	5	事多，上课用英文PPT，讲课中英混杂，小组作业是要求每个组都要讲课，我上了一节课退课了	2025-07-20 01:15:07.532372+00	\N	\N	1720	3	10	0	0	\N	\N
1329	4	给分很高，平常从他发的文献包挑一篇汇报一下，期末交个开题报告类似的，给分很高每周抽人作报告，组队写文献综述，最后交一个正规的开题报告	2025-07-20 01:15:07.542893+00	\N	\N	1061	3	11	0	0	\N	\N
1330	4	给分很高，平常从他发的文献包挑一篇汇报一下，期末交个开题报告类似的，给分很高每周抽人作报告，组队写文献综述，最后交一个正规的开题报告	2025-07-20 01:15:07.551262+00	\N	\N	1655	3	12	0	0	\N	\N
1332	5	老师很温柔给分也很不错	2025-07-20 01:15:07.570781+00	\N	\N	2549	3	5	0	0	\N	\N
1333	5	老师很温柔给分也很不错	2025-07-20 01:15:07.579695+00	\N	\N	756	3	6	0	0	\N	\N
1334	4	老师人很好的，事也不多，我们组排名倒数也有九十一二	2025-07-20 01:15:07.588357+00	\N	\N	1157	3	7	0	0	\N	\N
1335	5	我上过她的管理学原理 特别温柔有趣的老师	2025-07-20 01:15:07.595651+00	\N	\N	756	3	3	0	0	\N	\N
1336	5	老师可好了，根本不点	2025-07-20 01:15:07.616457+00	\N	\N	499	3	8	0	0	\N	\N
1337	4	老师可好了，根本不点	2025-07-20 01:15:07.625856+00	\N	\N	2123	3	9	0	0	\N	\N
1338	5	上过她的大职规，挺好的	2025-07-20 01:15:07.639293+00	\N	\N	2288	3	10	0	0	\N	\N
1340	5	跑低，比我考试高一分	2025-07-20 01:15:07.661932+00	\N	\N	1053	3	12	0	0	\N	\N
1341	5	我上的综英3，不是这个阅读课。当时就是会要求回答问题算平时，有单元测啥的。但是存疑哈，我平均两周回答一次问题，单元测考的也不烂，不知道为啥平时给的很差	2025-07-20 01:15:07.675919+00	\N	\N	246	3	4	0	0	\N	\N
1342	5	李老师温柔的大美女，选她选她选她，事少分高	2025-07-20 01:15:07.684218+00	\N	\N	1428	3	5	0	0	\N	\N
1343	5	我上的综英3，不是这个阅读课。当时就是会要求回答问题算平时，有单元测啥的。但是存疑哈，我平均两周回答一次问题，单元测考的也不烂，不知道为啥平时给的很差	2025-07-20 01:15:07.692915+00	\N	\N	1428	3	6	0	0	\N	\N
1344	5	李老师温柔的大美女，选她选她选她，事少分高	2025-07-20 01:15:07.700773+00	\N	\N	246	3	7	0	0	\N	\N
1345	5	没有作业，事少，不点名，你要是上课不听的话会很轻松。不过你要是听课的话会发现他讲的和考试内容完全不一样	2025-07-20 01:15:07.714539+00	\N	\N	2516	3	3	0	0	\N	\N
1346	5	真的超级好   平时分满了 总评95以上 推荐推荐	2025-07-20 01:15:07.732413+00	\N	\N	2929	3	8	0	0	\N	\N
1348	4	美术鉴赏我和朋友都是90+，然后就给大家推荐了。其实89感觉也算正常？momo选的另外两门公选全勤也是一门89，一门8	2025-07-20 01:15:07.752268+00	\N	\N	2284	3	10	0	0	\N	\N
1349	5	我朋友选的 还可以呢 90➕ 考核也比较轻松，给分完全不用担心	2025-07-20 01:15:07.76399+00	\N	\N	1875	3	11	0	0	\N	\N
1350	5	李老师真的超级好   平时分满了 总评95以上，给分完全不用担心 推荐推荐	2025-07-20 01:15:07.77749+00	\N	\N	1876	3	12	0	0	\N	\N
1352	4	上过她的投资学讲的一般，给分一般	2025-07-20 01:15:07.801743+00	\N	\N	1754	3	5	0	0	\N	\N
1353	4	上了李洁投资学 还可以	2025-07-20 01:15:07.812266+00	\N	\N	1754	3	6	0	0	\N	\N
1356	4	李玉蓉讲的超级好 期末是小组项目作业 上课一般只提问比较活跃的学生	2025-07-20 01:15:07.876372+00	\N	\N	727	3	8	0	0	\N	\N
1358	4	感觉还行 机考40% 作业20% 3-4人pre40%，刚上完杨老师的课 语速很快 没提问	2025-07-20 01:15:07.902377+00	\N	\N	727	3	10	0	0	\N	\N
1359	4	避雷数据库lyr，我只能说是，李奶奶的自学课堂	2025-07-20 01:15:07.915738+00	\N	\N	727	3	11	0	0	\N	\N
1360	4	形策随便选老师啦，一学期就上四节，每节课一篇小论文，期末也没考试	2025-07-20 01:15:07.943164+00	\N	\N	1882	3	12	0	0	\N	\N
1362	4	老师人挺好的，平时分给很高	2025-07-20 01:15:07.992782+00	\N	\N	1129	3	5	0	0	\N	\N
1363	4	老师人挺好的，平时分给很高	2025-07-20 01:15:08.006555+00	\N	\N	2438	3	6	0	0	\N	\N
1364	4	给分蛮高的，平时事少，不过我上的是她的中宏	2025-07-20 01:15:08.017854+00	\N	\N	1122	3	7	0	0	\N	\N
1365	5	lm老师，不点名，给分挺好的，考核写论文	2025-07-20 01:15:08.038127+00	\N	\N	3332	3	3	0	0	\N	\N
1366	4	lm老师，不点名，给分挺好的，考核写论文	2025-07-20 01:15:08.049957+00	\N	\N	1514	3	8	0	0	\N	\N
1367	5	李谭老师人挺好，会捞人（不缺勤平时作业认真做，偶尔回答问题，平时分95＋）。期末分占比比较高，平时要自己多练习，不然期末很痛苦，根本补不完	2025-07-20 01:15:08.064592+00	\N	\N	1132	3	9	0	0	\N	\N
1369	4	超哥可太好了，理想的高校教职生活状态	2025-07-20 01:15:08.10049+00	\N	\N	2389	3	11	0	0	\N	\N
1370	5	超哥可太好了，理想的高校教职生活状态	2025-07-20 01:15:08.110267+00	\N	\N	3195	3	12	0	0	\N	\N
1371	5	我超爱他！他的财政学真的讲的特别容易理解	2025-07-20 01:15:08.122043+00	\N	\N	3195	3	4	0	0	\N	\N
1372	4	据说是今年新来的老师来着	2025-07-20 01:15:08.145216+00	\N	\N	2432	3	5	0	0	\N	\N
1373	5	真心想提高同学们体育水平，很好，不会为难	2025-07-20 01:15:08.16065+00	\N	\N	1353	3	6	0	0	\N	\N
1374	5	她挺好的，但是平时分占比很大	2025-07-20 01:15:08.179351+00	\N	\N	1700	3	7	0	0	\N	\N
1375	4	感觉讲得一般，但国经总体上不难，分数不错的	2025-07-20 01:15:08.189168+00	\N	\N	1700	3	3	0	0	\N	\N
1376	4	我觉得她上课上的很好哇 条理特别清晰	2025-07-20 01:15:08.200826+00	\N	\N	1700	3	8	0	0	\N	\N
1377	5	世界经济吗，考试挺简单，但是第一次遇到平时分比考试分还低的情况	2025-07-20 01:15:08.22656+00	\N	\N	1700	3	9	0	0	\N	\N
1379	5	超级喜欢这个老师的课	2025-07-20 01:15:08.258961+00	\N	\N	1284	3	11	0	0	\N	\N
1380	4	老师人特别好，就是作业是编舞跳舞，对不会跳舞的人来说可能会有点煎熬，但不过没关系，可以划水	2025-07-20 01:15:08.280522+00	\N	\N	1006	3	12	0	0	\N	\N
1381	5	刚开始的一两节课对社恐人士是有点不太友好哈哈哈哈哈哈，老师会随机抽问一些问题然后让自我介绍啥的，不过后面的课就纯跳舞了，不用社交了。	2025-07-20 01:15:08.303426+00	\N	\N	1006	3	4	0	0	\N	\N
1438	5	学过杨自营老师的货金，老师很好	2025-07-20 01:15:08.967462+00	\N	\N	1802	3	10	0	0	\N	\N
1488	4	老师比较严格哈哈，爱抽人回答问题	2025-07-20 01:15:09.680731+00	\N	\N	232	3	10	0	0	\N	\N
1382	5	我们这学期就上的这个，就是编现代舞三分钟，三次汇报和一次期末汇报。第一次一分钟，第二次两分钟，第三次三分钟，最后期末再跳一遍。对于不太会跳舞的人就是很麻烦。李龙老师挺好的，人帅 假好请	2025-07-20 01:15:08.315074+00	\N	\N	1006	3	5	0	0	\N	\N
1383	4	如果有舞蹈基础的话李龙老师挺好的 就是期末考核要编3分钟的舞然后跳出来就行了	2025-07-20 01:15:08.325891+00	\N	\N	2154	3	6	0	0	\N	\N
1384	5	李楠他是一个很认真的人，只要你认真对待就行了	2025-07-20 01:15:08.33993+00	\N	\N	855	3	7	0	0	\N	\N
1385	5	李楠他是一个很认真的人，只要你认真对待就行了	2025-07-20 01:15:08.350203+00	\N	\N	1007	3	3	0	0	\N	\N
1386	5	李楠会尽量让你不挂科，但不会让你本来的分变得高，他考试前应该就会给你平时成绩，只要你没有挂科风险，他就不会帮你调高。	2025-07-20 01:15:08.36173+00	\N	\N	1007	3	8	0	0	\N	\N
1387	4	老师人很好，给分也不错	2025-07-20 01:15:08.382667+00	\N	\N	2642	3	9	0	0	\N	\N
1388	5	给分超级好，大好人！	2025-07-20 01:15:08.398982+00	\N	\N	1235	3	10	0	0	\N	\N
1389	5	96，杜老师yyds	2025-07-20 01:15:08.409926+00	\N	\N	1235	3	11	0	0	\N	\N
1390	4	类似于投资导论，不考试，有2-3次pre，期末教一篇商业计划书，	2025-07-20 01:15:08.426031+00	\N	\N	2447	3	12	0	0	\N	\N
1392	4	挺好的，平时没有作业	2025-07-20 01:15:08.462264+00	\N	\N	495	3	5	0	0	\N	\N
1393	5	期末会有签到，记得不要旷	2025-07-20 01:15:08.476659+00	\N	\N	495	3	6	0	0	\N	\N
1394	5	老师人很好 给分不错	2025-07-20 01:15:08.492696+00	\N	\N	2334	3	7	0	0	\N	\N
1395	4	老师人很好 给分不错	2025-07-20 01:15:08.505251+00	\N	\N	1624	3	3	0	0	\N	\N
1396	4	老师人很好，但给分一般，学理论知识	2025-07-20 01:15:08.516668+00	\N	\N	1459	3	8	0	0	\N	\N
1397	5	考核是平时作业小组作业和期末论文 好像是平时期末各百分之五十	2025-07-20 01:15:08.526822+00	\N	\N	1624	3	9	0	0	\N	\N
1398	4	非常好，上课不点到，作业比较少且都有答案，期末也简单	2025-07-20 01:15:08.542524+00	\N	\N	517	3	10	0	0	\N	\N
1400	5	杨老师对个人素质要求挺高，你要做好上课随时被抽回答问题的准备，平时作业是写作文还有阅读理解，定期考听力，2次quiz，但是她讲得很好，期末考试是写作加句子排序	2025-07-20 01:15:08.564963+00	\N	\N	3351	3	12	0	0	\N	\N
1401	4	杨老师对个人素质要求挺高，你要做好上课随时被抽回答问题的准备，平时作业是写作文还有阅读理解，定期考听力，2次quiz，但是她讲得很好，期末考试是写作加句子排序	2025-07-20 01:15:08.573377+00	\N	\N	3162	3	4	0	0	\N	\N
1402	5	杨军华老师上课提问是开火车的，看看你能不能接受，但是期末考试是写一篇文章，挺简单的	2025-07-20 01:15:08.583563+00	\N	\N	3351	3	5	0	0	\N	\N
1403	4	避雷，对比别的英语课程，yjh给的分数很低，平时事情多，上课喜欢开火车抽问	2025-07-20 01:15:08.592563+00	\N	\N	998	3	6	0	0	\N	\N
1404	5	会cue的多一些而且上课抽人回答挺频繁的。感觉课程要求高……适合基础好的	2025-07-20 01:15:08.600833+00	\N	\N	3351	3	7	0	0	\N	\N
1405	4	不错的，就是作业最好不要全篇ai，他看得出来	2025-07-20 01:15:08.615901+00	\N	\N	2978	3	3	0	0	\N	\N
1407	5	老师的计量讲的特别好！我很喜欢	2025-07-20 01:15:08.63862+00	\N	\N	479	3	9	0	0	\N	\N
1409	4	为什么没人选杨帆老师的人口大国呢，我感觉老师人很好，课讲的也很有意思，好像是硕士专业人口学的老师。我当时是期末论文结课，无pre无小组，中期写一个小报告，期末在中期的基础上再续写就行	2025-07-20 01:15:08.665419+00	\N	\N	3283	3	11	0	0	\N	\N
1411	5	老师人很好，课讲的很有意思	2025-07-20 01:15:08.692602+00	\N	\N	1215	3	4	0	0	\N	\N
1412	5	我觉得这个老师还好，认真做作业，中期考试好好准备，平时分挺高的	2025-07-20 01:15:08.708667+00	\N	\N	399	3	5	0	0	\N	\N
1414	4	中规中矩吧，我觉得教的还不错，宏经也没有微经难，自己看书理解也是可以的	2025-07-20 01:15:08.732015+00	\N	\N	399	3	7	0	0	\N	\N
1415	5	蛮好的！平时分挺高 有人格魅力	2025-07-20 01:15:08.748567+00	\N	\N	190	3	3	0	0	\N	\N
1416	5	蛮好的！平时分挺高 有人格魅力	2025-07-20 01:15:08.758214+00	\N	\N	2312	3	8	0	0	\N	\N
1417	4	他表面上说的很那个Ľ实际操作可水了，一直说要考但是又说要拉进度不考了，然后上完所有的才考了一下还大部分作业题Ľ而且当时还允许我们翻书	2025-07-20 01:15:08.767505+00	\N	\N	2312	3	9	0	0	\N	\N
1418	5	杨扬老师是这样的，我的概率论超人，事少分高平时分上学期给我拉到了100，我真的很爱	2025-07-20 01:15:08.774996+00	\N	\N	2312	3	10	0	0	\N	\N
1419	5	概率论老师！人好给分高！把我捞活了	2025-07-20 01:15:08.78192+00	\N	\N	2312	3	11	0	0	\N	\N
1420	5	杨文昇老师人很温柔讲得蛮全面的，但是节奏很快，很看个人学习能力	2025-07-20 01:15:08.79393+00	\N	\N	209	3	12	0	0	\N	\N
1421	4	yws不点名，平时作业也要求期末考试前完成，人还是很温柔很幽默的，但是讲课很快	2025-07-20 01:15:08.801109+00	\N	\N	2176	3	4	0	0	\N	\N
1422	5	上过杨文昇老师的课，讲的一般有一说一	2025-07-20 01:15:08.809127+00	\N	\N	209	3	5	0	0	\N	\N
1423	5	杨文昇老师人很温柔讲得蛮全面的，但是节奏很快，很看个人学习能力	2025-07-20 01:15:08.818109+00	\N	\N	2176	3	6	0	0	\N	\N
1426	4	上过杨文昇老师的课，讲的一般有一说一	2025-07-20 01:15:08.841261+00	\N	\N	2176	3	8	0	0	\N	\N
1427	5	挺好的吧 平时分90➕	2025-07-20 01:15:08.853798+00	\N	\N	2635	3	9	0	0	\N	\N
1428	4	杨磊的课很水 人也好 但是分一般	2025-07-20 01:15:08.868597+00	\N	\N	247	3	10	0	0	\N	\N
1429	5	杨磊老师超级好，上课很轻松很有意思	2025-07-20 01:15:08.877073+00	\N	\N	1554	3	11	0	0	\N	\N
1430	5	量化很严格，没有任何缺勤/漏交作业，85总评，想上高分本身英语写作就好没问题	2025-07-20 01:15:08.885561+00	\N	\N	2362	3	12	0	0	\N	\N
1431	4	杨磊的课很水 人也好 但是分一般	2025-07-20 01:15:08.893189+00	\N	\N	1554	3	4	0	0	\N	\N
1433	4	量化很严格，没有任何缺勤/漏交作业，85总评，想上高分本身英语写作就好没问题	2025-07-20 01:15:08.909007+00	\N	\N	247	3	6	0	0	\N	\N
1434	4	你要是考得好，4.5起步	2025-07-20 01:15:08.927287+00	\N	\N	1825	3	7	0	0	\N	\N
1436	4	作业少给分高，没有小组展示呢 平时就是考勤作业小测	2025-07-20 01:15:08.947605+00	\N	\N	1802	3	8	0	0	\N	\N
1439	5	挺好的，他上课就是自己讲自己的，反正这门课是写论文，不听也行，但是要到教室，因为他爱点名	2025-07-20 01:15:08.980409+00	\N	\N	2396	3	11	0	0	\N	\N
1441	4	因为据说他给分浮动很大¥¥¥我周围有学姐给分就不是很好还是全勤正常上课那种	2025-07-20 01:15:08.994133+00	\N	\N	43	3	4	0	0	\N	\N
1442	5	有幸参加过他课堂作业的pre答辩 简直是一问三不知	2025-07-20 01:15:09.004173+00	\N	\N	1990	3	5	0	0	\N	\N
1444	4	但是这个老师不是我们专业安排的，而且好像很抢手……	2025-07-20 01:15:09.023391+00	\N	\N	234	3	7	0	0	\N	\N
1446	4	真的特别好，平易近人是最大特点，特别喜欢回答问题，尤其是会主动让同学们问问题，从不厌烦，而且根本就不挂人	2025-07-20 01:15:09.040271+00	\N	\N	1566	3	8	0	0	\N	\N
1447	4	真的特别好，平易近人是最大特点，特别喜欢回答问题，尤其是会主动让同学们问问题，从不厌烦，而且根本就不挂人	2025-07-20 01:15:09.047606+00	\N	\N	1583	3	9	0	0	\N	\N
1448	5	老师人很好，还会给我们讲保研之类的消息，平时分不会低于期末分，无脑冲！	2025-07-20 01:15:09.054416+00	\N	\N	747	3	10	0	0	\N	\N
1449	5	他以前教高数 给分挺好 捞人    在线上问他问题他都会回	2025-07-20 01:15:09.061409+00	\N	\N	1583	3	11	0	0	\N	\N
1450	4	强烈推荐林一丁老师的复变函数	2025-07-20 01:15:09.068018+00	\N	\N	747	3	12	0	0	\N	\N
1451	5	经常签到，但平时分不算低	2025-07-20 01:15:09.080125+00	\N	\N	500	3	4	0	0	\N	\N
1453	4	林红霞非常好！上课积极打分很高！	2025-07-20 01:15:09.099495+00	\N	\N	1656	3	6	0	0	\N	\N
1454	5	林红霞非常好！上课积极打分很高！	2025-07-20 01:15:09.106727+00	\N	\N	3060	3	7	0	0	\N	\N
1455	4	还不错，老师人还可以	2025-07-20 01:15:09.119042+00	\N	\N	308	3	3	0	0	\N	\N
1457	4	4-5次个人作业 3次小组作业（课上花半节课完成） 1次课后小组作业有小组展示。期末是非标考核 开卷，55开	2025-07-20 01:15:09.145772+00	\N	\N	3191	3	9	0	0	\N	\N
1458	4	4-5次个人作业 3次小组作业（课上花半节课完成） 1次课后小组作业有小组展示。期末是非标考核 开卷，55开	2025-07-20 01:15:09.166292+00	\N	\N	29	3	10	0	0	\N	\N
1459	5	挺推荐的，老师讲课巨好，作业和考试比较多，给分挺好的，认真听期末考试不会差	2025-07-20 01:15:09.191275+00	\N	\N	2003	3	11	0	0	\N	\N
1461	5	林谦老师讲的挺有条理的，而且她的板书巨好，她是用雨课堂上课的，还可以看回放，不过她有平时考试，一学期三次左右，算平时分	2025-07-20 01:15:09.219496+00	\N	\N	2038	3	4	0	0	\N	\N
1504	5	有点平铺直叙的，有点无聊，但很细致	2025-07-20 01:15:10.004392+00	\N	\N	508	3	7	0	0	\N	\N
1462	4	抛开上课规矩不谈（不能迟到，点名不能不到，点你回答问题不能不知道问的啥 否则有一个打一个❌ 打够 3 个就直接记挂科了 虽然我们这学期他好像没给人打过❌  每节课都会随机点很多人回答问题 上课有点胆战心惊 梦回高中）讲课挺有意思的   会讲一些人的真实例子  保研相关的内容 职场情商方面的内容  老师讲课不是按照课本中规中矩讲 而是按他自己的节奏来 讲一些抽象的东西的时候会给我们分享一些野史 很有意思 像听故事一样 我感觉他是挺有人格魅力的一个老师	2025-07-20 01:15:09.231604+00	\N	\N	595	3	5	0	0	\N	\N
1463	5	事少，但每节课都会有大面积提问，给分还行，上课喜欢讲故事谈人生，还挺有趣，	2025-07-20 01:15:09.241419+00	\N	\N	595	3	6	0	0	\N	\N
1464	4	没请过假，但考勤很严格，讲课很有意思，平时分也很高	2025-07-20 01:15:09.253245+00	\N	\N	595	3	7	0	0	\N	\N
1465	4	跑 喜欢点人 给平时分低	2025-07-20 01:15:09.264163+00	\N	\N	595	3	3	0	0	\N	\N
1466	5	素，这个老师人真的很好	2025-07-20 01:15:09.280221+00	\N	\N	396	3	8	0	0	\N	\N
1467	5	柳春老师给人的感觉是比我还像大学生	2025-07-20 01:15:09.291468+00	\N	\N	396	3	9	0	0	\N	\N
1468	5	确实是个好老师。很负责，对同学们也很好，之前还给大家看他收藏的书，什么清明上河图这些	2025-07-20 01:15:09.301366+00	\N	\N	396	3	10	0	0	\N	\N
1469	5	真的很喜欢他， 而且他人真的好好	2025-07-20 01:15:09.310863+00	\N	\N	396	3	11	0	0	\N	\N
1470	5	平时分给了我100，很好水，期末申论，期中有一个演讲，五分钟	2025-07-20 01:15:09.325237+00	\N	\N	274	3	12	0	0	\N	\N
1472	4	因人而异，老师看脸熟的话给分高一点，我每回都上课，平时分给了七十	2025-07-20 01:15:09.351307+00	\N	\N	274	3	5	0	0	\N	\N
1473	5	据说要表现认真，然后多在他面前刷脸，不然平时分就，，，多少沾点	2025-07-20 01:15:09.393909+00	\N	\N	274	3	6	0	0	\N	\N
1474	5	避雷，平时分很低，70+，每次都课都去了	2025-07-20 01:15:09.407624+00	\N	\N	274	3	7	0	0	\N	\N
1475	5	我觉得特别好 三次小组pre但是i人可以承担幕后工作 上课特别轻松 期末论文	2025-07-20 01:15:09.428284+00	\N	\N	571	3	3	0	0	\N	\N
1476	5	我觉得特别好 三次小组pre但是i人可以承担幕后工作 上课特别轻松 期末论文	2025-07-20 01:15:09.443741+00	\N	\N	1981	3	8	0	0	\N	\N
1477	4	上课比较轻松，给分一般，上课回答问题自然分高，因为没什么作业，平时要靠pre和回答问题来区分，什么都不干就想拿高分的肯定不可能	2025-07-20 01:15:09.466324+00	\N	\N	3357	3	9	0	0	\N	\N
1478	5	人很随性，而且很好说话，不强行要求回答问题	2025-07-20 01:15:09.490299+00	\N	\N	571	3	10	0	0	\N	\N
1479	5	狠狠避雷刘耀午，讲的一坨还临时加期末考试 最后给分巨离谱 快跑！	2025-07-20 01:15:09.52189+00	\N	\N	464	3	11	0	0	\N	\N
1481	5	讲的好，会捞人，平时分是根据小测成绩打的	2025-07-20 01:15:09.577195+00	\N	\N	1245	3	4	0	0	\N	\N
1483	4	我觉得挺好的，我考试很一般，作业都按时完成了，平时分90多，期末感觉很正常的给分，及格边上的狠狠捞了一波。对了，她上课不抽人回答问题。	2025-07-20 01:15:09.604799+00	\N	\N	526	3	6	0	0	\N	\N
1484	5	这学期上他的高数，给分还不知道，事少，不点名不抽问，都不关心你来不来	2025-07-20 01:15:09.616393+00	\N	\N	1245	3	7	0	0	\N	\N
1485	4	老师讲得很好 但是有点严格	2025-07-20 01:15:09.635537+00	\N	\N	426	3	3	0	0	\N	\N
1486	5	老师讲得挺好的，但是有个课前随机提问有点吓人，看自己选择了	2025-07-20 01:15:09.648847+00	\N	\N	426	3	8	0	0	\N	\N
1487	5	超级好！讲的很不错 作业按时完成平时分都不会低！	2025-07-20 01:15:09.663753+00	\N	\N	426	3	9	0	0	\N	\N
1490	5	要保持不缺勤，因为课上每次都会按花名册顺序抽问，而且期末非常简单，最后总评保证你满意	2025-07-20 01:15:09.708368+00	\N	\N	1763	3	12	0	0	\N	\N
1491	5	我觉得还可以！！认真学一定没问题的 就是她每节课基本上会按名单把每个同学点一遍 不过都是很简单的问题 一般是读句子或单词 都是讲过很多遍的	2025-07-20 01:15:09.72192+00	\N	\N	1763	3	4	0	0	\N	\N
1492	5	要保持不缺勤，因为课上每次都会按花名册顺序抽问，而且期末非常简单，最后总评保证你满意	2025-07-20 01:15:09.73824+00	\N	\N	442	3	5	0	0	\N	\N
1493	4	我觉得还可以！！认真学一定没问题的 就是她每节课基本上会按名单把每个同学点一遍 不过都是很简单的问题 一般是读句子或单词 都是讲过很多遍的	2025-07-20 01:15:09.752541+00	\N	\N	2512	3	6	0	0	\N	\N
1494	5	刘老师平时分打的还算高，上课节奏可能有点快，可能在摸索教学方式，毕竟是新来的老师	2025-07-20 01:15:09.770913+00	\N	\N	1930	3	7	0	0	\N	\N
1496	5	上课就是做瑜伽体式 没有很累 老师挺好的	2025-07-20 01:15:09.812356+00	\N	\N	3344	3	8	0	0	\N	\N
1497	5	喜欢喜欢！！！江龙老师我的神！	2025-07-20 01:15:09.852141+00	\N	\N	1024	3	9	0	0	\N	\N
1498	5	喜欢喜欢！！！江龙老师我的神！	2025-07-20 01:15:09.881777+00	\N	\N	1042	3	10	0	0	\N	\N
1499	4	还行，有平时作业，期末没有考试	2025-07-20 01:15:09.911395+00	\N	\N	634	3	11	0	0	\N	\N
1501	5	一个小组作业 期末论文 平时上课用小测替代考勤 但是交了就给满分	2025-07-20 01:15:09.942004+00	\N	\N	634	3	4	0	0	\N	\N
1502	5	平时分基本上都给满了，有小测 没有小组展示	2025-07-20 01:15:09.97656+00	\N	\N	508	3	5	0	0	\N	\N
1505	5	当时在论坛问没人说这个老师，我选了他的课还很害怕呢，现在看来老师人真的巨巨巨巨好😭😭😭我之前大职规上过他的，很好的老师	2025-07-20 01:15:10.025211+00	\N	\N	987	3	3	0	0	\N	\N
1506	4	我之前大职规上过他的，很好的老师	2025-07-20 01:15:10.040817+00	\N	\N	987	3	8	0	0	\N	\N
1507	4	形策老师都无所谓，一学期上不了几次课	2025-07-20 01:15:10.055373+00	\N	\N	987	3	9	0	0	\N	\N
1508	5	讲课会差一点 但是期末很能捞 老师人很好	2025-07-20 01:15:10.072454+00	\N	\N	191	3	10	0	0	\N	\N
1510	4	会捞人，捞的挺狠，游杰讲得一般但给分不错	2025-07-20 01:15:10.092854+00	\N	\N	3241	3	12	0	0	\N	\N
1511	4	非常喜欢潘老师的课，很好，期中期末两篇论文，好得很	2025-07-20 01:15:10.108245+00	\N	\N	1138	3	4	0	0	\N	\N
1512	4	非常喜欢潘老师的课，很好，期中期末两篇论文，好得很	2025-07-20 01:15:10.119223+00	\N	\N	852	3	5	0	0	\N	\N
1513	5	特别好，事少，给分高，无脑冲。	2025-07-20 01:15:10.13048+00	\N	\N	1138	3	6	0	0	\N	\N
1514	5	潘老师，平时很严肃但是给分真的很爽快	2025-07-20 01:15:10.145963+00	\N	\N	2831	3	7	0	0	\N	\N
1515	4	潘老师，平时很严肃但是给分真的很爽快	2025-07-20 01:15:10.155559+00	\N	\N	655	3	3	0	0	\N	\N
1516	5	老师属于比较和蔼的那种，我们当时论文结课的，应该都有八十多	2025-07-20 01:15:10.169+00	\N	\N	1065	3	8	0	0	\N	\N
1518	5	挺不错的老师，无签到，给分好	2025-07-20 01:15:10.191002+00	\N	\N	714	3	10	0	0	\N	\N
1519	4	挺不错的老师，无签到，给分好	2025-07-20 01:15:10.201+00	\N	\N	2014	3	11	0	0	\N	\N
1520	4	非常负责，就是讲课有点抽象	2025-07-20 01:15:10.221435+00	\N	\N	3221	3	12	0	0	\N	\N
1522	4	王人好，给分高，课堂也比较有趣	2025-07-20 01:15:10.252393+00	\N	\N	1417	3	5	0	0	\N	\N
1524	5	王强推，平时可能有慕课，期末开卷，老师人巨好	2025-07-20 01:15:10.277434+00	\N	\N	1417	3	7	0	0	\N	\N
1525	4	王老师强推，平时可能有慕课，期末开卷，老师人巨好	2025-07-20 01:15:10.294628+00	\N	\N	16	3	3	0	0	\N	\N
1526	5	王老师强推，平时可能有慕课，期末开卷，老师人巨好	2025-07-20 01:15:10.306506+00	\N	\N	17	3	8	0	0	\N	\N
1527	4	王老师人很好，讲也讲得不错，平时分可能会有一个课堂回答问题的要求，我们的那一堂课是这样的。	2025-07-20 01:15:10.318215+00	\N	\N	17	3	9	0	0	\N	\N
1528	4	老师人很好 全靠自己学	2025-07-20 01:15:10.333531+00	\N	\N	2111	3	10	0	0	\N	\N
1530	5	真的超有耐心超级温柔特别有人格魅力对学生都一视同仁	2025-07-20 01:15:10.359008+00	\N	\N	2248	3	12	0	0	\N	\N
1531	4	真的超有耐心超级温柔特别有人格魅力对学生都一视同仁	2025-07-20 01:15:10.369548+00	\N	\N	2299	3	4	0	0	\N	\N
1532	4	对所有人都一视同仁，觉得风气比成绩更重要，鼓励学生积极向上真的很难不爱	2025-07-20 01:15:10.383206+00	\N	\N	1532	3	5	0	0	\N	\N
1533	4	是的王老师人超好给分也不错👍	2025-07-20 01:15:10.398484+00	\N	\N	2591	3	6	0	0	\N	\N
1534	5	王军游泳超级好，认真负责教你动作，反正我这学期是在戏水池考的	2025-07-20 01:15:10.407533+00	\N	\N	2591	3	7	0	0	\N	\N
1535	4	老师上课一般不看教材	2025-07-20 01:15:10.419404+00	\N	\N	2149	3	3	0	0	\N	\N
1536	5	老师上课一般不看教材	2025-07-20 01:15:10.428716+00	\N	\N	2146	3	8	0	0	\N	\N
1537	4	老师人很好 偶尔点名	2025-07-20 01:15:10.441439+00	\N	\N	602	3	9	0	0	\N	\N
1539	4	避雷王凡，点名，抽问，事多	2025-07-20 01:15:10.46185+00	\N	\N	602	3	11	0	0	\N	\N
1540	4	无聊，事多，但分数很好，还是推荐的	2025-07-20 01:15:10.472888+00	\N	\N	602	3	12	0	0	\N	\N
1541	4	很有趣，专业课很厉害的。前几年国商院的微经都是载曦老师上	2025-07-20 01:15:10.486743+00	\N	\N	1986	3	4	0	0	\N	\N
1542	5	很有趣，专业课很厉害的。前几年国商院的微经都是载曦老师上	2025-07-20 01:15:10.495832+00	\N	\N	346	3	5	0	0	\N	\N
1543	4	王博真的又帅人又好事还不多！！！！！真的冲他！！！！！！！！	2025-07-20 01:15:10.505699+00	\N	\N	1986	3	6	0	0	\N	\N
1544	5	身边朋友都说王博教得好且给分很高，人也很好	2025-07-20 01:15:10.513875+00	\N	\N	346	3	7	0	0	\N	\N
1545	5	给分很好👍90+  本mo平时上课挺认真	2025-07-20 01:15:10.526929+00	\N	\N	614	3	3	0	0	\N	\N
1546	5	机器学习数学基础一定要选王天明老师，吹爆，因为老师讲的好，绩点高，会给你讲作业的思路，例题的推导，很清楚哦，期末只需要看老师讲的例题和作业就行，而且平时分有97，期末考了100分绩点4.9，超高兴	2025-07-20 01:15:10.539723+00	\N	\N	450	3	8	0	0	\N	\N
1736	4	挺好的，很温柔，也挺帅的	2025-07-20 01:15:13.291391+00	\N	\N	31	3	8	0	0	\N	\N
1548	5	人超级好，考试知识点整理的也很详细，从不点名，作业也很简单	2025-07-20 01:15:10.558293+00	\N	\N	450	3	10	0	0	\N	\N
1549	5	我是她这学期课代表，反正人很好也没那么多事	2025-07-20 01:15:10.572109+00	\N	\N	397	3	11	0	0	\N	\N
1550	4	步老师比较严格哈哈，爱抽人回答问题	2025-07-20 01:15:10.586251+00	\N	\N	2194	3	12	0	0	\N	\N
1552	5	lxy可以的 但她有时候会点名，就是记得按时完成她的作业 点名的时候人要在 学习通视频记得弄完 其他的感觉都还好 给分我觉得可以	2025-07-20 01:15:10.610358+00	\N	\N	139	3	5	0	0	\N	\N
1554	5	挺好的，一学期随机点两三次名，上课也不咋管你，回答问题有加分，但不回答平时分也不差，有一次小组pre	2025-07-20 01:15:10.644873+00	\N	\N	2748	3	7	0	0	\N	\N
1555	4	王慧只是教的不好，人蛮好的	2025-07-20 01:15:10.661+00	\N	\N	430	3	3	0	0	\N	\N
1556	5	王慧只是教的不好，人蛮好的	2025-07-20 01:15:10.673598+00	\N	\N	2250	3	8	0	0	\N	\N
1557	5	教的还好，但人蛮好。	2025-07-20 01:15:10.684928+00	\N	\N	2250	3	9	0	0	\N	\N
1558	4	平时分几乎打满！事少分高！偶尔会点名，如果人来的少就会点	2025-07-20 01:15:10.699896+00	\N	\N	873	3	10	0	0	\N	\N
1560	4	上过她的习思想，老师人不错，给分公正。上课积极回应的话平时分会很高，但是对社恐人士的话可能不太友好，因为有上课参与分	2025-07-20 01:15:10.722343+00	\N	\N	873	3	12	0	0	\N	\N
1561	5	讲的还可以，要求吓人，感觉挺好的啊，就是听起来好像听严格的	2025-07-20 01:15:10.751595+00	\N	\N	80	3	4	0	0	\N	\N
1562	4	他是新老师，感觉水水的，很无聊，他说要点两次名，期末是论文	2025-07-20 01:15:10.774755+00	\N	\N	3090	3	5	0	0	\N	\N
1563	5	挺好的，平时分两学期都是100，不过他对足球和游泳的考试标准挺严格的挺好的，平时分拉满，期末看平时体测	2025-07-20 01:15:10.796093+00	\N	\N	2717	3	6	0	0	\N	\N
1564	5	给分比较公正吧，讲的还不错，不过平时任务挺多	2025-07-20 01:15:10.83736+00	\N	\N	751	3	7	0	0	\N	\N
1566	4	老师好，分高，但是不水，需要权衡一下精力和时间	2025-07-20 01:15:10.866019+00	\N	\N	1619	3	8	0	0	\N	\N
1567	5	老师好，分高，但是不水，需要权衡一下精力和时间	2025-07-20 01:15:10.878763+00	\N	\N	42	3	9	0	0	\N	\N
1568	5	公共经济政策分析王茹	2025-07-20 01:15:10.890758+00	\N	\N	42	3	10	0	0	\N	\N
1569	5	给分还不错，论文和pre都好好做能上90	2025-07-20 01:15:10.91166+00	\N	\N	1629	3	11	0	0	\N	\N
1570	4	王老师给分评价比较两极分化	2025-07-20 01:15:10.933838+00	\N	\N	1063	3	12	0	0	\N	\N
1572	4	王老师高数作业留得真多，反正是讲的飞快，我跟不上就转战b大了	2025-07-20 01:15:10.961191+00	\N	\N	1506	3	5	0	0	\N	\N
1573	4	王老师高数作业留得真多，反正是讲的飞快，我跟不上就转战b大了	2025-07-20 01:15:10.974379+00	\N	\N	1590	3	6	0	0	\N	\N
1574	4	王长安老师人真的好好	2025-07-20 01:15:10.98945+00	\N	\N	2073	3	7	0	0	\N	\N
1576	5	挺水的我记得，印象里连作业都没	2025-07-20 01:15:11.016961+00	\N	\N	2073	3	8	0	0	\N	\N
1577	5	王雪老师超级好超级温柔	2025-07-20 01:15:11.031535+00	\N	\N	2433	3	9	0	0	\N	\N
1579	5	可以看看王霄老师别的课，给分都很好的	2025-07-20 01:15:11.054316+00	\N	\N	907	3	11	0	0	\N	\N
1580	4	翻拍一个影视片段哦，老师给分很好 ！	2025-07-20 01:15:11.064083+00	\N	\N	907	3	12	0	0	\N	\N
1581	4	老师挺好，分数的话靠自己努力吧	2025-07-20 01:15:11.080173+00	\N	\N	187	3	4	0	0	\N	\N
1583	5	老师教得很好，作业都交的话平时分基本100	2025-07-20 01:15:11.103504+00	\N	\N	2036	3	6	0	0	\N	\N
1584	4	如果是图刷分的话还是不太推荐，这门课还是比较难的，如果有信心学好可以选。我的意思是老师给分真的挺高，尤其是卷面，感觉真的尽力给高分了。	2025-07-20 01:15:11.129724+00	\N	\N	911	3	7	0	0	\N	\N
1586	4	他其他课平时分挺高的。但这门课看你期末考吧，大概率打分跟期末考正相关。	2025-07-20 01:15:11.156711+00	\N	\N	1830	3	8	0	0	\N	\N
1587	5	他其他课平时分挺高的。但这门课看你期末考吧，大概率打分跟期末考正相关。	2025-07-20 01:15:11.170315+00	\N	\N	515	3	9	0	0	\N	\N
1588	5	数字跨境金融的田省迪老师有一说一，上课有点无聊，但她给分高，期末也只用交个ppt	2025-07-20 01:15:11.192732+00	\N	\N	769	3	10	0	0	\N	\N
1590	5	老师还挺好的，给分也不错	2025-07-20 01:15:11.225512+00	\N	\N	769	3	12	0	0	\N	\N
1591	4	国际结算不定期点名，能记住学生的脸，别人帮你答到都会被发现上课不知道在讲什么，每次作业都完成了，每次答到都在，给分还巨低	2025-07-20 01:15:11.235541+00	\N	\N	769	3	4	0	0	\N	\N
1592	4	最后五分钟点名 要求把教室前后门都锁了不让进	2025-07-20 01:15:11.251629+00	\N	\N	2017	3	5	0	0	\N	\N
1594	4	据说难度超高，不过盛大林老师人很好	2025-07-20 01:15:11.284854+00	\N	\N	1776	3	7	0	0	\N	\N
1596	5	Zjx上课还是比较清爽的，事情不多，比较听劝。平时不怎么点名，点名多是因为一眼就看出好多同学翘课¨	2025-07-20 01:15:11.318673+00	\N	\N	605	3	8	0	0	\N	\N
1598	4	我觉得相较于其他类型思政课的老师，给分他算好的了	2025-07-20 01:15:11.347195+00	\N	\N	605	3	10	0	0	\N	\N
1599	4	zjx人不错的，给分还不知道，我这学期上的，平时作业有一次通信➕一次小论文	2025-07-20 01:15:11.361645+00	\N	\N	605	3	11	0	0	\N	\N
1600	4	秦老师给我们上课感觉很和蔼可亲	2025-07-20 01:15:11.380409+00	\N	\N	36	3	12	0	0	\N	\N
1602	4	职规的秦怡老师平时事情少，从来不点名，给平时分高！	2025-07-20 01:15:11.413809+00	\N	\N	133	3	5	0	0	\N	\N
1603	4	职规的秦怡老师平时事情少，从来不点名，给平时分高！	2025-07-20 01:15:11.425359+00	\N	\N	1885	3	6	0	0	\N	\N
1604	4	不多 只有一次小组展示 偶尔会提问(一般只找坐最后几排的人回答) 结课有小礼物 给分还不知道	2025-07-20 01:15:11.438356+00	\N	\N	939	3	7	0	0	\N	\N
1605	4	上过秦惠老师的课 她人蛮好的	2025-07-20 01:15:11.455451+00	\N	\N	872	3	3	0	0	\N	\N
1607	4	马克思秦慧老师怎么样	2025-07-20 01:15:11.475398+00	\N	\N	872	3	9	0	0	\N	\N
1608	4	程欣很好，平时分很高，上课也很负责	2025-07-20 01:15:11.491123+00	\N	\N	813	3	10	0	0	\N	\N
1609	4	之前上他的课，点名他会提前说	2025-07-20 01:15:11.503573+00	\N	\N	813	3	11	0	0	\N	\N
1610	5	她是事情比较多，要求比较高，但是给分挺好的	2025-07-20 01:15:11.522637+00	\N	\N	2384	3	12	0	0	\N	\N
1612	5	沟通与写作孙莉老师 避雷	2025-07-20 01:15:11.542457+00	\N	\N	2384	3	5	0	0	\N	\N
1613	4	要干的事超多，然后上课也没水准，给分也没多高。	2025-07-20 01:15:11.551237+00	\N	\N	2384	3	6	0	0	\N	\N
1614	5	真的大雷，谁踩谁惨	2025-07-20 01:15:11.561711+00	\N	\N	2384	3	7	0	0	\N	\N
1615	5	上过果子哥的大数据，老师人蛮好的，给分也还可以，不过计量不太清楚，但是我们的大数据分析也是用了很多计量知识，不过比起传统一点的教学来说可能显得经验没那么丰富吧，还有就是会夹杂一点英文名词因为才从美国回来	2025-07-20 01:15:11.584091+00	\N	\N	484	3	3	0	0	\N	\N
1617	4	95  老师给分超好	2025-07-20 01:15:11.60773+00	\N	\N	1362	3	9	0	0	\N	\N
1618	4	91，纪老师人挺好的	2025-07-20 01:15:11.615498+00	\N	\N	1364	3	10	0	0	\N	\N
1619	5	老师很好，他的军事理论蛮有意思	2025-07-20 01:15:11.632357+00	\N	\N	1886	3	11	0	0	\N	\N
1620	5	老师很好，他的军事理论蛮有意思	2025-07-20 01:15:11.640696+00	\N	\N	2959	3	12	0	0	\N	\N
1621	5	罗宏老师很好，讲课有趣，还会发红包	2025-07-20 01:15:11.653824+00	\N	\N	1442	3	4	0	0	\N	\N
1623	5	罗宏老师！人巨好，分也给的高	2025-07-20 01:15:11.680201+00	\N	\N	1442	3	6	0	0	\N	\N
1624	4	评价好坏参半 不过我觉得挺好的  分也不低 就是上课会提问	2025-07-20 01:15:11.697152+00	\N	\N	1137	3	7	0	0	\N	\N
1625	4	评价好坏参半 不过我觉得挺好的  分也不低 就是上课会提问	2025-07-20 01:15:11.708774+00	\N	\N	1109	3	3	0	0	\N	\N
1626	4	中规中矩，我觉得没那么夸张，正常学交作业不逃课不是很低的	2025-07-20 01:15:11.71973+00	\N	\N	1109	3	8	0	0	\N	\N
1627	4	会点人回答问题，有课堂作业，期末是论文，老师讲的还不错	2025-07-20 01:15:11.730899+00	\N	\N	1137	3	9	0	0	\N	\N
1628	5	他真挺好的，上课也会融合知识点给大家讲一些人生经验，还有小礼物	2025-07-20 01:15:11.747295+00	\N	\N	871	3	10	0	0	\N	\N
1630	5	上过罗牧原老师 人很好推荐 不点名 但必须在课堂上写随堂作业 那节课必须在	2025-07-20 01:15:11.778775+00	\N	\N	2538	3	12	0	0	\N	\N
1631	5	翁老师给分好，无平时作业 有小组 pre    期末论文 800 字 不考勤放养式	2025-07-20 01:15:11.800053+00	\N	\N	712	3	4	0	0	\N	\N
1633	5	翁无平时作业 有小组 pre    期末论文 800 字 不考勤放养式	2025-07-20 01:15:11.840776+00	\N	\N	1757	3	6	0	0	\N	\N
1635	4	还不错。只有第一周和第九周线下上课，平时都是看网课。期中交一篇课程论文就是了。	2025-07-20 01:15:11.880739+00	\N	\N	1204	3	3	0	0	\N	\N
1636	4	还不错。只有第一周和第九周线下上课，平时都是看网课。期中交一篇课程论文就是了。	2025-07-20 01:15:11.897713+00	\N	\N	1521	3	8	0	0	\N	\N
1637	4	念一下ppt，介绍一些基本概念，然后说明课程的上课方式和考核方式	2025-07-20 01:15:11.920255+00	\N	\N	1521	3	9	0	0	\N	\N
1638	5	人漂亮 给分好像也可以	2025-07-20 01:15:11.955702+00	\N	\N	474	3	10	0	0	\N	\N
1640	5	她真的很好啊，上学期她的课都扩容到快150人了	2025-07-20 01:15:12.006721+00	\N	\N	474	3	12	0	0	\N	\N
1641	4	人美心善，没上过她的课，但是听过她的大名，可惜当时没抢上	2025-07-20 01:15:12.036599+00	\N	\N	474	3	4	0	0	\N	\N
1642	4	前半学期不点名，让同学尽量坐固定的位置，凭印象给考勤分。后半学期按小组签到，好好学了期末能给也会尽量给的	2025-07-20 01:15:12.060572+00	\N	\N	820	3	5	0	0	\N	\N
1643	5	多回答问题分就会高 给分很公平	2025-07-20 01:15:12.077088+00	\N	\N	1017	3	6	0	0	\N	\N
1644	5	多回答问题分就会高 给分很公平	2025-07-20 01:15:12.086156+00	\N	\N	1314	3	7	0	0	\N	\N
1645	4	这个老师需要混脸熟分才高，不然一般就八十多分	2025-07-20 01:15:12.098791+00	\N	\N	1017	3	3	0	0	\N	\N
1646	4	事略多，人蛮好，喜欢社交和表现的选她课比较合适	2025-07-20 01:15:12.119247+00	\N	\N	3312	3	8	0	0	\N	\N
1647	4	好像是个新老师，应该是今年西财博士毕业的，没带过学生，你可以成为他带的第一届学生	2025-07-20 01:15:12.143629+00	\N	\N	87	3	9	0	0	\N	\N
1649	5	那必须要选肖翰啊，这种小白一般没太多事的哈哈哈.	2025-07-20 01:15:12.177642+00	\N	\N	398	3	11	0	0	\N	\N
1650	4	我考研复试的主考官就是胡务，给的分挺高的	2025-07-20 01:15:12.198379+00	\N	\N	580	3	12	0	0	\N	\N
1652	5	已经上完了，上课不会管你，挺好的，讲的就还行没怎么听，期末这方面可能占一点劣势	2025-07-20 01:15:12.248168+00	\N	\N	609	3	5	0	0	\N	\N
1654	4	胡晓讲课很不错，声音洪亮逻辑清晰	2025-07-20 01:15:12.283827+00	\N	\N	1639	3	7	0	0	\N	\N
1655	4	胡晓讲课很不错，声音洪亮逻辑清晰	2025-07-20 01:15:12.29361+00	\N	\N	992	3	3	0	0	\N	\N
1656	4	胡晓人还行，就是分比较低	2025-07-20 01:15:12.305506+00	\N	\N	1639	3	8	0	0	\N	\N
1657	5	挺好的，美丽温柔善良爱死	2025-07-20 01:15:12.327924+00	\N	\N	3280	3	9	0	0	\N	\N
1659	4	系统且概括地学艺术的基本分类，和每个分类的一些基本情况。实践周还能去看展。	2025-07-20 01:15:12.35592+00	\N	\N	2497	3	11	0	0	\N	\N
1660	5	老师很温柔，讲的也很细，不过容易犯困	2025-07-20 01:15:12.370976+00	\N	\N	1089	3	12	0	0	\N	\N
1661	4	老师很温柔，讲的也很细，不过容易犯困	2025-07-20 01:15:12.385235+00	\N	\N	636	3	4	0	0	\N	\N
1662	4	说是平时作业要求高 比较严格但是讲课不错	2025-07-20 01:15:12.401018+00	\N	\N	636	3	5	0	0	\N	\N
1663	5	讲得挺好的 很幽默哈哈	2025-07-20 01:15:12.415777+00	\N	\N	636	3	6	0	0	\N	\N
1664	4	教授人很好的，怎么对公选课的学生就不一样了？	2025-07-20 01:15:12.432983+00	\N	\N	2622	3	7	0	0	\N	\N
1665	4	感觉她讲的好有趣（不过可能要求比较严）	2025-07-20 01:15:12.45763+00	\N	\N	597	3	3	0	0	\N	\N
1666	5	非常严格 momo上她的课有点紧张	2025-07-20 01:15:12.472153+00	\N	\N	597	3	8	0	0	\N	\N
1667	4	范国斌，永远的神。对学生是没得说，反正无脑选他就是了	2025-07-20 01:15:12.494168+00	\N	\N	473	3	9	0	0	\N	\N
1669	4	每节都点，但是讲的很好，人也很好，给分也很高	2025-07-20 01:15:12.526736+00	\N	\N	763	3	11	0	0	\N	\N
1670	4	每节都点，但是讲的很好，人也很好，给分也很高	2025-07-20 01:15:12.542374+00	\N	\N	3035	3	12	0	0	\N	\N
1671	5	蒋Lisa！人美心善！期末随堂测试！分好高，闭眼冲	2025-07-20 01:15:12.558291+00	\N	\N	1010	3	4	0	0	\N	\N
1673	5	很好啊，lisa老师啥课都好	2025-07-20 01:15:12.584119+00	\N	\N	1015	3	6	0	0	\N	\N
1674	5	要求只要做小组做两次pre 然后pre的时候人来就好 期末是小论文主题随意其他时候就是随意他说他不考勤	2025-07-20 01:15:12.594569+00	\N	\N	1015	3	7	0	0	\N	\N
1675	5	课还蛮有趣的，老师人也很好	2025-07-20 01:15:12.61421+00	\N	\N	2467	3	3	0	0	\N	\N
1676	5	课还蛮有趣的，老师人也很好	2025-07-20 01:15:12.624597+00	\N	\N	766	3	8	0	0	\N	\N
1677	4	蒋海曦老师讲课很好的 可以考虑下补充性货币学 要回答问题但是90+	2025-07-20 01:15:12.633915+00	\N	\N	338	3	9	0	0	\N	\N
1678	5	他特别温柔哈哈哈哈 就是那种有点傻呆呆的老师 我这学期上了他的一门课	2025-07-20 01:15:12.652048+00	\N	\N	1152	3	10	0	0	\N	\N
1679	5	他特别温柔哈哈哈哈 就是那种有点傻呆呆的老师 我这学期上了他的一门课	2025-07-20 01:15:12.65997+00	\N	\N	3268	3	11	0	0	\N	\N
1680	5	去年上概率论 两周小测一次 说是会挂我们 但是刀子嘴豆腐心 期末出卷挺简单 但是平时作业不少 上概率论都是自己写板书 没有ppt	2025-07-20 01:15:12.670148+00	\N	\N	1564	3	12	0	0	\N	\N
1682	5	还可以 不过我们两年前期末的时候要写一万字的企业财务报告分析	2025-07-20 01:15:12.700746+00	\N	\N	1434	3	5	0	0	\N	\N
1684	4	课堂多回答问题她会加分	2025-07-20 01:15:12.717161+00	\N	\N	1434	3	7	0	0	\N	\N
1686	4	胡老师，上过他两次课，都没点名，就是小组作业的时候人没到齐的话会问，给分普遍不高	2025-07-20 01:15:12.739377+00	\N	\N	587	3	8	0	0	\N	\N
1688	4	老师人超好 给分很高哦	2025-07-20 01:15:12.764937+00	\N	\N	770	3	10	0	0	\N	\N
1689	4	老师人超好 给分很高哦	2025-07-20 01:15:12.775529+00	\N	\N	1664	3	11	0	0	\N	\N
1690	4	不难哦 我是去年上的 上课没好好听 期末考核是小组pre 不是很难	2025-07-20 01:15:12.786116+00	\N	\N	770	3	12	0	0	\N	\N
1691	4	袁老师给分还可以，但平时作业有点多	2025-07-20 01:15:12.796511+00	\N	\N	1664	3	4	0	0	\N	\N
1692	4	事少，讲的很好分也高很好，冲	2025-07-20 01:15:12.810644+00	\N	\N	1811	3	5	0	0	\N	\N
1694	4	特别好，讲课好，给分高	2025-07-20 01:15:12.833359+00	\N	\N	433	3	7	0	0	\N	\N
1695	5	主要是他讲课幽默风趣，通俗易懂	2025-07-20 01:15:12.844089+00	\N	\N	433	3	3	0	0	\N	\N
1696	4	无pre，无测验，上课很有意思，特别喜欢讲一些生活中的例子和趣闻。	2025-07-20 01:15:12.854722+00	\N	\N	433	3	8	0	0	\N	\N
1697	5	许挺好的，上课好好听作业认真完成就好	2025-07-20 01:15:12.8678+00	\N	\N	1809	3	9	0	0	\N	\N
1699	5	许挺好的，上课好好听作业认真完成就好	2025-07-20 01:15:12.887444+00	\N	\N	1810	3	11	0	0	\N	\N
1701	5	老师人超级好 给分高 期末是考试很简单的	2025-07-20 01:15:12.914903+00	\N	\N	1229	3	4	0	0	\N	\N
1703	5	挺好的，据他自己说给分很高，这学期结课是论文	2025-07-20 01:15:12.931223+00	\N	\N	1229	3	6	0	0	\N	\N
1704	5	基本上都是他考试前一两周一直反复强调的题目 题目量少很简单	2025-07-20 01:15:12.939766+00	\N	\N	3277	3	7	0	0	\N	\N
1705	5	平时分很高的，人也很好，唯一就是喜欢点名回答问题	2025-07-20 01:15:12.949773+00	\N	\N	1217	3	3	0	0	\N	\N
1706	4	老师事儿很少，我们期中是一篇读书笔记 期末是小组pre 老师上一学期课没点过名	2025-07-20 01:15:12.962139+00	\N	\N	908	3	8	0	0	\N	\N
1707	5	老师事儿很少，我们期中是一篇读书笔记 期末是小组pre 老师上一学期课没点过名	2025-07-20 01:15:12.969978+00	\N	\N	2125	3	9	0	0	\N	\N
1708	4	给分一般，有个人阅读指定书籍，字数忘了，期末是小组作业	2025-07-20 01:15:12.979018+00	\N	\N	277	3	10	0	0	\N	\N
1709	5	mll人挺好，但是数字zf不怎么样	2025-07-20 01:15:12.993372+00	\N	\N	577	3	11	0	0	\N	\N
1711	4	应用时间谭莹老师人美心善！！！	2025-07-20 01:15:13.0135+00	\N	\N	2035	3	4	0	0	\N	\N
1713	4	正常情况是考试 上学期改论文了 分给的很高	2025-07-20 01:15:13.029776+00	\N	\N	2035	3	6	0	0	\N	\N
1714	4	人好但不知道分，课挺难的。我本专业的都有点想退了	2025-07-20 01:15:13.044809+00	\N	\N	784	3	7	0	0	\N	\N
1716	4	避雷课程税务代理和老师费茂清	2025-07-20 01:15:13.062512+00	\N	\N	784	3	8	0	0	\N	\N
1717	4	作业交了平时分拉满，讲课也不错，期中考试会按真实成绩打分但是会酌情给大家打高一些	2025-07-20 01:15:13.074842+00	\N	\N	999	3	9	0	0	\N	\N
1718	4	作业交了平时分拉满，讲课也不错，期中考试会按真实成绩打分但是会酌情给大家打高一些	2025-07-20 01:15:13.082183+00	\N	\N	1929	3	10	0	0	\N	\N
1719	4	还行 给的挺高的 但是期中成绩那10%不会捞	2025-07-20 01:15:13.090254+00	\N	\N	999	3	11	0	0	\N	\N
1720	5	已经上完了，上课不会管你，挺好的，讲的就还行没怎么听，期末这方面可能占一点劣势	2025-07-20 01:15:13.097975+00	\N	\N	999	3	12	0	0	\N	\N
1721	5	南晓彤温柔大美女，人超级好，我期末平时分96	2025-07-20 01:15:13.110577+00	\N	\N	854	3	4	0	0	\N	\N
1723	4	给分很高，艺术类课程都不会为难人	2025-07-20 01:15:13.126869+00	\N	\N	854	3	6	0	0	\N	\N
1724	4	开卷考试捏，给分也很不错	2025-07-20 01:15:13.135353+00	\N	\N	854	3	7	0	0	\N	\N
1725	4	太好了 老师复习的时候确实讲的很详细，ľ爱了	2025-07-20 01:15:13.152195+00	\N	\N	870	3	3	0	0	\N	\N
1727	4	特别有用 考的都是她给的重点，爱死，真的我们寝室三个不同的老师，她给的是最准的	2025-07-20 01:15:13.179748+00	\N	\N	870	3	9	0	0	\N	\N
1728	4	老师人很好！教的也很好！给的平时分也不错！	2025-07-20 01:15:13.19747+00	\N	\N	1225	3	10	0	0	\N	\N
1729	5	人挺好的给分中规中矩	2025-07-20 01:15:13.212931+00	\N	\N	2425	3	11	0	0	\N	\N
1730	4	人挺好的给分中规中矩	2025-07-20 01:15:13.223669+00	\N	\N	1150	3	12	0	0	\N	\N
1731	5	可能需要自学，但是人挺有意思的，不考试半期是十张整理笔记，事少给分高会捞人	2025-07-20 01:15:13.237502+00	\N	\N	3069	3	4	0	0	\N	\N
1733	4	给分还行，学得好就能高分，不好的话老师会捞，没有期中考是写笔记总结。就是老师是年龄大的老教师，说话有点典	2025-07-20 01:15:13.255756+00	\N	\N	3069	3	6	0	0	\N	\N
1734	4	ll作业多但是分数很高	2025-07-20 01:15:13.272868+00	\N	\N	31	3	7	0	0	\N	\N
1737	5	赵娟老师上课很有意思但给分比较严，期末是考试	2025-07-20 01:15:13.303088+00	\N	\N	160	3	9	0	0	\N	\N
1738	5	赵娟老师上课很有意思但给分比较严，期末是考试	2025-07-20 01:15:13.31099+00	\N	\N	1021	3	10	0	0	\N	\N
1739	4	赵娟人挺好的，平时很轻松但是她考试会更难	2025-07-20 01:15:13.31831+00	\N	\N	3108	3	11	0	0	\N	\N
1740	5	还可以，但是给分蛮严格的，上课要回答问题，期末没有重点	2025-07-20 01:15:13.32546+00	\N	\N	3108	3	12	0	0	\N	\N
1741	5	赵娟给分一般80出头，一个pre，期中期末考	2025-07-20 01:15:13.331814+00	\N	\N	160	3	4	0	0	\N	\N
1742	5	没选过但赵老师人真的很好很负责🥺属于只要你想学她就倾囊相授的那种☺️老师本人就很优秀，也超会教（个人感觉）她给我一种“多难的课到了她那里都会变简单”的错觉…	2025-07-20 01:15:13.34255+00	\N	\N	416	3	5	0	0	\N	\N
1743	5	赵老师也一直在带科研小组，很温柔，我最近也在跟她讨论选题。	2025-07-20 01:15:13.351019+00	\N	\N	2531	3	6	0	0	\N	\N
1744	5	人好分高但课程难度不太允许跨选	2025-07-20 01:15:13.364917+00	\N	\N	51	3	7	0	0	\N	\N
1746	5	赵ky老师超级好，上过她的导论，老师讲的很认真，而且给分也好	2025-07-20 01:15:13.390759+00	\N	\N	52	3	8	0	0	\N	\N
1748	4	邓老师很好，讲课可以，他教学比赛拿过校级奖项和省奖，还拿过“我心目中的好老师”	2025-07-20 01:15:13.426562+00	\N	\N	333	3	10	0	0	\N	\N
1750	5	老师人很好，很耐心，有问题基本都会回答，最近挺忙的，没那么忙的时候是可以回答学生问题到深夜的	2025-07-20 01:15:13.445892+00	\N	\N	333	3	12	0	0	\N	\N
1751	4	邓富华老师指导学生三下乡2019-2022全是优秀指导老师，老师应该对学生挺负责的	2025-07-20 01:15:13.460503+00	\N	\N	1125	3	4	0	0	\N	\N
1753	4	阎丽老师是新老师，课堂质量的风评不是很好	2025-07-20 01:15:13.483481+00	\N	\N	1125	3	6	0	0	\N	\N
1754	5	洋洋人很好，巨能捞，教的水平...在进步	2025-07-20 01:15:13.497611+00	\N	\N	170	3	7	0	0	\N	\N
1756	5	洋洋人很好，但是是新老师，可能没太多经验	2025-07-20 01:15:13.51536+00	\N	\N	744	3	8	0	0	\N	\N
1757	5	人很好，事情少，我很喜欢他	2025-07-20 01:15:13.527875+00	\N	\N	645	3	9	0	0	\N	\N
1759	5	我感觉dy超级好，上的他的人工智能，人很好很好，事少	2025-07-20 01:15:13.55057+00	\N	\N	645	3	11	0	0	\N	\N
1760	4	但是他上人工智能与现代科技很负责任的讲自己的，人很好	2025-07-20 01:15:13.561452+00	\N	\N	494	3	12	0	0	\N	\N
1761	5	很好，超级好的老师，上过他的人工智能，特别好！课上有讨论的时候还会提前在群里说提醒大家到场	2025-07-20 01:15:13.571224+00	\N	\N	494	3	4	0	0	\N	\N
1762	4	特别好特别水，期末是论文，点名也很少我们这学期只有两次吧，然后就布置了两次作业，但是很简单，反正就是人很好放心	2025-07-20 01:15:13.59196+00	\N	\N	494	3	5	0	0	\N	\N
1763	5	挺好的吧 平时分90➕	2025-07-20 01:15:13.60718+00	\N	\N	868	3	6	0	0	\N	\N
1765	5	dq上形体与礼仪，不难，老师人挺好的	2025-07-20 01:15:13.630593+00	\N	\N	3345	3	3	0	0	\N	\N
1766	5	讲课很水，如果你真想学东西建议自学，但是说实话这门课给分挺高的，自己斟酌一下	2025-07-20 01:15:13.644579+00	\N	\N	462	3	8	0	0	\N	\N
1768	5	大部分时间同学讲，特别是讲作业的时候，同学讲就会不想听（可能是我的问题）	2025-07-20 01:15:13.662864+00	\N	\N	462	3	10	0	0	\N	\N
1769	4	好人可以无脑冲，应该是北大哲学博士，建议大一有时间的同学听听，讲课蛮有意思的。上课会抽人不过不是学术性的问题，而是对一些常见的道德伦理哲学困境问问你的看法。人挺好挺好，建议直接冲	2025-07-20 01:15:13.678674+00	\N	\N	600	3	11	0	0	\N	\N
1771	5	老师上课讲得非常棒，人也特别好，给分高，冲！	2025-07-20 01:15:13.696389+00	\N	\N	600	3	4	0	0	\N	\N
1772	4	老师人特别好！我是上学期邵老师班的，老师经常会提醒我们要注意身体，很温柔的一个老师！最后给我的平时分也很好！（至于别人的分数我也不清楚啦，不过邵老师就是一个很好的人！给他发邮件请假他都会回复，真的很好	2025-07-20 01:15:13.704514+00	\N	\N	600	3	5	0	0	\N	\N
1773	4	还不错人很好课堂挺活跃的	2025-07-20 01:15:13.71358+00	\N	\N	600	3	6	0	0	\N	\N
1774	4	相对别的老师好一点 但不多	2025-07-20 01:15:13.727963+00	\N	\N	1551	3	7	0	0	\N	\N
1775	5	相对别的老师好一点 但不多	2025-07-20 01:15:13.737286+00	\N	\N	1879	3	3	0	0	\N	\N
1776	5	上课会点人，上学期是按学号来点的，就是感觉像是高中怕被老师点到的恐怖感，但邹燕人还是很好的，讲的也好。	2025-07-20 01:15:13.752025+00	\N	\N	1151	3	8	0	0	\N	\N
1777	5	上课会点人，上学期是按学号来点的，就是感觉像是高中怕被老师点到的恐怖感，但邹燕人还是很好的，讲的也好。	2025-07-20 01:15:13.763395+00	\N	\N	236	3	9	0	0	\N	\N
1778	5	邹燕老师讲得是真的很好很细致很有逻辑性很值得一听或许可以旁听	2025-07-20 01:15:13.773752+00	\N	\N	1151	3	10	0	0	\N	\N
1779	4	别选hjx，一个没有感情的念字机器，清华的，但是讲的特别烂	2025-07-20 01:15:13.79166+00	\N	\N	3293	3	11	0	0	\N	\N
1780	5	别选hjx，一个没有感情的念字机器，清华的，但是讲的特别烂	2025-07-20 01:15:13.800121+00	\N	\N	82	3	12	0	0	\N	\N
1781	4	我目前感觉很不错啊，讲得很细，也挺幽默的	2025-07-20 01:15:13.822984+00	\N	\N	394	3	4	0	0	\N	\N
1782	4	郭上课比较一般，但给分还行	2025-07-20 01:15:13.834215+00	\N	\N	394	3	5	0	0	\N	\N
1783	5	迟到要表演，上课点名提问，没听课回答不上来三次以上直接挂科，讲课还可以	2025-07-20 01:15:13.846955+00	\N	\N	394	3	6	0	0	\N	\N
1784	5	好，真好，推荐，平时分给很高，而且课堂也很融洽，没作业，就是一学期三次考试，考试是在课上进行的，而且这学期时间不够，有一次就当成作业做了，无论你考得好考得差的话，只要你上课签名到了，期末的平时分老师都会捞的，给的高，上课。会给你讲重难点，我这次考试的一道计算题，他就特别着重的讲了，当时他在班上讲完了，后面还专门图片发到了群里，然后就复习了他的那三张图片，那道题期末就考到了，很不错的年轻老师	2025-07-20 01:15:13.859086+00	\N	\N	394	3	7	0	0	\N	\N
1785	5	郭广超好 性格好 水 给分还高！	2025-07-20 01:15:13.882785+00	\N	\N	2655	3	3	0	0	\N	\N
1963	4	听说黄昊老师打分很高，本专业很多人都选	2025-07-20 01:15:15.847382+00	\N	\N	3295	3	6	0	0	\N	\N
1786	5	跟了一年的gg ，老师挺好给分不错，特点是不注重过程注重结果，主要老师最终篮球和游泳的水平咋样，平时上课水一点没事，但是签到要去，课中可溜	2025-07-20 01:15:13.894716+00	\N	\N	2655	3	8	0	0	\N	\N
1787	5	很好！！！！也没有期中考  就一个期末统一考	2025-07-20 01:15:13.911292+00	\N	\N	777	3	9	0	0	\N	\N
1789	4	我只上过她的税法  作业少 上课不抽人 给分高  教的也不错	2025-07-20 01:15:13.93325+00	\N	\N	777	3	11	0	0	\N	\N
1790	4	上过他的政经课，人很温和	2025-07-20 01:15:13.945563+00	\N	\N	2272	3	12	0	0	\N	\N
1791	4	狠狠避雷，期末全班总评不高	2025-07-20 01:15:13.957939+00	\N	\N	1255	3	4	0	0	\N	\N
1792	4	平均分是八十多，期末就是背，背到了，分就是你的	2025-07-20 01:15:13.978238+00	\N	\N	635	3	5	0	0	\N	\N
1794	5	不是市场营销专业的他可能会压你分，去年2小时闭卷论文，认识的大部分都打六十多分	2025-07-20 01:15:13.997066+00	\N	\N	635	3	7	0	0	\N	\N
1795	4	郭老师讲的很好 但是她上课要求会比较高噢 上课会开火车式提问	2025-07-20 01:15:14.013896+00	\N	\N	2116	3	3	0	0	\N	\N
1797	4	遇到郭维康，你这辈子就有了，讲的课又烂事又多	2025-07-20 01:15:14.035638+00	\N	\N	2043	3	9	0	0	\N	\N
1798	4	dlj特别特别好，平时分95也没点过名，就一次实践作业	2025-07-20 01:15:14.04709+00	\N	\N	596	3	10	0	0	\N	\N
1800	4	给分还可以，平时一个pre，偶尔有几次作业，期末论文	2025-07-20 01:15:14.069033+00	\N	\N	2390	3	12	0	0	\N	\N
1802	5	以前是论文，平时作业也有个小组论文，总分85-90这个范围，上课超级无聊～	2025-07-20 01:15:14.086173+00	\N	\N	2390	3	5	0	0	\N	\N
1803	4	强推公管之花金浩老师！我自己也想选这一门结果时间冲突了	2025-07-20 01:15:14.099893+00	\N	\N	2629	3	6	0	0	\N	\N
1804	5	金老师是新老师，人很好	2025-07-20 01:15:14.113248+00	\N	\N	1731	3	7	0	0	\N	\N
1806	4	金老师平时分很高……讲课没那么好……但是很细	2025-07-20 01:15:14.130403+00	\N	\N	1731	3	8	0	0	\N	\N
1807	5	超级好的 平时分100/99	2025-07-20 01:15:14.138713+00	\N	\N	1437	3	9	0	0	\N	\N
1808	5	老师人超好！期末给划重点	2025-07-20 01:15:14.153049+00	\N	\N	694	3	10	0	0	\N	\N
1810	4	我觉得挺好！反正mo的平时分挺高的	2025-07-20 01:15:14.168731+00	\N	\N	694	3	12	0	0	\N	\N
1811	4	我记得认真完成作业的话给分还蛮高的	2025-07-20 01:15:14.180435+00	\N	\N	92	3	4	0	0	\N	\N
1812	4	我记得认真完成作业的话给分还蛮高的	2025-07-20 01:15:14.188844+00	\N	\N	1522	3	5	0	0	\N	\N
1813	5	陈东的课很不错，真能入门，期末就是开卷考试，平时你主动背书可以加分，我还是蛮推荐的，老师也很好	2025-07-20 01:15:14.199232+00	\N	\N	92	3	6	0	0	\N	\N
1814	5	丹丹老师讲的特别好！给分也挺好	2025-07-20 01:15:14.212578+00	\N	\N	803	3	7	0	0	\N	\N
1816	4	老师讲的挺好的，会标重点	2025-07-20 01:15:14.229675+00	\N	\N	803	3	8	0	0	\N	\N
1817	5	老师的平时分倒是会打的挺高的，只要上课到了也认真回答问题了的，考试我们当时是手写所以改的感觉分数比预计的要好得多	2025-07-20 01:15:14.243907+00	\N	\N	1464	3	9	0	0	\N	\N
1818	4	老师的平时分倒是会打的挺高的，只要上课到了也认真回答问题了的，考试我们当时是手写所以改的感觉分数比预计的要好得多	2025-07-20 01:15:14.254576+00	\N	\N	1960	3	10	0	0	\N	\N
1819	4	就是考完很多人觉得好难要挂了但实际不仅没挂分数还挺高	2025-07-20 01:15:14.26401+00	\N	\N	1464	3	11	0	0	\N	\N
1820	4	陈佳挺好的，只要你按照她的要求做，平时分还挺高的（我是跨选的）	2025-07-20 01:15:14.277358+00	\N	\N	2009	3	12	0	0	\N	\N
1821	5	陈佳挺好的，只要你按照她的要求做，平时分还挺高的（我是跨选的）	2025-07-20 01:15:14.285945+00	\N	\N	89	3	4	0	0	\N	\N
1822	5	除了内容和作业比较难 其他挺好(且PPT和作业是全英文 但是他用中文讲课)	2025-07-20 01:15:14.299519+00	\N	\N	2443	3	5	0	0	\N	\N
1823	4	除了内容和作业比较难 其他挺好(且PPT和作业是全英文 但是他用中文讲课)	2025-07-20 01:15:14.308974+00	\N	\N	327	3	6	0	0	\N	\N
1824	5	平时几次作业 期末一张A4的cheat sheet开卷考 小组编程写报告	2025-07-20 01:15:14.318052+00	\N	\N	327	3	7	0	0	\N	\N
1825	5	陈人挺强的，教理论部分，但上课坐牢	2025-07-20 01:15:14.331811+00	\N	\N	1053	3	3	0	0	\N	\N
1827	4	人挺强的，教理论部分，但上课坐牢	2025-07-20 01:15:14.355411+00	\N	\N	2525	3	9	0	0	\N	\N
1828	4	陈人挺强的，教理论部分，但上课坐牢	2025-07-20 01:15:14.372834+00	\N	\N	527	3	10	0	0	\N	\N
1830	4	平常隔一段时间会有作业 量比较大 但是给分还可以	2025-07-20 01:15:14.401308+00	\N	\N	472	3	12	0	0	\N	\N
1832	5	给分也还可以，会捞，不怎么点名。	2025-07-20 01:15:14.426014+00	\N	\N	867	3	5	0	0	\N	\N
1834	5	我上的习思想，一次小组作业，还有分享啥的，平时分90+	2025-07-20 01:15:14.444117+00	\N	\N	1216	3	7	0	0	\N	\N
1835	4	还行，我写的无敌认真，他给我95，不高不低	2025-07-20 01:15:14.454378+00	\N	\N	867	3	3	0	0	\N	\N
1836	4	上学期选的hrx 感觉还可以	2025-07-20 01:15:14.469294+00	\N	\N	2486	3	8	0	0	\N	\N
1837	4	上过他其他课 感觉人挺好还好，不过讲到excel具体操作的时候会有点快，因为内容很多，到那顾客的时候需要自己提前预习。给分也还行。	2025-07-20 01:15:14.483485+00	\N	\N	1999	3	9	0	0	\N	\N
1839	4	陈师老师很温柔，我觉得事少分高	2025-07-20 01:15:14.503176+00	\N	\N	1511	3	11	0	0	\N	\N
1841	5	上学期上过，给分还行，但不是很高	2025-07-20 01:15:14.519278+00	\N	\N	1511	3	4	0	0	\N	\N
1842	5	人特别特别好，非标不点名	2025-07-20 01:15:14.527349+00	\N	\N	1511	3	5	0	0	\N	\N
1843	4	跑，给分很低。 全班六七十的水平。 我们组全班成绩第二，总评75	2025-07-20 01:15:14.543463+00	\N	\N	2450	3	6	0	0	\N	\N
1845	5	事少分高，讲得也不错	2025-07-20 01:15:14.563084+00	\N	\N	417	3	3	0	0	\N	\N
1846	5	我觉得讲课非常好，平时也不点名，就只有四次平时作业	2025-07-20 01:15:14.57017+00	\N	\N	417	3	8	0	0	\N	\N
1847	4	cml很好，讲得很清楚，不点名但有课堂小测（5道选择题）	2025-07-20 01:15:14.577595+00	\N	\N	417	3	9	0	0	\N	\N
1848	4	平时分高，同学评价好	2025-07-20 01:15:14.589059+00	\N	\N	492	3	10	0	0	\N	\N
1849	4	平时分高，同学评价好	2025-07-20 01:15:14.596485+00	\N	\N	1468	3	11	0	0	\N	\N
1850	5	陈斌你真的是世界上最好的老师，他期末很能捞，感觉我上学期的大计基卷面分给我捞了快一倍	2025-07-20 01:15:14.602782+00	\N	\N	1468	3	12	0	0	\N	\N
1851	4	他真的很好 给分也很好，我大一的时候上的他的大计基真的超级好	2025-07-20 01:15:14.610234+00	\N	\N	1468	3	4	0	0	\N	\N
1852	4	上过他的内部控制，感觉他有点东西，但是这个课比较水别的看不出来	2025-07-20 01:15:14.621556+00	\N	\N	1923	3	5	0	0	\N	\N
1854	4	你可以上网搜这个老师，可以在学校官网上看到老师发过的论文	2025-07-20 01:15:14.639029+00	\N	\N	1923	3	7	0	0	\N	\N
1855	5	陈xy老师无脑冲，平时分拉满	2025-07-20 01:15:14.651968+00	\N	\N	642	3	3	0	0	\N	\N
1857	4	统一考试。但她上的很好，讲课清晰，人也很好。必选	2025-07-20 01:15:14.678248+00	\N	\N	392	3	9	0	0	\N	\N
1858	4	我忘了，反正人挺好哈哈哈，讲的也还行，不踩雷就对了	2025-07-20 01:15:14.688649+00	\N	\N	392	3	10	0	0	\N	\N
1859	4	陈梓麟人很好，讲课也好	2025-07-20 01:15:14.703823+00	\N	\N	521	3	11	0	0	\N	\N
1860	5	陈梓麟人很好，讲课也好	2025-07-20 01:15:14.711223+00	\N	\N	997	3	12	0	0	\N	\N
1861	4	期末论文，有小组作业。同学推荐的，说是给分挺高的，不记得具体了起码有90+	2025-07-20 01:15:14.723276+00	\N	\N	1503	3	4	0	0	\N	\N
1864	5	如果不是那种特别社牛能次次举手回答问题，下课还能和他闲聊让他记住的，千万别选他。说是什么可以和他发邮件讨论算平时分，发满了也不给高分。甚至看到群里有人满勤+作业按时交，平时分40多	2025-07-20 01:15:14.753981+00	\N	\N	690	3	7	0	0	\N	\N
1865	4	如果不是那种特别社牛能次次举手回答问题，下课还能和他闲聊让他记住的，千万别选他。说是什么可以和他发邮件讨论算平时分，发满了也不给高分。甚至看到群里有人满勤+作业按时交，平时分40多	2025-07-20 01:15:14.763368+00	\N	\N	2521	3	3	0	0	\N	\N
1866	5	陈涛避大雷，平时分打的很离谱且pre的时候赶人下去！	2025-07-20 01:15:14.773523+00	\N	\N	2521	3	8	0	0	\N	\N
1867	5	点名，疯狂点，课上疯狂提问，反驳型人格，给分适中	2025-07-20 01:15:14.784495+00	\N	\N	690	3	9	0	0	\N	\N
1868	5	还行，但是有小组作业，要一起搞一篇论文，这个比较烦，老师人有点严肃但是好说话	2025-07-20 01:15:14.796238+00	\N	\N	690	3	10	0	0	\N	\N
1869	4	她真的超好超好超好的	2025-07-20 01:15:14.814586+00	\N	\N	1330	3	11	0	0	\N	\N
1870	4	是的，神仙老师，平时分给满	2025-07-20 01:15:14.825434+00	\N	\N	2640	3	12	0	0	\N	\N
1871	4	事少，偶尔点名，人好	2025-07-20 01:15:14.840224+00	\N	\N	3149	3	4	0	0	\N	\N
1872	5	事少，偶尔点名，人好	2025-07-20 01:15:14.851207+00	\N	\N	650	3	5	0	0	\N	\N
1873	4	推荐陈磊的数理统计原理	2025-07-20 01:15:14.865875+00	\N	\N	3082	3	6	0	0	\N	\N
1874	4	大心理陈秋达事可能有点多，小组专业 心理活动（拍视频）一篇读后感，不过给分不错	2025-07-20 01:15:14.882705+00	\N	\N	2908	3	7	0	0	\N	\N
1875	5	只上过她的形策，应该是比较严肃的人，因为不允许玩手机	2025-07-20 01:15:14.894537+00	\N	\N	2265	3	3	0	0	\N	\N
1876	4	分高，我上学期的课不需要跳舞，期末是论文，但是每节课要扫码签到	2025-07-20 01:15:14.910623+00	\N	\N	3152	3	8	0	0	\N	\N
1877	5	分高，我上学期的课不需要跳舞，期末是论文，但是每节课要扫码签到	2025-07-20 01:15:14.923179+00	\N	\N	2477	3	9	0	0	\N	\N
1878	5	老师人挺好的，需要排舞跳舞，中间有两次类似读后感的写作算平时作业	2025-07-20 01:15:14.93347+00	\N	\N	3152	3	10	0	0	\N	\N
1879	5	记忆里面好像中规中矩	2025-07-20 01:15:14.947024+00	\N	\N	27	3	11	0	0	\N	\N
1881	4	她专业课的国际法很水，选修课的国际法应该也水	2025-07-20 01:15:14.974607+00	\N	\N	2840	3	4	0	0	\N	\N
1882	5	她专业课的国际法很水，选修课的国际法应该也水	2025-07-20 01:15:14.98452+00	\N	\N	2503	3	5	0	0	\N	\N
1883	5	这不是必修课嘛，那快跑吧，听说不太行	2025-07-20 01:15:14.997218+00	\N	\N	316	3	6	0	0	\N	\N
1885	5	讲课巨好！人好分高！超级高!!真的 一定要选他 他是我的白月光 教的也很好   	2025-07-20 01:15:15.023188+00	\N	\N	1828	3	3	0	0	\N	\N
1887	5	超级高!!真的 一定要选他 他是我的白月光 教的也很好   	2025-07-20 01:15:15.041388+00	\N	\N	1828	3	9	0	0	\N	\N
1888	4	hbs教的简直顶呱呱，稳稳的幸福，老师人也超级好	2025-07-20 01:15:15.053006+00	\N	\N	205	3	10	0	0	\N	\N
1889	4	hbs教的简直顶呱呱，稳稳的幸福，老师人也超级好	2025-07-20 01:15:15.061551+00	\N	\N	2173	3	11	0	0	\N	\N
1890	4	特别特别好，非常温柔	2025-07-20 01:15:15.069084+00	\N	\N	213	3	12	0	0	\N	\N
1891	5	上过这个老师的形策 人特别好	2025-07-20 01:15:15.084844+00	\N	\N	2499	3	4	0	0	\N	\N
1892	5	马丹讲的细，ppt也很全	2025-07-20 01:15:15.097015+00	\N	\N	1486	3	5	0	0	\N	\N
1893	5	马丹讲的细，ppt也很全	2025-07-20 01:15:15.106284+00	\N	\N	1488	3	6	0	0	\N	\N
1894	5	md捞人有一两次点名但上课讲的可能没什么经验	2025-07-20 01:15:15.114962+00	\N	\N	638	3	7	0	0	\N	\N
1895	4	md捞人有一两次点名但上课讲的可能没什么经验	2025-07-20 01:15:15.123625+00	\N	\N	1486	3	3	0	0	\N	\N
1896	4	会点，没提醒，自己小心	2025-07-20 01:15:15.136567+00	\N	\N	3075	3	8	0	0	\N	\N
1897	4	没有平时作业应该。只有隔几周有课堂讨论	2025-07-20 01:15:15.147954+00	\N	\N	155	3	9	0	0	\N	\N
1899	5	期末写案例然后展示就可以。小组完成	2025-07-20 01:15:15.164461+00	\N	\N	155	3	11	0	0	\N	\N
1900	5	说实话我个人感觉老师讲的很好，认真听的话真的收获蛮多，他的履历也很厉害。可能会有些让人觉得比较严格，但我感觉还好，最后平时分给分也还好。	2025-07-20 01:15:15.175994+00	\N	\N	85	3	12	0	0	\N	\N
1902	5	捞，mtf平时分蛮高的	2025-07-20 01:15:15.194037+00	\N	\N	733	3	5	0	0	\N	\N
1904	5	避大雷，平时分给分高但啥都学不会	2025-07-20 01:15:15.208476+00	\N	\N	3076	3	7	0	0	\N	\N
1905	5	平时分挺高的，做好自学的准备	2025-07-20 01:15:15.214936+00	\N	\N	3076	3	3	0	0	\N	\N
1906	5	给分巨高巨高巨高 讲的巨好！无脑冲！	2025-07-20 01:15:15.223528+00	\N	\N	185	3	8	0	0	\N	\N
1907	5	给分巨高巨高巨高 讲的巨好！无脑冲！	2025-07-20 01:15:15.23064+00	\N	\N	798	3	9	0	0	\N	\N
2482	4	上学期上过,老师人和给分挺不错的,但这学期听说要考试了	2024-06-13 04:00:00+00	\N	\N	1950	1	32	0	0	\N	\N
1908	4	给分我觉得就正常吧 她是按照你平时测验的成绩平均值给分的 讲课我觉得一般 而且主要他不给发ppt 笔记都很难做上 照下来又特别不整齐 反正我上课体验感一般	2025-07-20 01:15:15.236916+00	\N	\N	185	3	10	0	0	\N	\N
1909	5	上了半学期他的课了了，现在回复一下，这个老师要水平没水平，要分没分，脑回路还异常奇怪，奉劝各位，能换老师千万别选他的课	2025-07-20 01:15:15.245922+00	\N	\N	607	3	11	0	0	\N	\N
1910	5	平时分给的还可以回答一次或者两次课堂问题，然后小组课题认真做一做，还有就是他有时候会点名，我们当时平时分是99	2025-07-20 01:15:15.253615+00	\N	\N	607	3	12	0	0	\N	\N
1911	5	专业课老师 人很好 给分目前不清楚	2025-07-20 01:15:15.265124+00	\N	\N	1944	3	4	0	0	\N	\N
1913	4	老师讲课和解答是很认真的，但总体可能偏向于放养风格	2025-07-20 01:15:15.280903+00	\N	\N	647	3	6	0	0	\N	\N
1914	4	我们学院的导员，人超级超级好，有什么事和他沟通就好	2025-07-20 01:15:15.292294+00	\N	\N	2915	3	7	0	0	\N	\N
1915	4	上了他的军理感觉很有原则（不去要请假），但是比较温柔，	2025-07-20 01:15:15.300054+00	\N	\N	2915	3	3	0	0	\N	\N
1916	5	现在正在上老师的课 感觉老师人真的蛮好的嘞 也比较温柔	2025-07-20 01:15:15.308655+00	\N	\N	2214	3	8	0	0	\N	\N
1918	5	上了他的军理感觉很有原则（不去要请假），但是比较温柔，	2025-07-20 01:15:15.328806+00	\N	\N	958	3	10	0	0	\N	\N
1919	5	现在正在上老师的课 感觉老师人真的蛮好的嘞 也比较温柔	2025-07-20 01:15:15.340412+00	\N	\N	1862	3	11	0	0	\N	\N
1920	4	特别严节节课签到，运动时长要48小时，我看别的老师都不需要看运动时长的ŝ	2025-07-20 01:15:15.357311+00	\N	\N	2719	3	12	0	0	\N	\N
1921	4	c 不会留到课下 反正第一堂课的体验感还行然后第一堂课也只讲了一些lead in性质的内容🌝	2025-07-20 01:15:15.377515+00	\N	\N	2602	3	4	0	0	\N	\N
1922	4	还好吧，她会捞的，平时分差不多都90+	2025-07-20 01:15:15.39466+00	\N	\N	2042	3	5	0	0	\N	\N
1923	4	讲的一般，给分高，作业正常	2025-07-20 01:15:15.40536+00	\N	\N	2042	3	6	0	0	\N	\N
1924	5	我也是上她的课…有苦说不出	2025-07-20 01:15:15.415123+00	\N	\N	2042	3	7	0	0	\N	\N
1925	5	高超老师人挺好，但是上学期拖堂了很多次……	2025-07-20 01:15:15.429732+00	\N	\N	335	3	3	0	0	\N	\N
1927	4	打分低 事情多 讲的还行	2025-07-20 01:15:15.445046+00	\N	\N	2399	3	9	0	0	\N	\N
1928	4	高雪梅老师刀子嘴豆腐心，平时蛮负责任的，就是可能有点唠叨，平时分很高	2025-07-20 01:15:15.457769+00	\N	\N	2172	3	10	0	0	\N	\N
1930	5	很严厉，但是很负责任，平时有简单的小测，把她的作业都弄懂都会考的很好的	2025-07-20 01:15:15.477235+00	\N	\N	2172	3	12	0	0	\N	\N
1931	4	一点都不难 她有点虚张声势 督促大家复习 结果很简单很快就能写完…	2025-07-20 01:15:15.489598+00	\N	\N	2172	3	4	0	0	\N	\N
1932	5	高雪梅的高代好，老师会严格一些，但是分很高	2025-07-20 01:15:15.500244+00	\N	\N	203	3	5	0	0	\N	\N
1933	5	我觉得讲的挺清楚的，也比较耐心，但是论文好像比其他班多了一个答辩，不过也不麻烦	2025-07-20 01:15:15.515941+00	\N	\N	477	3	6	0	0	\N	\N
1935	5	老师人超级好！很温柔，考核不严格而且上课超级有趣！	2025-07-20 01:15:15.537675+00	\N	\N	12	3	3	0	0	\N	\N
1937	5	黄健老师好 上过他的会计学	2025-07-20 01:15:15.557811+00	\N	\N	1743	3	9	0	0	\N	\N
1938	4	黄健老师好 上过他的会计学	2025-07-20 01:15:15.565855+00	\N	\N	2771	3	10	0	0	\N	\N
1939	4	还行，轻松，50%平时，50%文献分析总结论文	2025-07-20 01:15:15.578414+00	\N	\N	1195	3	11	0	0	\N	\N
1940	4	温和有耐心，讲课我觉得挺清楚的，不清楚去问他他也很耐心地给你再讲一遍，之前期中听说帮我们捞了十多分，平时分90+	2025-07-20 01:15:15.593415+00	\N	\N	2134	3	12	0	0	\N	\N
1941	5	超级无敌巨好，考虑学生优先。，作业时间也给的长	2025-07-20 01:15:15.601546+00	\N	\N	2134	3	4	0	0	\N	\N
1942	4	人很好，给分超高，但是讲课有点快	2025-07-20 01:15:15.610613+00	\N	\N	2134	3	5	0	0	\N	\N
1943	4	黄老师出的卷子很简单的，而且他还会对分数进行调整你可以和他说讲的快了，他会把速度降下来的，真的很好的一个老师	2025-07-20 01:15:15.618553+00	\N	\N	2134	3	6	0	0	\N	\N
1945	4	石遇上了那这辈子经济学的大门永远向你关上了	2025-07-20 01:15:15.639953+00	\N	\N	46	3	3	0	0	\N	\N
1947	5	石讲课中规中矩吧说实话，感兴趣估计主要内容感兴趣，上法不是很有趣	2025-07-20 01:15:15.661957+00	\N	\N	46	3	9	0	0	\N	\N
1948	5	黄娟！！！人美心善给分高	2025-07-20 01:15:15.677247+00	\N	\N	1440	3	10	0	0	\N	\N
1949	5	老师人超级nice，给分也挺高的	2025-07-20 01:15:15.696874+00	\N	\N	3100	3	11	0	0	\N	\N
1951	5	hzh老师人超级无敌好 上课有趣且给分很友好，人也温柔！	2025-07-20 01:15:15.719271+00	\N	\N	1035	3	4	0	0	\N	\N
1952	5	hzh老师人超级无敌好 上课有趣且给分很友好，人也温柔！	2025-07-20 01:15:15.729813+00	\N	\N	1982	3	5	0	0	\N	\N
1953	5	分超高，挺有趣的上课但是会点名抽问，所以不适合逃课哦	2025-07-20 01:15:15.740811+00	\N	\N	2363	3	6	0	0	\N	\N
1954	4	老师人超级无敌好，上课有趣且给分很友好，给分不错  卡梅隆给分随便，聊聊天混熟	2025-07-20 01:15:15.759189+00	\N	\N	1040	3	7	0	0	\N	\N
1955	4	蛮认真负责的，但是每章都要考试，有点严，不过最后平时分还蛮高的	2025-07-20 01:15:15.771879+00	\N	\N	3072	3	3	0	0	\N	\N
1956	5	超好，你问她问题也很耐心	2025-07-20 01:15:15.783258+00	\N	\N	3072	3	8	0	0	\N	\N
1957	4	她应该就是事有点多，但是我觉得人挺好的，上的还不错，平时分给的也挺可以	2025-07-20 01:15:15.792551+00	\N	\N	181	3	9	0	0	\N	\N
1958	5	还好吧，不过每节课要签到，每一章有小测，但是对期末考试很有帮助，我期末就看着她的PPT复习的，考了将近九十，平时小测好好写不缺勤，平时分九十多	2025-07-20 01:15:15.800212+00	\N	\N	181	3	10	0	0	\N	\N
1959	5	蛮认真负责的，但是每章都要考试，有点严，不过最后平时分还蛮高的	2025-07-20 01:15:15.808871+00	\N	\N	181	3	11	0	0	\N	\N
1960	4	超好，你问她问题也很耐心	2025-07-20 01:15:15.817667+00	\N	\N	181	3	12	0	0	\N	\N
1961	5	她应该就是事有点多，但是我觉得人挺好的，上的还不错，平时分给的也挺可以	2025-07-20 01:15:15.826476+00	\N	\N	3072	3	4	0	0	\N	\N
1965	5	黄涛的都不能过，只能说其他老师更救不了	2025-07-20 01:15:15.867779+00	\N	\N	721	3	3	0	0	\N	\N
1966	4	老师人很好，很温柔给分也高	2025-07-20 01:15:15.882161+00	\N	\N	1023	3	8	0	0	\N	\N
1968	4	事非常少，分非常高，话说黄老师的课很抢手，不一定抢得到	2025-07-20 01:15:15.902697+00	\N	\N	1023	3	10	0	0	\N	\N
1969	5	作业其实每个老师量都差不多 但是黄羽老师要求特别松 作业就是几道题 然后除了期末论文全部都是可以用中文的	2025-07-20 01:15:15.912673+00	\N	\N	1023	3	11	0	0	\N	\N
1970	4	上学期选的hrx 感觉还可以	2025-07-20 01:15:15.934415+00	\N	\N	2487	3	12	0	0	\N	\N
1971	5	黄姐挺好的，给分也挺高	2025-07-20 01:15:15.951855+00	\N	\N	1346	3	4	0	0	\N	\N
1972	5	很有趣，专业课很厉害的。前几年国商院的微经都是载曦老师上	2025-07-20 01:15:15.969123+00	\N	\N	838	3	5	0	0	\N	\N
1973	4	很有趣，专业课很厉害的。前几年国商院的微经都是载曦老师上	2025-07-20 01:15:15.982382+00	\N	\N	337	3	6	0	0	\N	\N
1974	5	黄迟老师人好，上课还比较有趣的ĕ，不过之前上他的高数的时候，他往往会布置很多很多的作业，但是上一些比较难的课程的时候，他好像就不会布置作业。不知道公选课怎么样。如果你想真的学点东西的话，还是可以去考虑的。但是这方面的话就是人工智能了，多了解知识倒是可以，想学实用一点的那建议不考虑。	2025-07-20 01:15:16.007559+00	\N	\N	2515	3	7	0	0	\N	\N
1975	4	非常非常非常好！！！！事少分高	2025-07-20 01:15:16.027036+00	\N	\N	2106	3	3	0	0	\N	\N
1976	5	非常非常非常好！！！！事少分高	2025-07-20 01:15:16.036195+00	\N	\N	1695	3	8	0	0	\N	\N
1977	5	给我挺好的 老师人也很好！	2025-07-20 01:15:16.046658+00	\N	\N	1695	3	9	0	0	\N	\N
1978	4	不怎么样，考试难给分低	2025-07-20 01:15:16.081582+00	\N	\N	1020	3	10	0	0	\N	\N
1979	4	较少点名和回答，一次pre和一次书评，期末闭卷有准备就很高分没准备很低分	2025-07-20 01:15:16.094099+00	\N	\N	1026	3	11	0	0	\N	\N
1980	5	可以的 给分挺不错 老师讲课也可以 会讲故事 我挺喜欢\b	2025-07-20 01:15:16.109516+00	\N	\N	608	3	12	0	0	\N	\N
1981	4	平时分还行，但要求每人有一次课堂主动发言（类似于自愿回答问题那种）不发也可以，可以写在纸上交上去，但可能分会稍低，讲的课特别有趣，不拘泥于课本，会讲很多野史或者有趣的东西，我遇到为数不多的不会犯困的思政课老师	2025-07-20 01:15:16.128241+00	\N	\N	608	3	4	0	0	\N	\N
1982	5	单从体验感来说，老师讲的很好，很生动	2025-07-20 01:15:16.154051+00	\N	\N	608	3	5	0	0	\N	\N
2483	5	马奥！！！强推,每次都是提前说需不需要签到,我都没咋了好几节了都没事,事儿也少,期末一个论文就完了❤️	2024-06-13 04:00:00+00	\N	\N	1950	1	30	0	0	\N	\N
1964	4	听说黄昊老师打分很高，本专业很多人都选	2025-07-20 01:15:15.855372+00	\N	\N	2065	3	7	0	0	2025-08-08 13:01:05.230175+00	'专业':8 '人':10 '听说':1 '很':5 '很多':9 '打分':4 '本':7 '老师':3 '选':12 '都':11 '高':6 '黄昊':2
2484	4	第一节课听他说如果点名会提前通知的,极小概率会心血来潮不通知就点名	2024-06-13 04:00:00+00	\N	\N	1950	1	29	0	0	\N	\N
1987	5	课程内容：散打基础拳法、腿法\n\n上课自由度：比较轻松，有时会分成两组玩一会躲避球，老师人美心善\n\n考核标准：期末考试为自己编一套动作进行20s空击和打靶（一个人拿靶，另一个人打靶），考察动作标准程度\n\n授课质量：老师人很好，不会很累，上课在室内或者室内平台	2025-09-04 08:48:04.112251+00	4.5+	\N	2671	2	24	0	0	2025-09-04 08:48:04.112251+00	\N
1986	5	课程内容：学习基本语法知识（各种词性，从句，时态等）\n\n上课自由度：很轻松，几乎不点名（上学期只有五一前点过一次，不过不影响成绩）\n\n考核标准：平时无作业，期末成绩就是期中作文+期末作文的成绩（都是课下写，就是不要全AI）\n\n授课质量：老师人很幽默，讲的都是干活，想认真学也是可以学到一些东西的（需要每节课认真记笔记）	2025-09-04 08:31:12.448794+00	4.5+	\N	2605	2	24	0	0	2025-09-04 08:48:16.114018+00	\N
2485	4	很佛系的一个老师哈哈哈	2024-06-13 04:00:00+00	\N	\N	656	1	31	0	0	\N	\N
2486	3	两级分化比较严重,不知道该不该选了	2024-06-13 04:00:00+00	\N	\N	657	1	31	0	0	\N	\N
2487	5	事少人好给分高	2024-06-13 04:00:00+00	\N	\N	657	1	27	0	0	\N	\N
2488	4	人很温和,事少,有一个pre,期末是论文	2024-06-13 04:00:00+00	\N	\N	650	1	27	0	0	\N	\N
2489	5	事少,偶尔点名,人好	2024-06-12 04:00:00+00	\N	\N	650	1	33	0	0	\N	\N
2490	5	我感觉挺好哒	2024-06-13 04:00:00+00	\N	\N	1948	1	26	0	0	\N	\N
2491	4	很好的老师,一学期就点过一次名	2024-06-19 04:00:00+00	\N	\N	1947	1	30	0	0	\N	\N
2492	5	很好,超级好的老师,上过他的人工智能,特别好!课上有讨论的时候还会提前在群里说提醒大家到场	2024-06-11 04:00:00+00	\N	\N	1947	1	31	0	0	\N	\N
2493	3	会抽人回答问题,上次玩了一节课手机,最后还问了我的名字,据说给发也不行	2024-05-26 04:00:00+00	\N	\N	1973	1	27	0	0	\N	\N
2494	5	平时分基本都是靠自己赚,考勤签到作业、小测什么的,感觉挺好赚的,平时作业也很简单有些几分钟就可以做完,mo的平时分是92,但是期末不知道是不是统一改卷,期末翻译的卷面成绩挺低的,也可能是本mo比较菜吧😅	2024-06-15 04:00:00+00	\N	\N	1970	1	29	0	0	\N	\N
2495	3	没有作业事很少,上课是坐标签到,教的还可以,但每节课都会点名抽背短语😥	2024-06-15 04:00:00+00	\N	\N	1970	1	28	0	0	\N	\N
2496	4	商务翻译都没有pre,我觉得自己举手回答问题这种我还好点,至少因为社恐这部分的分我给可以直接不要,也没什么事,心理上不用煎熬。叶净老师那种我得时时刻刻听她讲到了哪里,关注她什么时候抽我,一颗心始终悬着我可太难受了	2024-06-15 04:00:00+00	\N	\N	1972	1	27	0	0	\N	\N
2497	4	就是她人很好教的很好啊,对社恐极其友好	2024-06-15 04:00:00+00	\N	\N	1972	1	30	0	0	\N	\N
2498	5	上课积极一点回答问题期末分就会巨高！！😳😳我朋友上学期九十多😳😳	2024-06-15 04:00:00+00	\N	\N	1972	1	26	0	0	\N	\N
2499	5	人巨好 可无脑冲	2024-06-15 04:00:00+00	\N	\N	1969	1	28	0	0	\N	\N
2500	5	特别特别好 我大一上选了他 大一下被踢了 结果大一下期末的时候他给同学们准备了明信片 甚至还有些是自己画的😭😭😭	2024-06-15 04:00:00+00	\N	\N	1969	1	26	0	0	\N	\N
2501	4	还行啊 主要是老师特别好 特别温柔的 结课还给大家送小礼物	2024-06-15 04:00:00+00	\N	\N	1969	1	33	0	0	\N	\N
2502	4	人特好	2024-06-07 04:00:00+00	\N	\N	1976	1	27	0	0	\N	\N
2503	4	孙林冲冲冲!	2024-06-12 04:00:00+00	\N	\N	1975	1	32	0	0	\N	\N
2504	4	分不高 小作业多 不过上课可以划水不会点人回答好喜欢老师！只要喜欢pre 最后94	2024-06-07 04:00:00+00	\N	\N	668	1	27	0	0	\N	\N
2505	5	几乎周周突击考,题型不说,题量不说,我们是期末写论文,字数不多,平时只有一个小组作业,很简单,没有pre,上课有好几次小测,不定期,建议好好做,请假都会过但是一定要请常做不完。	2024-06-07 04:00:00+00	\N	\N	668	1	32	0	0	\N	\N
2506	4	事情有点多,但是据我了解那个板块的事都多	2024-06-07 04:00:00+00	\N	\N	668	1	28	0	0	\N	\N
2507	5	她人挺好的,但是我们当时事情特别特别多每周都很多作业,期末考核有可能是小组讨论	2024-06-07 04:00:00+00	\N	\N	668	1	26	0	0	\N	\N
2508	5	人还不错,口音很正,平时分给的一般,小组讨论有点多哦😂😂😂	2024-06-14 04:00:00+00	\N	\N	1978	1	33	0	0	\N	\N
2509	5	车老师人很好,上过他的英语课🥰	2024-06-14 04:00:00+00	\N	\N	1978	1	27	0	0	\N	\N
2510	3	我上过她的听力,还可以,事蛮少的	2024-06-15 04:00:00+00	\N	\N	1980	1	31	0	0	\N	\N
2511	3	一点东西都学不到,事情还超级多,分数还给的很低,狠狠避雷这个老师	2024-06-07 04:00:00+00	\N	\N	1979	1	33	0	0	\N	\N
2512	4	人超级超级好,非常好,事少,而且期末总评95🤗🤗🤗	2024-06-15 04:00:00+00	\N	\N	692	1	30	0	0	\N	\N
2513	5	是的呢,讲得好人也很温柔,需要回答问题 但特别简单,放心冲！	2024-06-15 04:00:00+00	\N	\N	692	1	33	0	0	\N	\N
2514	4	前半学期不点名,让同学尽量坐固定的位置,凭印象给考勤分。后半学期按小组签到,好好学了期末能给也会尽量给的	2024-06-07 04:00:00+00	\N	\N	2013	1	30	0	0	\N	\N
2515	4	上课很有趣,性格很好	2024-06-07 04:00:00+00	\N	\N	2013	1	29	0	0	\N	\N
2516	5	很严厉,但是很负责任,平时有简单的小测,把她的作业都弄懂都会考的很好的	2024-06-12 04:00:00+00	\N	\N	2172	1	30	0	0	\N	\N
2517	3	高雪梅老师刀子嘴豆腐心,平时蛮负责任的,就是可能有点唠叨,平时分很高	2024-06-12 04:00:00+00	\N	\N	2172	1	32	0	0	\N	\N
2518	5	老师上课很严,一般不让玩手机,但是讲得很好👍,必须赞一个	2024-05-26 04:00:00+00	\N	\N	2172	1	27	0	0	\N	\N
2519	5	只上过一节课,但是感觉老师是很有知识的沉淀的,往期同学评价也不错	2024-05-26 04:00:00+00	\N	\N	2170	1	27	0	0	\N	\N
2520	4	老师人超级无敌好,上课有趣且给分很友好,给分不错 卡梅隆给分随便,聊天混熟	2024-06-13 04:00:00+00	\N	\N	1040	1	28	0	0	\N	\N
2521	5	人好	2024-06-13 04:00:00+00	\N	\N	2927	1	28	0	0	\N	\N
2522	4	挺好的	2024-06-13 04:00:00+00	\N	\N	926	1	27	0	0	\N	\N
2523	4	买尔丹给分高 但需要发言	2024-06-15 04:00:00+00	\N	\N	937	1	31	0	0	\N	\N
2524	3	统计类大课不要报	2024-06-13 04:00:00+00	\N	\N	810	1	27	0	0	\N	\N
2525	4	平时分一般,一定挑战性	2024-06-13 04:00:00+00	\N	\N	808	1	26	0	0	\N	\N
2526	3	讲清楚了,最基本的,我以为你们学了。老师水平高	2024-06-13 04:00:00+00	\N	\N	807	1	31	0	0	\N	\N
2527	5	人挺好,会捞人,上过她课平时分九十几	2024-06-14 04:00:00+00	\N	\N	1074	1	28	0	0	\N	\N
2528	3	很负责的老师,善解人意。	2024-05-26 04:00:00+00	\N	\N	1069	1	27	0	0	\N	\N
2529	3	快去选吧 美式男孩 很chill	2024-06-12 04:00:00+00	\N	\N	1048	1	29	0	0	\N	\N
2530	5	但讲的很好	2024-06-18 04:00:00+00	\N	\N	827	1	29	0	0	\N	\N
2531	3	他是真的完全不捞	2024-06-07 04:00:00+00	\N	\N	827	1	31	0	0	\N	\N
2532	3	神级老师,认真听感觉学到很多,老师很年轻很美,风趣幽默,实力很强,但可能不怎么教本科。给分上老师不太看平时,但给分正常	2024-05-26 04:00:00+00	\N	\N	828	1	32	0	0	\N	\N
2533	4	老师不来上课,小组展示一学期,三年来上过最水的课没有之一	2024-06-15 04:00:00+00	\N	\N	622	1	33	0	0	\N	\N
2534	4	上过他的大心理,挺好的	2024-06-08 04:00:00+00	\N	\N	467	1	32	0	0	\N	\N
2535	4	不多 只有一次小组展示 偶尔会提问(一般只找坐最后几排的人回答)结课有小礼物 给分还不知道	2024-06-03 04:00:00+00	\N	\N	939	1	30	0	0	\N	\N
2536	3	职规的秦怡老师平时事情少,从来不点名,给平时分高!	2024-06-03 04:00:00+00	\N	\N	939	1	26	0	0	\N	\N
2537	5	我去年上的他的课,好像没有点过名,也没有签过到,只是会有课堂小测	2024-06-13 04:00:00+00	\N	\N	2932	1	29	0	0	\N	\N
2538	4	我觉得还可以耶,平时分给的挺高的	2024-06-15 04:00:00+00	\N	\N	564	1	32	0	0	\N	\N
2539	4	袁上老师上课很有趣,期末画的重点很准	2024-05-25 04:00:00+00	\N	\N	1107	1	29	0	0	\N	\N
2540	5	上过yj老师的英语写作,平时分要靠自己赚,小测得分高、上课主动回答问题,平时分就会好看😋	2024-06-15 04:00:00+00	\N	\N	1046	1	30	0	0	\N	\N
2541	3	嗯......一言难尽 如果你非常想学好英语 且有信心每周小测能考高分 那就可以选	2024-06-15 04:00:00+00	\N	\N	1046	1	27	0	0	\N	\N
2542	4	yj老师事是比较多,但是如果你完成的好并且上课主动回答问题让她记住你了,分也就不会低😬	2024-06-15 04:00:00+00	\N	\N	1046	1	29	0	0	\N	\N
2543	4	没有呀 上过杨老师的综英三 给分很好啊	2024-06-15 04:00:00+00	\N	\N	1046	1	26	0	0	\N	\N
2544	4	他给分一直特别好！！李游特别好人特别好很努力的捞人哈哈哈	2024-06-14 04:00:00+00	\N	\N	552	1	29	0	0	\N	\N
2545	4	我去年上的他的课,好像没有点过名,也没有签过到,只是会有课堂小测	2024-06-14 04:00:00+00	\N	\N	552	1	31	0	0	\N	\N
2546	4	刘坤老师好的很	2024-06-15 04:00:00+00	\N	\N	554	1	27	0	0	\N	\N
2547	3	只要不考试就行,编舞无所谓	2024-06-15 04:00:00+00	\N	\N	1008	1	32	0	0	\N	\N
2548	5	其中两个老师一个老师上两节课,黄巍老师上课挺有意思,对学生也好。但是这个班打分似乎没有其他班高	2024-05-25 04:00:00+00	\N	\N	2903	1	29	0	0	\N	\N
2549	5	挺好的 老师人也好	2024-06-10 04:00:00+00	\N	\N	293	1	31	0	0	\N	\N
2550	3	冲hw就对了,选到就是赚到🥰🥰	2024-06-15 04:00:00+00	\N	\N	1525	1	33	0	0	\N	\N
2551	4	迪丽老师漂亮人好,开卷考试,反正平时分挺高	2024-06-13 04:00:00+00	\N	\N	547	1	28	0	0	\N	\N
2552	4	闭眼张亚秋	2024-06-15 04:00:00+00	\N	\N	562	1	32	0	0	\N	\N
2553	4	李老师人很好,也好说话推荐	2024-06-14 04:00:00+00	\N	\N	1648	1	26	0	0	\N	\N
2554	5	两位好老师,毛老师感觉人不错,王保老师作为金融学院的辅导员一直受大家喜爱。给分上这门课分数都不低	2024-05-26 04:00:00+00	\N	\N	2913	1	32	0	0	\N	\N
2555	3	分挺高的	2024-06-13 04:00:00+00	\N	\N	922	1	29	0	0	\N	\N
2556	3	和老师是新老师,上课就是吧啦吧啦一直低着头念,语调很平很催眠,考核方式全课题组统一	2024-06-11 04:00:00+00	\N	\N	106	1	28	0	0	\N	\N
2557	3	李楠他是一个很认真的人,只要你认真对待就行了	2024-06-11 04:00:00+00	\N	\N	1006	1	31	0	0	\N	\N
2558	3	老师上课讲的比较难懂,要做好课前预习的去听,但是课件做的特别好,可以辅助学习,期末捞人	2024-07-24 04:00:00+00	\N	\N	837	1	30	0	0	\N	\N
2559	1	上课讲的还可以,最后会给很高的平时分捞低分同学,然后给考的高的平时分打低,但是因为本mo是被平时分打低的,所以对老师的评价就会差一点	2024-06-18 04:00:00+00	\N	\N	1075	1	27	0	0	\N	\N
2560	4	法学院的张欣老师人美心善,但是这门课没上过,有幸上过老师的宪法学	2024-06-11 04:00:00+00	\N	\N	2894	1	27	0	0	\N	\N
2561	4	真的超爱,平时分好高	2024-06-11 04:00:00+00	\N	\N	693	1	26	0	0	\N	\N
2562	5	社会学强推刘婵老师！！！平时分给了我100	2024-06-11 04:00:00+00	\N	\N	693	1	28	0	0	\N	\N
2563	5	zyy！！！！特别特别好😠	2024-06-15 04:00:00+00	\N	\N	793	1	30	0	0	\N	\N
2564	3	平时分高	2024-06-11 04:00:00+00	\N	\N	2073	1	29	0	0	\N	\N
2565	4	王军超级好 没考试,王老师上课超有趣的	2024-06-15 04:00:00+00	\N	\N	2074	1	33	0	0	\N	\N
2566	5	zyy大美女大好人,超好	2024-06-15 04:00:00+00	\N	\N	793	1	27	0	0	\N	\N
2567	3	美女老师,讲课很有趣,看你听得认真会加分。有一次pre,可能有多次课上学习通互动🧐	2024-06-13 04:00:00+00	\N	\N	2096	1	30	0	0	\N	\N
2568	5	偶尔会点名,平时什么都可以和他聊,性格很好,而且还会分享一些有用的知识	2024-05-26 04:00:00+00	\N	\N	2095	1	27	0	0	\N	\N
2569	4	温和有耐心,讲课我觉得挺清楚的,不清楚去问他他也很耐心地给你再讲一遍,之前期中听说帮我们捞了十多分,平时分90+	2024-06-03 04:00:00+00	\N	\N	2134	1	32	0	0	\N	\N
2570	4	超级无敌巨好,考虑学生优先。,作业时间也给的长	2024-06-03 04:00:00+00	\N	\N	2134	1	30	0	0	\N	\N
2571	4	人很好,给分超高,但是讲课有点快	2024-06-03 04:00:00+00	\N	\N	2134	1	28	0	0	\N	\N
2572	5	黄老师出的卷子很简单的,而且他还会对分数进行调整你可以和他说讲的快了,他会把速度降下来,真的很好的一个老师	2024-06-03 04:00:00+00	\N	\N	2134	1	27	0	0	\N	\N
2573	5	超级推荐！！老师真的特别好,很幽默,笔记没有很多,但完全能听懂	2024-06-17 04:00:00+00	\N	\N	2132	1	31	0	0	\N	\N
2574	4	无脑选,讲课和教学态度特别好	2024-05-25 04:00:00+00	\N	\N	834	1	30	0	0	\N	\N
2575	4	不捞人 平时分不高 不怎么推荐	2024-06-14 04:00:00+00	\N	\N	2140	1	30	0	0	\N	\N
2576	5	非常好的一个老师！🧑‍🏫上课模式偏高中,会手把手树立思路写笔记,严谨风趣幽默！我们专业评价都蛮不错。期末平时分挺高而且给分稳定	2024-06-14 04:00:00+00	\N	\N	2138	1	26	0	0	\N	\N
2577	5	老师很好后面几乎都不签到不管了,偶尔回答问题都是按座位点,非常完美的一节大水课	2024-06-14 04:00:00+00	\N	\N	865	1	28	0	0	\N	\N
2578	5	讲的不错,给分可以	2024-06-11 04:00:00+00	\N	\N	2177	1	33	0	0	\N	\N
2579	4	hbs教的简直顶呱呱,稳稳的幸福,老师人也超级好	2024-06-12 04:00:00+00	\N	\N	2173	1	28	0	0	\N	\N
2580	5	都说韩老师讲得很好(可能我菜吧,也听不太懂呢)但我觉得是温柔刀哈😂,	2024-05-26 04:00:00+00	\N	\N	2173	1	29	0	0	\N	\N
2581	4	yws不点名,平时作业也要求期末考试前完成,人还是很温柔很幽默的,但是讲课很快	2024-06-03 04:00:00+00	\N	\N	2176	1	30	0	0	\N	\N
2582	4	杨文昇老师人很温柔讲得蛮全面的,但是节奏很快,很看个人学习能力	2024-06-03 04:00:00+00	\N	\N	2176	1	29	0	0	\N	\N
2583	4	他讲课逻辑很清晰,比较爱写板书,手稿超级详细,	2024-06-12 04:00:00+00	\N	\N	2178	1	28	0	0	\N	\N
2584	4	挺好的 老师人非常好🌹	2024-06-15 04:00:00+00	\N	\N	2726	1	33	0	0	\N	\N
2585	5	老师讲课很好,英语2/3,中文1/3	2024-05-26 04:00:00+00	\N	\N	1042	1	30	0	0	\N	\N
2586	3	较少点名和回答,一次pre和一次书评,期末闭卷有准备就很高分没准备很低分	2024-06-12 04:00:00+00	\N	\N	1026	1	28	0	0	\N	\N
2587	4	给分高 老师很好 但是很社恐的不太建议 因为会单独表演小节目的	2024-06-11 04:00:00+00	\N	\N	1012	1	28	0	0	\N	\N
2588	5	我们这学期就上的这个,就是编现代舞三分钟,三次汇报和一次期末汇报。第一次一分钟,第二次两分钟,第三次三分钟,最后期末再跳一遍。对于不太会跳舞的人就是很麻烦。李龙老师挺好的,人帅假好请	2024-06-12 04:00:00+00	\N	\N	1006	1	32	0	0	\N	\N
2589	4	老师格局大	2024-05-26 04:00:00+00	\N	\N	2916	1	27	0	0	\N	\N
2590	4	考试一般考选择	2024-06-15 04:00:00+00	\N	\N	865	1	29	0	0	\N	\N
2591	5	李星霓老师挺好的😋😋	2024-06-15 04:00:00+00	\N	\N	865	1	26	0	0	\N	\N
2592	4	特别好 爱他	2024-06-15 04:00:00+00	\N	\N	829	1	30	0	0	\N	\N
2593	5	老实人挺好的,平时分你多和他交流一下会高点	2024-06-15 04:00:00+00	\N	\N	794	1	28	0	0	\N	\N
2594	4	PPT为主	2024-05-26 04:00:00+00	\N	\N	789	1	30	0	0	\N	\N
2595	5	陈斌你真的是世界上最好的老师,他期末很能捞,感觉我上学期的大计基卷面分给我捞了快一倍	2024-06-10 04:00:00+00	\N	\N	492	1	27	0	0	\N	\N
2596	5	他真的很好 给分也很好,我大一的时候上的他的大计基真的超级好	2024-06-10 04:00:00+00	\N	\N	492	1	31	0	0	\N	\N
2772	4	老师人超级无敌好,上课有趣且给分很友好,给分不错 卡梅隆给分随便,聊天混熟	2024-06-13 04:00:00+00	\N	\N	1982	1	29	0	0	\N	\N
2597	4	老师上课讲的很好,幽默风趣,不点名。分数构成是三次作业各占10%,期末考占70%,但给分很严,且没有点名之类的平时分 对于平时听的很认真的同学不算很友好。是本mo分最低的一科😭	2024-07-24 04:00:00+00	\N	\N	2201	1	26	0	0	\N	\N
2598	3	选崔雅岚 但是事情很多 另一个老师不知道怎么样😅	2024-06-13 04:00:00+00	\N	\N	2212	1	27	0	0	\N	\N
2599	3	mww老师喜欢让人回答问题加分	2024-06-13 04:00:00+00	\N	\N	2241	1	33	0	0	\N	\N
2600	4	王慧只是教的不好,人蛮好的	2024-06-11 04:00:00+00	\N	\N	2250	1	26	0	0	\N	\N
2601	3	李楠他是一个很认真的人,只要你认真对待就行了	2024-06-11 04:00:00+00	\N	\N	2226	1	31	0	0	\N	\N
2602	4	他是我们党支部负责人 感觉不犯事他还挺和蔼 要是破坏了什么规矩很严厉	2024-07-18 04:00:00+00	\N	\N	2246	1	26	0	0	\N	\N
2603	5	上过这个老师的形策 人特别好	2024-06-12 04:00:00+00	\N	\N	2245	1	33	0	0	\N	\N
2604	5	刘坤老师真的巨好😙😙😙很有趣😙😙还想上他的课😚😚😚	2024-06-15 04:00:00+00	\N	\N	2230	1	33	0	0	\N	\N
2605	4	老师的水平很高。很渊博,全球视野野观,将实事与课程结合。给学生很多受益的地方。	2024-05-26 04:00:00+00	\N	\N	2230	1	29	0	0	\N	\N
2606	5	驼铃老师挺好的,也不点名也不强制要求回答问题	2024-06-13 04:00:00+00	\N	\N	2239	1	28	0	0	\N	\N
2607	4	好!给分高(我90+) 教的也好人也有趣	2024-06-08 04:00:00+00	\N	\N	2232	1	27	0	0	\N	\N
2608	4	挺好的,不怎么提问 印象中老师人很好🐿	2024-06-14 04:00:00+00	\N	\N	2257	1	28	0	0	\N	\N
2609	4	形策随便选老师啦,一学期就上四节,每节课一篇小论文,期末也没考试	2024-06-10 04:00:00+00	\N	\N	2225	1	26	0	0	\N	\N
2610	4	好老师🐥 温温柔柔也没有硬性签到	2024-06-14 04:00:00+00	\N	\N	2218	1	28	0	0	\N	\N
2611	5	hrx挺好的	2024-06-12 04:00:00+00	\N	\N	2218	1	26	0	0	\N	\N
2612	4	特别温柔的老师	2024-06-10 04:00:00+00	\N	\N	2253	1	28	0	0	\N	\N
2613	5	人好,给分好	2024-06-12 04:00:00+00	\N	\N	2263	1	29	0	0	\N	\N
2614	4	特别好	2024-06-13 04:00:00+00	\N	\N	2262	1	27	0	0	\N	\N
2615	3	这学期上的zyy的 zyy挺漂亮的 上课会抽人回答问题	2024-06-13 04:00:00+00	\N	\N	2262	1	26	0	0	\N	\N
2616	5	人很好啊 上课啥都不用做。mo这学期一共就去过一次 也不点到。我作业交错了他tmd就让我加他qq重新发给他就好了	2024-06-13 04:00:00+00	\N	\N	2254	1	30	0	0	\N	\N
2617	4	卢周一星老师人也很好	2024-06-14 04:00:00+00	\N	\N	2234	1	28	0	0	\N	\N
2618	4	我只上过她的形策 感觉老师很好 但大职规不清楚🤗	2024-06-14 04:00:00+00	\N	\N	2234	1	27	0	0	\N	\N
2619	5	不错的,就是作业最好不要全篇ai,他看得出来	2024-06-12 04:00:00+00	\N	\N	2255	1	32	0	0	\N	\N
2620	5	事少,给分高,幽默	2024-06-15 04:00:00+00	\N	\N	2233	1	26	0	0	\N	\N
2621	4	帅气的刘老师!🌹🌹	2024-05-26 04:00:00+00	\N	\N	2233	1	29	0	0	\N	\N
2622	5	人挺好的	2024-06-13 04:00:00+00	\N	\N	2224	1	30	0	0	\N	\N
2623	4	hw人很好	2024-06-15 04:00:00+00	\N	\N	2219	1	28	0	0	\N	\N
2624	4	上了他的军理感觉很有原则(不去要去请假),但是比较温柔,	2024-06-12 04:00:00+00	\N	\N	2214	1	29	0	0	\N	\N
2625	4	我们学院的导员,人超级超级好,有什么事和他沟通就好	2024-06-12 04:00:00+00	\N	\N	2214	1	30	0	0	\N	\N
2626	5	杨老师对个人素质要求挺高,你要做好上课随时被抽回答问题的准备,平时作业是写作还有阅读理解,定期考听力,2次quiz,但是她讲得很好,期末考试是写作加句子排序	2024-06-11 04:00:00+00	\N	\N	998	1	26	0	0	\N	\N
2627	3	zw真的很轻松,无脑冲,无小组作业无小测,只有期中期末两篇paper。难抢,已经爆满了。	2024-06-08 04:00:00+00	\N	\N	2337	1	30	0	0	\N	\N
2628	4	刚开始的一两节课对社恐人士是有点不太友好哈哈哈哈哈哈,老师会随机抽问一些问题然后让自我介绍的,不过后面的课就纯跳舞了,不用社交了。	2024-06-12 04:00:00+00	\N	\N	1006	1	30	0	0	\N	\N
2629	4	开始几节课是鉴赏和教一些基础的编舞,后面组队自己编舞每节课跳一遍老师提意见,考核是论文➕跳舞	2024-06-15 04:00:00+00	\N	\N	1008	1	30	0	0	\N	\N
2630	3	屁事儿巨巨巨多...	2024-06-15 04:00:00+00	\N	\N	1008	1	28	0	0	\N	\N
2631	3	赵娟人挺好的,平时很轻松但是她考试会更难	2024-06-03 04:00:00+00	\N	\N	2350	1	30	0	0	\N	\N
2632	3	赵娟给分一般80出头,一个pre,期中期末考	2024-06-03 04:00:00+00	\N	\N	2350	1	31	0	0	\N	\N
2633	2	不怎么样,考试难给分低	2024-06-12 04:00:00+00	\N	\N	1026	1	29	0	0	\N	\N
2634	4	如果上课积极的话分就高,然后每学期一次pre,还有一般课前会有quiz,不过有时候他忘带纸了或者其他情况就不写	2024-06-14 04:00:00+00	\N	\N	2358	1	33	0	0	\N	\N
2635	4	给分挺低的,事确实还可以,看你了	2024-06-14 04:00:00+00	\N	\N	2357	1	29	0	0	\N	\N
2636	5	老师上课以英语为2/3,中文1/3。上课特别有趣,老师人很好!	2024-05-26 04:00:00+00	\N	\N	1042	1	32	0	0	\N	\N
2637	3	我记得以前就是分小组阅读一本英语原著,然后做PPT展示😂这课挺麻烦的,还要看慕课啥的,期末一般考书上的原题,就是不知道现在怎么样	2024-06-15 04:00:00+00	\N	\N	2368	1	31	0	0	\N	\N
2638	4	真的很温柔,英文授课,本momo上完之后口语进步了好多😋	2024-06-15 04:00:00+00	\N	\N	2368	1	26	0	0	\N	\N
2639	4	还行	2024-06-14 04:00:00+00	\N	\N	2371	1	31	0	0	\N	\N
2640	4	王老师讲课非常有趣,枯燥的知识也能进行非常生动的讲解。在课间还会给我们放音乐放松什么的😴😴平时作业量也不大。期末的平时分给得很高,只要完成每次作业不缺勤那拿到的平时分就还蛮高的。	2024-05-25 04:00:00+00	\N	\N	1077	1	27	0	0	\N	\N
2641	4	崔老师会捞的 你只要课都去然后论文好好写 她平时分给很高的	2024-06-11 04:00:00+00	\N	\N	1092	1	32	0	0	\N	\N
2642	3	给分蛮高的,划重点那些也很给力	2024-06-15 04:00:00+00	\N	\N	2398	1	28	0	0	\N	\N
2643	4	分不错,事多,每节课抽点名回答问题,有pre,论文	2024-06-15 04:00:00+00	\N	\N	2398	1	30	0	0	\N	\N
2644	3	会划重点,押题比较准	2024-06-13 04:00:00+00	\N	\N	1099	1	29	0	0	\N	\N
2645	4	真的很高了😭,老师上课也很负责认真,他会点人回答	2024-06-15 04:00:00+00	\N	\N	1101	1	26	0	0	\N	\N
2646	4	黄老师就是喜欢往后走罢了,讲的很卖力是真的	2024-06-15 04:00:00+00	\N	\N	1101	1	29	0	0	\N	\N
2647	5	挺好的吧 平时分90➕	2024-06-03 04:00:00+00	\N	\N	1107	1	30	0	0	\N	\N
2648	4	廖老师人很好的,教的也很好,也不会故意卡分	2024-06-10 04:00:00+00	\N	\N	2419	1	32	0	0	\N	\N
2649	4	语速贼快,而且不完全按书讲,勾书的时候找半天找不到她说的那句话在哪儿	2024-06-11 04:00:00+00	\N	\N	2420	1	32	0	0	\N	\N
2650	3	老师人超好，温柔漂亮课讲的也挺好，不过小组作业有点难度，我们当时是销售商品然后用英文介绍。	2024-05-25 16:00:00+00	\N	\N	1426	1	32	0	0	\N	\N
2651	5	事情比较多，不过如果认真完成而且做得不错的话平时分还挺好的	2024-09-15 16:00:00+00	\N	\N	1431	1	29	0	0	\N	\N
2652	3	yj老师事是比较多，但是如果你完成的并且上课主动回答问题让她记住你了，分也分就不会低	2024-08-04 16:00:00+00	\N	\N	1431	1	26	0	0	\N	\N
2653	4	李老师温柔的大美女，选她选她，事少分高	2024-08-14 16:00:00+00	\N	\N	1428	1	32	0	0	\N	\N
2654	4	平时分：五次回答问题➕两次测试➕小组展示😤需要主动回答问题	2024-06-19 16:00:00+00	\N	\N	1428	1	29	0	0	\N	\N
2655	4	想学东西就选汪平老师！！教的真的很好，英语水平肉眼可见提升	2024-08-28 16:00:00+00	\N	\N	1430	1	26	0	0	\N	\N
2656	5	汪老师人真的好好呀，她打分特别高	2024-05-09 16:00:00+00	\N	\N	1430	1	28	0	0	\N	\N
2657	5	超级好，平时会有一次演讲然后会有小测试，期末是考试	2024-10-21 16:00:00+00	\N	\N	1425	1	28	0	0	\N	\N
2658	5	敖老师！！！可以是温和耐心的妈妈，也可以是幽默风趣的朋友！！！上课特别特别认真，如果想好好学习，想学到东西就一定要选她！！！分数的活，我算是挺认真的两个学期的平时分都超过95。不过选了她就不要抱怨她布置作业、小测和pre略，老师是真的为学生好！	2024-12-10 16:00:00+00	\N	\N	1425	1	32	0	0	\N	\N
2659	5	敖玉兰，她真的巨温柔巨好，只要你认真学多回答问题她就会给你平时分接近打满。虽然上她的课会有一点点累，但是学到的东西完全值得，会带着你做六级题练口语练雅思写作，真的人特别好，谁不选她我会哭死	2024-11-27 16:00:00+00	\N	\N	1425	1	31	0	0	\N	\N
2660	5	敖玉兰老师人特别好，不仅上课认真负责，课后有问题问她她也特别热心回答，特别好的一个老师，给分也很高会捞	2024-04-24 16:00:00+00	\N	\N	1425	1	29	0	0	\N	\N
2661	3	上过敖老师的英语精读，只要按时交作业上课的给分就很高，老师人也比较温柔有趣	2024-02-23 16:00:00+00	\N	\N	1425	1	30	0	0	\N	\N
2662	3	小测考单独考词汇的都是选择，但是后面有几个短语的汉译英	2024-07-24 16:00:00+00	\N	\N	1427	1	31	0	0	\N	\N
2663	4	momo是上的胡莎老师的英语精读，她讲的干货挺多的，认真学习会有收获	2024-02-14 16:00:00+00	\N	\N	1427	1	30	0	0	\N	\N
2664	3	胡莎老师很公正 属于很认真对学生的那种 真的在大学里挺少见的	2024-08-21 16:00:00+00	\N	\N	1427	1	27	0	0	\N	\N
2665	5	上过她的英语精读，老师人很好的，而且事情作业也也很少	2024-03-05 16:00:00+00	\N	\N	1427	1	33	0	0	\N	\N
2666	4	英语阅读两个学期都选胡莎，两个学期都上9⃣️	2024-01-11 16:00:00+00	\N	\N	1427	1	28	0	0	\N	\N
2667	5	老师人特别好，讲课也很好，会记得每一个学生	2024-05-14 16:00:00+00	\N	\N	1427	1	26	0	0	\N	\N
2668	3	还行吧，就是事儿挺多的，个人感觉	2024-10-13 16:00:00+00	\N	\N	98	1	33	0	0	\N	\N
2669	3	她居然也能上心理课...	2024-05-23 16:00:00+00	\N	\N	98	1	30	0	0	\N	\N
2670	3	大心理都是开卷考啊 平时事情也不多 很有意思	2024-09-22 16:00:00+00	\N	\N	1525	1	32	0	0	\N	\N
2671	4	hw！！！！超级无敌搞笑！！人很好	2024-06-19 16:00:00+00	\N	\N	1525	1	31	0	0	\N	\N
2672	4	我听不懂 靠自学	2024-06-13 16:00:00+00	\N	\N	1488	1	28	0	0	\N	\N
2673	5	很OK 推荐	2024-06-11 16:00:00+00	\N	\N	1489	1	31	0	0	\N	\N
2674	3	事是真的多，平时作业啥的都不讲清楚，上课也很尬	2024-09-17 16:00:00+00	\N	\N	1527	1	27	0	0	\N	\N
2675	4	老师很有趣，给分和表现很挂钩，需要发言什么的	2024-11-22 16:00:00+00	\N	\N	1548	1	33	0	0	\N	\N
2676	4	王芳事有点多，给分还可以	2024-01-27 16:00:00+00	\N	\N	136	1	29	0	0	\N	\N
2677	3	有意思，但活动多，社恐不建议😂	2024-09-05 16:00:00+00	\N	\N	101	1	32	0	0	\N	\N
2678	3	很有意思的老师 但是每节课会花式点名 有可能	2024-03-14 16:00:00+00	\N	\N	101	1	29	0	0	\N	\N
2679	5	挺好的	2024-12-18 16:00:00+00	\N	\N	131	1	33	0	0	\N	\N
2680	4	老师上课会强调不许玩手机，给分还行。	2024-02-01 16:00:00+00	\N	\N	95	1	30	0	0	\N	\N
2681	4	郑老师人很好，会有一两次小作业，都是课上完成，最后给分很高	2024-08-07 16:00:00+00	\N	\N	111	1	33	0	0	\N	\N
2682	4	老师不是很严 完成正常教学作业就行	2024-07-01 16:00:00+00	\N	\N	145	1	28	0	0	\N	\N
2683	4	反正他大职规不严	2024-03-15 16:00:00+00	\N	\N	145	1	27	0	0	\N	\N
2684	3	狠狠壁垒大职规徐淼，事多 分超低	2024-09-04 16:00:00+00	\N	\N	144	1	30	0	0	\N	\N
2685	3	不多 只有一次小组展示 偶尔会提问(一般只找坐最后几排的人回答) 结课有小礼物 给分还不知道	2024-02-20 16:00:00+00	\N	\N	133	1	31	0	0	\N	\N
2686	4	一般是自己举手回答 实在没人才会抽 抽人概率不是很高 给分的话只要你好好完成任务不会很差	2024-11-18 16:00:00+00	\N	\N	124	1	32	0	0	\N	\N
2687	4	人很好嘟 美女老师 就是上课活动有点多	2024-08-12 16:00:00+00	\N	\N	124	1	33	0	0	\N	\N
2688	4	刘老师特别帅！🥰上课花样多，很开心，氛围好，会考虑学生的情绪。实用性的技能也很多的。	2024-01-05 16:00:00+00	\N	\N	1545	1	27	0	0	\N	\N
2689	3	刘坤老师事少分还高🥰	2024-03-04 16:00:00+00	\N	\N	137	1	31	0	0	\N	\N
2690	5	我是她这学期课代表，反正人很好也没那么多事	2024-11-20 16:00:00+00	\N	\N	117	1	30	0	0	\N	\N
2691	3	有趣，但点名比较频繁感觉每节课都点，可能有两次pre	2024-08-18 16:00:00+00	\N	\N	1546	1	30	0	0	\N	\N
2692	5	老师人很好，只是课程本身事情比较多，但不用考试	2024-07-28 16:00:00+00	\N	\N	279	1	26	0	0	\N	\N
2693	4	他不抽或者说很少，这才是最恐怖的，因为他要你主动上去发言_不然给你70来平时分，当然，发言了的可能也不高，不发更低	2024-06-17 16:00:00+00	\N	\N	244	1	26	0	0	\N	\N
2694	2	戴薇老师的风格就是：很认真，包括讲解答疑都很全面细致，认真听作业认真做这门课很简单，平时分构成就是平时作业➕期中考试 她平时作业发在学习通上（作业不难，但我个人觉得她批的有些严了）不知道最后给分怎么样，但是整体来说这个老师很温柔，讲解也很到位。	2024-06-02 16:00:00+00	\N	\N	393	1	32	0	0	\N	\N
2695	4	好，真好，推荐，平时分给很高，而且课堂也很融洽，没作业，就是一学期三次考试，考试是在课上进行的，而且这学期时间不够，有一次就当成作业做了，无论你考得好考得差的话，只要你上课签名到了，期末的平时分老师都会捞的，给的高。上课。会给你讲重难点，我这次考试的一道计算题，他就特别着重的讲了，当时他在班上讲完了，后面还专门图片发到了群里，然后就复习了他讲的那三张图片，那道题期末就考到了，很不错的年轻老师	2024-12-07 16:00:00+00	\N	\N	394	1	27	0	0	\N	\N
2696	4	挺好的，会有课堂考勤，期中论文，但是老师人很好，很热心的一个老师，有问必答	2024-05-18 16:00:00+00	\N	\N	1696	1	26	0	0	\N	\N
2697	4	邹老师是教授，会带着讲一下中级的东西	2024-12-04 16:00:00+00	\N	\N	1708	1	31	0	0	\N	\N
2698	3	老师讲课内容很丰富，资历很深，对学生很有耐心	2024-01-19 16:00:00+00	\N	\N	1708	1	32	0	0	\N	\N
2699	4	平时分按四五次作业外加一次学习通开卷期中考试，一次小组作业 拿分全凭本事 但是作业找不到答案 AI也不是很靠谱...	2024-04-01 16:00:00+00	\N	\N	1707	1	29	0	0	\N	\N
2700	5	不点名无课后作业，上课氛围特别好，老师特别温柔英式口音巨巨巨标准，会有两到三次谈判模拟但是基本都是打打草稿说两句就好了，不会有太大要求，最重要的是期末无考试！！！只用交一份谈判方案就好（要求啥的全都很详细的给出来，可以用ai梳理思路，了解谈判流程就能写）	2024-09-04 16:00:00+00	\N	\N	1682	1	29	0	0	\N	\N
2701	3	我上的会计学 老师人美心善	2024-09-07 16:00:00+00	\N	\N	1735	1	28	0	0	\N	\N
2702	5	杨奕楠讲得很好	2024-08-06 16:00:00+00	\N	\N	1735	1	29	0	0	\N	\N
2703	4	上过杨的，老师讲得很细致，有时候会给放一些当下金融方面的热点视频，体感还不错	2024-02-05 16:00:00+00	\N	\N	1735	1	27	0	0	\N	\N
2704	5	他会捞人！她超好！！我上学期平时分98.5🦉🦉	2024-03-25 16:00:00+00	\N	\N	1735	1	31	0	0	\N	\N
2705	2	本人觉得讲的不是很能理解 有点难受且有期中考还挺难😩	2024-08-31 16:00:00+00	\N	\N	409	1	29	0	0	\N	\N
2706	5	分高事少，讲课很好	2024-12-17 16:00:00+00	\N	\N	1727	1	27	0	0	\N	\N
2707	5	貌似没有点名，她人很好	2024-12-10 16:00:00+00	\N	\N	1727	1	26	0	0	\N	\N
2708	3	华晨长得帅，但讲的中规中矩，给分还可以可以	2024-08-05 16:00:00+00	\N	\N	1730	1	28	0	0	\N	\N
2709	4	很好的老师 没有期中考 不点名 要求低 讲得好	2024-01-01 16:00:00+00	\N	\N	1728	1	26	0	0	\N	\N
2710	5	杨老师很好的，他平时分还好啊，没回答问题的话期末还有个写小论文加分的机会，觉得自己平时分够了也可以不写	2024-06-11 16:00:00+00	\N	\N	1704	1	27	0	0	\N	\N
2711	4	上课很开心，考试就哭了。如果你自学能力很强可以选，上课听他讲故事也开心，考试也考的好	2024-10-26 16:00:00+00	\N	\N	1704	1	32	0	0	\N	\N
2712	3	他就是上课讲故事，和考试不怎么挂钩，所以你做不来题，考试很痛苦	2024-11-20 16:00:00+00	\N	\N	1704	1	29	0	0	\N	\N
2713	4	栾老师讲课速度略快，需要专心听才跟得上，课下解答问题特别认真，老师人也很好；黄老师讲课通俗易懂，下课也很负责。两位老师给分高，两次点名	2024-09-17 16:00:00+00	\N	\N	1699	1	33	0	0	\N	\N
2714	5	个人觉得还不错，我那个时候没有期中，也几乎没有作业，还46开。老师人挺好，上课是全板书，不会点名。	2024-05-20 16:00:00+00	\N	\N	1706	1	30	0	0	\N	\N
2715	4	强推！真的很不错！！	2024-07-05 16:00:00+00	\N	\N	1706	1	26	0	0	\N	\N
2716	1	杨海洋老师会做pre 自己平时6期末4（和其他所有老师应该都不一样）所以一般不会挂 但平时分给的不高 冲高分的别选 捞个及格的	2024-03-11 16:00:00+00	\N	\N	1706	1	28	0	0	\N	\N
2717	4	她这学期教概念论，讲课特别无聊，我根本听不懂，但不知道给分怎么样	2024-08-02 16:00:00+00	\N	\N	1787	1	27	0	0	\N	\N
2718	4	人很好	2024-05-10 16:00:00+00	\N	\N	547	1	26	0	0	\N	\N
2719	5	曹老师很棒！给分特别好！上她的课你真的能掌握一些会计的知识！	2024-07-28 16:00:00+00	\N	\N	1741	1	27	0	0	\N	\N
2720	4	给分一般	2024-01-29 16:00:00+00	\N	\N	1742	1	26	0	0	\N	\N
2721	4	非常好！给分高基本不点名	2024-09-27 16:00:00+00	\N	\N	1745	1	32	0	0	\N	\N
2722	3	其实我觉得她也没那么不好，我个人是可以接受的，就是有时候上课点人回答问题让我心惊胆颤	2024-11-23 16:00:00+00	\N	\N	1744	1	29	0	0	\N	\N
2723	3	我记得她会按照名单抽人回答问题，大概每节课两三个这样子	2024-02-19 16:00:00+00	\N	\N	1733	1	28	0	0	\N	\N
2724	3	讲的可以吧，给分也还行，很负责的	2024-02-10 16:00:00+00	\N	\N	1733	1	32	0	0	\N	\N
2725	4	的确很认真负责，但我们当时大多数人都觉得她讲的不太好😂😂😂平时分也普遍比较低	2024-06-17 16:00:00+00	\N	\N	1733	1	30	0	0	\N	\N
2726	4	金老师平时分很高......讲课没那么好......但是很细	2024-10-06 16:00:00+00	\N	\N	1731	1	32	0	0	\N	\N
2727	5	超级好的 平时分100/99	2024-12-29 16:00:00+00	\N	\N	1731	1	28	0	0	\N	\N
2728	3	如果是那个黄老师的话，平时分拉满，回答问题特别耐心，开头还会和**呼：xx同学，讲课特别幽默，我个人很喜欢他！🥰🥰	2024-06-13 16:00:00+00	\N	\N	1743	1	27	0	0	\N	\N
2729	4	xx同学晚上好～这样	2024-10-28 16:00:00+00	\N	\N	1743	1	33	0	0	\N	\N
2773	3	Cameron大一时候的口语老师,很帅的,圣诞节还会发奥利奥	2024-06-14 04:00:00+00	\N	\N	2357	1	28	0	0	\N	\N
2774	3	Cameron大一时候的口语老师,很帅的,圣诞节还会发奥利奥	2024-06-14 04:00:00+00	\N	\N	1030	1	27	0	0	\N	\N
2775	3	Cameron大一时候的口语老师,很帅的,圣诞节还会发奥利奥	2024-06-14 04:00:00+00	\N	\N	1033	1	26	0	0	\N	\N
2776	3	Cameron大一时候的口语老师,很帅的,圣诞节还会发奥利奥	2024-06-14 04:00:00+00	\N	\N	2359	1	27	0	0	\N	\N
2777	4	挺好的	2024-06-13 04:00:00+00	\N	\N	2218	1	31	0	0	\N	\N
2778	4	挺好的	2024-06-13 04:00:00+00	\N	\N	2951	1	28	0	0	\N	\N
2779	5	买尔丹给分高 但需要发言	2024-06-15 04:00:00+00	\N	\N	2968	1	26	0	0	\N	\N
2780	4	我上过他的课,他会捞人,知道这一点对你们来说就够了	2024-06-12 04:00:00+00	\N	\N	210	1	33	0	0	\N	\N
2781	5	阳丹老师人挺好的	2024-06-15 04:00:00+00	\N	\N	1038	1	27	0	0	\N	\N
2782	4	很好,上课积极分数就高,会抽人回答问题,pre 展示,不会有随机个人演讲的	2024-06-14 04:00:00+00	\N	\N	2358	1	29	0	0	\N	\N
2783	5	很好,上课积极分数就高,会抽人回答问题,pre 展示,不会有随机个人演讲的	2024-06-14 04:00:00+00	\N	\N	1031	1	26	0	0	\N	\N
2784	4	如果上课积极的话分就高,然后每学期一次pre,还有一般课前会有quiz,不过有时候他忘带纸了或者其他情况就不写	2024-06-14 04:00:00+00	\N	\N	1031	1	29	0	0	\N	\N
2785	4	喜欢余老师讲课 简洁精练 思路很清晰 人很好👍 助教也很负责	2024-06-07 04:00:00+00	\N	\N	228	1	28	0	0	\N	\N
2786	4	喜欢余老师讲课 简洁精练 思路很清晰 人很好👍 助教也很负责	2024-06-07 04:00:00+00	\N	\N	1596	1	28	0	0	\N	\N
2730	2	课程难。选择,判断,补充代码填空题,然后就是大题例如给前序中序,写出后序遍历序列或者是哈弗曼编码	2024-06-14 04:00:00+00	\N	\N	2027	1	33	0	0	\N	\N
2787	5	上过他的高数2,我觉得讲的很好	2024-06-13 04:00:00+00	\N	\N	736	1	30	0	0	\N	\N
2788	4	如果你平时表现不错的话会捞的	2024-06-13 04:00:00+00	\N	\N	736	1	31	0	0	\N	\N
2789	5	听说话讲的好,给分不清楚	2024-05-26 04:00:00+00	\N	\N	227	1	33	0	0	\N	\N
2790	5	听说话讲的好,给分不清楚	2024-05-26 04:00:00+00	\N	\N	1593	1	31	0	0	\N	\N
2791	4	老师很温柔,讲课很清晰,而且会发课件到群里	2024-05-25 04:00:00+00	\N	\N	227	1	31	0	0	\N	\N
2792	3	老师很温柔,讲课很清晰,而且会发课件到群里	2024-05-25 04:00:00+00	\N	\N	1593	1	26	0	0	\N	\N
2793	4	lsl老师是我的神,讲课超细致,超幽默🤗🤗🤗	2024-05-26 04:00:00+00	\N	\N	217	1	33	0	0	\N	\N
2794	3	分挺高的	2024-06-13 04:00:00+00	\N	\N	2213	1	31	0	0	\N	\N
2795	4	分挺高的	2024-06-13 04:00:00+00	\N	\N	2962	1	27	0	0	\N	\N
2796	4	蒲洋老师讲课真的特别清晰,但点名且比较严;王锐老师讲课没有蒲洋老师那么好,但也不差,不点名,会捞人	2024-07-24 04:00:00+00	\N	\N	3240	1	26	0	0	\N	\N
2797	3	蒲洋老师讲课真的特别清晰,但点名且比较严;王锐老师讲课没有蒲洋老师那么好,但也不差,不点名,会捞人	2024-07-24 04:00:00+00	\N	\N	1587	1	30	0	0	\N	\N
2798	4	上过叶,讲得很好,人也很好,分也不错!	2024-06-15 04:00:00+00	\N	\N	1177	1	30	0	0	\N	\N
2799	5	事少分高人也特别好 上课是我喜欢的不讲废话的那种 也会和你开玩笑 有问必答 能指出我的问题 上课不点名 我没选上汪老师的课她还安慰我😭	2024-06-15 04:00:00+00	\N	\N	1173	1	27	0	0	\N	\N
2800	4	我是马老师班的,这学期上的综合英语3。她就第一次课抽了问,而且还是自己主动回答,后面没抽过问了。平时课堂上的作业提交即可,她都会给满分。反正我是真的喜欢马老师😤有一次课堂作业我没交(在玩手机),我课后找她,她直接又发了一个作业,我什么都不用做,提交就可以了,来把我没交的分直接那次补上😙😙	2024-06-15 04:00:00+00	\N	\N	1171	1	31	0	0	\N	\N
2801	1	综英三别选	2024-06-15 04:00:00+00	\N	\N	1171	1	33	0	0	\N	\N
2802	5	人超级好,事少给分多,快冲	2024-06-15 04:00:00+00	\N	\N	1170	1	26	0	0	\N	\N
2803	5	她给分很公平公正的 想要高分需要自己努力哦 但人很负责 教的很好 很温柔	2024-06-15 04:00:00+00	\N	\N	1162	1	31	0	0	\N	\N
2804	5	她给分很公平公正的 想要高分需要自己努力哦 但人很负责 教的很好 很温柔	2024-06-15 04:00:00+00	\N	\N	2453	1	29	0	0	\N	\N
2805	4	她给分很公平公正的 想要高分需要自己努力哦 但人很负责 教的很好 很温柔	2024-06-15 04:00:00+00	\N	\N	1169	1	33	0	0	\N	\N
2806	3	老师很负责,关注我们的考试	2024-05-26 04:00:00+00	\N	\N	1162	1	32	0	0	\N	\N
2807	3	老师很负责,关注我们的考试	2024-05-26 04:00:00+00	\N	\N	2453	1	33	0	0	\N	\N
2808	3	老师很负责,关注我们的考试	2024-05-26 04:00:00+00	\N	\N	1169	1	31	0	0	\N	\N
2809	5	值得推荐	2024-05-25 04:00:00+00	\N	\N	1168	1	31	0	0	\N	\N
2810	4	老师点名不多,而且评分会微微捞人,还会给大家分享自己摄影的明信片	2024-05-25 04:00:00+00	\N	\N	1168	1	30	0	0	\N	\N
2811	4	老师特别好！平时分高。小测考课本上做过的题,还有她发那些短语	2024-06-15 04:00:00+00	\N	\N	1167	1	30	0	0	\N	\N
2812	5	上过她的综英 人挺好的 给分也不错	2024-06-15 04:00:00+00	\N	\N	1167	1	27	0	0	\N	\N
2813	4	黄jh老师挺好的,作业不算多吧,预复习背单词什么的可能比较费时间	2024-06-15 04:00:00+00	\N	\N	1167	1	33	0	0	\N	\N
2814	4	胡莎老师人好 事情少 给分高。胡莎老师的课上一阵就适应了😤而且她还是主要用中文上课 不要给自己太大心理压力 老师很好的,你去两三次课她就能准确记住你名字并且称呼你了,期末给分也很好 真的是伟大 无需多言	2024-06-15 04:00:00+00	\N	\N	1166	1	30	0	0	\N	\N
2815	5	胡莎老师人很好的！！！(本人还不舍得她去教阅读 想继续选她的课来着)讲的很好 人也很温柔 有小测 有作业 但是做不做都无所谓	2024-06-15 04:00:00+00	\N	\N	1166	1	33	0	0	\N	\N
2816	5	人好,给分好,就是小测有点多	2024-06-15 04:00:00+00	\N	\N	1166	1	27	0	0	\N	\N
2731	4	哈哈哈哈人幽默而且会使劲捞你,偶尔上课提问	2024-06-13 04:00:00+00	\N	\N	2053	1	28	0	0	\N	\N
2732	4	转,特别好,我上学期就听的他他的数分,听他上课很舒服,老师人也很好	2024-06-13 04:00:00+00	\N	\N	2053	1	33	0	0	\N	\N
2733	5	drl讲的一般但给分好	2024-06-13 04:00:00+00	\N	\N	2053	1	30	0	0	\N	\N
2734	4	老师讲的特别详细,会写很多板书,个人很喜欢她的风格,有点像高中的老师,很细心也有点小啰嗦也比较严厉,给分还不错,也会捞人,朋友有被捞上去的🥳🥳	2024-06-17 04:00:00+00	\N	\N	735	1	27	0	0	\N	\N
2735	5	老师讲的特别详细,会写很多板书,个人很喜欢她的风格,有点像高中的老师,很细心也有点小啰嗦也比较严厉,给分还不错,也会捞人,朋友有被捞上去的🥳🥳	2024-06-17 04:00:00+00	\N	\N	2052	1	30	0	0	\N	\N
2736	4	还行 就是有一次大的小组展示 然后课堂小组活动 平时分的很细	2024-06-15 04:00:00+00	\N	\N	1162	1	26	0	0	\N	\N
2737	4	还行 就是有一次大的小组展示 然后课堂小组活动 平时分的很细	2024-06-15 04:00:00+00	\N	\N	2453	1	30	0	0	\N	\N
2738	3	还行 就是有一次大的小组展示 然后课堂小组活动 平时分的很细	2024-06-15 04:00:00+00	\N	\N	1169	1	27	0	0	\N	\N
2739	5	老师很负责,英语考试都会提前给我们预热。会有阶段性小测,课堂气氛好🫶	2024-05-26 04:00:00+00	\N	\N	1162	1	30	0	0	\N	\N
2740	5	老师很负责,英语考试都会提前给我们预热。会有阶段性小测,课堂气氛好🫶	2024-05-26 04:00:00+00	\N	\N	2453	1	28	0	0	\N	\N
2741	4	老师很负责,英语考试都会提前给我们预热。会有阶段性小测,课堂气氛好🫶	2024-05-26 04:00:00+00	\N	\N	1169	1	29	0	0	\N	\N
2742	4	老师人特别好，讲课特别清晰，基本上跟着上课考试就没什么问题，平时答疑啥的都很认真，期末捞人更是不用说，平时分不用愁，选上dbb你就乐吧	2024-02-16 16:00:00+00	\N	\N	201	1	30	0	0	\N	\N
2743	4	老师人特别好，讲课特别清晰，基本上跟着上课考试就没什么问题，平时答疑啥的都很认真，期末捞人更是不用说，平时分不用愁，选上dbb你就乐吧	2024-03-02 16:00:00+00	\N	\N	1570	1	26	0	0	\N	\N
2744	3	平时接近满分	2024-08-18 16:00:00+00	\N	\N	228	1	33	0	0	\N	\N
2745	3	平时接近满分	2024-12-17 16:00:00+00	\N	\N	1596	1	33	0	0	\N	\N
2746	5	老师人很好，很负责	2024-10-10 16:00:00+00	\N	\N	228	1	27	0	0	\N	\N
2747	4	老师人很好，很负责	2024-05-01 16:00:00+00	\N	\N	1596	1	31	0	0	\N	\N
2748	4	王老师讲课思路清晰，方法总结很到位，看着面相好像很严肃，但实际很和蔼可亲🥰比较推荐	2024-05-11 16:00:00+00	\N	\N	1589	1	27	0	0	\N	\N
2749	4	王老师讲课思路特别清晰，板书也很明了，对做数学笔记非常有帮助。在每上完一章节之后会给大家进行章节总结。总之是一个很负责讲得也特别好的老师🤗🤗推荐推荐🌹🌹	2024-04-12 16:00:00+00	\N	\N	1589	1	31	0	0	\N	\N
2750	4	会尽量捞到及格	2024-05-04 16:00:00+00	\N	\N	218	1	33	0	0	\N	\N
2751	4	会尽量捞到及格	2024-11-25 16:00:00+00	\N	\N	1582	1	33	0	0	\N	\N
2752	3	李老师，讲的挺好的，会讲习题，上课还会分享日常，就是平时分要求上黑板写三次才能拿满，一次不去就只有60（课堂表现部分哈），会给很多机会，题也不难的	2024-10-09 16:00:00+00	\N	\N	218	1	31	0	0	\N	\N
2753	4	李老师，讲的挺好的，会讲习题，上课还会分享日常，就是平时分要求上黑板写三次才能拿满，一次不去就只有60（课堂表现部分哈），会给很多机会，题也不难的	2024-04-20 16:00:00+00	\N	\N	1582	1	27	0	0	\N	\N
2754	5	会捞人的！王老师人超好😭	2024-02-04 16:00:00+00	\N	\N	223	1	30	0	0	\N	\N
2755	5	会捞人的！王老师人超好😭	2024-03-20 16:00:00+00	\N	\N	1588	1	32	0	0	\N	\N
2756	5	老师很好	2024-12-01 16:00:00+00	\N	\N	223	1	31	0	0	\N	\N
2757	5	老师很好	2024-11-09 16:00:00+00	\N	\N	1588	1	31	0	0	\N	\N
2758	4	老师很好转：老师很好	2024-06-23 16:00:00+00	\N	\N	223	1	28	0	0	\N	\N
2759	5	老师很好转：老师很好	2024-06-26 16:00:00+00	\N	\N	1588	1	33	0	0	\N	\N
2760	4	英子姐很可爱人很好！上课很负责滴！人好分高海底捞	2024-05-31 16:00:00+00	\N	\N	216	1	30	0	0	\N	\N
2761	4	英子姐很可爱人很好！上课很负责滴！人好分高海底捞	2024-12-20 16:00:00+00	\N	\N	1579	1	30	0	0	\N	\N
2762	4	上过lfy其他课，人巨好!!!讲课也很好!!!	2024-09-06 16:00:00+00	\N	\N	216	1	31	0	0	\N	\N
2763	4	上过lfy其他课，人巨好!!!讲课也很好!!!	2024-02-29 16:00:00+00	\N	\N	1579	1	26	0	0	\N	\N
2764	3	给分很OK，平时分甚至会会打满	2024-04-16 16:00:00+00	\N	\N	216	1	29	0	0	\N	\N
2765	4	给分很OK，平时分甚至会会打满	2024-10-30 16:00:00+00	\N	\N	1579	1	33	0	0	\N	\N
2766	5	老师人很好，还会给我们讲保研之类的消息，平时分不会低于期末分，无脑冲！	2024-03-18 16:00:00+00	\N	\N	1583	1	32	0	0	\N	\N
2767	5	会捞，而且期末考的相对好的话，平时成绩会给你拉满	2024-10-20 16:00:00+00	\N	\N	229	1	27	0	0	\N	\N
2768	5	老师讲的很详细 也有ppt很温柔给分也还好🌹	2024-08-22 16:00:00+00	\N	\N	219	1	31	0	0	\N	\N
2769	4	老师讲的很详细 也有ppt很温柔给分也还好🌹	2024-04-17 16:00:00+00	\N	\N	1584	1	26	0	0	\N	\N
2770	5	挺好的	2024-12-24 16:00:00+00	\N	\N	446	1	29	0	0	\N	\N
2771	5	挺好的	2024-02-03 16:00:00+00	\N	\N	1766	1	33	0	0	\N	\N
2817	4	苟老师超级温柔,给分也很好。虽然每次上课都会抽人回答问题但是真的不用太担心回答得不好什么的,因为就算回答得不太好她也会一直给你鼓励,情绪价值拉满😘😘	2024-05-25 04:00:00+00	\N	\N	1164	1	26	0	0	\N	\N
2818	4	她上课感觉很多时候都是在分享国外的经历还有国外的风俗习惯,我感觉学不到太多东西	2024-06-15 04:00:00+00	\N	\N	1162	1	29	0	0	\N	\N
2819	3	她上课感觉很多时候都是在分享国外的经历还有国外的风俗习惯,我感觉学不到太多东西	2024-06-15 04:00:00+00	\N	\N	2453	1	31	0	0	\N	\N
2820	4	她上课感觉很多时候都是在分享国外的经历还有国外的风俗习惯,我感觉学不到太多东西	2024-06-15 04:00:00+00	\N	\N	1169	1	26	0	0	\N	\N
2821	3	事情很多挂倒不会,就是平时有很多小测,查考勤也比较严,	2024-06-15 04:00:00+00	\N	\N	1162	1	27	0	0	\N	\N
2822	3	事情很多挂倒不会,就是平时有很多小测,查考勤也比较严,	2024-06-15 04:00:00+00	\N	\N	2453	1	27	0	0	\N	\N
2823	4	事情很多挂倒不会,就是平时有很多小测,查考勤也比较严,	2024-06-15 04:00:00+00	\N	\N	1169	1	30	0	0	\N	\N
2824	4	这学期的综3选的她的课,会学到很多东西,而且组织有关四级的小组作业,大家一起找资料,帮助备考四级,感觉挺好的	2024-06-15 04:00:00+00	\N	\N	1172	1	29	0	0	\N	\N
2825	3	老师讲题很细致	2024-05-26 04:00:00+00	\N	\N	223	1	33	0	0	\N	\N
2826	3	老师讲题很细致	2024-05-26 04:00:00+00	\N	\N	1588	1	26	0	0	\N	\N
2827	5	老师人好,认真就给分,平时期末五五开	2024-05-26 04:00:00+00	\N	\N	223	1	29	0	0	\N	\N
2828	4	老师人好,认真就给分,平时期末五五开	2024-05-26 04:00:00+00	\N	\N	1588	1	27	0	0	\N	\N
2829	4	人很好很负责 讲课有点口音	2024-06-15 04:00:00+00	\N	\N	216	1	26	0	0	\N	\N
2830	4	人很好很负责 讲课有点口音	2024-06-15 04:00:00+00	\N	\N	1579	1	31	0	0	\N	\N
2831	5	很负责任!超级好！！！真的！！！很好很好	2024-06-15 04:00:00+00	\N	\N	216	1	28	0	0	\N	\N
2832	4	很负责任!超级好！！！真的！！！很好很好	2024-06-15 04:00:00+00	\N	\N	1579	1	32	0	0	\N	\N
2833	4	给分很OK,平时分甚至会打满	2024-05-28 04:00:00+00	\N	\N	216	1	27	0	0	\N	\N
2834	4	给分很OK,平时分甚至会打满	2024-05-28 04:00:00+00	\N	\N	1579	1	28	0	0	\N	\N
2836	5	很好很温柔的老师，讲课认真，不水，属于事少分高的那一类老师，很关心学生	2025-09-05 07:36:08.190439+00	\N	\N	2095	2	34	0	0	2025-09-05 07:36:08.190439+00	\N
2837	4	老师人不错，期末会给很多次机会考试，平时分挺高，不怎么点名，但是对于考核要求比较严格，水平一般的很难拿高分。	2025-09-05 07:38:20.464448+00	\N	\N	2665	2	34	0	0	2025-09-05 07:38:20.464448+00	\N
2838	4	一学期三次点名，两次平时作业，上课比较严肃，对于小组作业的要求比较高，但感觉老师并没有论坛里说的那么可怕，认真完成了任务和认真对待期末论文的话，分数还是挺高的	2025-09-05 07:40:50.6409+00	\N	\N	655	2	34	0	0	2025-09-05 07:40:50.6409+00	\N
2835	3	上课不怎么管学生，偶尔点次名，每次课后布置的作业稍微有点多，上课会分享日常，不无聊，老师讲得还行，主要是在带着学生讲题练题。但是严格按照各板块标准来打平时分，几乎不捞人，小测考的一般的平时分也不会高。	2025-09-05 07:33:56.370393+00	\N	\N	1582	2	34	0	0	2025-09-05 07:44:35.506694+00	'一般':50 '上课':1,17 '不':21 '不会':55 '不怎么':3 '不捞':45 '严格':35 '主要':26 '也':54 '人':46 '会':18 '但是':34 '作业':13 '偶尔':6 '几乎':44 '分':43,53 '分享':19 '各':37 '名':8 '在':28 '多':16 '学生':5,31 '小测':47 '布置':11 '带':29 '平时':42,52 '怎么':2 '打':41 '按照':36 '无聊':22 '日常':20 '是':27 '有点':15 '来':40 '板块':38 '标准':39 '每次':9 '点次':7 '的':12,49,51 '着':30 '稍微':14 '管':4 '练题':33 '老师':23 '考':48 '讲得':24 '讲题':32 '课后':10 '还行':25 '高':56
2839	3	小心背刺你	2025-09-07 13:03:52.030388+00	\N	\N	1526	2	36	0	0	2025-09-07 13:03:52.030388+00	\N
\.


--
-- Data for Name: jcourse_api_reviewreaction; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.jcourse_api_reviewreaction (id, reaction, review_id, user_id, modified_at) FROM stdin;
\.


--
-- Data for Name: jcourse_api_reviewrevision; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.jcourse_api_reviewrevision (id, rating, comment, created_at, score, course_id, review_id, semester_id, user_id) FROM stdin;
1	4	听说黄昊老师打分很高，本专业很多人都选	2025-08-08 13:00:59.113473+00	\N	2065	1964	3	1
2	4	听说黄昊老师打分很高，本专业很多人都	2025-08-08 13:01:05.230175+00	\N	2065	1964	3	1
3	5	课程内容：学习基本语法知识（各种词性，从句，时态等）\n\n上课自由度：很轻松，几乎不点名（上学期只有五一前点过一次，不过不影响成绩）\n\n考核标准：平时无作业，期末成绩就是期中作文+期末作文的成绩（都是课下写，就是不要全AI）\n\n授课质量：老师人很幽默，讲的都是干活，想认真学也是可以学到一些东西的（需要每节课认真记笔记）	2025-09-04 08:48:16.114018+00	4.0+	2605	1986	2	24
4	3	课程内容：主要在讲题练题\n\n上课自由度：好\n\n考核标准：严格按照学校统一的各板块占比来打平时分\n\n授课质量：讲得挺好的	2025-09-05 07:44:35.506694+00	\N	1582	2835	2	34
\.


--
-- Data for Name: jcourse_api_teacherevaluation; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.jcourse_api_teacherevaluation (id, evaluation_content, data_sources, evaluation_count, source_data, created_at, updated_at, teacher_id) FROM stdin;
\.


--
-- Data for Name: jcourse_api_teammember; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.jcourse_api_teammember (id, name, role, description, avatar, github, email, "order", is_active, created_at, class_name, qq, wechat) FROM stdin;
2	司昌倩	开发者	项目筹备\r\n项目推广				2	t	2025-08-08 12:20:00+00	24级国家经济学拔尖学生培养基地班		
5	刘霁杭	运营者	项目推广				5	t	2025-08-08 12:36:00+00	24级国家经济学拔尖学生培养基地班		
4	吴静文	运营者	校园财务对接\r\n项目推广				4	t	2025-08-08 12:34:00+00	24级国家经济学拔尖学生培养基地班		
3	王利香	推广者	项目推广				3	t	2025-08-08 12:33:00+00	24级国家经济学拔尖学生培养基地班		
1	邹思瑞	开发者	项目筹备\r\n网站编程\r\n校园对接	team_avatars/6e7a2b677dcab52b57e702c157d0b73a_compressed.jpg	harry51888	harrycn@88.com	1	t	2025-08-08 12:05:00+00	24级国家经济学拔尖学生培养基地班	1061304257	harry051030
\.


--
-- Data for Name: jcourse_api_userpoint; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.jcourse_api_userpoint (id, value, description, "time", user_id) FROM stdin;
\.


--
-- Data for Name: jcourse_api_visitorstatistics; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.jcourse_api_visitorstatistics (id, visit_date, ip_address, country, region, city, user_agent, created_at) FROM stdin;
1	2025-09-04	218.89.242.20	China	Sichuan	Xichang	Mozilla/5.0 (Linux; Android 12; PLR-AL00 Build/HUAWEIPLR-AL00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/121.0.6167.71 MQQBrowser/6.2 TBS/047907 Mobile Safari/537.36 V1_AND_SQ_9.2.10_11310_YYB_D QQ/9.2.10.29175 NetType/WIFI WebP/0.3.0 AppId/537309841 Pixel/1316 StatusBarHeight/138 SimpleUISwitch/0 QQTheme/1000 StudyMode/0 CurrentMode/0 CurrentFontScale/0.87 GlobalDensityScale/0.99529403 AllowLandscape/false InMagicWin/0	2025-09-04 04:07:43.712528+00
2	2025-09-04	192.168.1.100	中国	四川省	成都市	Test Browser	2025-09-04 04:07:57.333268+00
3	2025-09-04	192.168.1.101	中国	北京市	北京市	Test Browser	2025-09-04 04:07:57.337005+00
4	2025-09-04	192.168.1.102	美国	加利福尼亚州	洛杉矶	Test Browser	2025-09-04 04:07:57.339994+00
5	2025-09-04	192.168.1.103	中国	广东省	深圳市	Test Browser	2025-09-04 04:07:57.345356+00
6	2025-09-04	192.168.1.104	日本	东京都	东京	Test Browser	2025-09-04 04:07:57.348618+00
7	2025-09-04	117.176.152.165	China	Sichuan	Chengdu	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Safari/605.1.15	2025-09-04 04:09:01.636368+00
8	2025-09-04	120.244.0.215	China	Beijing	Beijing	Mozilla/5.0 (Linux; Android 15; V2241HA Build/AP3A.240905.015.A2; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/121.0.6167.71 MQQBrowser/6.2 TBS/047907 Mobile Safari/537.36 V1_AND_SQ_9.2.10_11310_YYB_D QQ/9.2.10.29175 NetType/WIFI WebP/0.3.0 AppId/537309840 Pixel/1080 StatusBarHeight/114 SimpleUISwitch/0 QQTheme/1000 StudyMode/0 CurrentMode/0 CurrentFontScale/1.0 GlobalDensityScale/0.90000004 AllowLandscape/false InMagicWin/0	2025-09-04 05:11:11.350486+00
9	2025-09-04	221.194.171.226	China	Hebei	Shijiazhuang	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36	2025-09-04 07:19:14.308258+00
10	2025-09-04	116.208.194.240	China	Hubei	Shizishan	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0	2025-09-04 07:31:20.316765+00
11	2025-09-04	183.222.15.64	China	Sichuan	Chengdu	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0	2025-09-04 08:17:23.7882+00
12	2025-09-05	218.89.242.230	China	Sichuan	Xichang	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0	2025-09-05 05:02:02.900037+00
13	2025-09-05	39.144.137.31	China	Sichuan	Chengdu	Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1	2025-09-05 06:18:15.636609+00
14	2025-09-05	113.246.115.81	China	Hunan	Changsha	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 QuarkPC/4.2.5.446	2025-09-05 06:18:18.750593+00
15	2025-09-05	183.222.15.99	China	Sichuan	Chengdu	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0	2025-09-05 06:25:12.396342+00
16	2025-09-05	218.89.242.207	China	Sichuan	Xichang	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Safari/605.1.15	2025-09-05 06:56:03.577674+00
17	2025-09-05	39.144.137.72	China	Sichuan	Chengdu	Mozilla/5.0 (Linux; Android 15; V2430A Build/AP3A.240905.015.A2_V000L1; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/121.0.6167.71 MQQBrowser/6.2 TBS/047907 Mobile Safari/537.36 V1_AND_SQ_9.2.10_11310_YYB_D QQ/9.2.10.29175 NetType/4G WebP/0.3.0 AppId/537309840 Pixel/1260 StatusBarHeight/148 SimpleUISwitch/0 QQTheme/1000 StudyMode/0 CurrentMode/0 CurrentFontScale/1.0 GlobalDensityScale/0.90000004 AllowLandscape/false InMagicWin/0	2025-09-05 06:59:59.643522+00
18	2025-09-05	218.89.242.153	China	Sichuan	Xichang	Mozilla/5.0 (iPhone; CPU iPhone OS 18_6_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Mobile/15E148 Safari/604.1	2025-09-05 07:56:00.901672+00
20	2025-09-05	183.222.15.39	China	Sichuan	Chengdu	Mozilla/5.0 (iPhone; CPU iPhone OS 14_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1 Mobile/15E148 Safari/604.1	2025-09-05 08:02:33.916041+00
21	2025-09-05	111.55.101.224	China	Hunan	Shaoyang	Mozilla/5.0 (Linux; Android 12; ADY-AL00 Build/HUAWEIADY-AL00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/97.0.4692.98 Mobile Safari/537.36 T7/15.25 BDOS/1.0 (HarmonyOS 3.0.0) SP-engine/3.51.0 bd_dvt/0 baiduboxapp/15.27.0.11 (Baidu; P1 12) NABar/1.0	2025-09-05 11:11:58.1417+00
22	2025-09-05	223.104.205.35	China	Shaanxi	Xi'an	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0	2025-09-05 11:26:49.555661+00
23	2025-09-05	116.208.194.240	China	Hubei	Shizishan	Mozilla/5.0 (Linux; Android 12; HarmonyOS; EBG-AN10; HMSCore 6.15.0.332) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.5735.196 HuaweiBrowser/15.0.10.302 Mobile Safari/537.36	2025-09-05 13:29:57.052732+00
24	2025-09-05	125.211.121.79	China	Heilongjiang	Harbin	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0	2025-09-05 15:28:42.185386+00
25	2025-09-07	218.89.242.157	China	Sichuan	Xichang	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 QuarkPC/4.3.7.490	2025-09-07 10:59:50.642322+00
26	2025-09-07	183.222.15.43	China	Sichuan	Chengdu	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Safari/605.1.15	2025-09-07 12:58:40.696527+00
27	2025-09-08	218.89.242.152	China	Sichuan	Xichang	Mozilla/5.0 (Linux; Android 10; ELE-AL00 Build/HUAWEIELE-AL00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/121.0.6167.71 MQQBrowser/6.2 TBS/047907 Mobile Safari/537.36 V1_AND_SQ_9.2.10_11310_YYB_D QQ/9.2.10.29175 NetType/WIFI WebP/0.3.0 AppId/537309841 Pixel/1080 StatusBarHeight/75 SimpleUISwitch/0 QQTheme/1103 StudyMode/0 CurrentMode/0 CurrentFontScale/1.0 GlobalDensityScale/0.90000004 AllowLandscape/false InMagicWin/0	2025-09-08 02:57:35.566321+00
28	2025-09-08	183.222.15.94	China	Sichuan	Chengdu	Mozilla/5.0 (Linux; Android 15; PHV110 Build/AP3A.240617.008; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/121.0.6167.71 MQQBrowser/6.2 TBS/047907 Mobile Safari/537.36 V1_AND_SQ_9.1.91_10298_YYB_D QQ/9.1.91.26645 NetType/WIFI WebP/0.3.0 AppId/537294924 Pixel/1240 StatusBarHeight/140 SimpleUISwitch/0 QQTheme/1103 StudyMode/0 CurrentMode/0 CurrentFontScale/1.0 GlobalDensityScale/0.88571423 AllowLandscape/false InMagicWin/0	2025-09-08 03:51:12.925564+00
29	2025-09-08	183.222.15.101	China	Sichuan	Chengdu	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0	2025-09-08 04:08:04.796109+00
30	2025-09-08	183.222.15.73	China	Sichuan	Chengdu	Mozilla/5.0 (Linux; Android 14; REA-AN00 Build/HONORREA-AN00;) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/97.0.4692.98 Mobile Safari/537.36 T7/13.38 SP-engine/2.76.0 languageType/0 bdh_dvt/0 bdh_de/1 bdh_ds/1 bdapp/1.0 (bdhonorbrowser; bdhonorbrowser) bdhonorbrowser/9.3.0.3 (P1 14) NABar/1.0	2025-09-08 04:24:07.319728+00
31	2025-09-08	218.89.242.41	China	Sichuan	Xichang	Mozilla/5.0 (iPhone; CPU iPhone OS 18_6_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Mobile/15E148 Safari/604.1	2025-09-08 04:38:09.048931+00
33	2025-09-08	183.222.15.63	China	Sichuan	Chengdu	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0	2025-09-08 04:50:52.143458+00
34	2025-09-08	202.115.112.210	China	Beijing	Haidian	Mozilla/5.0 (iPhone; CPU iPhone OS 18_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Mobile/15E148 Safari/604.1	2025-09-08 05:02:37.342557+00
35	2025-09-08	202.115.112.201	China	Beijing	Haidian	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0	2025-09-08 05:03:56.228072+00
37	2025-09-09	183.222.15.64	China	Sichuan	Chengdu	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 SLBrowser/9.0.6.8151 SLBChan/105 SLBVPV/64-bit	2025-09-09 03:39:16.942932+00
38	2025-09-09	183.222.15.183	China	Sichuan	Chengdu	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0	2025-09-09 08:38:27.213137+00
39	2025-09-09	116.169.71.34	China	Sichuan	Chengdu	Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1	2025-09-09 13:42:20.586847+00
42	2025-09-10	218.89.242.211	China	Sichuan	Xichang	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.5735.196 Safari/537.36	2025-09-10 09:03:34.651543+00
43	2025-09-10	183.222.15.72	China	Sichuan	Chengdu	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.5735.196 Safari/537.36	2025-09-10 13:49:14.041736+00
44	2025-09-10	171.219.164.170	China	Sichuan	Chengdu	Mozilla/5.0 (iPhone; CPU iPhone OS 18_6_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Mobile/15E148 Safari/604.1	2025-09-10 14:53:18.025462+00
45	2025-09-11	116.169.4.75	China	Sichuan	Chengdu	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0	2025-09-11 14:10:58.337107+00
46	2025-09-11	171.218.181.203	China	Sichuan	Chengdu	Mozilla/5.0 (iPhone; CPU iPhone OS 18_6_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Mobile/15E148 Safari/604.1	2025-09-11 14:42:57.995264+00
47	2025-09-12	183.222.15.104	China	Sichuan	Chengdu	Mozilla/5.0 (Linux; Android 12; ADA-AL00 Build/HUAWEIADA-AL00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/138.0.7204.180 Mobile Safari/537.36 XWEB/1380159 MMWEBSDK/20250802 MMWEBID/5161 MicroMessenger/8.0.62.2900(0x28003E59) WeChat/arm64 Weixin NetType/WIFI Language/zh_CN ABI/arm64	2025-09-12 02:14:12.196483+00
48	2025-09-12	171.219.206.33	China	Sichuan	Chengdu	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0	2025-09-12 03:32:38.446946+00
51	2025-09-16	171.219.184.168	China	Sichuan	Chengdu	Mozilla/5.0 (Linux; Android 15; PJZ110 Build/AP3A.240617.008; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/121.0.6167.71 MQQBrowser/6.2 TBS/047907 Mobile Safari/537.36 V1_AND_SQ_9.2.10_11310_YYB_D QQ/9.2.10.29175 NetType/4G WebP/0.3.0 AppId/537309844 Pixel/1080 StatusBarHeight/121 SimpleUISwitch/0 QQTheme/2105 StudyMode/0 CurrentMode/0 CurrentFontScale/1.0 GlobalDensityScale/0.90000004 AllowLandscape/false InMagicWin/0	2025-09-16 08:16:40.31627+00
52	2025-09-21	183.222.15.64	China	Sichuan	Chengdu	Mozilla/5.0 (iPhone; CPU iPhone OS 18_6_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Safari/605.1.15	2025-09-21 15:19:17.357092+00
53	2025-09-23	183.222.15.47	China	Sichuan	Chengdu	Mozilla/5.0 (Linux; U; Android 15; zh-cn; PLA110 Build/UKQ1.231108.001) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/115.0.5790.168 Mobile Safari/537.36 HeyTapBrowser/40.10.2.1	2025-09-23 02:31:46.054734+00
54	2025-09-24	39.144.137.90	China	Sichuan	Chengdu	Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1	2025-09-24 16:18:35.663369+00
55	2025-10-02	111.55.152.102	China	Sichuan	Chengdu	Mozilla/5.0 (iPhone; CPU iPhone OS 16_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5.1 Mobile/15E148 Safari/604.1	2025-10-02 06:38:28.011499+00
57	2025-10-11	116.169.10.249	China	Sichuan	Chengdu	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0	2025-10-11 13:25:15.79013+00
58	2025-10-20	78.153.140.151	United Kingdom	England	London	Opera/9.80 (Windows NT 6.2; WOW64; Edition Campaign 21) Presto/2.12.388 Version/12.17	2025-10-20 08:29:38.431002+00
59	2025-10-25	104.41.205.21	Ireland	Leinster	Dublin		2025-10-25 11:30:22.723723+00
60	2025-10-25	180.101.245.246	China	Jiangsu	Nanjing	Mozilla/5.0 (iPhone; CPU iPhone os 15_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Mobile/11D257 Safari/604.1	2025-10-25 11:36:35.482339+00
61	2025-11-28	47.239.5.42	Hong Kong	\N	Hong Kong	Mozilla/5.0 (Windows NT 10.0; Win64; x64)	2025-11-28 10:39:46.845834+00
62	2025-12-04	220.196.160.84	China	Shanghai	Shanghai	Mozilla/5.0 (Fedora; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	2025-12-04 03:26:31.784513+00
\.


--
-- Data for Name: oauth_userprofile; Type: TABLE DATA; Schema: public; Owner: jcourse
--

COPY public.oauth_userprofile (id, user_type, user_id, lowercase, suspended_till, last_seen_at, account) FROM stdin;
2	\N	3	f	\N	\N	\N
3	\N	4	f	\N	\N	\N
4	\N	5	f	\N	\N	\N
5	\N	6	f	\N	\N	\N
6	\N	7	f	\N	\N	\N
7	\N	8	f	\N	\N	\N
8	\N	9	f	\N	\N	\N
9	\N	10	f	\N	\N	\N
10	\N	11	f	\N	\N	\N
11	\N	12	f	\N	\N	\N
27	\N	38	t	\N	2025-09-08 04:47:53.423961+00	42521029
32	\N	43	t	\N	2025-09-22 10:33:49.651308+00	42519027
26	\N	37	t	\N	2025-09-08 05:32:58.962432+00	42324002
28	\N	39	t	\N	2025-09-08 05:35:08.674001+00	42305062
21	\N	24	t	\N	2025-09-04 08:48:51.725306+00	42357030
22	\N	25	t	\N	2025-09-05 05:07:32.232183+00	42409045
33	\N	44	t	\N	2025-10-11 13:31:36.259711+00	42411116
24	\N	35	t	\N	2025-09-05 11:37:42.584685+00	42304387
1	\N	1	f	\N	2025-12-04 04:12:48.762045+00	\N
19	\N	19	f	\N	2025-09-05 13:32:06.346586+00	\N
29	\N	40	t	\N	2025-09-11 10:20:54.642328+00	62400013
17	\N	17	t	\N	2025-09-04 04:08:59.711114+00	42404455
18	\N	18	t	\N	2025-08-22 08:02:57.166068+00	42314020
23	\N	34	t	\N	2025-09-05 07:48:54.929107+00	42414073
25	\N	36	t	\N	2025-09-08 08:28:19.846961+00	42404234
31	\N	42	t	\N	2025-09-12 02:26:56.246252+00	42414066
30	\N	41	t	\N	2025-09-11 14:53:14.676897+00	42521013
\.


--
-- Name: ad_promotion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.ad_promotion_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 112, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 44, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 28, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 28, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 77, true);


--
-- Name: jcourse_api_action_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.jcourse_api_action_id_seq', 1, false);


--
-- Name: jcourse_api_apikey_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.jcourse_api_apikey_id_seq', 1, false);


--
-- Name: jcourse_api_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.jcourse_api_category_id_seq', 5, true);


--
-- Name: jcourse_api_contributor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.jcourse_api_contributor_id_seq', 1, true);


--
-- Name: jcourse_api_course_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.jcourse_api_course_categories_id_seq', 7512, true);


--
-- Name: jcourse_api_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.jcourse_api_course_id_seq', 3362, true);


--
-- Name: jcourse_api_course_teacher_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.jcourse_api_course_teacher_group_id_seq', 7512, true);


--
-- Name: jcourse_api_coursenotificationlevel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.jcourse_api_coursenotificationlevel_id_seq', 1, true);


--
-- Name: jcourse_api_department_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.jcourse_api_department_id_seq', 30, true);


--
-- Name: jcourse_api_enrollcourse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.jcourse_api_enrollcourse_id_seq', 1, false);


--
-- Name: jcourse_api_formercode_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.jcourse_api_formercode_id_seq', 1, false);


--
-- Name: jcourse_api_notice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.jcourse_api_notice_id_seq', 1, false);


--
-- Name: jcourse_api_notification_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.jcourse_api_notification_id_seq', 1, false);


--
-- Name: jcourse_api_report_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.jcourse_api_report_id_seq', 1, true);


--
-- Name: jcourse_api_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.jcourse_api_review_id_seq', 2839, true);


--
-- Name: jcourse_api_reviewrevision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.jcourse_api_reviewrevision_id_seq', 4, true);


--
-- Name: jcourse_api_semester_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.jcourse_api_semester_id_seq', 3, true);


--
-- Name: jcourse_api_teacher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.jcourse_api_teacher_id_seq', 1960, true);


--
-- Name: jcourse_api_teacherevaluation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.jcourse_api_teacherevaluation_id_seq', 1787, true);


--
-- Name: jcourse_api_teammember_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.jcourse_api_teammember_id_seq', 6, true);


--
-- Name: jcourse_api_userpoint_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.jcourse_api_userpoint_id_seq', 1, false);


--
-- Name: jcourse_api_visitorstatistics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.jcourse_api_visitorstatistics_id_seq', 62, true);


--
-- Name: oauth_userprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jcourse
--

SELECT pg_catalog.setval('public.oauth_userprofile_id_seq', 33, true);


--
-- PostgreSQL database dump complete
--

