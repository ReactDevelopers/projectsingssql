-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 20, 2018 at 03:23 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.25-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `internship`
--

-- --------------------------------------------------------

--
-- Table structure for table `iw_about_us_content`
--

CREATE TABLE `iw_about_us_content` (
  `about_us_content_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `youtubelink` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_about_us_content`
--

INSERT INTO `iw_about_us_content` (`about_us_content_id`, `title`, `description`, `youtubelink`, `added_date`) VALUES
(1, 'Graduate Project Users', '<p>As a user of Graduate Projects, you can browse through a wide variety of opportunities to suit&nbsp;your skills and expertise. The search filters allow you to look for specific types of opening, for example internships, placement or project work that may contribute to your academic studies. Or you may have a particular expertise, for example in medical research or business systems, and you are looking for a research or professional contract in this area. We provide you with a powerful search facility that allows you to target the specific types of opportunity and activity that you are interested in.</p>\r\n\r\n<p>Some organisations request that you contact them directly if interested in their opportunities. In this case, the process and information for your application are given in their post description. For other organisations, we provide a convenient way for you to connect with them. &nbsp;You can set up an account, create a profile and send the link of your profile to the contact person in the organisation. We also have a messaging facility that can be used to get in touch with the relevant contact person. By creating an account, you can also receive feedback and incorporate it into your profile. Graduate Projects allows you to search, apply, manage and network for hands-on educational and professional development in a single space.</p>', 'https://www.youtube.com/embed/Bey4XXJAqS8', '2018-01-29 22:25:02'),
(2, 'Providers', '<p>As an organisation, or staff member within an organisation, you can promote your projects, research, innovations, tasks, educational and professional activities or other services on Graduate Projects. You can create a profile to showcase your work and the opportunities you are creating. You&rsquo;ll be able to connect with high-achieving students, graduates, researchers, and other promising talent who can potentially participate in or contribute to your work or activity area. Graduate Projects specialises in linking emerging talent with innovative organisations and staff members who can offer great opportunities and challenges through specific projects, work tasks, training or other educational and professional development activities. &nbsp;&nbsp;</p>\r\n\r\n<p>Graduate Projects offers a number of features that help you maximise the impact of your postings and the way you manage them.&nbsp; We have a strong search and categorisation facility that enables you to reach the right audience, whether you need to connect with a general pool of talent or those with specialised or technical skills. You can make your posts available to anyone, or they can be restricted to certain users. For example, an education provider may want to advertise work opportunities only to their own students. For large organisations, your information on Graduate Projects can be managed at the level of department, team or individual staff member. We provide you with a mechanism to set up an application process, review and select the profiles of applicants, search through profiles, and connect with users using a messaging facility. You have a very easy way to connect with a world of emerging talent.</p>\r\n\r\n<p>&nbsp;</p>', 'https://www.youtube.com/embed/PCd8kNkdAI0', '2017-10-11 23:24:49');

-- --------------------------------------------------------

--
-- Table structure for table `iw_about_us_slider`
--

CREATE TABLE `iw_about_us_slider` (
  `about_us_slider_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` int(11) NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_about_us_slider`
--

INSERT INTO `iw_about_us_slider` (`about_us_slider_id`, `title`, `description`, `name`, `country`, `status`, `added_date`) VALUES
(1, 'Testimonial', 'I was able to develop my skills and gain practical experience. The experience has helped me find a job.', 'Mia Victory', 13, 'Active', '2017-12-28 22:21:38'),
(2, 'Testimonial 3', 'I am very much enjoyed my placement via Internship portal, from the very beginning I was given responsibilities and deliverables which grew as the year moved on also i was supported in expressing my own ideas.', 'Samantha Jones', 162, 'Active', '2017-10-17 05:31:06'),
(3, 'Testimonial 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit nullam volutpat est eget suscipit condimentum est nisl bibendum lorem at euismod dui velit', 'Josephina Liyon', 21, 'Inactive', '2017-12-03 18:42:25');

-- --------------------------------------------------------

--
-- Table structure for table `iw_admin`
--

CREATE TABLE `iw_admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iw_application_method`
--

CREATE TABLE `iw_application_method` (
  `application_method_id` int(11) NOT NULL,
  `application_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iw_application_process`
--

CREATE TABLE `iw_application_process` (
  `application_process_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_application_process`
--

INSERT INTO `iw_application_process` (`application_process_id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Create a Profile', 'You can use your profile to apply for opportunities', 'PNG-1500876377.png', '2017-07-23 10:30:00', '2017-09-07 02:29:09'),
(2, 'Quick Apply', 'Apply for internship with quick and easy way.', 'PNG-1500876417.png', '2017-07-23 10:30:00', '2017-07-23 16:36:57'),
(3, 'Get Connected', 'Connect with employers & discover new opportunities based on your skills.', 'PNG-1500876427.png', '2017-07-23 10:30:00', '2017-07-23 16:37:07');

-- --------------------------------------------------------

--
-- Table structure for table `iw_banner_detail`
--

CREATE TABLE `iw_banner_detail` (
  `banner_detail_id` int(11) NOT NULL,
  `banner_title` text COLLATE utf8_unicode_ci NOT NULL,
  `banner_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `banner_type` enum('HOME','ABOUT','BLOG','PLACEMENT','TESTIMONIAL') COLLATE utf8_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_banner_detail`
--

INSERT INTO `iw_banner_detail` (`banner_detail_id`, `banner_title`, `banner_image`, `banner_type`, `added_date`) VALUES
(1, 'Collaborations in Education, Research and Industry', 'crop_20171206225400.jpeg', 'HOME', '2017-12-06 17:26:01'),
(2, 'Connect.  Collaborate.  Achieve.', 'crop_20171206232802.jpeg', 'ABOUT', '2017-12-06 17:58:14'),
(3, 'Blog', 'crop_20171207040914.jpeg', 'BLOG', '2017-12-06 22:39:25'),
(4, 'Bridging the Gap Between Academia and Industry', 'JPG-1507787128.jpg', 'PLACEMENT', '2017-10-12 00:15:28'),
(5, 'Testimonial', 'crop_20171120224946.jpeg', 'TESTIMONIAL', '2017-11-20 17:20:50');

-- --------------------------------------------------------

--
-- Table structure for table `iw_blocked_contacts`
--

CREATE TABLE `iw_blocked_contacts` (
  `blocked_contact_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `blocked_id` int(11) NOT NULL,
  `type` enum('remove','block') NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iw_blocked_contacts`
--

INSERT INTO `iw_blocked_contacts` (`blocked_contact_id`, `user_id`, `blocked_id`, `type`, `added_date`) VALUES
(6, 4, 41, 'block', '2017-11-10 06:13:57'),
(26, 44, 39, 'block', '2017-12-12 01:21:21'),
(31, 40, 39, 'block', '2017-12-12 23:50:59');

-- --------------------------------------------------------

--
-- Table structure for table `iw_blog`
--

CREATE TABLE `iw_blog` (
  `blog_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  `is_featured` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `blog_type` enum('Text','Image','Video') COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_blog`
--

INSERT INTO `iw_blog` (`blog_id`, `title`, `description`, `blog_category_id`, `is_featured`, `blog_type`, `created_date`) VALUES
(22, 'Skills at Work', '<p>As technology has an increasing impact on our lives and the workplace, more attention is being given to the jobs and skills of the future. It is generally agreed that it is difficult to predict what typical careers will look like in the future, other than there might not be typical careers. It is believed that people may be more mobile, for example self-employed or moving between different employers, and will have to add value to their professional area as more routine tasks and functions are undertaken by technology. This will have implications the types of skills that will be required in the workplaces of the future.&nbsp; Students today would be advised as to choose their education providers not only based on their subject or content expertise but also the contemporary and generic skills and experience that education providers can equip them with to prepare for the jobs of tomorrow. Here we list some of the skills that will be of value in the future.</p>\r\n\r\n<p><strong>A more diverse range of cognitive skills</strong></p>\r\n\r\n<p>In education today, the cognitive skills we learn typically depend on the subjects that we take.&nbsp; If we learn science, we develop skills in, for example, evidence or data-based reasoning. If we learn history, we develop skills in interpretation and conjecture. However, there is often no explicit teaching of the cognitive skills that we develop. In terms of careers, this approach may well be suited for the narrow types of career that we typically embark on &ndash; as accountants, engineers, scientists, IT specialists &ndash; where we only use those cognitive skills that have been part of our education.</p>\r\n\r\n<p>In work in the future, professional roles may be less well defined. We may work in combined roles, for example as scientists and advisors, engineers and designers, doctors and data analysists, and as such we&rsquo;ll need more rounded and flexible cognitive skills. Education providers will need to pay explicit attention to this. In the future, they may offer foundation courses aimed at enhancing a broader range of cognitive skills to complement or provide a foundation for learning subject knowledge.</p>\r\n\r\n<p><strong>A more diverse range of discipline knowledge</strong></p>\r\n\r\n<p>Graduates who have a multidisciplinary education may well have better prospects in the future than those who specialise in one subject. This reflects the expectation that jobs of the future will be more multidisciplinary. While it is certainly the case that in some areas of work, such as scientific research, the complexity and expertise needed to make meaningful contributions may demand extremely high levels of specialisation, the use of technology in specialised roles will no doubt demand knowledge of other specialised skills. For example, research in biology or chemistry may increasingly require skills in computer science, statistics and data analytics. For other careers, there is likely to be an increasing need for multidisciplinary subject expertise and specialised skills, for example accountancy and IT, law and media studies, medicine and biotechnology, or art, design and technology.</p>\r\n\r\n<p><strong>People Skills</strong></p>\r\n\r\n<p>Our workplaces today are often characterised by an office environment and a set of colleagues with whom we work closely, often for many years.&nbsp; We learn how to relate to them, who we are comfortable working with, who we can trust and who we can&rsquo;t. By gaining familiarity with the idiosyncrasies of our colleagues, we gain workable people skills in our work places. Often, we don&rsquo;t regard people or communication skills as something we need to learn.</p>\r\n\r\n<p>In many contemporary workplaces, and increasingly in the future, we&rsquo;re unlikely to enjoy this type of familiarity and stability. We&rsquo;re likely to get assigned to temporary project groups where we&rsquo;ll work intensely with a set of people we may not have met before. Or we may take up work assignments with different organisations or clients, and have to manage the unexpected in terms of people and personalities. In this environment, people skills may become important, whether in collaborating, communicating, negotiating or influencing. Of course, this will include online people skills, for example we may be working online with an international project group. We&rsquo;ll also need to be sensitive to colleagues from different cultures in this online environment.</p>\r\n\r\n<p>As education becomes more project-based and interactive, we&nbsp; can expect a greater emphasis from education providers on how to prepare students for a collaborative future, and in particular providing students with a more explicit learning of people skills.</p>\r\n\r\n<p><strong>Problem solving and critical thinking</strong></p>\r\n\r\n<p>Many jobs follow established practices and processes and do not require critical thinking skills. They rely on knowledge or experience to achieve expertise e.g. an understanding of policy; working with known networks or channels of agents, clients and stakeholders; the application of established models or technologies to create new products. Generally, the challenge for organisations operating in this context is how to standardise, how to cut costs, how to become efficient. This requires expertise in established practices and an organisational perspective to problem solving.</p>\r\n\r\n<p>Increasingly problem solving and critical thinking will not be about how to constrain and streamline but how to innovate and cater for individual needs. This will require critical thinking about the limitations of established practices and technologies, how to redesign systems, how to create new approaches. Problem solving may become more creative, as we think of new challenges and ambitions. This may require more imagination and lateral thinking, as well as technical skills, rather than traditional analysis and reasoning.&nbsp; For example, we&rsquo;ll be exercised by challenges such as how to integrate human and technological expertise in services such as teaching and medical care,&nbsp; how to target marketing efforts and create an impact in a crowded digital space, and how to use data and adapt systems to provide bespoke products or services.</p>\r\n\r\n<p><strong>Continuous Learning</strong></p>\r\n\r\n<p>Education is delivered in a way that encourages us to believe that our learning finishes when we graduate. We pass our exams, go to a ceremony, get our parchment and then head off into the world of work.&nbsp; This model for preparing young people for the future is increasingly irrelevant.</p>\r\n\r\n<p>The pace of change, innovation, new technology, new opportunities is such that our &lsquo;real&rsquo; education may well begin after we leave our education provider. &nbsp;In future, education will provide a starting point for lifelong learning. It will provide a foundation in knowledge and skills, and, more importantly, it will give us the tools and wherewithal to never stop learning. The tools are rapidly becoming available &ndash; through the proliferation of formal and informal online courses &ndash; and it should be part of the role of our formal education to teach us how to access and exploit them.</p>\r\n\r\n<p>In our future professional lives, we will be able to combine work with learning. This will be expected as part of our careers and life-long professional development.</p>\r\n\r\n<p>Education itself will increasingly take on a training role, through the provision of work experience, internships, mentorships and project work. Students will develop work-ready skills and knowledge. In this environment, the boundaries between education provider and employment provider will become increasingly blurred. We can expect new pathways that will provide a seamless transition from work in education to education in work.</p>\r\n\r\n<p><strong>Initiative and Entrepreneurship</strong></p>\r\n\r\n<p>It is well recognised that as technology is increasingly deployed into routine work practices, and as organisations adopt flexible work practices and project-based groupings of staff, employment in the future will be become less rigid and predictable.&nbsp; In this environment we may move between employers more frequently, and combine paid-employment with self-employment.&nbsp; Even within organisations, remuneration may be more outcome-based, for example members of a project team having a personal financial stake in the success of the project. &nbsp;We will need to be more prepared to plan and manage our careers and our finances, take risks, invest in ourselves through ongoing training, and understand how to advertise our expertise through social and professional platforms. This in turn may require us to be more skilled in negotiating contracts and benefits, managing commercialisation opportunities and investments and in navigating our way through work platforms offering both competitive and collaborative work opportunities.&nbsp;</p>\r\n\r\n<p>Many education providers offer students opportunities to learn about entrepreneurship in combination with their main subjects. This will become increasingly relevant not just for those who have ideas and want to understand how to turn them into a business, but also as a core skill to prepare students for the workplace of the future.</p>\r\n\r\n<p><strong>Number and technical skills</strong></p>\r\n\r\n<p>More and more occupational areas depend on data and technical skills. For example, online businesses operate in the digital space and use technical measures such as those supplied by Google Analytics to evaluate their performance.&nbsp; The large technical systems that underpin enterprise in all sectors, such as banking and finance, health, education, transport, energy and resources, are complex, sophisticated and produce enormous amounts of data. It is difficult to imagine jobs in the future that don&rsquo;t require technical skills in how to use technical systems and exploit their potential, let alone contribute to their development, upgraded and maintenance.&nbsp; Although many provide end users with simple interfaces, they are often designed to provide information and analysis that require well developed skills in manipulating, interpreting and summarising data. When we consider the implications of &lsquo;big data&rsquo; in the professional sphere, and even the way we use information in our online social interactions, there is little doubt that education at all levels in the future will need to include in the core curriculum the basic numeracy, conceptual and technical skills that each of us will need to survive and prosper in a world of data.</p>\r\n\r\n<p>References</p>\r\n\r\n<p><a href="https://www.careerfaqs.com.au/news/news-and-views/the-10-skills-you-ll-need-by-2020-and-beyond" target="_blank"><span style="color:#3498db">https://www.careerfaqs.com.au/news/news-and-views/the-10-skills-you-ll-need-by-2020-and-beyond</span></a></p>\r\n\r\n<p><a href="https://singularityhub.com/2017/07/04/7-critical-skills-for-the-jobs-of-the-future/" target="_blank"><span style="color:#3498db">https://singularityhub.com/2017/07/04/7-critical-skills-for-the-jobs-of-the-future/</span></a></p>\r\n\r\n<p><a href="https://www.themuse.com/advice/10-job-skills-youll-need-in-2020" target="_blank"><span style="color:#3498db">https://www.themuse.com/advice/10-job-skills-youll-need-in-2020</span></a></p>\r\n\r\n<p><a href="http://www.businessinsider.com/wef-report-skills-workers-need-2016-1?IR=T" target="_blank"><span style="color:#3498db">http://www.businessinsider.com/wef-report-skills-workers-need-2016-1?IR=T</span></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 1, '1', 'Image', '2017-11-03 03:46:36'),
(10, 'The importance of project work for students', '<p>At university students take course work to increase their depth of knowledge. However, this learning is often theoretical. In order to make use of the knowledge they acquire, it is important for students to look for practical applications. Universities can provide opportunities for students to gain practical skills by:</p>\r\n\r\n<ul>\r\n	<li>organising work placements with industry partners</li>\r\n	<li>doing experimental classes in laboratories&nbsp;</li>\r\n	<li>providing projects for groups of students</li>\r\n</ul>\r\n\r\n<p>These days industry placements are a particularly attractive way to provide students with relevant skills and engages industry in the education process.&nbsp;</p>', 1, '1', 'Text', '2017-09-04 05:40:41'),
(19, 'The New Work Smarts', '<p>In July this year (2017), the Foundation for Young Australians released a report called The New Work Smarts. &nbsp;The report provides some detailed insights into how skills in the workplace are likely to change in the coming years and the implications for education. Here is a quote from the report:</p>\r\n\r\n<p>Around the world, the most progressive education systems are focusing on developing the &lsquo;new work smart&rsquo; workforce of the future. They offer immersive, project-based and real-world learning experiences that go beyond the classroom environment, such as working with local businesses or facilitating art and film projects in local communities. These learning experiences are best suited to developing the future-proof enterprising and career management skills that will be most in demand and most highly portable in the future of work, and instil in young people the enthusiasm for ongoing learning that will be critical for their future success.</p>\r\n\r\n<p>Broadly speaking, the need for this type of education reform is based on the analysis that work in the future will require young people to enter the workforce with different sets of skills. Abilities that we expect in many workplaces today, for example managing people, following policies or processes, record-keeping, compiling data and producing reports, will become less important. &nbsp;Other abilities will become important, for example interpreting information, designing systems, engaging with peers and stakeholders, applying technical and digital skills, having the autonomy and initiative to manage one&rsquo;s own work, as well as of course risk-taking and entrepreneurship.&nbsp; Whereas education today, through its adherence to learning and testing, supports &lsquo;old&rsquo; skills, education tomorrow will offer students a more self-directed and richer pathway to their career. For example, students may have more flexibility to choose their own subjects and to learn them to any level they wish. They may graduate with a unique transcript or learning pathway. The report is compelling reading for educational strategists.</p>\r\n\r\n<p><a href="https://www.fya.org.au/wp-content/uploads/2017/07/FYA_TheNewWorkSmarts_July2017.pdf" target="_blank"><span style="color:#3498db">The New Work Smarts</span></a></p>', 1, '1', 'Text', '2017-11-03 02:37:25'),
(18, 'Careers in Research', '<p>For many students who have a strong interest in their field of study, research may present an attractive career option. &nbsp;Whereas traditionally a research career was synonymous with working in a university, these days opportunities to work in research are more varied, for example in technology companies, medical and drug companies, and in hybrid job settings such as university and industry collaborations.&nbsp; Indeed, as technology is used to undertake routine jobs, it could be expected that work in the future will be more focussed on research, innovation and discovery, and opportunities in these areas will expand.</p>\r\n\r\n<p>What are the qualities required to be successful at research? Firstly, you&rsquo;ll need to have a passion for your subject. You&rsquo;ll need to have a high level of interest and curiosity; the drive to understand the boundaries of current knowledge in your subject and the thirst to explore beyond those boundaries. &nbsp;Other traits will play an important role, for example the ability to strongly focus and persevere with your work to reach high levels of expertise and the willingness to take risks and put your efforts into developing leads that may not generate outcomes. Secondly, you&rsquo;ll need strong content or technical mastery of your subject. Inevitably this will require years of intellectual challenge, drawing on different skills and knowledge depending on your subject. Increasingly research is becoming more connected across different disciplines. It requires both breadth and depth of subject mastery. At an expert level, you&rsquo;ll need to have the skills to comprehend what is not understood, to pinpoint the gaps in human knowledge, and to be able to draw on your technical expertise to develop approaches to fill those gaps. Finally, professional skills are of increasing importance to researchers, for example understanding the funding, commercial and entrepreneurial environments, having a strong ability to communicate and collaborate, and having the ability to draw on technology to connect into research and funding networks. &nbsp;In many ways, success in research could be likened to success in sport or music. To go beyond the ordinary, you need to start with some talent and passion, and apply yourself with a clear sense of purpose and the will to succeed.</p>\r\n\r\n<p>The research environment is by no means a comfortable one. We often hear of research students who complete their PhD&rsquo;s and then spend the best part of their lives on temporary and often underpaid grants. For many, this can be a worry and distraction from their work and result in career changes. To an extent, you can reduce risks if you gain solid professional skills and are proactive in organising your career. For example, this may mean researching supervisors, their funding successes, links to industry, global opportunities and mid-career job openings. At the same time, if you have an expertise that is in-demand, there may be many opportunities for funding, travel and interaction with your peers across the world.</p>\r\n\r\n<p>Overall, if you are a recent graduate and you have a passion for your subject, pursuing research is well worth considering. At best, you&rsquo;ll develop an interest and expertise in a subject that will bring meaning and fulfilment to your professional career and you&rsquo;ll be hunted by organisations that need your talents. At worst, you&rsquo;ll learn advanced skills that can be applied to other areas, for example skills in maths and science can be applied to sectors such as IT and finance. Moreover, jobs of the future will need advanced skills, such as problem-solving, analysis and creativity. Today&rsquo;s economy offers a myriad of opportunities for those who seek them out.</p>\r\n\r\n<p>Please see some links below, as well as the YouTube clip, that we have referenced in writing this blog.</p>\r\n\r\n<p><a href="https://www.nature.com/news/the-future-of-the-postdoc-1.17253" target="_blank">https://www.nature.com/news/the-future-of-the-postdoc-1.17253</a></p>\r\n\r\n<p><a href="https://www.theguardian.com/higher-education-network/2012/oct/02/global-researcher-professional-development-advice" target="_blank">https://www.theguardian.com/higher-education-network/2012/oct/02/global-researcher-professional-development-advice</a></p>\r\n\r\n<p><a href="https://theconversation.com/when-i-grow-up-i-want-to-be-a-researcher-76597" target="_blank">https://theconversation.com/when-i-grow-up-i-want-to-be-a-researcher-76597</a></p>\r\n\r\n<p><a href="https://www.elsevier.com/__data/assets/pdf_file/0013/90040/charting-a-course-for-a-successful-research-career.pdf" target="_blank"><span style="color:#3498db">https://www.elsevier.com/__data/assets/pdf_file/0013/90040/charting-a-course-for-a-successful-research-career.pdf</span></a></p>\r\n\r\n<p><a href="http://www.markus-jakobsson.com/advice-for-students-and-junior-researchers" target="_blank"><span style="color:#3498db">http://www.markus-jakobsson.com/advice-for-students-and-junior-researchers</span></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 1, '1', 'Video', '2017-10-25 04:02:33'),
(14, 'Student Development', '<p>These days students should do work experience as part of their rstudies. It will help them devleop workplace skills and get a good job after they graduate.&nbsp;</p>', 1, '0', 'Text', '2017-09-07 11:44:31'),
(16, 'Skills of the Future', '<p>Digital skills are a requirement of the future workplace.&nbsp;</p>', 1, '1', 'Video', '2017-10-06 11:40:58'),
(20, 'The Future of Education', '<p>Increasingly universities and other education organisations are working to provide greater exposure for students in workplace experience.&nbsp; Internships, work placements and practical project work are often integrated into academic programs. It is hoped students will acquire a broader range of practical, technical and generic skills that will aid their employability after graduation. The linkages between education and industry also help students to network with prospective employers thereby enhancing their career opportunities.</p>\r\n\r\n<p>This type of collaboration that brings external input into education also helps to keep education relevant.&nbsp; The traditional approach in which students acquire knowledge during their academic program, and then get tested on what they can remember in closed-book exams, is increasingly irrelevant to the professional situations students find themselves in after graduation. Rather, providing students with an environment for self-directed learning and discovery, and with opportunities to collaborate on projects or gain skills in a workplace setting, with an assessment framework to reflect and learn from such experiences, will better prepare students for their future.</p>\r\n\r\n<p>The challenge to make this transition isn&rsquo;t easy because multiple-choice and closed-book assessments serve well as a tool for assessing students in bulk.&nbsp; Work experience can be built into the academic curriculum and it can be assessed (through a presentation, report, summary of findings). &nbsp;However, the requirement to find a standardised grade for each student means that this type of assessment can be periphery. The wide variety of work experience opportunities available for students, the difficulty in providing placements of similar standing, and the variabilities in supervision, adds to the difficulty of making work placement or project outcomes a core educational assessment instead of exams.&nbsp; Another issue is integration of work experience in a crowded curriculum with set educational outcomes. The benefits of work experience are usually derived from placements of at least a semester. This may not fit into a course structure and learning pathway that has to be completed to achieve the required outcomes. As long as education continues to set a standardised bar that all students must clear, it is difficult to see how education can progress beyond pointless memory testing.</p>\r\n\r\n<p>A different approach</p>\r\n\r\n<p>A starting point may be to rethink what is means to achieve a tertiary qualification. If there is no fixed curriculum with predetermined educational outcomes, the need to undertake formal testing on a large scale is eliminated. Instead the principle of education would be that students can study anything they like to any level they like (with very strong academic and career guidance). Of course, professional standards, such as those required for engineers and doctors, would still have to be achieved. But, generally, students would graduate with a transcript of what they have achieved rather than a parchment of what they should have achieved. For an education provider, their reputation will rest not so much on the currency of a parchment, as the ingenuity and relevance of the full learning pathway and student experience that they provide and record in a transcript for each student.</p>\r\n\r\n<p>By freeing up the curriculum, students can undertake their education in a much more exploratory and mobile way &ndash; both in terms of the subjects and the activities they take. It could be envisaged that students will have a portable transcript that records different learning, training, professional development and other educational activities undertaken in a range of educational and other organisations. For example, a student could complete a chemistry course in one institution, a computer science course in another, an online programming module elsewhere, work on some research projects in an industry collaboration and undertake a community service or leadership module. &nbsp;All of the achievements of the student would get recorded in their transcript, whether first year foundation courses or advanced research projects. There would not necessarily be an end-point and the student could graduate at any time. &nbsp;Where standards do have to be achieved, such as in medicine, professional bodies or accredited education providers would administer the required assessments. This would be an exciting way to learn and set up a foundation for life-long learning.</p>\r\n\r\n<p>While education delivered in this much more flexible way better prepares students for their future, it does of course have significant impact on the business models of education providers. They would no longer &lsquo;own&rsquo; a student for the 3 or 4 years of an academic program. &nbsp;They would have a much broader base of customers, of all ages, who would opt in and out of programs according to their needs (perhaps more like the model of online providers such as Coursera). They would gain their reputation from the value of their education delivery, research capabilities, collaborative projects, links with industry and networking opportunities. Most of all, successful education providers will never graduate their students. They will be partners-for-life in facilitating all kinds of lifelong learning and professional development activities.&nbsp; The business opportunities will be enormous.</p>\r\n\r\n<p>References</p>\r\n\r\n<p><a href="https://www.timeshighereducation.com/features/what-will-universities-look-like-in-2030-future-perfect" target="_blank"><span style="color:#3498db">https://www.timeshighereducation.com/features/what-will-universities-look-like-in-2030-future-perfect</span></a></p>\r\n\r\n<p><a href="https://theconversation.com/au/topics/future-of-higher-education-4003" target="_blank"><span style="color:#3498db">https://theconversation.com/au/topics/future-of-higher-education-4003</span></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 1, '1', 'Image', '2017-11-03 02:48:07'),
(21, 'The Future of Jobs', '<p>This is a report from the World Economic Forum about the future of work. It is a significant document that sets a context for the 4th industrial revolution.&nbsp;</p>\r\n\r\n<p><a href="http://www3.weforum.org/docs/WEF_Future_of_Jobs.pdf" target="_blank"><span style="color:#3498db">Future of Jobs</span></a></p>', 1, '1', 'Image', '2017-11-03 03:31:45');

-- --------------------------------------------------------

--
-- Table structure for table `iw_blog_category`
--

CREATE TABLE `iw_blog_category` (
  `blog_category_id` int(11) NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_blog_category`
--

INSERT INTO `iw_blog_category` (`blog_category_id`, `category`, `created_date`) VALUES
(1, 'News', '2017-08-30 12:15:51');

-- --------------------------------------------------------

--
-- Table structure for table `iw_blog_media`
--

CREATE TABLE `iw_blog_media` (
  `blog_media_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `media` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_blog_media`
--

INSERT INTO `iw_blog_media` (`blog_media_id`, `blog_id`, `media`, `created_date`) VALUES
(20, 2, 'https://www.youtube.com/watch?v=30cUE1Jfb_4', '2017-10-06 11:52:01'),
(9, 8, 'https://www.youtube.com/watch?v=ky90gggQkSs', '2017-09-04 05:54:11'),
(13, 3, 'JPG-1504511439.jpg', '2017-09-04 07:50:39'),
(12, 4, 'JPG-1504511392.jpg', '2017-09-04 07:49:52'),
(5, 7, 'JPG-1504096078.jpg', '2017-08-30 12:27:58'),
(7, 9, 'JPG-1504180976.jpg', '2017-08-31 12:02:56'),
(14, 12, 'https://www.youtube.com/watch?v=B3KmWuMWh6Y', '2017-09-07 10:49:20'),
(15, 13, 'JPG-1504781824.jpg', '2017-09-07 10:57:04'),
(18, 15, 'JPEG-1504786490.jpeg', '2017-09-07 12:14:50'),
(19, 16, 'https://www.youtube.com/watch?v=Y9FOyoS3Fag', '2017-10-06 11:40:58'),
(21, 17, 'https://youtu.be/X_5_BLt76c0', '2017-10-12 10:21:45'),
(24, 18, 'https://www.youtube.com/watch?v=nYpgngUi9KA', '2017-10-25 04:31:02'),
(29, 20, 'JPEG-1510142144.jpeg', '2017-11-08 11:55:44'),
(26, 21, 'JPG-1509679905.jpg', '2017-11-03 03:31:45'),
(27, 22, 'JPEG-1509680796.jpeg', '2017-11-03 03:46:36');

-- --------------------------------------------------------

--
-- Table structure for table `iw_chat`
--

CREATE TABLE `iw_chat` (
  `chat_id` int(11) NOT NULL,
  `chat_type_id` int(11) NOT NULL,
  `chat_group_id` int(11) NOT NULL,
  `chat_message_id` int(11) NOT NULL,
  `chat_status` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_chat`
--

INSERT INTO `iw_chat` (`chat_id`, `chat_type_id`, `chat_group_id`, `chat_message_id`, `chat_status`, `created_date`) VALUES
(1, 1, 1, 1, 0, '2017-11-20 06:30:45'),
(2, 1, 1, 2, 0, '2017-11-20 06:31:16'),
(3, 1, 1, 3, 0, '2017-11-20 06:32:01'),
(4, 2, 2, 4, 0, '2017-11-20 06:55:57'),
(5, 2, 2, 5, 0, '2017-11-20 06:55:57'),
(6, 2, 2, 6, 0, '2017-11-20 06:55:57'),
(7, 1, 4, 7, 0, '2017-11-20 07:20:28'),
(8, 1, 5, 8, 0, '2017-11-20 07:24:48'),
(9, 1, 1, 9, 0, '2017-11-20 07:25:00'),
(10, 2, 2, 10, 0, '2017-11-20 07:30:29'),
(11, 2, 6, 11, 0, '2017-11-20 07:54:52'),
(12, 2, 6, 12, 0, '2017-11-20 07:54:52'),
(13, 2, 6, 13, 0, '2017-11-20 07:54:52'),
(14, 2, 7, 14, 0, '2017-11-20 08:43:51'),
(15, 2, 7, 15, 0, '2017-11-20 08:43:51'),
(16, 2, 7, 16, 0, '2017-11-20 08:43:51'),
(17, 2, 7, 17, 0, '2017-11-20 08:43:51'),
(18, 2, 9, 18, 0, '2017-11-20 09:30:37'),
(19, 2, 9, 19, 0, '2017-11-20 09:30:37'),
(20, 2, 9, 20, 0, '2017-11-20 09:30:37'),
(21, 2, 9, 21, 0, '2017-11-20 09:30:37'),
(22, 2, 9, 22, 0, '2017-11-20 13:29:46'),
(23, 2, 9, 23, 0, '2017-11-20 13:33:44'),
(24, 2, 9, 24, 0, '2017-11-20 13:40:51'),
(25, 1, 5, 25, 0, '2017-11-20 22:39:41'),
(26, 1, 1, 26, 0, '2017-11-20 22:39:56'),
(27, 1, 4, 27, 0, '2017-11-20 22:40:13'),
(28, 2, 11, 28, 0, '2017-11-20 22:57:41'),
(187, 2, 42, 187, 0, '2018-01-29 12:19:44'),
(30, 2, 11, 30, 0, '2017-11-20 22:57:41'),
(186, 2, 42, 186, 0, '2018-01-29 12:19:42'),
(32, 1, 5, 32, 0, '2017-11-20 23:04:13'),
(33, 1, 5, 33, 0, '2017-11-20 23:04:28'),
(34, 2, 12, 34, 0, '2017-11-20 23:10:50'),
(35, 1, 4, 35, 0, '2017-11-20 23:20:18'),
(36, 1, 1, 36, 0, '2017-11-20 23:22:43'),
(37, 1, 5, 37, 0, '2017-11-20 23:23:13'),
(38, 2, 14, 38, 0, '2017-11-20 23:38:02'),
(39, 2, 14, 39, 0, '2017-11-20 23:38:02'),
(40, 2, 14, 40, 0, '2017-11-20 23:38:02'),
(41, 2, 14, 41, 0, '2017-11-20 23:40:42'),
(42, 2, 14, 42, 0, '2017-11-20 23:41:29'),
(43, 2, 15, 43, 0, '2017-11-21 22:27:16'),
(44, 2, 17, 44, 0, '2017-11-21 22:54:25'),
(45, 2, 17, 45, 0, '2017-11-21 22:54:25'),
(46, 2, 17, 46, 0, '2017-11-21 22:54:25'),
(47, 2, 18, 47, 0, '2017-11-21 22:54:29'),
(48, 2, 18, 48, 0, '2017-11-21 22:54:29'),
(49, 2, 18, 49, 0, '2017-11-21 22:54:29'),
(50, 1, 1, 50, 0, '2017-11-21 23:06:12'),
(51, 2, 18, 51, 0, '2017-11-21 23:14:31'),
(52, 2, 9, 52, 0, '2017-11-22 05:19:43'),
(53, 2, 9, 53, 0, '2017-11-22 05:21:06'),
(54, 2, 9, 54, 0, '2017-11-22 05:25:02'),
(55, 2, 22, 55, 0, '2017-11-22 05:36:48'),
(56, 2, 6, 56, 0, '2017-11-22 05:38:47'),
(57, 2, 23, 57, 0, '2017-11-22 06:19:37'),
(58, 2, 23, 58, 0, '2017-11-22 07:22:30'),
(59, 1, 25, 59, 0, '2017-11-22 10:11:29'),
(60, 1, 25, 60, 0, '2017-11-22 10:13:12'),
(61, 2, 26, 61, 0, '2017-11-22 10:18:17'),
(62, 2, 26, 62, 0, '2017-11-22 10:18:17'),
(63, 2, 26, 63, 0, '2017-11-22 10:18:17'),
(64, 2, 26, 64, 0, '2017-11-22 10:18:31'),
(65, 2, 26, 65, 0, '2017-11-22 10:19:11'),
(66, 2, 26, 66, 0, '2017-11-22 10:19:23'),
(67, 2, 26, 67, 0, '2017-11-22 10:19:25'),
(68, 2, 26, 68, 0, '2017-11-22 10:19:39'),
(69, 2, 26, 69, 0, '2017-11-22 10:23:37'),
(70, 2, 26, 70, 0, '2017-11-22 10:24:49'),
(71, 2, 26, 71, 0, '2017-11-22 10:25:55'),
(72, 2, 26, 72, 0, '2017-11-22 10:28:18'),
(73, 2, 26, 73, 0, '2017-11-22 10:30:27'),
(74, 2, 26, 74, 0, '2017-11-22 10:33:04'),
(75, 2, 26, 75, 0, '2017-11-22 10:36:21'),
(76, 2, 26, 76, 0, '2017-11-22 10:39:38'),
(77, 2, 27, 77, 0, '2017-11-22 23:45:23'),
(78, 2, 27, 78, 0, '2017-11-22 23:47:27'),
(79, 2, 28, 79, 0, '2017-11-22 23:58:14'),
(80, 2, 28, 80, 0, '2017-11-22 23:58:14'),
(81, 2, 28, 81, 0, '2017-11-22 23:58:14'),
(120, 1, 1, 120, 0, '2017-11-27 23:30:20'),
(134, 2, 54, 134, 0, '2017-12-04 02:22:12'),
(84, 2, 29, 84, 0, '2017-11-23 00:02:00'),
(85, 2, 30, 85, 0, '2017-11-23 00:13:42'),
(86, 2, 30, 86, 0, '2017-11-23 00:14:49'),
(87, 2, 30, 87, 0, '2017-11-23 00:15:38'),
(88, 1, 31, 88, 0, '2017-11-23 00:17:37'),
(89, 1, 32, 89, 0, '2017-11-23 00:18:53'),
(90, 2, 33, 90, 0, '2017-11-23 00:21:02'),
(91, 2, 34, 91, 0, '2017-11-23 00:30:49'),
(92, 2, 34, 92, 0, '2017-11-23 00:34:35'),
(93, 1, 1, 93, 0, '2017-11-23 00:35:52'),
(94, 1, 35, 94, 0, '2017-11-23 03:46:06'),
(95, 1, 35, 95, 0, '2017-11-23 03:46:30'),
(96, 1, 35, 96, 0, '2017-11-23 03:49:51'),
(97, 1, 35, 97, 0, '2017-11-23 03:50:24'),
(98, 1, 5, 98, 0, '2017-11-23 03:53:39'),
(99, 2, 30, 99, 0, '2017-11-23 05:51:09'),
(100, 1, 38, 100, 0, '2017-11-23 05:55:26'),
(101, 2, 37, 101, 0, '2017-11-23 05:56:49'),
(102, 2, 37, 102, 0, '2017-11-23 05:57:50'),
(103, 2, 37, 103, 0, '2017-11-23 05:58:18'),
(104, 1, 39, 104, 0, '2017-11-23 06:01:20'),
(105, 2, 40, 105, 0, '2017-11-23 06:53:55'),
(106, 2, 42, 106, 0, '2017-11-23 08:11:52'),
(107, 2, 42, 107, 0, '2017-11-23 08:11:52'),
(108, 2, 42, 108, 0, '2017-11-23 08:11:52'),
(109, 2, 42, 109, 0, '2017-11-23 08:12:33'),
(110, 1, 43, 110, 0, '2017-11-23 08:15:34'),
(111, 1, 43, 111, 0, '2017-11-23 08:17:35'),
(112, 1, 43, 112, 0, '2017-11-23 08:19:23'),
(113, 2, 42, 113, 0, '2017-11-23 08:20:42'),
(114, 2, 36, 114, 0, '2017-11-23 08:21:42'),
(115, 2, 36, 115, 0, '2017-11-23 08:22:30'),
(116, 2, 36, 116, 0, '2017-11-23 08:23:18'),
(117, 1, 45, 117, 0, '2017-11-24 01:22:18'),
(118, 1, 45, 118, 0, '2017-11-24 01:34:59'),
(119, 2, 14, 119, 0, '2017-11-24 01:39:48'),
(121, 2, 48, 121, 0, '2017-11-27 23:34:42'),
(122, 2, 48, 122, 0, '2017-11-27 23:36:15'),
(123, 2, 50, 123, 0, '2017-11-29 02:17:17'),
(124, 2, 50, 124, 0, '2017-11-29 02:17:17'),
(125, 2, 50, 125, 0, '2017-11-29 02:17:17'),
(126, 2, 50, 126, 0, '2017-11-29 02:31:46'),
(127, 2, 53, 127, 0, '2017-11-29 04:01:22'),
(128, 1, 1, 128, 0, '2017-11-29 04:02:33'),
(129, 1, 4, 129, 0, '2017-11-29 04:02:42'),
(130, 1, 5, 130, 0, '2017-11-29 04:03:38'),
(131, 2, 53, 131, 0, '2017-11-29 04:10:25'),
(132, 1, 43, 132, 0, '2017-11-30 11:12:15'),
(133, 2, 53, 133, 0, '2017-12-04 00:04:10'),
(181, 2, 11, 181, 0, '2017-12-17 09:11:23'),
(136, 2, 54, 136, 0, '2017-12-04 02:22:12'),
(137, 2, 54, 137, 0, '2017-12-04 02:22:12'),
(180, 2, 54, 180, 0, '2017-12-17 09:09:38'),
(139, 1, 5, 139, 0, '2017-12-05 00:39:57'),
(140, 2, 14, 140, 0, '2017-12-05 00:42:24'),
(141, 2, 6, 141, 0, '2017-12-05 00:46:36'),
(142, 2, 6, 142, 0, '2017-12-05 00:47:19'),
(143, 2, 6, 143, 0, '2017-12-05 00:47:41'),
(144, 2, 6, 144, 0, '2017-12-05 00:48:00'),
(145, 2, 6, 145, 0, '2017-12-05 00:48:13'),
(146, 2, 6, 146, 0, '2017-12-05 00:48:28'),
(147, 2, 6, 147, 0, '2017-12-05 00:48:49'),
(148, 1, 5, 148, 0, '2017-12-05 00:52:41'),
(149, 2, 6, 149, 0, '2017-12-05 00:57:36'),
(150, 2, 6, 150, 0, '2017-12-05 00:58:12'),
(151, 2, 14, 151, 0, '2017-12-05 00:58:57'),
(152, 2, 7, 152, 0, '2017-12-05 12:58:41'),
(153, 2, 56, 153, 0, '2017-12-07 08:49:10'),
(154, 2, 56, 154, 0, '2017-12-07 08:49:10'),
(155, 1, 35, 155, 0, '2017-12-07 22:50:17'),
(156, 1, 4, 156, 0, '2017-12-11 03:17:43'),
(157, 1, 4, 157, 0, '2017-12-11 03:18:14'),
(158, 1, 4, 158, 0, '2017-12-11 03:23:35'),
(159, 1, 43, 159, 0, '2017-12-11 09:22:56'),
(160, 1, 43, 160, 0, '2017-12-11 09:23:02'),
(161, 1, 5, 161, 0, '2017-12-12 00:32:09'),
(162, 2, 58, 162, 0, '2017-12-12 01:11:36'),
(163, 2, 58, 163, 0, '2017-12-12 01:11:36'),
(164, 2, 58, 164, 0, '2017-12-12 01:11:36'),
(165, 2, 58, 165, 0, '2017-12-12 01:11:36'),
(166, 2, 58, 166, 0, '2017-12-12 01:12:19'),
(167, 1, 5, 167, 0, '2017-12-12 01:22:38'),
(168, 1, 5, 168, 0, '2017-12-12 01:31:32'),
(169, 1, 4, 169, 0, '2017-12-12 01:32:36'),
(170, 1, 4, 170, 0, '2017-12-12 01:33:11'),
(171, 1, 45, 171, 0, '2017-12-12 23:49:00'),
(185, 2, 86, 185, 0, '2018-01-29 05:19:49'),
(184, 1, 25, 184, 0, '2018-01-01 12:02:45'),
(183, 1, 43, 183, 0, '2018-01-01 12:02:24'),
(182, 1, 4, 182, 0, '2017-12-22 14:52:26'),
(179, 2, 58, 179, 0, '2017-12-13 00:10:01'),
(178, 2, 58, 178, 0, '2017-12-13 00:09:10'),
(188, 2, 42, 188, 0, '2018-01-29 12:19:46'),
(189, 2, 42, 189, 0, '2018-01-29 12:19:49'),
(190, 2, 7, 190, 0, '2018-02-12 04:11:47'),
(191, 2, 7, 191, 0, '2018-02-12 04:15:06'),
(192, 2, 86, 192, 0, '2018-02-12 04:17:13'),
(193, 2, 86, 193, 0, '2018-02-12 04:17:14'),
(194, 2, 26, 194, 0, '2018-02-12 04:17:29'),
(195, 2, 86, 195, 0, '2018-02-12 04:17:39'),
(196, 2, 86, 196, 0, '2018-02-12 04:17:41'),
(197, 2, 56, 197, 0, '2018-02-12 04:17:48'),
(198, 1, 43, 198, 0, '2018-02-12 04:17:58'),
(199, 2, 42, 199, 0, '2018-02-12 04:18:05'),
(200, 2, 86, 200, 0, '2018-02-12 05:08:20'),
(201, 2, 86, 201, 0, '2018-02-12 05:08:21'),
(202, 2, 56, 202, 0, '2018-02-12 05:08:29'),
(203, 2, 86, 203, 0, '2018-02-12 05:25:31'),
(204, 2, 56, 204, 0, '2018-02-13 03:39:59'),
(205, 2, 26, 205, 0, '2018-02-13 03:40:21'),
(206, 2, 26, 206, 0, '2018-02-13 03:40:38'),
(207, 2, 7, 207, 0, '2018-02-13 03:40:56'),
(208, 2, 7, 208, 0, '2018-02-13 03:41:04'),
(209, 2, 56, 209, 0, '2018-02-13 03:41:34'),
(210, 1, 25, 210, 0, '2018-02-13 03:45:20'),
(211, 1, 25, 211, 0, '2018-02-13 03:45:23'),
(212, 1, 25, 212, 0, '2018-02-13 03:45:31');

--
-- Triggers `iw_chat`
--
DELIMITER $$
CREATE TRIGGER `delete_chat` AFTER DELETE ON `iw_chat` FOR EACH ROW BEGIN
        SET @chat_id = OLD.chat_id; 
        SET @chat_message_id = OLD.chat_message_id; 

                        DELETE FROM `iw_chat_message_details` WHERE chat_id = @chat_id; 
                        DELETE FROM `iw_chat_message` WHERE chat_message_id = @chat_message_id; 
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `iw_chat_group`
--

CREATE TABLE `iw_chat_group` (
  `chat_group_id` int(11) NOT NULL,
  `group_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `no_of_participants` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'group_leader',
  `parent_id` int(11) NOT NULL,
  `placement_id` int(11) NOT NULL,
  `is_published` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_remove` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_chat_group`
--

INSERT INTO `iw_chat_group` (`chat_group_id`, `group_name`, `no_of_participants`, `user_id`, `parent_id`, `placement_id`, `is_published`, `created_date`, `is_remove`) VALUES
(1, '', 2, 44, 0, 0, '1', '2017-11-20 06:30:45', 0),
(11, 'Team XA', 2, 41, 0, 0, '1', '2017-11-20 22:57:41', 0),
(3, 'Team Building', 3, 41, 2, 0, '0', '2017-11-20 07:12:16', 0),
(4, '', 2, 41, 0, 0, '1', '2017-11-20 07:20:28', 0),
(5, '', 2, 44, 0, 0, '1', '2017-11-20 07:24:48', 0),
(6, 'ENG 3', 1, 44, 0, 99, '0', '2017-11-20 07:54:52', 1),
(7, 'Core Building', 4, 7, 0, 0, '1', '2017-11-20 08:43:51', 0),
(8, 'Core Building', 4, 7, 7, 0, '0', '2017-11-20 08:51:14', 0),
(9, 'Medical Practice', 1, 44, 0, 0, '0', '2017-11-20 09:30:37', 0),
(22, 'Medical Practice', 1, 44, 0, 56, '0', '2017-11-22 05:36:48', 0),
(10, 'Team Building', 3, 41, 2, 0, '0', '2017-11-20 13:01:09', 0),
(12, 'test post 1 board', 1, 44, 0, 95, '0', '2017-11-20 23:10:50', 1),
(34, 'XD', 3, 40, 29, 94, '0', '2017-11-23 00:27:53', 0),
(14, 'eng pl 2 message board', 1, 44, 0, 94, '0', '2017-11-20 23:38:02', 0),
(15, 'eng place 1 board', 1, 44, 0, 92, '0', '2017-11-21 22:27:16', 1),
(17, 'Team XB', 3, 40, 0, 0, '0', '2017-11-21 22:54:25', 0),
(54, 'Team XEv2', 3, 40, 0, 0, '1', '2017-12-04 02:22:12', 0),
(21, 'Core Building', 4, 7, 7, 0, '0', '2017-11-22 05:03:24', 0),
(23, 'Team XB', 3, 40, 18, 102, '0', '2017-11-22 06:12:55', 0),
(92, 'Core Building', 4, 7, 7, 0, '0', '2018-02-07 15:17:27', 0),
(25, '', 2, 7, 0, 0, '1', '2017-11-22 10:11:29', 0),
(26, 'Apply Opportunity', 1, 3, 0, 102, '0', '2017-11-22 10:18:17', 0),
(77, 'Core Building', 4, 7, 7, 0, '0', '2017-12-18 04:09:51', 0),
(31, '', 2, 4, 0, 0, '1', '2017-11-23 00:17:37', 0),
(44, 'XD', 3, 40, 29, 0, '0', '2017-11-23 08:17:57', 0),
(32, '', 2, 4, 0, 0, '1', '2017-11-23 00:18:53', 0),
(33, 'testX', 1, 4, 0, 12, '0', '2017-11-23 00:21:02', 0),
(35, '', 2, 4, 0, 0, '1', '2017-11-23 03:46:06', 0),
(36, 'Core Building', 4, 7, 7, 10, '0', '2017-11-23 05:15:49', 0),
(38, '', 2, 4, 0, 0, '1', '2017-11-23 05:55:26', 0),
(39, '', 2, 4, 0, 0, '1', '2017-11-23 06:01:20', 0),
(42, 'XD - Quality Pointers', 1, 3, 0, 103, '0', '2017-11-23 08:11:52', 0),
(43, '', 2, 3, 0, 0, '1', '2017-11-23 08:15:34', 0),
(45, '', 2, 40, 0, 0, '1', '2017-11-24 01:22:18', 0),
(75, 'Team XA', 2, 41, 11, 0, '0', '2017-12-17 08:47:08', 0),
(47, 'Team XAv2', 3, 41, 11, 0, '0', '2017-11-27 00:56:14', 0),
(48, 'Discovery Project', 1, 44, 0, 104, '0', '2017-11-27 23:34:42', 0),
(50, 'Team XD', 2, 39, 0, 0, '1', '2017-11-29 02:17:17', 0),
(52, 'Team XD', 3, 39, 50, 0, '0', '2017-11-29 03:52:06', 0),
(53, 'Discovery 2', 1, 44, 0, 105, '0', '2017-11-29 04:01:22', 0),
(91, 'Core Building', 4, 7, 7, 0, '0', '2018-02-07 04:09:14', 0),
(56, 'LinkedIn Team', 1, 3, 0, 109, '0', '2017-12-07 08:49:10', 0),
(58, 'Discovery 4', 1, 44, 0, 111, '0', '2017-12-12 01:11:36', 0),
(85, 'Core Building', 4, 7, 7, 0, '0', '2018-01-24 08:47:41', 0),
(86, '29th Jan', 1, 3, 0, 114, '0', '2018-01-29 05:19:48', 0),
(88, 'Core Building', 4, 7, 7, 0, '0', '2018-02-07 04:03:18', 0),
(90, 'Core Building', 4, 7, 7, 0, '0', '2018-02-07 04:08:45', 0);

-- --------------------------------------------------------

--
-- Table structure for table `iw_chat_group_feedback`
--

CREATE TABLE `iw_chat_group_feedback` (
  `group_feedback_id` int(11) NOT NULL,
  `chat_group_id` int(11) NOT NULL,
  `supervisor_id` int(11) NOT NULL,
  `placement_id` int(11) NOT NULL,
  `feedback` text COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `visibility` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `participants` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_chat_group_feedback`
--

INSERT INTO `iw_chat_group_feedback` (`group_feedback_id`, `chat_group_id`, `supervisor_id`, `placement_id`, `feedback`, `rating`, `visibility`, `created_date`, `participants`) VALUES
(583, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(582, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(3, 3, 44, 99, 'Team feedback with participants', 4, '0', '2017-11-21 07:33:43', 'Fred Test,John Teste'),
(5, 8, 44, 56, 'Team Feedback to Core Building', 3, '0', '2017-11-22 05:18:31', 'Kriti Jaiswal,Pankaj Pant,Aatif Nehal'),
(8, 36, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '1', '2017-11-23 05:15:49', ''),
(9, 36, 44, 56, 'Team Feedback to Core Building', 3, '1', '2017-11-23 05:15:49', ''),
(10, 36, 44, 56, 'Team Feedback to Core Building', 3, '0', '2017-11-23 05:15:49', ''),
(11, 36, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2017-11-23 05:56:03', 'Kriti Jaiswal'),
(46, 77, 44, 56, 'Team Feedback to Core Building', 3, '0', '2017-12-18 04:09:51', ''),
(17, 44, 3, 103, 'Team Feedback to John Teste', 5, '0', '2017-11-23 08:17:57', ''),
(16, 44, 3, 103, 'Team Feedback', 5, '0', '2017-11-23 08:17:57', ''),
(45, 77, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '1', '2017-12-18 04:09:51', ''),
(18, 44, 4, 10, 'team XD test from Duncan 23rd', 4, '0', '2017-11-23 08:25:56', 'David Test,John Teste,Fred Test'),
(22, 52, 44, 105, 'test', 4, '0', '2017-11-29 04:13:29', 'Fred Test'),
(408, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(407, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(406, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(405, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(404, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(44, 77, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2017-12-18 04:09:51', ''),
(47, 77, 44, 56, 'Team Feedback to Core Building', 3, '0', '2017-12-18 04:09:51', ''),
(48, 77, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2017-12-18 04:09:51', ''),
(49, 77, 44, 56, 'Team Feedback to Core Building', 3, '0', '2017-12-18 04:09:51', ''),
(50, 77, 44, 56, 'Team Feedback to Core Building', 3, '0', '2017-12-18 04:09:51', ''),
(51, 77, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2017-12-18 04:09:51', ''),
(52, 77, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '1', '2017-12-18 04:09:51', ''),
(53, 77, 44, 56, 'Team Feedback to Core Building', 3, '0', '2017-12-18 04:09:51', ''),
(54, 77, 44, 56, 'Team Feedback to Core Building', 3, '0', '2017-12-18 04:09:51', ''),
(55, 77, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2017-12-18 04:09:51', ''),
(56, 77, 44, 56, 'Team Feedback to Core Building', 3, '1', '2017-12-18 04:09:51', ''),
(57, 77, 44, 56, 'Team Feedback to Core Building', 3, '0', '2017-12-18 04:09:51', ''),
(403, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(402, 91, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:09:14', ''),
(401, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(400, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(399, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(398, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(397, 91, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:09:14', ''),
(78, 85, 44, 56, 'Team Feedback to Core Building', 3, '1', '2018-01-24 08:47:41', ''),
(79, 85, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-01-24 08:47:41', ''),
(80, 85, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-01-24 08:47:41', ''),
(81, 85, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-01-24 08:47:41', ''),
(82, 85, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-01-24 08:47:41', ''),
(83, 85, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-01-24 08:47:41', ''),
(84, 85, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-01-24 08:47:41', ''),
(85, 85, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-01-24 08:47:41', ''),
(86, 85, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-01-24 08:47:41', ''),
(87, 85, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-01-24 08:47:41', ''),
(88, 85, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-01-24 08:47:41', ''),
(89, 85, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-01-24 08:47:41', ''),
(90, 85, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-01-24 08:47:41', ''),
(91, 85, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-01-24 08:47:41', ''),
(92, 85, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-01-24 08:47:41', ''),
(93, 85, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-01-24 08:47:41', ''),
(94, 85, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-01-24 08:47:41', ''),
(95, 85, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-01-24 08:47:41', ''),
(96, 85, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-01-24 08:47:41', ''),
(97, 85, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-01-24 08:47:41', ''),
(98, 85, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-01-24 08:47:41', ''),
(99, 85, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-01-24 08:47:41', ''),
(100, 85, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-01-24 08:47:41', ''),
(101, 85, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-01-24 08:47:41', ''),
(102, 85, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-01-24 08:47:41', ''),
(190, 88, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:03:18', ''),
(189, 88, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:03:18', ''),
(188, 88, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:03:18', ''),
(187, 88, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:03:18', ''),
(186, 88, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:03:18', ''),
(185, 88, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:03:18', ''),
(184, 88, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:03:18', ''),
(183, 88, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:03:18', ''),
(182, 88, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:03:18', ''),
(181, 88, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:03:18', ''),
(180, 88, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:03:18', ''),
(179, 88, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:03:18', ''),
(178, 88, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:03:18', ''),
(177, 88, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:03:18', ''),
(176, 88, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:03:18', ''),
(175, 88, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:03:18', ''),
(174, 88, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:03:18', ''),
(173, 88, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:03:18', ''),
(172, 88, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:03:18', ''),
(171, 88, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:03:18', ''),
(170, 88, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:03:18', ''),
(169, 88, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:03:18', ''),
(168, 88, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:03:18', ''),
(167, 88, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:03:18', ''),
(166, 88, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:03:18', ''),
(165, 88, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:03:18', ''),
(164, 88, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:03:18', ''),
(163, 88, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:03:18', ''),
(162, 88, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:03:18', ''),
(161, 88, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:03:18', ''),
(160, 88, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:03:18', ''),
(159, 88, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:03:18', ''),
(158, 88, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:03:18', ''),
(157, 88, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:03:18', ''),
(156, 88, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:03:18', ''),
(155, 88, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:03:18', ''),
(154, 88, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:03:18', ''),
(153, 88, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:03:18', ''),
(152, 88, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:03:18', ''),
(191, 88, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:03:18', ''),
(192, 88, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:03:18', ''),
(193, 88, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:03:18', ''),
(194, 88, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:03:18', ''),
(195, 88, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:03:18', ''),
(196, 88, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:03:18', ''),
(197, 88, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:03:18', ''),
(198, 88, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:03:18', ''),
(199, 88, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:03:18', ''),
(200, 88, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:03:18', ''),
(375, 90, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:08:45', ''),
(374, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(373, 90, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:08:45', ''),
(372, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(371, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(370, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(369, 90, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:08:45', ''),
(368, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(367, 90, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:08:45', ''),
(366, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(365, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(364, 90, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:08:45', ''),
(363, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(362, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(361, 90, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:08:45', ''),
(360, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(359, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(358, 90, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:08:45', ''),
(357, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(356, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(355, 90, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:08:45', ''),
(354, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(353, 90, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:08:45', ''),
(352, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(351, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(350, 90, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:08:45', ''),
(349, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(348, 90, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:08:45', ''),
(347, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(346, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(345, 90, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:08:45', ''),
(344, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(343, 90, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:08:45', ''),
(342, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(341, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(340, 90, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:08:45', ''),
(339, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(338, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(337, 90, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:08:45', ''),
(336, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(335, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(334, 90, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:08:45', ''),
(333, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(332, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(331, 90, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:08:45', ''),
(330, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(329, 90, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:08:45', ''),
(328, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(327, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(326, 90, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:08:45', ''),
(325, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(324, 90, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:08:45', ''),
(323, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(322, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(321, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(320, 90, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:08:45', ''),
(319, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(318, 90, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:08:45', ''),
(317, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(316, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(315, 90, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:08:45', ''),
(314, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(313, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(312, 90, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:08:45', ''),
(311, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(310, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(309, 90, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:08:45', ''),
(308, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(307, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(306, 90, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:08:45', ''),
(305, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(304, 90, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:08:45', ''),
(303, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(302, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(301, 90, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:08:45', ''),
(300, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(299, 90, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:08:45', ''),
(376, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(377, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(378, 90, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:08:45', ''),
(379, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(380, 90, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:08:45', ''),
(381, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(382, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(383, 90, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:08:45', ''),
(384, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(385, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(386, 90, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:08:45', ''),
(387, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(388, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(389, 90, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:08:45', ''),
(390, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(391, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(392, 90, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:08:45', ''),
(393, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(394, 90, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:08:45', ''),
(395, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(396, 90, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:08:45', ''),
(409, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(410, 91, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:09:14', ''),
(411, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(412, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(413, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(414, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(415, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(416, 91, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:09:14', ''),
(417, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(418, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(419, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(420, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(421, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(422, 91, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:09:14', ''),
(423, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(424, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(425, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(426, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(427, 91, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:09:14', ''),
(428, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(429, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(430, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(431, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(432, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(433, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(434, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(435, 91, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:09:14', ''),
(436, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(437, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(438, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(439, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(440, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(441, 91, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:09:14', ''),
(442, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(443, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(444, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(445, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(446, 91, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:09:14', ''),
(447, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(448, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(449, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(450, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(451, 91, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:09:14', ''),
(452, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(453, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(454, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(455, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(456, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(457, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(458, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(459, 91, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:09:14', ''),
(460, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(461, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(462, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(463, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(464, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(465, 91, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:09:14', ''),
(466, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(467, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(468, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(469, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(470, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(471, 91, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:09:14', ''),
(472, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(473, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(474, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(475, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(476, 91, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:09:14', ''),
(477, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(478, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(479, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(480, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(481, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(482, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(483, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(484, 91, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:09:14', ''),
(485, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(486, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(487, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(488, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(489, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(490, 91, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:09:14', ''),
(491, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(492, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(493, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(494, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(495, 91, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:09:14', ''),
(496, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(497, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(498, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(499, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(500, 91, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:09:14', ''),
(501, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(502, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(503, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(504, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(505, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(506, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(507, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(508, 91, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:09:14', ''),
(509, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(510, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(511, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(512, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(513, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(514, 91, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:09:14', ''),
(515, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(516, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(517, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(518, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(519, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(520, 91, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:09:14', ''),
(521, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(522, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(523, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(524, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(525, 91, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:09:14', ''),
(526, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(527, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(528, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(529, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(530, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(531, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(532, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(533, 91, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:09:14', ''),
(534, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(535, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(536, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(537, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(538, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(539, 91, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:09:14', ''),
(540, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(541, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(542, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(543, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(544, 91, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:09:14', ''),
(545, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(546, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(547, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(548, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(549, 91, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:09:14', ''),
(550, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(551, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(552, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(553, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(554, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(555, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(556, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(557, 91, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:09:14', ''),
(558, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(559, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(560, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(561, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(562, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(563, 91, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:09:14', ''),
(564, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(565, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(566, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(567, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(568, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(569, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(570, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(571, 91, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:09:14', ''),
(572, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(573, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(574, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(575, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(576, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(577, 91, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 04:09:14', ''),
(578, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(579, 91, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:09:14', ''),
(580, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(581, 91, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 04:09:14', ''),
(584, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(585, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(586, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(587, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(588, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(589, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(590, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(591, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(592, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(593, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(594, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(595, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(596, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(597, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(598, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(599, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(600, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(601, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(602, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(603, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(604, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(605, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(606, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(607, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(608, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(609, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(610, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(611, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(612, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(613, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(614, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(615, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(616, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(617, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(618, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(619, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(620, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(621, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(622, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(623, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(624, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(625, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(626, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(627, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(628, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(629, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(630, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(631, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(632, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(633, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(634, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(635, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(636, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(637, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(638, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(639, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(640, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(641, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(642, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(643, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(644, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(645, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(646, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(647, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(648, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(649, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(650, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(651, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(652, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(653, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(654, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(655, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(656, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(657, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(658, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(659, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(660, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(661, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(662, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(663, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(664, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(665, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(666, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(667, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(668, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(669, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(670, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(671, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(672, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(673, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(674, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(675, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(676, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(677, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(678, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(679, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(680, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(681, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(682, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(683, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(684, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(685, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(686, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(687, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(688, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(689, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(690, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(691, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(692, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(693, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(694, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(695, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(696, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(697, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(698, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(699, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(700, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(701, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(702, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(703, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(704, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(705, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(706, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(707, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(708, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(709, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(710, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(711, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(712, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(713, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(714, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(715, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(716, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(717, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(718, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(719, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(720, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(721, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(722, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(723, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(724, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(725, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(726, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(727, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(728, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(729, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(730, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(731, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(732, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(733, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(734, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(735, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(736, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(737, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(738, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(739, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(740, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(741, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(742, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(743, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(744, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(745, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(746, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(747, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(748, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(749, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(750, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(751, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(752, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(753, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', '');
INSERT INTO `iw_chat_group_feedback` (`group_feedback_id`, `chat_group_id`, `supervisor_id`, `placement_id`, `feedback`, `rating`, `visibility`, `created_date`, `participants`) VALUES
(754, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(755, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(756, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(757, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(758, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(759, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(760, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(761, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(762, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(763, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(764, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(765, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(766, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(767, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(768, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(769, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(770, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(771, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(772, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(773, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(774, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(775, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(776, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(777, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(778, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(779, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(780, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(781, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(782, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(783, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(784, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(785, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(786, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(787, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(788, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(789, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(790, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(791, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(792, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(793, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(794, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(795, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(796, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(797, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(798, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(799, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(800, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(801, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(802, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(803, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(804, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(805, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(806, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(807, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(808, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(809, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(810, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(811, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(812, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(813, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(814, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(815, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(816, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(817, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(818, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(819, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(820, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(821, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(822, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(823, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(824, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(825, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(826, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(827, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(828, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(829, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(830, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(831, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(832, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(833, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(834, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(835, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(836, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(837, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(838, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(839, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(840, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(841, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(842, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(843, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(844, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(845, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(846, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(847, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(848, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(849, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(850, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(851, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(852, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(853, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(854, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(855, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(856, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(857, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(858, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(859, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(860, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(861, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(862, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(863, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(864, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(865, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(866, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(867, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(868, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(869, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(870, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(871, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(872, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(873, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(874, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(875, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(876, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(877, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(878, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(879, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(880, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(881, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(882, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(883, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(884, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(885, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(886, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(887, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(888, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(889, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(890, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(891, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(892, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(893, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(894, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(895, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(896, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(897, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(898, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(899, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(900, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(901, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(902, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(903, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(904, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(905, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(906, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(907, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(908, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(909, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(910, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(911, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(912, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(913, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(914, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(915, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(916, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(917, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(918, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(919, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(920, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(921, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(922, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(923, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(924, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(925, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(926, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(927, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(928, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(929, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(930, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(931, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(932, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(933, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(934, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(935, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(936, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(937, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(938, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(939, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(940, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(941, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(942, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(943, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(944, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(945, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(946, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(947, 92, 3, 102, 'Core Building Feedback from Raveena Nigam', 3, '0', '2018-02-07 15:17:27', ''),
(948, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(949, 92, 4, 10, 'Team Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 15:17:27', ''),
(950, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', ''),
(951, 92, 44, 56, 'Team Feedback to Core Building', 3, '0', '2018-02-07 15:17:27', '');

-- --------------------------------------------------------

--
-- Table structure for table `iw_chat_group_profile`
--

CREATE TABLE `iw_chat_group_profile` (
  `group_profile_id` int(11) NOT NULL,
  `chat_group_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `visibility` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_chat_group_profile`
--

INSERT INTO `iw_chat_group_profile` (`group_profile_id`, `chat_group_id`, `title`, `short_description`, `visibility`, `added_date`) VALUES
(9, 11, 'Practice Team XA', 'We can do IT projects.', '0', '2017-11-20 22:57:41'),
(53, 54, 'Test Team XE', 'IT team', '0', '2017-12-04 02:22:12'),
(20, 21, 'Hub Prevention', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,', '1', '2017-11-22 05:03:24'),
(2, 3, 'Lorem Ipsum', 'Approved by Admin - Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.', '1', '2017-11-20 07:12:16'),
(3, 3, 'Team Profile', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,', '1', '2017-11-20 07:15:06'),
(4, 7, 'Corp Association', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,', '0', '2017-11-20 08:43:51'),
(5, 7, 'Hub Prevention', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,', '1', '2017-11-20 08:44:13'),
(6, 8, 'Hub Prevention', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,', '1', '2017-11-20 08:51:14'),
(7, 8, 'Corp Association', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,', '1', '2017-11-20 08:51:14'),
(8, 10, 'Lorem Ipsum', 'Approved by Admin - Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.', '1', '2017-11-20 13:01:09'),
(12, 17, 'Practice Team', 'Testing', '0', '2017-11-21 22:54:25'),
(32, 36, 'Hub Prevention', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,', '1', '2017-11-23 05:15:49'),
(31, 34, 'test XD', 'test XD', '0', '2017-11-23 00:27:53'),
(21, 21, 'Corp Association', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,', '1', '2017-11-22 05:03:24'),
(22, 23, 'Section 1.10.33 of "de Finibus Bonorum et Malorum", written by Cicero in 45 BC', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.', '1', '2017-11-22 06:12:55'),
(23, 23, 'Similique sunt in culpa qui officia deserunt mollitia animi', 'Section 1.10.33 of "de Finibus Bonorum et Malorum", written by Cicero in 45 BC', '1', '2017-11-22 06:12:55'),
(168, 92, 'Corp Association', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,', '0', '2018-02-07 15:17:27'),
(167, 92, 'Hub Prevention', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,', '0', '2018-02-07 15:17:27'),
(36, 44, 'test XD', 'test XD', '1', '2017-11-23 08:17:57'),
(33, 36, 'Corp Association', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,', '1', '2017-11-23 05:15:49'),
(38, 47, 'Practice Team XA', 'We can do IT projects.', '1', '2017-11-27 00:56:14'),
(40, 50, 'Biology Team v3', 'we can work on biology projects', '1', '2017-11-29 02:17:17'),
(41, 50, 'Qualifications', 'We have qualifications in biology and environment and conservation', '0', '2017-11-29 02:17:51'),
(43, 50, 'publications version 3', 'we have published papers', '0', '2017-11-29 02:19:45'),
(44, 50, 'Experience', 'We have worked on bio projects at university', '1', '2017-11-29 02:21:42'),
(51, 52, 'Qualifications', 'We have qualifications in biology and environment and conservation', '0', '2017-11-29 03:52:06'),
(50, 52, 'publications', 'we have published papers', '0', '2017-11-29 03:52:06'),
(49, 52, 'Experience', 'We have worked on bio projects at university', '0', '2017-11-29 03:52:06'),
(52, 52, 'Biology Team', 'we can work on biology projects', '0', '2017-11-29 03:52:06'),
(54, 54, 'Experience', 'We have worked on IT projects', '1', '2017-12-04 02:22:31'),
(166, 91, 'Corp Association', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,', '0', '2018-02-07 04:09:14'),
(165, 91, 'Hub Prevention', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,', '0', '2018-02-07 04:09:14'),
(121, 77, 'Hub Prevention', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,', '1', '2017-12-18 04:09:51'),
(122, 77, 'Corp Association', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,', '0', '2017-12-18 04:09:51'),
(115, 75, 'Practice Team XA', 'We can do IT projects.', '0', '2017-12-17 08:47:08'),
(120, 50, 'New section', 'Add section to team profile', '0', '2017-12-17 09:00:29'),
(156, 85, 'Corp Association', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,', '1', '2018-01-24 08:47:41'),
(155, 85, 'Hub Prevention', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,', '1', '2018-01-24 08:47:41'),
(160, 88, 'Corp Association', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,', '0', '2018-02-07 04:03:18'),
(159, 88, 'Hub Prevention', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,', '0', '2018-02-07 04:03:18'),
(164, 90, 'Corp Association', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,', '0', '2018-02-07 04:08:45'),
(163, 90, 'Hub Prevention', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,', '0', '2018-02-07 04:08:45');

-- --------------------------------------------------------

--
-- Table structure for table `iw_chat_group_profile_placement`
--

CREATE TABLE `iw_chat_group_profile_placement` (
  `group_profile_placement_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `placement_id` int(11) NOT NULL,
  `chat_group_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `visibility` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `is_archived` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `participants` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_chat_group_profile_placement`
--

INSERT INTO `iw_chat_group_profile_placement` (`group_profile_placement_id`, `user_id`, `placement_id`, `chat_group_id`, `title`, `short_description`, `visibility`, `message`, `status`, `is_archived`, `is_deleted`, `added_date`, `participants`) VALUES
(1, 41, 99, 3, '', '', '0', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.', 4, '0', '0', '2017-11-20 07:54:30', ''),
(2, 7, 56, 8, '', '', '0', '"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,', 4, '0', '0', '2017-11-20 08:53:04', ''),
(3, 41, 56, 10, '', '', '0', 'similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.', 4, '0', '0', '2017-11-20 13:29:46', ''),
(13, 40, 94, 34, '', '', '0', 'test', 4, '0', '0', '2017-11-23 00:34:35', ''),
(8, 7, 9, 21, '', '', '0', 'similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.', 5, '0', '0', '2017-11-23 00:22:54', ''),
(9, 40, 102, 23, '', '', '0', '', 4, '0', '0', '2017-11-22 06:43:18', ''),
(57, 7, 102, 92, '', '', '0', '', 2, '0', '0', '2018-02-07 15:17:27', ''),
(17, 40, 10, 44, '', '', '0', 'test message', 4, '0', '0', '2017-11-23 08:23:18', ''),
(14, 7, 10, 36, '', '', '0', '', 4, '0', '0', '2017-11-23 05:51:09', ''),
(22, 39, 105, 52, '', '', '0', 'application', 4, '0', '0', '2017-11-29 04:10:25', ''),
(56, 7, 109, 91, '', '', '0', '', 2, '0', '0', '2018-02-07 04:09:14', ''),
(41, 41, 111, 75, '', '', '0', '', 2, '0', '0', '2017-12-17 08:47:08', ''),
(43, 7, 113, 77, '', '', '0', 'Team Application', 1, '0', '0', '2017-12-18 04:13:49', ''),
(51, 7, 114, 85, '', '', '0', 'Applied', 5, '0', '0', '2018-01-24 13:21:44', ''),
(19, 41, 102, 47, '', '', '0', '', 1, '0', '0', '2017-11-27 00:58:55', ''),
(53, 7, 97, 88, '', '', '0', '', 2, '0', '0', '2018-02-07 04:03:18', ''),
(55, 7, 99, 90, '', '', '0', '', 2, '0', '0', '2018-02-07 04:08:45', '');

--
-- Triggers `iw_chat_group_profile_placement`
--
DELIMITER $$
CREATE TRIGGER `update_user_status` AFTER UPDATE ON `iw_chat_group_profile_placement` FOR EACH ROW BEGIN
        SET @chat_group_id = OLD.chat_group_id; 
        SET @user_id = OLD.user_id; 
        SET @status = NEW.status; 

        UPDATE iw_chat_group_user SET submission_status = @status WHERE chat_group_id = @chat_group_id AND user_id = @user_id; 

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `iw_chat_group_user`
--

CREATE TABLE `iw_chat_group_user` (
  `chat_group_user_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `chat_group_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `submission_status` int(11) NOT NULL DEFAULT '1',
  `is_withdrawn` enum('0','1') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_chat_group_user`
--

INSERT INTO `iw_chat_group_user` (`chat_group_user_id`, `user_id`, `chat_group_id`, `status`, `submission_status`, `is_withdrawn`) VALUES
(1, 44, 1, 1, 1, '0'),
(2, 40, 1, 1, 1, '0'),
(362, 40, 11, 0, 1, '0'),
(394, 10, 85, 1, 1, '0'),
(363, 39, 11, 1, 1, '0'),
(9, 39, 3, 1, 4, '0'),
(10, 40, 3, 1, 4, '0'),
(11, 41, 3, 1, 1, '0'),
(12, 41, 4, 1, 1, '0'),
(13, 44, 4, 1, 1, '0'),
(14, 44, 5, 1, 1, '0'),
(15, 39, 5, 1, 1, '0'),
(16, 44, 6, 1, 1, '0'),
(17, 39, 6, 1, 1, '0'),
(18, 40, 6, 1, 1, '0'),
(19, 44, 6, 1, 1, '0'),
(389, 14, 7, 1, 1, '0'),
(390, 10, 7, 1, 1, '0'),
(391, 13, 7, 1, 1, '0'),
(392, 7, 7, 1, 1, '0'),
(32, 7, 8, 1, 4, '0'),
(33, 10, 8, 1, 4, '0'),
(34, 13, 8, 1, 4, '0'),
(35, 14, 8, 1, 5, '0'),
(40, 44, 9, 1, 1, '0'),
(37, 7, 9, 1, 1, '0'),
(38, 10, 9, 1, 1, '0'),
(39, 13, 9, 1, 1, '0'),
(41, 44, 9, 1, 1, '0'),
(42, 39, 10, 1, 4, '0'),
(43, 40, 10, 1, 5, '0'),
(44, 41, 10, 1, 4, '0'),
(45, 41, 9, 1, 1, '0'),
(46, 41, 9, 1, 1, '0'),
(47, 39, 9, 1, 1, '0'),
(48, 39, 9, 1, 1, '0'),
(56, 44, 12, 1, 1, '0'),
(57, 44, 12, 1, 1, '0'),
(172, 41, 34, 1, 5, '0'),
(175, 40, 34, 1, 1, '0'),
(173, 39, 34, 1, 1, '0'),
(64, 44, 14, 1, 1, '0'),
(62, 40, 14, 1, 1, '0'),
(63, 41, 14, 1, 1, '0'),
(65, 44, 14, 1, 1, '0'),
(66, 39, 14, 1, 1, '0'),
(67, 39, 14, 1, 1, '0'),
(69, 44, 15, 1, 1, '0'),
(70, 44, 15, 1, 1, '0'),
(74, 39, 17, 0, 1, '0'),
(75, 41, 17, 0, 1, '0'),
(76, 40, 17, 1, 1, '0'),
(359, 39, 54, 1, 1, '0'),
(372, 14, 77, 1, 1, '0'),
(364, 41, 11, 1, 1, '0'),
(101, 7, 21, 1, 1, '0'),
(102, 10, 21, 1, 1, '0'),
(103, 13, 21, 1, 1, '0'),
(104, 14, 21, 1, 1, '0'),
(111, 44, 22, 1, 1, '0'),
(106, 7, 22, 1, 1, '0'),
(107, 10, 22, 1, 1, '0'),
(108, 13, 22, 1, 1, '0'),
(109, 39, 22, 1, 1, '0'),
(110, 41, 22, 1, 1, '0'),
(112, 44, 22, 1, 1, '0'),
(113, 39, 23, 1, 1, '0'),
(119, 40, 23, 1, 4, '0'),
(115, 41, 23, 1, 1, '0'),
(422, 14, 92, 1, 1, '0'),
(421, 13, 92, 1, 1, '0'),
(420, 10, 92, 1, 1, '0'),
(419, 7, 92, 1, 1, '0'),
(124, 7, 23, 1, 1, '0'),
(125, 7, 23, 1, 1, '0'),
(126, 7, 25, 1, 1, '0'),
(127, 3, 25, 1, 1, '0'),
(131, 3, 26, 1, 1, '0'),
(129, 40, 26, 1, 1, '0'),
(130, 7, 26, 1, 1, '0'),
(132, 3, 26, 1, 1, '0'),
(217, 41, 36, 1, 1, '0'),
(216, 39, 36, 1, 1, '0'),
(191, 13, 38, 1, 1, '0'),
(190, 4, 38, 1, 1, '0'),
(215, 41, 44, 1, 4, '0'),
(214, 40, 44, 1, 4, '0'),
(163, 4, 31, 1, 1, '0'),
(164, 40, 31, 1, 1, '0'),
(165, 4, 32, 1, 1, '0'),
(166, 41, 32, 1, 1, '0'),
(168, 4, 33, 1, 1, '0'),
(169, 4, 33, 1, 1, '0'),
(174, 39, 34, 1, 1, '0'),
(176, 40, 34, 1, 1, '0'),
(179, 4, 35, 1, 1, '0'),
(180, 39, 35, 1, 1, '0'),
(181, 7, 36, 1, 4, '0'),
(182, 10, 36, 1, 5, '0'),
(183, 13, 36, 1, 4, '0'),
(184, 14, 36, 1, 1, '0'),
(213, 39, 44, 1, 4, '0'),
(355, 40, 50, 1, 1, '0'),
(371, 13, 77, 1, 1, '0'),
(198, 4, 39, 1, 1, '0'),
(199, 10, 39, 1, 1, '0'),
(370, 10, 77, 1, 1, '0'),
(210, 3, 42, 1, 1, '0'),
(208, 40, 42, 1, 1, '0'),
(209, 39, 42, 1, 1, '0'),
(211, 3, 43, 1, 1, '0'),
(212, 40, 43, 1, 1, '0'),
(218, 40, 36, 1, 1, '0'),
(219, 40, 45, 1, 1, '0'),
(220, 39, 45, 1, 1, '0'),
(335, 41, 75, 1, 1, '0'),
(334, 39, 75, 1, 1, '0'),
(228, 44, 48, 1, 1, '0'),
(225, 40, 47, 1, 1, '0'),
(226, 41, 47, 1, 1, '0'),
(229, 40, 48, 1, 1, '0'),
(393, 7, 85, 1, 5, '0'),
(356, 41, 50, 0, 1, '0'),
(267, 41, 52, 1, 1, '0'),
(266, 40, 52, 1, 1, '0'),
(265, 39, 52, 1, 4, '0'),
(269, 44, 53, 1, 1, '0'),
(270, 39, 53, 1, 1, '0'),
(360, 7, 54, 0, 1, '0'),
(358, 41, 54, 1, 1, '0'),
(418, 14, 91, 1, 1, '0'),
(417, 13, 91, 1, 1, '0'),
(416, 10, 91, 1, 1, '0'),
(415, 7, 91, 1, 1, '0'),
(293, 3, 56, 1, 1, '0'),
(292, 7, 56, 1, 1, '0'),
(369, 7, 77, 1, 1, '0'),
(357, 39, 50, 1, 1, '0'),
(361, 40, 54, 1, 1, '0'),
(301, 44, 58, 1, 1, '0'),
(298, 39, 58, 1, 1, '0'),
(299, 40, 58, 1, 1, '0'),
(300, 41, 58, 1, 1, '0'),
(395, 13, 85, 1, 1, '0'),
(396, 14, 85, 1, 1, '0'),
(398, 3, 86, 1, 1, '0'),
(406, 14, 88, 1, 1, '0'),
(405, 13, 88, 1, 1, '0'),
(404, 10, 88, 1, 1, '0'),
(403, 7, 88, 1, 1, '0'),
(414, 14, 90, 1, 1, '0'),
(413, 13, 90, 1, 1, '0'),
(412, 10, 90, 1, 1, '0'),
(411, 7, 90, 1, 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `iw_chat_message`
--

CREATE TABLE `iw_chat_message` (
  `chat_message_id` int(11) NOT NULL,
  `chat_message` text COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_chat_message`
--

INSERT INTO `iw_chat_message` (`chat_message_id`, `chat_message`, `created_date`) VALUES
(1, 'Hi John Teste', '2017-11-20 06:30:45'),
(2, 'Hi Mary', '2017-11-20 06:31:16'),
(3, 'John, 20th Nov', '2017-11-20 06:32:01'),
(4, '', '2017-11-20 06:55:57'),
(5, '', '2017-11-20 06:55:57'),
(6, '', '2017-11-20 06:55:57'),
(7, 'From David to Mary', '2017-11-20 07:20:28'),
(8, 'Mary to Fred', '2017-11-20 07:24:48'),
(9, 'Mary to John', '2017-11-20 07:25:00'),
(10, 'Team Messages', '2017-11-20 07:30:29'),
(11, '', '2017-11-20 07:54:52'),
(12, '', '2017-11-20 07:54:52'),
(13, '', '2017-11-20 07:54:52'),
(14, '', '2017-11-20 08:43:51'),
(15, '', '2017-11-20 08:43:51'),
(16, '', '2017-11-20 08:43:51'),
(17, '', '2017-11-20 08:43:51'),
(18, '', '2017-11-20 09:30:37'),
(19, '', '2017-11-20 09:30:37'),
(20, '', '2017-11-20 09:30:37'),
(21, '', '2017-11-20 09:30:37'),
(22, '', '2017-11-20 13:29:46'),
(23, '', '2017-11-20 13:33:44'),
(24, 'hello Team', '2017-11-20 13:40:51'),
(25, 'test message 21st Nov', '2017-11-20 22:39:41'),
(26, 'test message 21st Nov', '2017-11-20 22:39:56'),
(27, 'test message 21st Nov', '2017-11-20 22:40:13'),
(28, '', '2017-11-20 22:57:41'),
(186, 'sdfghjk', '2018-01-29 12:19:42'),
(30, '', '2017-11-20 22:57:41'),
(185, '', '2018-01-29 05:19:49'),
(32, 'message to Mary 21st Nov', '2017-11-20 23:04:13'),
(33, 'message to Mary 21st Nov', '2017-11-20 23:04:28'),
(34, '', '2017-11-20 23:10:50'),
(35, '21st Nov test', '2017-11-20 23:20:18'),
(36, 'test 21st Nov', '2017-11-20 23:22:43'),
(37, 'query test 21st Nov', '2017-11-20 23:23:13'),
(38, '', '2017-11-20 23:38:02'),
(39, '', '2017-11-20 23:38:02'),
(40, '', '2017-11-20 23:38:02'),
(41, '', '2017-11-20 23:40:42'),
(42, 'hello I\'ve joined', '2017-11-20 23:41:29'),
(43, '', '2017-11-21 22:27:16'),
(44, '', '2017-11-21 22:54:25'),
(45, '', '2017-11-21 22:54:25'),
(46, '', '2017-11-21 22:54:25'),
(47, '', '2017-11-21 22:54:29'),
(48, '', '2017-11-21 22:54:29'),
(49, '', '2017-11-21 22:54:29'),
(50, 'message on 22nd', '2017-11-21 23:06:12'),
(51, 'xxxxzzzz', '2017-11-21 23:14:31'),
(52, 'Team Messages', '2017-11-22 05:19:43'),
(56, 'Hello Fred', '2017-11-22 05:38:47'),
(55, '', '2017-11-22 05:36:48'),
(57, '', '2017-11-22 06:19:37'),
(58, '', '2017-11-22 07:22:30'),
(59, 'Hi Raveena', '2017-11-22 10:11:29'),
(60, 'How are you?', '2017-11-22 10:13:12'),
(61, '', '2017-11-22 10:18:17'),
(62, '', '2017-11-22 10:18:17'),
(63, '', '2017-11-22 10:18:17'),
(64, 'Hi Team', '2017-11-22 10:18:31'),
(65, 'Hi Team', '2017-11-22 10:19:11'),
(66, 'Hi Team', '2017-11-22 10:19:23'),
(67, 'Hi Team', '2017-11-22 10:19:25'),
(68, 'Hi Team', '2017-11-22 10:19:39'),
(69, 'Hi Team', '2017-11-22 10:23:37'),
(70, 'Hi Team', '2017-11-22 10:24:49'),
(71, 'Hi Team', '2017-11-22 10:25:55'),
(72, 'Hi Team', '2017-11-22 10:28:18'),
(73, 'Hi Team', '2017-11-22 10:30:27'),
(74, 'Hi Team', '2017-11-22 10:33:04'),
(75, 'Hi Team', '2017-11-22 10:36:21'),
(76, 'Hi Team', '2017-11-22 10:39:38'),
(77, '', '2017-11-22 23:45:23'),
(78, '', '2017-11-22 23:47:27'),
(79, '', '2017-11-22 23:58:14'),
(80, '', '2017-11-22 23:58:14'),
(81, '', '2017-11-22 23:58:14'),
(120, 'can i join?', '2017-11-27 23:30:20'),
(134, '', '2017-12-04 02:22:12'),
(84, '', '2017-11-23 00:02:00'),
(85, '', '2017-11-23 00:13:42'),
(86, '', '2017-11-23 00:14:49'),
(87, '', '2017-11-23 00:15:38'),
(88, 'message TL', '2017-11-23 00:17:37'),
(89, 'message', '2017-11-23 00:18:53'),
(90, '', '2017-11-23 00:21:02'),
(91, '', '2017-11-23 00:30:49'),
(92, '', '2017-11-23 00:34:35'),
(93, 'test message on 23rd', '2017-11-23 00:35:52'),
(94, 'Supervisor Duncan Rayner has recommended you for placement Engineering 3', '2017-11-23 03:46:06'),
(95, 'recommend post test', '2017-11-23 03:46:30'),
(96, 'Supervisor Duncan Rayner has recommended you for placement Data Analysis version 2', '2017-11-23 03:49:51'),
(97, 'test from DR 23rd Nov', '2017-11-23 03:50:24'),
(98, 'Supervisor Mary Smithe has recommended you for placement Data Analysis version 2', '2017-11-23 03:53:39'),
(99, '', '2017-11-23 05:51:09'),
(100, 'Feedback to Aatif for Data Analysis', '2017-11-23 05:55:26'),
(101, '', '2017-11-23 05:56:49'),
(102, '', '2017-11-23 05:57:50'),
(103, '', '2017-11-23 05:58:18'),
(104, 'Message to Pankaj', '2017-11-23 06:01:20'),
(105, '', '2017-11-23 06:53:55'),
(106, '', '2017-11-23 08:11:52'),
(107, '', '2017-11-23 08:11:52'),
(108, '', '2017-11-23 08:11:52'),
(109, 'Hello John', '2017-11-23 08:12:33'),
(110, 'Hi John- how are you?', '2017-11-23 08:15:34'),
(111, 'I am good, how are you', '2017-11-23 08:17:35'),
(112, 'Hi Raveena', '2017-11-23 08:19:23'),
(113, 'Hi Raveena', '2017-11-23 08:20:42'),
(114, '', '2017-11-23 08:21:42'),
(115, '', '2017-11-23 08:22:30'),
(116, '', '2017-11-23 08:23:18'),
(117, 'test message to Fred', '2017-11-24 01:22:18'),
(118, 'testing', '2017-11-24 01:34:59'),
(119, 'message from John', '2017-11-24 01:39:48'),
(121, '', '2017-11-27 23:34:42'),
(122, '', '2017-11-27 23:36:15'),
(123, '', '2017-11-29 02:17:17'),
(124, '', '2017-11-29 02:17:17'),
(125, '', '2017-11-29 02:17:17'),
(126, 'welcome to team XD', '2017-11-29 02:31:46'),
(127, '', '2017-11-29 04:01:22'),
(128, 'test 29th', '2017-11-29 04:02:33'),
(129, 'test 29th', '2017-11-29 04:02:42'),
(130, 'test', '2017-11-29 04:03:38'),
(131, '', '2017-11-29 04:10:25'),
(132, 'hi john', '2017-11-30 11:12:15'),
(133, 'project message', '2017-12-04 00:04:10'),
(181, '', '2017-12-17 09:11:23'),
(136, '', '2017-12-04 02:22:12'),
(137, '', '2017-12-04 02:22:12'),
(180, '', '2017-12-17 09:09:38'),
(139, 'test reply', '2017-12-05 00:39:57'),
(140, 'project test', '2017-12-05 00:42:24'),
(141, 'message here', '2017-12-05 00:46:36'),
(142, 'test 2', '2017-12-05 00:47:19'),
(143, 'test 3', '2017-12-05 00:47:41'),
(144, 'test4', '2017-12-05 00:48:00'),
(145, 'test 5', '2017-12-05 00:48:13'),
(146, 'test6', '2017-12-05 00:48:28'),
(147, 'test7', '2017-12-05 00:48:49'),
(148, 'test reply', '2017-12-05 00:52:41'),
(149, 'ENG 3 test board', '2017-12-05 00:57:36'),
(150, 'test 2', '2017-12-05 00:58:12'),
(151, 'eng pl 2 message board', '2017-12-05 00:58:57'),
(152, 'Hello', '2017-12-05 12:58:41'),
(153, '', '2017-12-07 08:49:10'),
(154, '', '2017-12-07 08:49:10'),
(155, 'feedback', '2017-12-07 22:50:17'),
(156, 'test to Mary Smith 11th Dec', '2017-12-11 03:17:43'),
(157, 'message to Mary Smith 11th Nov from David Test', '2017-12-11 03:18:14'),
(158, 'test message on 11th to David T', '2017-12-11 03:23:35'),
(159, 'asdfghj', '2017-12-11 09:22:56'),
(160, 'asdfg', '2017-12-11 09:23:02'),
(161, 'message to Fred', '2017-12-12 00:32:09'),
(162, '', '2017-12-12 01:11:36'),
(163, '', '2017-12-12 01:11:36'),
(164, '', '2017-12-12 01:11:36'),
(165, '', '2017-12-12 01:11:36'),
(166, 'Welcome to Discovery 4', '2017-12-12 01:12:19'),
(167, 'message to Fred on 12th', '2017-12-12 01:22:38'),
(168, 'test 2 on 12th', '2017-12-12 01:31:32'),
(169, 'test c on 12th', '2017-12-12 01:32:36'),
(170, 'test d on 12th', '2017-12-12 01:33:11'),
(171, 'testing for John 13th Dec', '2017-12-12 23:49:00'),
(184, 'asdfg', '2018-01-01 12:02:45'),
(183, 'ttt', '2018-01-01 12:02:24'),
(182, 'test message 23rd', '2017-12-22 14:52:26'),
(179, 'first message for project board', '2017-12-13 00:10:01'),
(178, 'welcome', '2017-12-13 00:09:10'),
(187, 'sdfghjkl', '2018-01-29 12:19:44'),
(188, 'sdfghjk', '2018-01-29 12:19:46'),
(189, 'asdfgh', '2018-01-29 12:19:49'),
(190, 'cdcdxc', '2018-02-12 04:11:47'),
(191, 'Test', '2018-02-12 04:15:06'),
(192, 'Test', '2018-02-12 04:17:13'),
(193, 'Test', '2018-02-12 04:17:14'),
(194, 'test', '2018-02-12 04:17:29'),
(195, 'test', '2018-02-12 04:17:39'),
(196, 'test', '2018-02-12 04:17:41'),
(197, 'test', '2018-02-12 04:17:48'),
(198, 'test', '2018-02-12 04:17:58'),
(199, 'test', '2018-02-12 04:18:05'),
(200, 'rr', '2018-02-12 05:08:20'),
(201, 'rr', '2018-02-12 05:08:21'),
(202, 't', '2018-02-12 05:08:29'),
(203, 'wswdsd', '2018-02-12 05:25:31'),
(204, 'Hiii', '2018-02-13 03:39:59'),
(205, 'Hello', '2018-02-13 03:40:21'),
(206, 'HIii', '2018-02-13 03:40:38'),
(207, 'Hiii', '2018-02-13 03:40:56'),
(208, 'hii', '2018-02-13 03:41:04'),
(209, 'Hlw', '2018-02-13 03:41:34'),
(210, 'Hiii', '2018-02-13 03:45:20'),
(211, 'Hello', '2018-02-13 03:45:23'),
(212, 'How r u', '2018-02-13 03:45:31');

-- --------------------------------------------------------

--
-- Table structure for table `iw_chat_message_details`
--

CREATE TABLE `iw_chat_message_details` (
  `chat_message_details_id` int(11) NOT NULL,
  `chat_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `is_read` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_chat_message_details`
--

INSERT INTO `iw_chat_message_details` (`chat_message_details_id`, `chat_id`, `sender_id`, `receiver_id`, `is_read`, `created_date`) VALUES
(1, 1, 44, 40, '0', '2017-11-20 06:30:45'),
(2, 2, 40, 44, '0', '2017-11-20 06:31:16'),
(3, 3, 44, 40, '0', '2017-11-20 06:32:01'),
(4, 4, 41, 40, '0', '2017-11-20 06:55:57'),
(5, 5, 41, 39, '0', '2017-11-20 06:55:57'),
(6, 6, 41, 41, '0', '2017-11-20 06:55:57'),
(7, 7, 41, 44, '0', '2017-11-20 07:20:28'),
(8, 8, 44, 39, '0', '2017-11-20 07:24:48'),
(9, 9, 44, 40, '0', '2017-11-20 07:25:00'),
(10, 10, 40, 39, '0', '2017-11-20 07:30:29'),
(11, 10, 40, 40, '0', '2017-11-20 07:30:29'),
(12, 10, 40, 41, '0', '2017-11-20 07:30:29'),
(13, 11, 44, 39, '0', '2017-11-20 07:54:52'),
(14, 12, 44, 40, '0', '2017-11-20 07:54:52'),
(15, 13, 44, 44, '0', '2017-11-20 07:54:52'),
(16, 14, 7, 14, '1', '2017-11-20 08:43:51'),
(17, 15, 7, 10, '1', '2017-11-20 08:43:51'),
(18, 16, 7, 13, '0', '2017-11-20 08:43:51'),
(19, 17, 7, 7, '0', '2017-11-20 08:43:51'),
(20, 18, 44, 7, '1', '2017-11-20 09:30:37'),
(21, 19, 44, 10, '1', '2017-11-20 09:30:37'),
(22, 20, 44, 13, '1', '2017-11-20 09:30:37'),
(23, 21, 44, 44, '0', '2017-11-20 09:30:37'),
(24, 22, 41, 41, '0', '2017-11-20 13:29:46'),
(25, 23, 39, 39, '0', '2017-11-20 13:33:44'),
(26, 24, 44, 7, '1', '2017-11-20 13:40:51'),
(27, 24, 44, 10, '1', '2017-11-20 13:40:51'),
(28, 24, 44, 13, '1', '2017-11-20 13:40:51'),
(29, 24, 44, 39, '0', '2017-11-20 13:40:51'),
(30, 24, 44, 41, '0', '2017-11-20 13:40:51'),
(31, 25, 44, 39, '0', '2017-11-20 22:39:41'),
(32, 26, 44, 40, '0', '2017-11-20 22:39:56'),
(33, 27, 44, 41, '0', '2017-11-20 22:40:13'),
(34, 28, 41, 39, '0', '2017-11-20 22:57:41'),
(36, 30, 41, 41, '0', '2017-11-20 22:57:41'),
(40, 32, 39, 44, '0', '2017-11-20 23:04:13'),
(41, 33, 39, 44, '0', '2017-11-20 23:04:28'),
(42, 34, 44, 44, '0', '2017-11-20 23:10:50'),
(43, 35, 44, 41, '0', '2017-11-20 23:20:18'),
(44, 36, 44, 40, '0', '2017-11-20 23:22:43'),
(45, 37, 44, 39, '0', '2017-11-20 23:23:13'),
(46, 38, 44, 40, '0', '2017-11-20 23:38:02'),
(47, 39, 44, 41, '0', '2017-11-20 23:38:02'),
(48, 40, 44, 44, '0', '2017-11-20 23:38:02'),
(49, 41, 39, 39, '0', '2017-11-20 23:40:42'),
(50, 42, 39, 39, '0', '2017-11-20 23:41:29'),
(51, 42, 39, 40, '0', '2017-11-20 23:41:29'),
(52, 42, 39, 41, '0', '2017-11-20 23:41:29'),
(53, 43, 44, 44, '0', '2017-11-21 22:27:16'),
(54, 44, 40, 39, '1', '2017-11-21 22:54:25'),
(55, 45, 40, 41, '1', '2017-11-21 22:54:25'),
(56, 46, 40, 40, '0', '2017-11-21 22:54:25'),
(57, 47, 40, 39, '0', '2017-11-21 22:54:29'),
(58, 48, 40, 41, '0', '2017-11-21 22:54:29'),
(59, 49, 40, 40, '0', '2017-11-21 22:54:29'),
(60, 50, 44, 40, '0', '2017-11-21 23:06:12'),
(61, 51, 39, 39, '0', '2017-11-21 23:14:31'),
(62, 51, 39, 40, '0', '2017-11-21 23:14:31'),
(63, 51, 39, 41, '0', '2017-11-21 23:14:31'),
(64, 52, 44, 7, '1', '2017-11-22 05:19:43'),
(65, 52, 44, 10, '1', '2017-11-22 05:19:43'),
(66, 52, 44, 13, '1', '2017-11-22 05:19:43'),
(67, 52, 44, 39, '1', '2017-11-22 05:19:43'),
(68, 52, 44, 41, '1', '2017-11-22 05:19:43'),
(69, 52, 44, 40, '0', '2017-11-22 05:20:26'),
(70, 53, 44, 7, '1', '2017-11-22 05:21:06'),
(71, 53, 44, 10, '1', '2017-11-22 05:21:06'),
(72, 53, 44, 13, '1', '2017-11-22 05:21:06'),
(73, 53, 44, 39, '1', '2017-11-22 05:21:06'),
(74, 53, 44, 41, '1', '2017-11-22 05:21:06'),
(75, 53, 44, 40, '0', '2017-11-22 05:22:15'),
(76, 54, 44, 7, '0', '2017-11-22 05:25:02'),
(77, 54, 44, 10, '0', '2017-11-22 05:25:02'),
(78, 54, 44, 13, '0', '2017-11-22 05:25:02'),
(79, 54, 44, 39, '0', '2017-11-22 05:25:02'),
(80, 54, 44, 41, '0', '2017-11-22 05:25:02'),
(81, 57, 40, 40, '0', '2017-11-22 06:19:37'),
(82, 58, 7, 7, '0', '2017-11-22 07:22:30'),
(83, 59, 7, 3, '0', '2017-11-22 10:11:29'),
(84, 60, 7, 3, '0', '2017-11-22 10:13:12'),
(85, 61, 3, 40, '0', '2017-11-22 10:18:17'),
(86, 62, 3, 7, '0', '2017-11-22 10:18:17'),
(87, 63, 3, 3, '0', '2017-11-22 10:18:17'),
(88, 76, 3, 7, '0', '2017-11-22 10:39:38'),
(89, 76, 3, 40, '0', '2017-11-22 10:39:38'),
(90, 77, 39, 39, '', '2017-11-22 23:45:23'),
(91, 78, 40, 40, '0', '2017-11-22 23:47:27'),
(92, 79, 40, 39, '0', '2017-11-22 23:58:14'),
(93, 80, 40, 41, '0', '2017-11-22 23:58:14'),
(94, 81, 40, 40, '0', '2017-11-22 23:58:14'),
(137, 120, 40, 44, '0', '2017-11-27 23:30:20'),
(153, 134, 40, 39, '0', '2017-12-04 02:22:12'),
(97, 84, 40, 40, '', '2017-11-23 00:02:00'),
(98, 85, 39, 39, '', '2017-11-23 00:13:42'),
(99, 86, 41, 41, '', '2017-11-23 00:14:49'),
(100, 87, 40, 40, '', '2017-11-23 00:15:38'),
(101, 88, 4, 40, '0', '2017-11-23 00:17:37'),
(102, 89, 4, 41, '0', '2017-11-23 00:18:53'),
(103, 90, 4, 4, '0', '2017-11-23 00:21:02'),
(104, 91, 39, 39, '', '2017-11-23 00:30:49'),
(105, 92, 40, 40, '', '2017-11-23 00:34:35'),
(106, 93, 44, 40, '0', '2017-11-23 00:35:52'),
(107, 94, 4, 39, '0', '2017-11-23 03:46:06'),
(108, 95, 4, 39, '0', '2017-11-23 03:46:30'),
(109, 96, 4, 39, '0', '2017-11-23 03:49:51'),
(110, 97, 4, 39, '0', '2017-11-23 03:50:24'),
(111, 98, 44, 39, '0', '2017-11-23 03:53:39'),
(112, 99, 7, 7, '', '2017-11-23 05:51:09'),
(113, 100, 4, 13, '0', '2017-11-23 05:55:26'),
(114, 101, 39, 39, '', '2017-11-23 05:56:49'),
(115, 102, 41, 41, '', '2017-11-23 05:57:50'),
(116, 103, 13, 13, '0', '2017-11-23 05:58:18'),
(117, 104, 4, 10, '0', '2017-11-23 06:01:20'),
(118, 105, 40, 40, '', '2017-11-23 06:53:55'),
(119, 106, 3, 40, '0', '2017-11-23 08:11:52'),
(120, 107, 3, 39, '0', '2017-11-23 08:11:52'),
(121, 108, 3, 3, '0', '2017-11-23 08:11:52'),
(122, 109, 3, 39, '0', '2017-11-23 08:12:33'),
(123, 109, 3, 40, '0', '2017-11-23 08:12:33'),
(124, 110, 3, 40, '0', '2017-11-23 08:15:34'),
(125, 111, 40, 3, '0', '2017-11-23 08:17:35'),
(126, 112, 3, 40, '0', '2017-11-23 08:19:23'),
(127, 113, 40, 39, '0', '2017-11-23 08:20:42'),
(128, 113, 40, 40, '0', '2017-11-23 08:20:42'),
(129, 114, 39, 39, '0', '2017-11-23 08:21:42'),
(130, 115, 41, 41, '0', '2017-11-23 08:22:30'),
(131, 116, 40, 40, '1', '2017-11-23 08:23:18'),
(132, 117, 40, 39, '0', '2017-11-24 01:22:18'),
(133, 118, 39, 40, '0', '2017-11-24 01:34:59'),
(134, 119, 40, 39, '0', '2017-11-24 01:39:48'),
(135, 119, 40, 40, '0', '2017-11-24 01:39:48'),
(136, 119, 40, 41, '0', '2017-11-24 01:39:48'),
(138, 121, 44, 44, '0', '2017-11-27 23:34:42'),
(139, 122, 40, 40, '0', '2017-11-27 23:36:15'),
(140, 123, 39, 40, '0', '2017-11-29 02:17:17'),
(141, 124, 39, 41, '1', '2017-11-29 02:17:17'),
(142, 125, 39, 39, '0', '2017-11-29 02:17:17'),
(143, 126, 39, 39, '0', '2017-11-29 02:31:46'),
(144, 126, 39, 40, '0', '2017-11-29 02:31:46'),
(145, 126, 39, 41, '1', '2017-11-29 02:31:46'),
(146, 127, 44, 44, '0', '2017-11-29 04:01:22'),
(147, 128, 44, 40, '0', '2017-11-29 04:02:33'),
(148, 129, 44, 41, '0', '2017-11-29 04:02:42'),
(149, 130, 44, 39, '0', '2017-11-29 04:03:38'),
(150, 131, 39, 39, '0', '2017-11-29 04:10:25'),
(151, 132, 3, 40, '0', '2017-11-30 11:12:15'),
(152, 133, 44, 39, '0', '2017-12-04 00:04:10'),
(240, 184, 3, 7, '0', '2018-01-01 12:02:45'),
(155, 136, 40, 7, '0', '2017-12-04 02:22:12'),
(156, 137, 40, 40, '0', '2017-12-04 02:22:12'),
(239, 183, 3, 40, '1', '2018-01-01 12:02:24'),
(238, 182, 44, 41, '1', '2017-12-22 14:52:26'),
(237, 181, 41, 40, '1', '2017-12-17 09:11:23'),
(236, 180, 40, 41, '0', '2017-12-17 09:09:38'),
(161, 139, 44, 39, '0', '2017-12-05 00:39:57'),
(162, 140, 44, 39, '0', '2017-12-05 00:42:24'),
(163, 140, 44, 40, '0', '2017-12-05 00:42:24'),
(164, 140, 44, 41, '0', '2017-12-05 00:42:24'),
(165, 141, 44, 39, '0', '2017-12-05 00:46:36'),
(166, 141, 44, 40, '0', '2017-12-05 00:46:36'),
(167, 142, 44, 39, '0', '2017-12-05 00:47:19'),
(168, 142, 44, 40, '0', '2017-12-05 00:47:19'),
(169, 143, 44, 39, '0', '2017-12-05 00:47:41'),
(170, 143, 44, 40, '0', '2017-12-05 00:47:41'),
(171, 144, 44, 39, '0', '2017-12-05 00:48:00'),
(172, 144, 44, 40, '0', '2017-12-05 00:48:00'),
(173, 145, 44, 39, '0', '2017-12-05 00:48:13'),
(174, 145, 44, 40, '0', '2017-12-05 00:48:13'),
(175, 146, 44, 39, '0', '2017-12-05 00:48:28'),
(176, 146, 44, 40, '0', '2017-12-05 00:48:28'),
(177, 147, 44, 39, '0', '2017-12-05 00:48:49'),
(178, 147, 44, 40, '0', '2017-12-05 00:48:49'),
(179, 148, 39, 44, '0', '2017-12-05 00:52:41'),
(180, 149, 39, 39, '0', '2017-12-05 00:57:36'),
(181, 149, 39, 40, '0', '2017-12-05 00:57:36'),
(182, 150, 39, 39, '0', '2017-12-05 00:58:12'),
(183, 150, 39, 40, '0', '2017-12-05 00:58:12'),
(184, 151, 39, 39, '0', '2017-12-05 00:58:57'),
(185, 151, 39, 40, '0', '2017-12-05 00:58:57'),
(186, 151, 39, 41, '0', '2017-12-05 00:58:57'),
(187, 152, 7, 7, '0', '2017-12-05 12:58:41'),
(188, 152, 7, 10, '1', '2017-12-05 12:58:41'),
(189, 152, 7, 13, '1', '2017-12-05 12:58:41'),
(190, 152, 7, 14, '1', '2017-12-05 12:58:41'),
(191, 153, 3, 7, '0', '2017-12-07 08:49:10'),
(192, 154, 3, 3, '0', '2017-12-07 08:49:10'),
(193, 155, 4, 39, '0', '2017-12-07 22:50:17'),
(194, 156, 41, 44, '0', '2017-12-11 03:17:43'),
(195, 157, 41, 44, '0', '2017-12-11 03:18:14'),
(196, 158, 44, 41, '0', '2017-12-11 03:23:35'),
(197, 159, 3, 40, '1', '2017-12-11 09:22:56'),
(198, 160, 3, 40, '1', '2017-12-11 09:23:02'),
(199, 161, 44, 39, '0', '2017-12-12 00:32:09'),
(200, 162, 44, 39, '0', '2017-12-12 01:11:36'),
(201, 163, 44, 40, '0', '2017-12-12 01:11:36'),
(202, 164, 44, 41, '0', '2017-12-12 01:11:36'),
(203, 165, 44, 44, '0', '2017-12-12 01:11:36'),
(204, 166, 44, 39, '0', '2017-12-12 01:12:19'),
(205, 166, 44, 40, '0', '2017-12-12 01:12:19'),
(206, 166, 44, 41, '0', '2017-12-12 01:12:19'),
(207, 167, 44, 39, '0', '2017-12-12 01:22:38'),
(208, 168, 44, 39, '0', '2017-12-12 01:31:32'),
(209, 169, 41, 44, '0', '2017-12-12 01:32:36'),
(210, 170, 41, 44, '0', '2017-12-12 01:33:11'),
(211, 171, 39, 40, '0', '2017-12-12 23:49:00'),
(249, 189, 3, 40, '1', '2018-01-29 12:19:49'),
(248, 189, 3, 39, '1', '2018-01-29 12:19:49'),
(247, 188, 3, 40, '1', '2018-01-29 12:19:46'),
(246, 188, 3, 39, '1', '2018-01-29 12:19:46'),
(245, 187, 3, 40, '1', '2018-01-29 12:19:44'),
(244, 187, 3, 39, '1', '2018-01-29 12:19:44'),
(243, 186, 3, 40, '1', '2018-01-29 12:19:42'),
(242, 186, 3, 39, '1', '2018-01-29 12:19:42'),
(241, 185, 3, 3, '0', '2018-01-29 05:19:49'),
(235, 179, 41, 41, '0', '2017-12-13 00:10:01'),
(234, 179, 41, 40, '0', '2017-12-13 00:10:01'),
(233, 179, 41, 39, '0', '2017-12-13 00:10:01'),
(232, 178, 41, 41, '0', '2017-12-13 00:09:10'),
(231, 178, 41, 40, '0', '2017-12-13 00:09:10'),
(230, 178, 41, 39, '0', '2017-12-13 00:09:10'),
(250, 190, 7, 7, '0', '2018-02-12 04:11:47'),
(251, 190, 7, 10, '1', '2018-02-12 04:11:47'),
(252, 190, 7, 13, '1', '2018-02-12 04:11:47'),
(253, 190, 7, 14, '1', '2018-02-12 04:11:47'),
(254, 191, 7, 7, '0', '2018-02-12 04:15:06'),
(255, 191, 7, 10, '1', '2018-02-12 04:15:06'),
(256, 191, 7, 13, '1', '2018-02-12 04:15:06'),
(257, 191, 7, 14, '1', '2018-02-12 04:15:06'),
(258, 194, 3, 7, '0', '2018-02-12 04:17:29'),
(259, 194, 3, 40, '1', '2018-02-12 04:17:29'),
(260, 197, 3, 7, '0', '2018-02-12 04:17:48'),
(261, 198, 3, 40, '1', '2018-02-12 04:17:58'),
(262, 199, 3, 39, '1', '2018-02-12 04:18:05'),
(263, 199, 3, 40, '1', '2018-02-12 04:18:05'),
(264, 202, 3, 7, '0', '2018-02-12 05:08:29'),
(265, 204, 7, 7, '0', '2018-02-13 03:39:59'),
(266, 205, 7, 7, '0', '2018-02-13 03:40:21'),
(267, 205, 7, 40, '1', '2018-02-13 03:40:21'),
(268, 206, 7, 7, '0', '2018-02-13 03:40:38'),
(269, 206, 7, 40, '1', '2018-02-13 03:40:38'),
(270, 207, 7, 7, '0', '2018-02-13 03:40:56'),
(271, 207, 7, 10, '1', '2018-02-13 03:40:56'),
(272, 207, 7, 13, '1', '2018-02-13 03:40:56'),
(273, 207, 7, 14, '1', '2018-02-13 03:40:56'),
(274, 208, 7, 7, '0', '2018-02-13 03:41:04'),
(275, 208, 7, 10, '1', '2018-02-13 03:41:04'),
(276, 208, 7, 13, '1', '2018-02-13 03:41:04'),
(277, 208, 7, 14, '1', '2018-02-13 03:41:04'),
(278, 209, 7, 7, '0', '2018-02-13 03:41:34'),
(279, 210, 3, 7, '0', '2018-02-13 03:45:20'),
(280, 211, 3, 7, '0', '2018-02-13 03:45:23'),
(281, 212, 3, 7, '0', '2018-02-13 03:45:31');

-- --------------------------------------------------------

--
-- Table structure for table `iw_chat_type`
--

CREATE TABLE `iw_chat_type` (
  `chat_type_id` int(11) NOT NULL,
  `chat_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_chat_type`
--

INSERT INTO `iw_chat_type` (`chat_type_id`, `chat_type`) VALUES
(1, 'One to One'),
(2, 'Group');

-- --------------------------------------------------------

--
-- Table structure for table `iw_cities`
--

CREATE TABLE `iw_cities` (
  `city_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_cities`
--

INSERT INTO `iw_cities` (`city_id`, `country_id`, `city`, `added_date`) VALUES
(7, 208, 'Mongkok', '2017-07-22 19:59:31'),
(8, 208, 'Kowloon City', '2017-07-22 19:59:31'),
(9, 208, 'Lam Tim', '2017-07-22 19:59:31'),
(10, 208, 'Sham Shui Po', '2017-07-22 19:59:31'),
(11, 208, 'Yau Tsim Mong', '2017-07-22 19:59:31'),
(12, 208, 'Wong Tai Sin', '2017-07-22 19:59:31'),
(13, 208, 'Kwun Tong', '2017-07-22 19:59:31'),
(14, 208, 'Central and Western', '2017-07-22 19:59:31'),
(15, 208, 'Wan Chai', '2017-07-22 19:59:31'),
(16, 208, 'Eastern', '2017-07-22 19:59:31'),
(17, 208, 'Southern', '2017-07-22 19:59:31'),
(18, 208, 'Kwai Tsing', '2017-07-22 19:59:31'),
(19, 208, 'Tsuen Wan', '2017-07-22 19:59:31'),
(20, 208, 'Tuen Mun', '2017-07-22 19:59:31'),
(21, 208, 'Yuen Long', '2017-07-22 19:59:31'),
(22, 208, 'North', '2017-07-22 19:59:31'),
(23, 208, 'Tai Po', '2017-07-22 19:59:31'),
(24, 208, 'Sha Tin', '2017-07-22 19:59:31'),
(25, 208, 'Sai Kung', '2017-07-22 19:59:31'),
(26, 208, 'Islands', '2017-07-22 19:59:31'),
(27, 243, 'Lucknow', '2017-07-22 19:59:31'),
(28, 243, 'Varanasi', '2017-07-22 19:59:31'),
(29, 243, 'Kanpur', '2017-07-22 19:59:31'),
(30, 243, 'Agra', '2017-07-22 19:59:31'),
(31, 162, 'Singapore', '2017-07-22 19:59:31'),
(32, 243, 'Barodara', '2017-07-22 19:59:31'),
(33, 162, 'Marina Area', '2017-07-22 19:59:31'),
(34, 162, 'CBD', '2017-07-22 19:59:31'),
(35, 162, 'Central South', '2017-07-22 19:59:31'),
(36, 162, 'Keppel', '2017-07-22 19:59:31'),
(37, 162, 'South West', '2017-07-22 19:59:31'),
(38, 162, 'City Hall', '2017-07-22 19:59:31'),
(39, 162, 'Beach Road', '2017-07-22 19:59:31'),
(40, 162, 'Little India', '2017-07-22 19:59:31'),
(41, 162, 'Orchard', '2017-07-22 19:59:31'),
(42, 162, 'Tanglin', '2017-07-22 19:59:31'),
(43, 162, 'Newton', '2017-07-22 19:59:31'),
(44, 162, 'Toa Payoh', '2017-07-22 19:59:31'),
(45, 162, 'Central East', '2017-07-22 19:59:31'),
(46, 162, 'Eunos', '2017-07-22 19:59:31'),
(47, 162, 'East Coast', '2017-07-22 19:59:31'),
(48, 162, 'Central West', '2017-07-22 19:59:31'),
(49, 162, 'Ang Mo Kio', '2017-07-22 19:59:31'),
(50, 162, 'Tampines', '2017-07-22 19:59:31'),
(51, 162, 'Murai', '2017-07-22 19:59:31'),
(52, 162, 'Sarimbun', '2017-07-22 19:59:31'),
(54, 243, 'Madhya Pradesh', '2017-08-08 22:32:52'),
(57, 13, 'Perth', '2017-08-17 21:08:27'),
(58, 13, 'Adelaide', '2017-08-16 05:10:36'),
(59, 13, 'Sydney', '2017-08-18 05:05:13'),
(60, 189, 'London', '2017-08-18 11:59:15'),
(61, 208, 'Kowloon', '2017-08-18 12:01:00'),
(62, 13, 'Cairns', '2017-08-22 03:54:42'),
(63, 2, 'Pithoraghar', '2017-08-29 10:45:19'),
(64, 246, 'Test City  Test City  Test City  Test City  Test City  Test City  Test City  Test City  Test City  Test City  Test City  Test City', '2017-08-31 11:42:33'),
(66, 2, 'City Z', '2017-09-07 12:08:36');

-- --------------------------------------------------------

--
-- Table structure for table `iw_contact_us`
--

CREATE TABLE `iw_contact_us` (
  `contact_us_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type_of_enquiry` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_contact_us`
--

INSERT INTO `iw_contact_us` (`contact_us_id`, `name`, `email`, `mobile`, `message`, `added_date`, `type_of_enquiry`) VALUES
(8, 'Raveena Nigam', 'raveena@singsys.com', 9812347899, 'This is testing description.', '2017-08-08 03:34:43', 1),
(7, 'Raveena Nigam', 'raveena@singsys.com', 9812347899, 'This is testing description.', '2017-08-08 03:34:29', 1),
(6, 'Raveena Nigam', 'raveena@singsys.com', 9812347899, 'This is testing description.', '2017-08-08 03:31:30', 1),
(4, 'Raveena Nigam', 'raveena@singsys.com', 987651234, 'This is testing description', '2017-07-24 10:53:21', 2),
(9, 'Raveena Nigam', 'raveena@singsys.com', 8765432123, 'Testing description', '2017-08-08 04:41:13', 2),
(10, 'Ankit', 'ankitjaiswal@singsys.com', 12345678, 'No enquiry', '2017-08-29 09:49:18', 1),
(13, 'shubham', 'shubham@singsys.com', 65432132, 'dsfds', '2017-09-01 03:27:07', 1),
(14, 'Ankit', 'ankitjaiswal@singsys.com', 12345678, 'We enquiry against this', '2017-10-12 04:48:59', 2),
(15, 'ankit', 'ankitjaiswal@singsys.com', 12345678, 'ASDFGHJKL', '2017-10-12 10:26:15', 3),
(16, 'Raveena Nigam', 'raveena@singsys.com', 9876523456, 'This is test description', '2017-10-13 04:18:04', 2),
(17, 'Raveena Nigam', 'raveena@singsys.com', 9734567890, 'This is testing description', '2017-10-13 06:07:12', 2),
(18, 'akash', 'ankitjaiswal+super2@singsys.com', 12345678, 'no', '2017-10-13 06:17:58', 2),
(19, 'Ankit', 'ankitjaiswal+super4@singsys.com', 12345678, 'Hi this is ankit', '2017-10-16 05:52:18', 2),
(20, 'vinay', 'ankitjaiswal@singsys.com', 12345678, 'sdfghj', '2017-10-16 05:55:07', 3),
(21, 'saad', 'ankitjaiswal@singsys.com', 123456789, 'asdfghjkk', '2017-10-16 05:56:09', 2),
(22, 'Raveena Nigam', 'raveena@singsys.com', 9812345674, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', '2017-12-18 11:41:09', 2),
(23, 'Raveena Nigam', 'raveena@singsys.com', 9876543212, 'This is testing description.', '2017-12-21 04:26:45', 3),
(24, 'Raveena Nigam', 'raveena@singsys.com', 9876543212, 'This is testing description', '2017-12-21 04:28:25', 3),
(25, 'Raveena Nigam', 'raveena@singsys.com', 9876543212, 'This is testing description', '2017-12-21 06:00:04', 3),
(26, 'Raveena Nigam', 'raveena@singsys.com', 9876542345, 'This is testing description', '2017-12-21 06:00:38', 2),
(27, 'Raveena Nigam', 'raveena@singsys.com', 9876542345, 'This is testing description', '2017-12-21 06:45:29', 2),
(28, 'Raveena Nigam', 'raveena@singsys.com', 9876543123, 'Testing description', '2017-12-21 06:45:51', 1),
(29, 'Raveena Nigam', 'raveena@singsys.com', 9876523455, 'This is testing description', '2017-12-21 08:40:08', 2),
(30, 'Raveena Nigam', 'raveena@singsys.com', 9876523455, 'This is testing description', '2017-12-21 08:42:08', 2),
(31, 'Raveena Nigam', 'raveena@singsys.com', 9876543212, 'Testing', '2017-12-21 08:49:12', 2),
(32, 'Raveena Nigam', 'raveena@singsys.com', 9876543212, 'Testing', '2017-12-21 09:06:09', 2),
(33, 'Raveena Nigam', 'raveena@singsys.com', 9876543212, 'Testing', '2017-12-21 09:07:22', 2),
(34, 'Raveena Nigam', 'raveena@singsys.com', 9876543212, 'Testing', '2017-12-21 09:07:34', 2),
(35, 'rahul', 'rahulgupta@singsys.com', 123456789, 'sedruik', '2017-12-21 09:16:19', 1),
(36, 'rahul', 'rahulgupta@singsys.com', 123456789, 'sedruik', '2017-12-21 09:22:34', 1),
(37, 'rafddgszd', 'rahulgupta@singsys.com', 7654321456, '2q487poL\r\n:', '2017-12-21 09:23:26', 1),
(38, 'rafddgszd', 'rahulgupta@singsys.com', 7654321456, '2q487poL\r\n:', '2017-12-21 09:29:12', 1),
(39, 'rafddgszd', 'rahulgupta@singsys.com', 7654321456, '2q487poL\r\n:', '2017-12-21 09:33:02', 1),
(40, 'rafddgszd', 'rahulgupta@singsys.com', 7654321456, '2q487poL\r\n:', '2017-12-21 09:34:12', 1),
(41, 'rafddgszd', 'rahulgupta@singsys.com', 7654321456, '2q487poL\r\n:', '2017-12-21 09:36:08', 1),
(42, 'rafddgszd', 'rahulgupta@singsys.com', 7654321456, '2q487poL\r\n:', '2017-12-21 09:37:09', 1),
(43, 'rafddgszd', 'rahulgupta@singsys.com', 7654321456, '2q487poL\r\n:', '2017-12-21 09:37:35', 1),
(44, 'rafddgszd', 'rahulgupta@singsys.com', 7654321456, '2q487poL\r\n:', '2017-12-21 09:38:39', 1),
(45, 'sdfg', 'rahulgupta@singsys.com', 12345678, 'xdfhjk', '2017-12-21 09:54:03', 1),
(46, 'fdsgh', 'rahulgupta@singsys.com', 123456789, 'wertyu', '2017-12-21 09:56:24', 1),
(47, 'fdsgh', 'rahulgupta@singsys.com', 123456789, 'wertyu', '2017-12-21 09:57:50', 1),
(48, 'rtyuio', 'rahulgupta@singsys.com', 12356789, 'sdfjk', '2017-12-21 09:59:36', 1),
(49, 'Raveena Nigam', 'raveena@singsys.com', 9876543234, 'This is testing description', '2017-12-21 10:08:11', 2),
(50, 'Raveena Nigam', 'raveena@singsys.com', 9876543456, 'Test', '2018-01-29 06:18:51', 1),
(51, 'Sushant', 'sushant@singsys.com', 1234567890, 'Test', '2018-01-29 07:06:22', 1),
(52, 'Sushant', 'sushant@singsys.com', 12345890, 'Test', '2018-02-14 08:04:16', 1),
(53, 'Sushant', 'sushant@singsys.com', 1234567890, 'Test', '2018-02-15 04:55:29', 1),
(54, 'Sushant', 'sushant@singsys.com', 1234567890, 'Test', '2018-02-15 04:58:00', 1),
(55, 'Sushant', 'sushant@singsys.com', 1234567890, 'Test', '2018-02-15 04:59:13', 1),
(56, 'Sushant', 'sushant@singsys.com', 1234567890, 'Test', '2018-02-15 05:03:46', 1),
(57, 'Sushant', 'sushant@singsys.com', 1234567890, 'testing', '2018-02-15 05:07:43', 1),
(58, 'Sushant', 'sushant@singsys.com', 1234567890, 'Test', '2018-02-15 05:09:54', 1),
(59, 'Sushant', 'sushant@singsys.com', 1234567890, 'Test', '2018-02-15 05:14:30', 1),
(60, 'Sushant', 'sushant@singsys.com', 1234567890, 'Test', '2018-02-15 05:22:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `iw_contact_us_reply`
--

CREATE TABLE `iw_contact_us_reply` (
  `contact_us_reply_id` int(11) NOT NULL,
  `contact_us_id` int(11) NOT NULL,
  `reply` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_contact_us_reply`
--

INSERT INTO `iw_contact_us_reply` (`contact_us_reply_id`, `contact_us_id`, `reply`, `added_date`) VALUES
(1, 8, 0, '2017-08-28 01:19:02'),
(2, 10, 0, '2017-08-30 22:13:08'),
(3, 11, 0, '2017-08-31 00:52:09'),
(4, 12, 0, '2017-08-31 03:13:48'),
(5, 14, 0, '2017-10-11 23:21:05');

--
-- Triggers `iw_contact_us_reply`
--
DELIMITER $$
CREATE TRIGGER `delete_contact_reply` AFTER DELETE ON `iw_contact_us_reply` FOR EACH ROW BEGIN
			DELETE FROM `iw_contact_us_reply` WHERE contact_us_id = OLD.contact_us_id; 
			
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `iw_countries`
--

CREATE TABLE `iw_countries` (
  `country_id` int(11) NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iso_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_countries`
--

INSERT INTO `iw_countries` (`country_id`, `country`, `iso_code`, `added_date`) VALUES
(1, 'Israel', 'IL', '2017-07-22 05:25:26'),
(2, 'Afghanistan', 'AF', '2017-07-21 23:55:52'),
(3, 'Albania', 'AL', '2017-07-22 05:25:26'),
(4, 'Algeria', 'DZ', '2017-07-22 05:25:26'),
(5, 'AmericanSamoa', 'AS', '2017-07-22 05:25:26'),
(6, 'Andorra', 'AD', '2017-07-22 05:25:26'),
(7, 'Angola', 'AO', '2017-07-22 05:25:26'),
(8, 'Anguilla', 'AI', '2017-07-22 05:25:26'),
(9, 'Antigua and Barbuda', 'AG', '2017-07-22 05:25:26'),
(10, 'Argentina', 'AR', '2017-07-22 05:25:26'),
(11, 'Armenia', 'AM', '2017-07-22 05:25:26'),
(12, 'Aruba', 'AW', '2017-07-22 05:25:26'),
(13, 'Australia', 'AU', '2017-07-22 05:25:26'),
(14, 'Austria', 'AT', '2017-07-22 05:25:26'),
(15, 'Azerbaijan', 'AZ', '2017-07-22 05:25:26'),
(16, 'Bahamas', 'BS', '2017-07-22 05:25:26'),
(17, 'Bahrain', 'BH', '2017-07-22 05:25:26'),
(18, 'Bangladesh', 'BD', '2017-07-22 05:25:26'),
(19, 'Barbados', 'BB', '2017-07-22 05:25:26'),
(20, 'Belarus', 'BY', '2017-07-22 05:25:26'),
(21, 'Belgium', 'BE', '2017-07-22 05:25:26'),
(22, 'Belize', 'BZ', '2017-07-22 05:25:26'),
(23, 'Benin', 'BJ', '2017-07-22 05:25:26'),
(24, 'Bermuda', 'BM', '2017-07-22 05:25:26'),
(25, 'Bhutan', 'BT', '2017-07-22 05:25:26'),
(26, 'Bosnia and Herzegovina', 'BA', '2017-07-22 05:25:26'),
(27, 'Botswana', 'BW', '2017-07-22 05:25:26'),
(28, 'Brazil', 'BR', '2017-07-22 05:25:26'),
(29, 'British Indian Ocean Territory', 'IO', '2017-07-22 05:25:26'),
(30, 'Bulgaria', 'BG', '2017-07-22 05:25:26'),
(31, 'Burkina Faso', 'BF', '2017-07-22 05:25:26'),
(32, 'Burundi', 'BI', '2017-07-22 05:25:26'),
(33, 'Cambodia', 'KH', '2017-07-22 05:25:26'),
(34, 'Cameroon', 'CM', '2017-07-22 05:25:26'),
(35, 'Canada', 'CA', '2017-07-22 05:25:26'),
(36, 'Cape Verde', 'CV', '2017-07-22 05:25:26'),
(37, 'Cayman Islands', 'KY', '2017-07-22 05:25:26'),
(38, 'Central African Republic', 'CF', '2017-07-22 05:25:26'),
(39, 'Chad', 'TD', '2017-07-22 05:25:26'),
(40, 'Chile', 'CL', '2017-07-22 05:25:26'),
(41, 'China', 'CN', '2017-07-22 05:25:26'),
(42, 'Christmas Island', 'CX', '2017-07-22 05:25:26'),
(43, 'Colombia', 'CO', '2017-07-22 05:25:26'),
(44, 'Comoros', 'KM', '2017-07-22 05:25:26'),
(45, 'Congo', 'CG', '2017-07-22 05:25:26'),
(46, 'Cook Islands', 'CK', '2017-07-22 05:25:26'),
(47, 'Costa Rica', 'CR', '2017-07-22 05:25:26'),
(48, 'Croatia', 'HR', '2017-07-22 05:25:26'),
(49, 'Cuba', 'CU', '2017-07-22 05:25:26'),
(50, 'Cyprus', 'CY', '2017-07-22 05:25:26'),
(51, 'Czech Republic', 'CZ', '2017-07-22 05:25:26'),
(52, 'Denmark', 'DK', '2017-07-22 05:25:26'),
(53, 'Djibouti', 'DJ', '2017-07-22 05:25:26'),
(54, 'Dominica', 'DM', '2017-07-22 05:25:26'),
(55, 'Dominican Republic', 'DO', '2017-07-22 05:25:26'),
(56, 'Ecuador', 'EC', '2017-07-22 05:25:26'),
(57, 'Egypt', 'EG', '2017-07-22 05:25:26'),
(58, 'El Salvador', 'SV', '2017-07-22 05:25:26'),
(59, 'Equatorial Guinea', 'GQ', '2017-07-22 05:25:26'),
(60, 'Eritrea', 'ER', '2017-07-22 05:25:26'),
(61, 'Estonia', 'EE', '2017-07-22 05:25:26'),
(62, 'Ethiopia', 'ET', '2017-07-22 05:25:26'),
(63, 'Faroe Islands', 'FO', '2017-07-22 05:25:26'),
(64, 'Fiji', 'FJ', '2017-07-22 05:25:26'),
(65, 'Finland', 'FI', '2017-07-22 05:25:26'),
(66, 'France', 'FR', '2017-07-22 05:25:26'),
(67, 'French Guiana', 'GF', '2017-07-22 05:25:26'),
(68, 'French Polynesia', 'PF', '2017-07-22 05:25:26'),
(69, 'Gabon', 'GA', '2017-07-22 05:25:26'),
(70, 'Gambia', 'GM', '2017-07-22 05:25:26'),
(71, 'Georgia', 'GE', '2017-07-22 05:25:26'),
(72, 'Germany', 'DE', '2017-07-22 05:25:26'),
(73, 'Ghana', 'GH', '2017-07-22 05:25:26'),
(74, 'Gibraltar', 'GI', '2017-07-22 05:25:26'),
(75, 'Greece', 'GR', '2017-07-22 05:25:26'),
(76, 'Greenland', 'GL', '2017-07-22 05:25:26'),
(77, 'Grenada', 'GD', '2017-07-22 05:25:26'),
(78, 'Guadeloupe', 'GP', '2017-07-22 05:25:26'),
(79, 'Guam', 'GU', '2017-07-22 05:25:26'),
(80, 'Guatemala', 'GT', '2017-07-22 05:25:26'),
(81, 'Guinea', 'GN', '2017-07-22 05:25:26'),
(82, 'Guinea-Bissau', 'GW', '2017-07-22 05:25:26'),
(83, 'Guyana', 'GY', '2017-07-22 05:25:26'),
(84, 'Haiti', 'HT', '2017-07-22 05:25:26'),
(85, 'Honduras', 'HN', '2017-07-22 05:25:26'),
(86, 'Hungary', 'HU', '2017-07-22 05:25:26'),
(87, 'Iceland', 'IS', '2017-07-22 05:25:26'),
(89, 'Indonesia', 'ID', '2017-07-22 05:25:26'),
(90, 'Iraq', 'IQ', '2017-07-22 05:25:26'),
(91, 'Ireland', 'IE', '2017-07-22 05:25:26'),
(92, 'Israel', 'IL', '2017-07-22 05:25:26'),
(93, 'Italy', 'IT', '2017-07-22 05:25:26'),
(94, 'Jamaica', 'JM', '2017-07-22 05:25:26'),
(95, 'Japan', 'JP', '2017-07-22 05:25:26'),
(96, 'Jordan', 'JO', '2017-07-22 05:25:26'),
(97, 'Kazakhstan', 'KZ', '2017-07-22 05:25:26'),
(98, 'Kenya', 'KE', '2017-07-22 05:25:26'),
(99, 'Kiribati', 'KI', '2017-07-22 05:25:26'),
(100, 'Kuwait', 'KW', '2017-07-22 05:25:26'),
(101, 'Kyrgyzstan', 'KG', '2017-07-22 05:25:26'),
(102, 'Latvia', 'LV', '2017-07-22 05:25:26'),
(103, 'Lebanon', 'LB', '2017-07-22 05:25:26'),
(104, 'Lesotho', 'LS', '2017-07-22 05:25:26'),
(105, 'Liberia', 'LR', '2017-07-22 05:25:26'),
(106, 'Liechtenstein', 'LI', '2017-07-22 05:25:26'),
(107, 'Lithuania', 'LT', '2017-07-22 05:25:26'),
(108, 'Luxembourg', 'LU', '2017-07-22 05:25:26'),
(109, 'Madagascar', 'MG', '2017-07-22 05:25:26'),
(110, 'Malawi', 'MW', '2017-07-22 05:25:26'),
(111, 'Malaysia', 'MY', '2017-07-22 05:25:26'),
(112, 'Maldives', 'MV', '2017-07-22 05:25:26'),
(113, 'Mali', 'ML', '2017-07-22 05:25:26'),
(114, 'Malta', 'MT', '2017-07-22 05:25:26'),
(115, 'Marshall Islands', 'MH', '2017-07-22 05:25:26'),
(116, 'Martinique', 'MQ', '2017-07-22 05:25:26'),
(117, 'Mauritania', 'MR', '2017-07-22 05:25:26'),
(118, 'Mauritius', 'MU', '2017-07-22 05:25:26'),
(119, 'Mayotte', 'YT', '2017-07-22 05:25:26'),
(120, 'Mexico', 'MX', '2017-07-22 05:25:26'),
(121, 'Monaco', 'MC', '2017-07-22 05:25:26'),
(122, 'Mongolia', 'MN', '2017-07-22 05:25:26'),
(123, 'Montenegro', 'ME', '2017-07-22 05:25:26'),
(124, 'Montserrat', 'MS', '2017-07-22 05:25:26'),
(125, 'Morocco', 'MA', '2017-07-22 05:25:26'),
(126, 'Myanmar', 'MM', '2017-07-22 05:25:26'),
(127, 'Namibia', 'NA', '2017-07-22 05:25:26'),
(128, 'Nauru', 'NR', '2017-07-22 05:25:26'),
(129, 'Nepal', 'NP', '2017-07-22 05:25:26'),
(130, 'Netherlands', 'NL', '2017-07-22 05:25:26'),
(131, 'Netherlands Antilles', 'AN', '2017-07-22 05:25:26'),
(132, 'New Caledonia', 'NC', '2017-07-22 05:25:26'),
(133, 'New Zealand', 'NZ', '2017-07-22 05:25:26'),
(134, 'Nicaragua', 'NI', '2017-07-22 05:25:26'),
(135, 'Niger', 'NE', '2017-07-22 05:25:26'),
(136, 'Nigeria', 'NG', '2017-07-22 05:25:26'),
(137, 'Niue', 'NU', '2017-07-22 05:25:26'),
(138, 'Norfolk Island', 'NF', '2017-07-22 05:25:26'),
(139, 'Northern Mariana Islands', 'MP', '2017-07-22 05:25:26'),
(140, 'Norway', 'NO', '2017-07-22 05:25:26'),
(141, 'Oman', 'OM', '2017-07-22 05:25:26'),
(142, 'Pakistan', 'PK', '2017-07-22 05:25:26'),
(143, 'Palau', 'PW', '2017-07-22 05:25:26'),
(144, 'Panama', 'PA', '2017-07-22 05:25:26'),
(145, 'Papua New Guinea', 'PG', '2017-07-22 05:25:26'),
(146, 'Paraguay', 'PY', '2017-07-22 05:25:26'),
(147, 'Peru', 'PE', '2017-07-22 05:25:26'),
(148, 'Philippines', 'PH', '2017-07-22 05:25:26'),
(149, 'Poland', 'PL', '2017-07-22 05:25:26'),
(150, 'Portugal', 'PT', '2017-07-22 05:25:26'),
(151, 'Puerto Rico', 'PR', '2017-07-22 05:25:26'),
(152, 'Qatar', 'QA', '2017-07-22 05:25:26'),
(153, 'Romania', 'RO', '2017-07-22 05:25:26'),
(154, 'Rwanda', 'RW', '2017-07-22 05:25:26'),
(155, 'Samoa', 'WS', '2017-07-22 05:25:26'),
(156, 'San Marino', 'SM', '2017-07-22 05:25:26'),
(157, 'Saudi Arabia', 'SA', '2017-07-22 05:25:26'),
(158, 'Senegal', 'SN', '2017-07-22 05:25:26'),
(159, 'Serbia', 'RS', '2017-07-22 05:25:26'),
(160, 'Seychelles', 'SC', '2017-07-22 05:25:26'),
(161, 'Sierra Leone', 'SL', '2017-07-22 05:25:26'),
(162, 'Singapore', 'SG', '2017-07-22 05:25:26'),
(163, 'Slovakia', 'SK', '2017-07-22 05:25:26'),
(164, 'Slovenia', 'SI', '2017-07-22 05:25:26'),
(165, 'Solomon Islands', 'SB', '2017-07-22 05:25:26'),
(166, 'South Africa', 'ZA', '2017-07-22 05:25:26'),
(167, 'South Georgia and the South Sandwich Islands', 'GS', '2017-07-22 05:25:26'),
(168, 'Spain', 'ES', '2017-07-22 05:25:26'),
(169, 'Sri Lanka', 'LK', '2017-07-22 05:25:26'),
(170, 'Sudan', 'SD', '2017-07-22 05:25:26'),
(171, 'Suriname', 'SR', '2017-07-22 05:25:26'),
(172, 'Swaziland', 'SZ', '2017-07-22 05:25:26'),
(173, 'Sweden', 'SE', '2017-07-22 05:25:26'),
(174, 'Switzerland', 'CH', '2017-07-22 05:25:26'),
(175, 'Tajikistan', 'TJ', '2017-07-22 05:25:26'),
(176, 'Thailand', 'TH', '2017-07-22 05:25:26'),
(177, 'Togo', 'TG', '2017-07-22 05:25:26'),
(178, 'Tokelau', 'TK', '2017-07-22 05:25:26'),
(179, 'Tonga', 'TO', '2017-07-22 05:25:26'),
(180, 'Trinidad and Tobago', 'TT', '2017-07-22 05:25:26'),
(181, 'Tunisia', 'TN', '2017-07-22 05:25:26'),
(182, 'Turkey', 'TR', '2017-07-22 05:25:26'),
(183, 'Turkmenistan', 'TM', '2017-07-22 05:25:26'),
(184, 'Turks andCaicos Islands', 'TC', '2017-07-22 05:25:26'),
(185, 'Tuvalu', 'TV', '2017-07-22 05:25:26'),
(186, 'Uganda', 'UG', '2017-07-22 05:25:26'),
(187, 'Ukraine', 'UA', '2017-07-22 05:25:26'),
(188, 'United Arab Emirates', 'AE', '2017-07-22 05:25:26'),
(189, 'United Kingdom', 'GB', '2017-07-22 05:25:26'),
(190, 'United States', 'US', '2017-07-22 05:25:26'),
(191, 'Uruguay', 'UY', '2017-07-22 05:25:26'),
(192, 'Uzbekistan', 'UZ', '2017-07-22 05:25:26'),
(193, 'Vanuatu', 'VU', '2017-07-22 05:25:26'),
(194, 'Wallis and Futuna', 'WF', '2017-07-22 05:25:26'),
(195, 'Yemen', 'YE', '2017-07-22 05:25:26'),
(196, 'Zambia', 'ZM', '2017-07-22 05:25:26'),
(197, 'Zimbabwe', 'ZW', '2017-07-22 05:25:26'),
(199, 'Antarctica', 'AQ', '2017-07-22 05:25:26'),
(200, 'Bolivia, Plurinational State of', 'BO', '2017-07-22 05:25:26'),
(201, 'Brunei Darussalam', 'BN', '2017-07-22 05:25:26'),
(202, 'Cocos (Keeling) Islands', 'CC', '2017-07-22 05:25:26'),
(203, 'Congo, The Democratic Republic of the', 'CD', '2017-07-22 05:25:26'),
(204, 'Coted\'Ivoire', 'CI', '2017-07-22 05:25:26'),
(205, 'Falkland Islands (Malvinas)', 'FK', '2017-07-22 05:25:26'),
(206, 'Guernsey', 'GG', '2017-07-22 05:25:26'),
(207, 'Holy See (Vatican City State)', 'VA', '2017-07-22 05:25:26'),
(208, 'Hong Kong', 'HK', '2017-07-22 05:25:26'),
(209, 'Iran, Islamic Republic of', 'IR', '2017-07-22 05:25:26'),
(210, 'Isle of Man', 'IM', '2017-07-22 05:25:26'),
(211, 'Jersey', 'JE', '2017-07-22 05:25:26'),
(212, 'Korea, Democratic People\'s Republic of', 'KP', '2017-07-22 05:25:26'),
(213, 'Korea, Republic of', 'KR', '2017-07-22 05:25:26'),
(214, 'Lao People\'s Democratic Republic', 'LA', '2017-07-22 05:25:26'),
(215, 'Libyan Arab Jamahiriya', 'LY', '2017-07-22 05:25:26'),
(216, 'Macao', 'MO', '2017-07-22 05:25:26'),
(217, 'Macedonia, The Former Yugoslav Republic of', 'MK', '2017-07-22 05:25:26'),
(218, 'Micronesia, Federated States of', 'FM', '2017-07-22 05:25:26'),
(219, 'Moldova, Republic of', 'MD', '2017-07-22 05:25:26'),
(220, 'Mozambique', 'MZ', '2017-07-22 05:25:26'),
(221, 'Palestinian Territory, Occupied', 'PS', '2017-07-22 05:25:26'),
(222, 'Pitcairn', 'PN', '2017-07-22 05:25:26'),
(223, 'Réunion', 'RE', '2017-07-22 05:25:26'),
(224, 'Russia', 'RU', '2017-07-22 05:25:26'),
(225, 'Saint Barthélemy', 'BL', '2017-07-22 05:25:26'),
(226, 'Saint Helena, Ascension and Tristan Da Cunha', 'SH', '2017-07-22 05:25:26'),
(227, 'Saint Kitts and Nevis', 'KN', '2017-07-22 05:25:26'),
(228, 'Saint Lucia', 'LC', '2017-07-22 05:25:26'),
(229, 'Saint Martin', 'MF', '2017-07-22 05:25:26'),
(230, 'Saint Pierre and Miquelon', 'PM', '2017-07-22 05:25:26'),
(231, 'Saint Vincent and the Grenadines', 'VC', '2017-07-22 05:25:26'),
(232, 'Sao Tome and Principe', 'ST', '2017-07-22 05:25:26'),
(233, 'Somalia', 'SO', '2017-07-22 05:25:26'),
(234, 'Svalbard and Jan Mayen', 'SJ', '2017-07-22 05:25:26'),
(235, 'Syrian Arab Republic', 'SY', '2017-07-22 05:25:26'),
(236, 'Taiwan, Province of China', 'TW', '2017-07-22 05:25:26'),
(237, 'Tanzania, United Republic of', 'TZ', '2017-07-22 05:25:26'),
(238, 'Timor-Leste', 'TL', '2017-07-22 05:25:26'),
(239, 'Venezuela, Bolivarian Republic of', 'VE', '2017-07-22 05:25:26'),
(240, 'Viet Nam', 'VN', '2017-07-22 05:25:26'),
(241, 'Virgin Islands, British', 'VG', '2017-07-22 05:25:26'),
(242, 'Virgin Islands, U.S.', 'VI', '2017-07-22 05:25:26'),
(243, 'India', 'IN', '2017-07-22 05:25:26'),
(246, 'Test Country Test Country Test Country Test Country Test Country Test Country Test Country Test Country Test Country Test Country', 'Test Count', '2017-08-31 03:41:54');

-- --------------------------------------------------------

--
-- Table structure for table `iw_department`
--

CREATE TABLE `iw_department` (
  `department_id` int(11) NOT NULL,
  `department` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL,
  `created_date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iw_discipline`
--

CREATE TABLE `iw_discipline` (
  `discipline_id` int(11) NOT NULL,
  `discipline` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL,
  `child` int(11) NOT NULL,
  `grandchild` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_discipline`
--

INSERT INTO `iw_discipline` (`discipline_id`, `discipline`, `parent`, `child`, `grandchild`, `created_date`) VALUES
(1, 'Science', 0, 0, 0, '2017-07-25 12:03:57'),
(2, 'Engineering', 0, 0, 0, '2017-07-25 12:04:05'),
(3, 'Physics', 1, 0, 0, '2017-09-05 16:33:38'),
(4, 'Chemistry', 1, 0, 0, '2017-07-25 12:04:25'),
(5, 'Organic Chemsitry', 4, 0, 0, '2017-07-25 12:04:38'),
(52, 'Politics', 7, 0, 0, '2017-10-11 02:09:38'),
(7, 'Social Science', 0, 0, 0, '2017-10-10 20:36:26'),
(8, 'Economics', 7, 0, 0, '2017-10-10 20:38:16'),
(9, 'Mathematics', 1, 0, 0, '2017-08-14 07:45:26'),
(32, 'General Science', 1, 0, 0, '2017-09-06 00:37:22'),
(10, 'Biology', 1, 0, 0, '2017-09-05 16:34:12'),
(11, 'Earth Science', 1, 0, 0, '2017-09-05 16:35:36'),
(12, 'Computer Science', 1, 0, 0, '2017-08-14 07:47:24'),
(13, 'Multidisciplinary', 1, 0, 0, '2017-08-14 07:47:51'),
(14, 'Aerospace', 2, 0, 0, '2017-08-15 02:21:50'),
(51, 'Psychology', 7, 0, 0, '2017-10-11 02:09:15'),
(16, 'Biomedical', 2, 0, 0, '2017-08-15 02:23:10'),
(17, 'Chemical', 2, 0, 0, '2017-08-15 02:23:43'),
(18, 'Civil', 2, 0, 0, '2017-08-15 02:24:07'),
(19, 'Computer', 2, 0, 0, '2017-08-15 02:24:33'),
(20, 'Design', 2, 0, 0, '2017-08-15 02:24:52'),
(21, 'Electrical', 2, 0, 0, '2017-08-15 02:25:23'),
(22, 'Electronics', 2, 0, 0, '2017-08-15 02:25:45'),
(23, 'Materials', 2, 0, 0, '2017-08-15 02:26:08'),
(24, 'Mechanical', 2, 0, 0, '2017-08-15 02:26:38'),
(25, 'Mining', 2, 0, 0, '2017-08-15 02:27:04'),
(49, 'Architecture', 7, 0, 0, '2017-10-11 02:07:48'),
(50, 'Law', 7, 0, 0, '2017-10-11 02:08:38'),
(33, 'Environment & Resources', 0, 0, 0, '2017-09-06 00:38:26'),
(34, 'Agriculture', 33, 0, 0, '2017-09-06 00:38:55'),
(35, 'Food', 33, 0, 0, '2017-09-06 00:39:32'),
(36, 'Water', 33, 0, 0, '2017-09-06 00:39:55'),
(37, 'Veterinary', 33, 0, 0, '2017-09-06 00:40:41'),
(38, 'Conservation', 33, 0, 0, '2017-09-06 00:41:03'),
(39, 'Business & Management', 0, 0, 0, '2017-09-06 00:42:52'),
(40, 'Accounting', 39, 0, 0, '2017-09-06 00:43:53'),
(41, 'Banking & Finance', 39, 0, 0, '2017-09-06 00:44:40'),
(42, 'HR', 39, 0, 0, '2017-09-06 00:45:39'),
(43, 'Logistics', 39, 0, 0, '2017-09-06 00:46:21'),
(44, 'Marketing', 39, 0, 0, '2017-09-06 00:47:09'),
(45, 'Health & Medicine', 0, 0, 0, '2017-09-06 00:48:39'),
(46, 'Nursing', 45, 0, 0, '2017-09-06 00:49:30'),
(47, 'Aged Care', 45, 0, 0, '2017-09-06 00:49:49'),
(48, 'Pharmacy', 45, 0, 0, '2017-09-06 00:50:35'),
(53, 'Communications & Media', 7, 0, 0, '2017-10-11 02:10:28'),
(54, 'Education', 7, 0, 0, '2017-10-11 02:11:12'),
(55, 'Business Systems', 39, 0, 0, '2017-10-11 02:13:51'),
(56, 'Administration', 39, 0, 0, '2017-10-11 02:15:14'),
(57, 'Tourism', 39, 0, 0, '2017-10-11 02:15:53'),
(58, 'Technology', 0, 0, 0, '2017-10-11 02:18:01'),
(59, 'Information', 58, 0, 0, '2017-10-11 02:19:48'),
(60, 'Communications', 58, 0, 0, '2017-10-11 02:20:08'),
(61, 'Medical', 58, 0, 0, '2017-10-11 02:20:30'),
(62, 'Biotechnology', 58, 0, 0, '2017-10-11 02:21:12'),
(63, 'Nanotechnology', 58, 0, 0, '2017-10-11 02:21:32'),
(64, 'Dentistry', 45, 0, 0, '2017-10-11 02:22:40');

-- --------------------------------------------------------

--
-- Table structure for table `iw_duration`
--

CREATE TABLE `iw_duration` (
  `duration_id` int(11) NOT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_duration`
--

INSERT INTO `iw_duration` (`duration_id`, `duration`, `added_date`) VALUES
(2, '< 1 month', '2017-07-25 12:08:07'),
(3, '1-6 months', '2017-10-10 19:28:38'),
(4, '7- 12 months', '2017-10-10 19:29:08'),
(7, '12-24 months', '2017-10-10 19:29:43'),
(8, '>24 months', '2017-10-11 01:00:04'),
(9, 'N/A', '2017-10-11 01:00:16');

-- --------------------------------------------------------

--
-- Table structure for table `iw_email_stem`
--

CREATE TABLE `iw_email_stem` (
  `email_stem_id` int(11) NOT NULL,
  `provider_organisation_profile_id` int(11) NOT NULL,
  `email_stem` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_stem_type` enum('Student','Supervisor') COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_email_stem`
--

INSERT INTO `iw_email_stem` (`email_stem_id`, `provider_organisation_profile_id`, `email_stem`, `email_stem_type`, `created_date`) VALUES
(1, 2, '@singsys.com', 'Supervisor', '2017-08-21 11:30:52'),
(11, 2, '@ptu.com', 'Supervisor', '2017-08-29 11:04:28'),
(3, 2, '@edu.org', 'Supervisor', '2017-08-21 11:31:03'),
(6, 2, '@edu.in', 'Supervisor', '2017-08-29 05:14:05'),
(8, 2, '@singsys.com', 'Student', '2017-08-29 11:03:26'),
(9, 2, '@gmail.com', 'Supervisor', '2017-08-29 11:03:43'),
(10, 2, '@yahoo.com', 'Supervisor', '2017-08-29 11:03:52'),
(16, 9, '@gmail.com', 'Supervisor', '2017-08-31 10:34:58'),
(37, 15, '@singsys.com', 'Supervisor', '2017-10-13 04:34:10'),
(20, 11, '@singsys.com', 'Supervisor', '2017-08-31 12:43:50'),
(44, 3, '@gmail.com', 'Student', '2017-11-10 00:16:01'),
(34, 12, '@singsys.com', 'Student', '2017-10-12 11:05:24'),
(43, 3, '@gmail.com', 'Supervisor', '2017-10-24 01:28:20'),
(33, 12, '@singsys.com', 'Supervisor', '2017-10-12 09:20:20'),
(32, 12, '@gamil.com', 'Student', '2017-10-12 07:20:13'),
(35, 12, '@gmail.com', 'Supervisor', '2017-10-12 11:05:30'),
(38, 15, '@gmail.com', 'Supervisor', '2017-10-13 04:34:20'),
(39, 15, '@gmail.com', 'Student', '2017-10-13 04:34:38'),
(40, 15, '@singsys.com', 'Student', '2017-10-13 04:34:43'),
(49, 2, '@graduateprojects.com', 'Supervisor', '2018-01-18 06:53:35');

-- --------------------------------------------------------

--
-- Table structure for table `iw_email_template`
--

CREATE TABLE `iw_email_template` (
  `email_template_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_email_template`
--

INSERT INTO `iw_email_template` (`email_template_id`, `title`, `subject`, `description`, `added_date`) VALUES
(1, 'contact_us', 'Graduate Projects - Contact Us', 'Dear {NAME},\r\n\r\nThanks for your response.\r\n\r\nThanks {SITENAME} Team', '2018-02-14 23:36:57'),
(2, 'contact_us_admin', 'Graduate Projects - Contact Us', 'Dear Admin,\r\n\r\nNew contact information found.\r\n\r\nName: {NAME}\r\n\r\nEmail: {FROM_EMAIL}\r\n\r\nMessage: {MESSAGE}\r\n\r\nThanks {SITENAME} Team', '2018-02-14 23:37:07'),
(3, 'contact_us_reply', 'Graduate Projects - Contact Reply', 'Dear {NAME},\r\n\r\nContact Us email reply.\r\n\r\nMessage: {MESSAGE}\r\n\r\nThanks {SITENAME} Team', '2018-02-14 23:37:16'),
(6, 'provider_account_confirmation', 'Internship Web Portal - Account Confirmation', 'Dear {NAME},\r\n\r\nYour account is activated on {SITENAME}. Visit our {WEBSITE}  and  use below credentials to login into the application:\r\n\r\nEmail: {EMAIL}\r\nPassword: {PASSWORD}\r\n\r\nThanks {SITENAME}', '2017-08-31 02:44:09'),
(4, 'reset_password', 'Internship Web Portal - Reset Password', 'Dear {NAME}, \r\n\r\nWe received your request to Reset the Password. \r\n\r\nPlease click on the link below to Reset your Passsword. \r\n{ACTIVATIONLINK} \r\n\r\nThanks {SITENAME}', '2017-07-28 10:34:34'),
(5, 'account_activation', 'Internship Web Portal - Account Activation', 'Dear {NAME},\r\n\r\nThank you for signing up at Internship, to activate your corresponding account, visit the following link:\r\n{ACTIVATIONLINK}\r\n\r\nIf you are not able to click on the above link, please copy and paste the URL in the browser.\r\n\r\nThanks {SITENAME}', '2017-08-04 10:52:56'),
(7, 'placement_approve', 'Internship Web Portal - Placement Approval', 'Dear {NAME},\r\n\r\nThis is to inform you that your post has been approved.\r\n\r\nPost Details:\r\nTitle : {TITLE}\r\nDescription : {DESCRIPTION}\r\n\r\nPlease contact us with any questions you may have at {ADMIN_EMAIL}.\r\n\r\nThanks\r\n{SITENAME}', '2017-09-05 04:46:38'),
(8, 'placement_reject', 'Internship Web Portal - Placement Rejection', 'Dear {NAME},\r\n\r\nThis is to inform you that your post has been rejected due to {MESSAGE}.\r\n\r\nPost Details:\r\nTitle : {TITLE}\r\nDescription : {DESCRIPTION}\r\n\r\nPlease contact us with any questions you may have at {ADMIN_EMAIL}.\r\n\r\nThanks\r\n{SITENAME}', '2017-09-05 04:47:54'),
(9, 'invite_supervisor', 'Internship Web Portal - Invitation ', 'Dear User,\r\n\r\n{NAME} has invited you to join the {WEBSITE}. \r\n\r\nThanks\r\n{SITENAME}', '2017-10-12 06:48:40'),
(10, 'institutional_email_verification', 'Internship Web Portal - Email Verification', 'Dear {NAME},\r\n\r\nPlease click on the link below to verify your institutional email:\r\n{ACTIVATIONLINK}\r\n\r\nIf you are not able to click on the above link, please copy and paste the URL in the browser.\r\n\r\nThanks {SITENAME}', '2017-11-01 05:07:30'),
(11, 'enquiry_reply', 'Internship Web Portal - Enquiry Reply', 'Dear {NAME},\r\n\r\nEnquiry email reply.\r\nMessage: {MESSAGE}\r\n\r\nThanks {SITENAME} Team', '2017-12-02 04:47:23'),
(12, 'student_feedback', 'Internship Web Portal - Student Feedback', 'Dear {U_NAME},\r\n\r\nYou received a feedback from the supervisor {NAME} for the application {APPLICATION}.\r\n\r\nThanks {SITENAME} Team', '2017-12-20 07:31:42'),
(13, 'team_feedback', 'Internship Web Portal - Team Feedback', 'Dear {U_NAME},\r\n\r\nYour team had received a feedback from the supervisor {NAME} for the application {APPLICATION}\r\n\r\nThanks {SITENAME} Team', '2017-12-20 07:31:42'),
(14, 'student_application', 'Internship Web Portal - Student Application', 'Dear {NAME},\r\n\r\nThis is to inform you that an application has applied for the {APPLICATION}.\r\n\r\n{PROFILE}\r\n\r\nPlease contact us with any questions you may have at {ADMIN_EMAIL}.\r\n\r\nThanks\r\n{SITENAME}', '2017-12-20 12:31:58'),
(15, 'team_application', 'Internship Web Portal - Team Application', 'Dear {NAME},\r\n\r\nThis is to inform you that an application has applied for the {APPLICATION}.\r\n\r\n{PROFILE}\r\n\r\nPlease contact us with any questions you may have at {ADMIN_EMAIL}.\r\n\r\nThanks\r\n{SITENAME}', '2017-12-20 12:31:58'),
(16, 'account_activated', 'Internship Web Portal - Account Activated', 'Dear {NAME},\r\n\r\nYour account is activated on {SITENAME}.\r\n\r\nThanks {SITENAME}', '2017-12-26 01:20:04'),
(17, 'account_suspended', 'Internship Web Portal - Account Suspended', 'Dear {NAME},\r\n\r\nYour account is suspended on {SITENAME}.\r\n\r\nThanks {SITENAME}', '2017-12-26 01:20:04'),
(18, 'system_admin', 'Internship Web Portal - System Admin Notification', '{CONTENT}\r\n\r\nThanks {SITENAME} Team', '2017-12-26 04:24:44'),
(19, 'unread_notification', 'Internship Web Portal - Unread Notifications', 'Dear {NAME},\n\nThis is to inform that you have unread notification.\n\nPlease contact us with any questions you may have at {ADMIN_EMAIL}.\n\nThanks\n{SITENAME}', '2017-12-27 02:13:19'),
(20, 'team_invitation', 'Internship Web Portal - Team Invitation', 'Dear {USER},\r\n\r\n{SENDER} has invited you to join the {TEAM}.\r\n\r\nThanks {SITENAME}', '2018-01-02 01:36:30'),
(21, 'application_invitation', 'Internship Web Portal - Application Invitation', 'Dear {USER},\r\n\r\n{SENDER} has invited you to join the {PROJECT}.\r\n\r\nThanks {SITENAME}', '2018-01-02 01:36:30'),
(22, 'application_expire', 'Internship Web Portal - Application Expire', 'Dear {NAME},\r\n\r\nThis is to inform you that an application {APPLICATION} is going to expire in {DAY} day(s).\r\n\r\nPlease contact us with any questions you may have at {ADMIN_EMAIL}.\r\n\r\nThanks\r\n{SITENAME}', '2018-01-04 00:38:36'),
(23, 'supervisor_post_expire', 'Internship Web Portal - Application Expire', 'Dear {NAME},\n\nThis is to inform you that an application {APPLICATION} is going to expire in {DAY} day(s).\n\nPlease contact us with any questions you may have at {ADMIN_EMAIL}.\n\nThanks\n{SITENAME}', '2018-01-04 00:38:36'),
(24, 'license_remaining', 'Internship Web Portal - Remaining Licenses', 'Dear {NAME},\n\nThis is to inform you have only {LICENSE} license(s) remaining.\n\nPlease contact us with any questions you may have at {ADMIN_EMAIL}.\n\nThanks\n{SITENAME}', '2018-01-04 08:04:51'),
(25, 'license_expiration', 'Internship Web Portal - License Expiration', 'Dear {NAME},\n\nThis is to inform you that your licenses are about to expire in next {DAY} day(s).\n\nPlease contact us with any questions you may have at {ADMIN_EMAIL}.\n\nThanks\n{SITENAME}', '2018-01-08 02:15:55'),
(26, 'application_discarded', 'Internship Web Portal - Application Discarded', 'Dear {USER},\r\n\r\n{SENDER} has discarded your application for the {PROJECT}.\r\n\r\nThanks {SITENAME}', '2018-01-30 05:44:52'),
(27, 'application_pending', 'Internship Web Portal - Application Marked Pending', 'Dear {USER},\r\n\r\n{SENDER} has marked your application as pending for the {PROJECT}.\r\n\r\nThanks {SITENAME}', '2018-01-30 05:45:20');

-- --------------------------------------------------------

--
-- Table structure for table `iw_email_verification`
--

CREATE TABLE `iw_email_verification` (
  `email_verification_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `verified_date` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_email_verification`
--

INSERT INTO `iw_email_verification` (`email_verification_id`, `user_id`, `token`, `created_date`, `verified_date`) VALUES
(1, 7, 'NyMja3JpdGlAc2luZ3N5cy5jb20=', '2017-08-04 03:00:35', '2017-08-04 03:38:49'),
(2, 8, 'OCMjYWttYWxAc2luZ3N5cy5jb20=', '2017-08-04 03:01:48', NULL),
(3, 9, 'OSMja2FuY2hhbkBzaW5nc3lzLmNvbQ==', '2017-08-03 17:29:22', '2017-08-03 17:29:40'),
(4, 10, 'MTAjI3BhbmthanBhbnRAc2luZ3N5cy5jb20=', '2017-08-03 17:45:04', '2017-08-03 17:45:24'),
(5, 11, 'MTEjI3JhdmVlbmErYUBzaW5nc3lzLmNvbQ==', '2017-08-03 17:51:29', '2017-08-03 17:51:51'),
(6, 13, 'MTMjI2FhdGlmQHNpbmdzeXMuY29t', '2017-08-03 20:58:44', '2017-08-03 20:59:08'),
(7, 14, 'MTQjI2R1bmNhbnJheW5lcjFAZ21haWwuY29t', '2017-08-06 03:25:34', NULL),
(8, 15, 'MTUjI25hamkuY3lydXNAZ21haWwuY29t', '2017-08-08 03:43:07', '2017-08-08 03:44:35'),
(9, 18, 'MTgjI3JlZW5hQHNpbmdzeXMuY29t', '2017-08-29 00:27:04', NULL),
(10, 19, 'MTkjI2Fua2l0amFpc3dhbEBzaW5nc3lzLmNvbQ==', '2017-08-29 02:29:22', NULL),
(11, 23, 'MjMjI2FrYXNoa3VtYXJAc2luZ3N5cy5jb20=', '2017-08-30 21:52:42', NULL),
(12, 26, 'MjYjI3ZpbmF5cGFuZGV5K3NAc2luZ3N5cy5jb20=', '2017-08-31 02:46:15', '2017-08-31 02:48:21'),
(13, 28, 'MjgjI01hbmlzaEBnbWFpbC5jb20=', '2017-08-31 03:07:37', NULL),
(14, 30, 'MzAjI3NodWJoYW0rc3VwZXJAc2luZ3N5cy5jb20=', '2017-08-30 17:08:06', '2017-08-30 17:16:28'),
(15, 31, 'MzEjI3BlZXl1c2hAc2luZ3N5cy5jb20=', '2017-08-31 20:01:55', '2017-08-31 20:03:48'),
(16, 32, 'MzIjI3ZpbmF5cGFuZXkrczFAc2luZ3N5cy5jb20=', '2017-08-31 23:30:50', NULL),
(17, 33, 'MzMjI3ZpbmF5cGFuZGV5K3NvQHNpbmdzeXMuY29t', '2017-09-01 00:02:32', '2017-09-01 00:04:24'),
(18, 34, 'MzQjI0Fua2l0amFpc3dhbCs0QHNpbmdzeXMuY29t', '2017-09-01 04:40:17', NULL),
(19, 35, 'MzUjI3JhdmVlbmErMUBzaW5nc3lzLmNvbQ==', '2017-09-01 04:55:31', NULL),
(20, 36, 'MzYjI2Fua2l0K3N1QHNpbmdzeXMuY29t', '2017-08-31 17:20:56', NULL),
(21, 37, 'MzcjI3ZpbmF5cGFuZGV5KzU0QHNpbmdzeXMuY29t', '2017-08-31 17:37:58', '2017-08-31 17:39:32'),
(22, 38, 'MzgjI2Fua2l0amFpc3dhbCs1QHNpbmdzeXMuY29t', '2017-08-31 18:05:21', '2017-08-31 18:05:58'),
(23, 39, 'MzkjI2RydGVzdDYwQHlhaG9vLmNvbQ==', '2017-09-10 03:55:23', '2017-09-10 03:56:28'),
(24, 40, 'NDAjI2RydGVzdDYwQG1haWwuY29t', '2017-09-10 03:20:22', '2017-09-10 03:21:01'),
(25, 41, 'NDEjI2RydGVzdDYwQGdteC5jb20=', '2017-09-10 03:45:53', '2017-09-10 03:46:31'),
(26, 42, 'NDIjI2FiaGlzaGVrdHJpdmVkaUBzaW5nc3lzLmNvbQ==', '2017-09-22 22:51:58', '2017-09-22 22:53:08'),
(28, 44, 'NDQjI2ZhaXRoLnlvbmcyNEBnbWFpbC5jb20=', '2017-10-05 05:44:13', '2017-10-05 05:49:44'),
(44, 64, 'NjQjI3N1c2hhbnRAc2luZ3N5cy5jb20=', '2018-01-28 23:59:57', '2018-01-29 05:39:00'),
(33, 53, 'NTMjI2NoYW5jaGFsc2hhcm1hY3MwOUBnbWFpbC5jb20=', '2017-10-12 23:15:53', NULL),
(34, 54, 'NTQjI2NoYW5jaGFsKzFAc2luZ3N5cy5jb20=', '2017-10-12 23:18:55', NULL),
(39, 59, 'NTkjI2FiaGlzaGVra3VtYXJAc2luZ3N5cy5jb20=', '2017-10-13 02:15:54', '2017-10-13 02:16:39'),
(43, 63, 'NjMjI3dfbWFya0B5b3BtYWlsLmNvbQ==', '2017-11-06 07:21:47', '2017-11-06 07:22:09'),
(45, 66, 'NjYjI3N1c2hhbnQrMUBzaW5nc3lzLmNvbQ==', '2018-02-09 01:11:16', '2018-02-09 01:11:28');

-- --------------------------------------------------------

--
-- Table structure for table `iw_external_application_process`
--

CREATE TABLE `iw_external_application_process` (
  `id` int(10) UNSIGNED NOT NULL,
  `placement_id` int(11) NOT NULL,
  `application_process` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iw_faq`
--

CREATE TABLE `iw_faq` (
  `faq_id` int(11) NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `answer` text COLLATE utf8_unicode_ci NOT NULL,
  `faq_type` enum('ABOUT','CONTACT','DASHBOARD') COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_faq`
--

INSERT INTO `iw_faq` (`faq_id`, `question`, `answer`, `faq_type`, `status`, `added_date`) VALUES
(3, 'How to apply for internships', '<p>After you create an account, you can build a profile in the <strong>Profile</strong>&nbsp;tab on your dashboard. In the profile, you can create a CV of all your previous education, professional and other experience relevant to the opportunity. Your profile is maintained in the system and is visible to supervisors but not to other users.&nbsp;</p>\r\n\r\n<p>When you apply for a Post, you can simply click on <strong>Quick Apply&nbsp;</strong>and this will send a link to your profile to the supervisor of the Post that you have applied for.&nbsp;</p>', 'CONTACT', 'Inactive', '2017-12-11 22:58:43'),
(4, 'How to contact a supervisor', '<p>The system has a messaging system to enable communication between supervisors and project participants. However, a supervisor has to initiate a message communication.</p>', 'CONTACT', 'Active', '2017-09-02 03:41:23'),
(5, 'We believe in the power of information', '<p>Dolor sit amet consectetur adipiscing elit proin non risus sit amet turpis porta auctor sed semper tellus quis massa scelerisque mattis Vivamus quis nibh a nibh scelerisque sodales aliquam erat volutpat sed congue nisi tempor nisi dignissim nec accumsan nisl posuere vestibulum acurna ajusto semper eleifend duis aliquet vulputate interdum fusce acquam a quam vulputate suscipit a sit amet purus.</p>', 'ABOUT', 'Active', '2017-07-16 10:18:07'),
(6, 'Vivamus pellentesque commodo justo', '<p>Dolor sit amet consectetur adipiscing elit proin non risus sit amet turpis porta auctor sed semper tellus quis massa scelerisque mattis Vivamus quis nibh a nibh scelerisque sodales aliquam erat volutpat sed congue nisi tempor nisi dignissim nec accumsan nisl posuere vestibulum acurna ajusto semper eleifend duis aliquet vulputate interdum fusce acquam a quam vulputate suscipit a sit amet purus. test</p>', 'ABOUT', 'Active', '2017-07-19 06:30:52'),
(11, 'Test', '<p>We are Testing the Website</p>', 'ABOUT', 'Inactive', '2017-11-29 23:25:08'),
(12, 'How to write your CV', '<p>You can follow the links below to create profile.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'DASHBOARD', 'Active', '2017-12-05 18:47:43'),
(13, 'How to submit your application', '<p>There are 3 ways to submit an application. Firstly, complete your profile.</p>', 'DASHBOARD', 'Active', '2017-12-05 18:50:32');

-- --------------------------------------------------------

--
-- Table structure for table `iw_favourite_company`
--

CREATE TABLE `iw_favourite_company` (
  `favourite_company_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_favourite_company`
--

INSERT INTO `iw_favourite_company` (`favourite_company_id`, `title`, `logo`, `added_date`) VALUES
(2, 'Essence', 'PNG-1500552018.png', '2017-07-19 22:30:18'),
(4, 'Facility Manage', 'PNG-1500555386.png', '2017-07-19 23:53:31'),
(5, 'Info Tech', 'PNG-1500608170.png', '2017-07-20 14:06:10'),
(6, 'City Beacon', 'PNG-1500608226.png', '2017-07-20 14:07:06'),
(7, 'Digital Pome', 'PNG-1500609208.png', '2017-07-20 14:23:28'),
(8, 'Hyposia', 'PNG-1500609223.png', '2017-07-20 14:23:43'),
(9, 'Optoro', 'PNG-1500609240.png', '2017-07-20 14:24:00'),
(10, 'Sculp', 'PNG-1500609339.png', '2017-07-20 14:25:39');

-- --------------------------------------------------------

--
-- Table structure for table `iw_featured_people`
--

CREATE TABLE `iw_featured_people` (
  `featured_people_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `media` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organisation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkedin_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `about_title` text COLLATE utf8_unicode_ci NOT NULL,
  `about_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `quote_title` text COLLATE utf8_unicode_ci NOT NULL,
  `quote_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_featured_people`
--

INSERT INTO `iw_featured_people` (`featured_people_id`, `name`, `media`, `position`, `organisation`, `linkedin_url`, `about_title`, `about_desc`, `quote_title`, `quote_desc`, `status`, `created_date`) VALUES
(1, 'Maria Joel', 'JPG-1504866159.jpg', 'Student', 'University of Singapore', 'https://www.linkedin.com/', 'Nulla urna arcu, auctor vel molestie nec, malesuada vitae libero. Ut ultrices lacinia pretium. Quisque tempor neque in auctor elementum. Sed sed felis magna. Mauris eu neque dui. Nam dapibus nulla nec eros porta, sed malesuada turpis porta. Mauris risus mauris, posuere ut ullamcorper fringilla, bibendum in lorem.', 'Cras ultricies scelerisque felis eu auctor. Aenean sapien lorem, dictum lacinia orci dignissim, suscipit hendrerit leo. Quisque tortor mauris, pharetra eu est sit amet, elementum eleifend lacus. Sed tincidunt consectetur erat, eu vestibulum dolor elementum at. Ut accumsan congue tristique. Vestibulum cursus arcu lacus, et lacinia augue auctor ac. In non sapien erat.', 'Vivamus id vehicula dui. Nullam non eros magna. Nullam gravida tristique sagittis. Duis fermentum nunc aliquam venenatis iaculis. Ut placerat orci ut ex tempus bibendum.', 'Nullam risus metus, vestibulum in nunc ut, vulputate luctus ligula. Mauris eget sem mi. Proin congue nec risus vel tincidunt. Praesent congue risus nec sapien fringilla, eu lacinia magna ornare. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec fermentum eget ligula eget feugiat.', 'Active', '2017-09-08 02:22:39'),
(2, 'Daniel Richard', 'JPG-1504866367.jpg', 'Student', 'University of California', 'www.linkedin.com', 'Proin lacinia, tellus vitae eleifend vehicula, lectus justo ultricies tortor, interdum accumsan ante augue in eros. Nulla eleifend sit amet mi vitae laoreet. Nunc imperdiet fermentum sodales.', 'Maecenas eu elit quis elit rhoncus venenatis. Nam sit amet laoreet nulla. Etiam blandit dui ac maximus commodo. Proin lacinia, tellus vitae eleifend vehicula, lectus justo ultricies tortor, interdum accumsan ante augue in eros. Nulla eleifend sit amet mi vitae laoreet. Nunc imperdiet fermentum sodales.', 'Aliquam blandit vitae quam quis fringilla. Donec in ligula sed felis gravida convallis.', 'Aliquam venenatis in sapien at ullamcorper. Aliquam eleifend urna quam, vitae accumsan mi laoreet in. Aliquam lacinia vitae mi eu dignissim. Phasellus mollis, metus a accumsan sodales, est metus posuere ligula, at condimentum neque nulla id enim.', 'Active', '2017-09-08 02:26:07'),
(3, 'Mathew Hayden', 'JPG-1504866395.jpg', 'PHP Developer', 'Singsys Pte. Ltd', 'https://www.linkedin.com/', 'Quisque tempor neque in auctor elementum. Sed sed felis magna. Mauris eu neque dui. Nam dapibus nulla nec eros porta, sed malesuada turpis porta.', 'Aliquam volutpat pharetra vestibulum. Sed a volutpat eros, sit amet dapibus tellus. Nunc commodo massa eu dui consequat aliquam. Cras ultricies scelerisque felis eu auctor. Aenean sapien lorem, dictum lacinia orci dignissim, suscipit hendrerit leo. Quisque tortor mauris, pharetra eu est sit amet, elementum eleifend lacus. Sed tincidunt consectetur erat, eu vestibulum dolor elementum at.', 'Nulla urna arcu, auctor vel molestie nec, malesuada vitae libero. Ut ultrices lacinia pretium.', 'Aliquam volutpat pharetra vestibulum. Sed a volutpat eros, sit amet dapibus tellus. Nunc commodo massa eu dui consequat aliquam. Cras ultricies scelerisque felis eu auctor. Aenean sapien lorem, dictum lacinia orci dignissim, suscipit hendrerit leo. Quisque tortor mauris, pharetra eu est sit amet, elementum eleifend lacus. Sed tincidunt consectetur erat, eu vestibulum dolor elementum at.', 'Active', '2017-09-08 02:26:35'),
(4, 'Latin Vanchin', 'JPG-1504866412.jpg', 'Student', 'Hewlett Packard', 'https://www.linkedin.com/', 'Curabitur laoreet dui sem, id cursus tortor vehicula et. Maecenas eu elit quis elit rhoncus venenatis. Nam sit amet laoreet nulla. Etiam blandit dui ac maximus commodo. Proin lacinia, tellus vitae eleifend vehicula, lectus justo ultricies tortor, interdum accumsan ante augue in eros.', 'Aliquam venenatis in sapien at ullamcorper. Aliquam eleifend urna quam, vitae accumsan mi laoreet in. Aliquam lacinia vitae mi eu dignissim. Phasellus mollis, metus a accumsan sodales, est metus posuere ligula, at condimentum neque nulla id enim.', 'Curabitur laoreet dui sem, id cursus tortor vehicula et. Maecenas eu elit quis elit rhoncus venenatis. Nam sit amet laoreet nulla. Etiam blandit dui ac maximus commodo. Proin lacinia, tellus vitae eleifend vehicula, lectus justo ultricies tortor, interdum accumsan ante augue in eros.', 'Aliquam venenatis in sapien at ullamcorper. Aliquam eleifend urna quam, vitae accumsan mi laoreet in. Aliquam lacinia vitae mi eu dignissim. Phasellus mollis, metus a accumsan sodales, est metus posuere ligula, at condimentum neque nulla id enim.', 'Active', '2017-09-08 02:26:52'),
(7, 'Ankit', 'JPG-1507868551.jpg', 'Ananylst', 'Singsys', 'ankitjaiswal@singsys.com', 'hi', 'hi', 'hi', 'hi', 'Active', '2017-10-12 22:54:14');

-- --------------------------------------------------------

--
-- Table structure for table `iw_featured_user`
--

CREATE TABLE `iw_featured_user` (
  `featured_user_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `featured_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iw_f_a_qs`
--

CREATE TABLE `iw_f_a_qs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iw_institutional_email_verification`
--

CREATE TABLE `iw_institutional_email_verification` (
  `institutional_email_verification_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `verified` enum('0','1') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_institutional_email_verification`
--

INSERT INTO `iw_institutional_email_verification` (`institutional_email_verification_id`, `user_id`, `created_date`, `token`, `verified`) VALUES
(2, 40, '2017-11-04 05:19:41', 'NDAjIzZKWlFVNzcwIyMyMDE3MTEwNDEwNDk0MQ==', '1'),
(3, 41, '2017-11-04 05:46:02', 'NDEjIzlRU0FWQ1pIIyMyMDE3MTEwNDExMTYwMg==', '1'),
(4, 63, '2017-11-06 07:23:26', 'NjMjI1pWVTcwMU05IyMyMDE3MTEwNjEyNTMyNg==', '0'),
(8, 64, '2018-01-29 00:46:47', 'NjQjIzFROFRITDYyIyMyMDE4MDEyOTA2MTY0Nw==', '0'),
(23, 7, '2018-02-09 00:57:39', 'NyMjVjlJTDFOQlQjIzIwMTgwMjA5MDYyNzM5', '1');

-- --------------------------------------------------------

--
-- Table structure for table `iw_level`
--

CREATE TABLE `iw_level` (
  `level_id` int(11) NOT NULL,
  `level` varchar(255) NOT NULL,
  `parent` int(11) NOT NULL,
  `child` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iw_level`
--

INSERT INTO `iw_level` (`level_id`, `level`, `parent`, `child`, `created_date`) VALUES
(1, 'Diploma', 0, 0, '2017-08-14 18:30:19'),
(2, 'Undergraduate', 0, 0, '2017-08-14 18:30:39'),
(3, 'Masters', 0, 0, '2017-12-12 16:58:49'),
(7, 'PHD', 0, 0, '2017-12-12 16:59:08'),
(8, 'Post Doctorial', 0, 0, '2017-12-12 22:29:47');

-- --------------------------------------------------------

--
-- Table structure for table `iw_license`
--

CREATE TABLE `iw_license` (
  `license_id` int(11) NOT NULL,
  `license_type_id` int(11) NOT NULL,
  `license_allocated` int(11) NOT NULL,
  `license_used` int(11) NOT NULL,
  `license_number` bigint(11) NOT NULL,
  `provider_organisation_profile_id` int(11) NOT NULL,
  `expiry_date` date NOT NULL,
  `is_expired` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_license`
--

INSERT INTO `iw_license` (`license_id`, `license_type_id`, `license_allocated`, `license_used`, `license_number`, `provider_organisation_profile_id`, `expiry_date`, `is_expired`, `created_date`) VALUES
(1, 1, 20, 6, 11511753785, 2, '2018-11-27', '0', '2017-11-27 03:36:25'),
(2, 1, 5, 0, 11511753785, 2, '2018-11-27', '0', '2017-11-27 03:46:11'),
(3, 1, 10, 4, 31511754631, 3, '2018-11-27', '0', '2017-11-27 03:50:31'),
(4, 1, 5, 0, 31511754631, 3, '2018-11-30', '0', '2017-11-30 00:47:31'),
(5, 1, 20, 0, 31511754631, 3, '2018-12-08', '0', '2017-12-08 20:37:58'),
(6, 1, 10, 0, 61513340046, 10, '2018-12-15', '0', '2017-12-15 12:14:06'),
(7, 1, 5, 0, 61513340046, 10, '2018-12-15', '0', '2017-12-15 12:15:10'),
(8, 1, 10, 0, 11511753785, 2, '2019-01-05', '0', '2018-01-05 09:52:28'),
(9, 1, 5, 0, 11511753785, 2, '2019-01-05', '0', '2018-01-05 09:52:47'),
(10, 1, 4, 0, 11511753785, 2, '2019-01-05', '0', '2018-01-05 09:53:22'),
(11, 1, 20, 0, 111517390086, 16, '2018-02-10', '0', '2018-01-31 09:14:46'),
(12, 1, 2, 0, 11511753785, 2, '2019-02-09', '0', '2018-02-09 04:04:51'),
(13, 1, 2, 0, 11511753785, 2, '2019-02-09', '0', '2018-02-09 04:07:48'),
(14, 1, 1, 0, 11511753785, 2, '2019-02-09', '0', '2018-02-09 04:09:57'),
(15, 1, 1, 0, 11511753785, 2, '2019-02-09', '0', '2018-02-09 04:11:59'),
(16, 1, 1, 0, 11511753785, 2, '2019-02-09', '0', '2018-02-09 04:13:10'),
(17, 1, 1, 0, 11511753785, 2, '2019-02-09', '0', '2018-02-09 04:13:38'),
(18, 1, 1, 0, 11511753785, 2, '2019-02-09', '0', '2018-02-09 04:44:54');

-- --------------------------------------------------------

--
-- Table structure for table `iw_license_log`
--

CREATE TABLE `iw_license_log` (
  `license_log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `placement_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_license_log`
--

INSERT INTO `iw_license_log` (`license_log_id`, `user_id`, `placement_id`, `created_date`) VALUES
(1, 3, 113, '2017-12-18 03:55:43'),
(2, 3, 30, '2018-01-02 05:22:30'),
(3, 3, 114, '2018-01-02 05:22:39'),
(4, 3, 115, '2018-02-14 10:02:19'),
(5, 3, 116, '2018-02-14 10:16:52');

-- --------------------------------------------------------

--
-- Table structure for table `iw_license_supervisor`
--

CREATE TABLE `iw_license_supervisor` (
  `license_supervisor_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `license_id` int(11) NOT NULL,
  `license_allocated` int(11) NOT NULL,
  `license_used` int(11) NOT NULL,
  `number_of_license` int(11) NOT NULL,
  `type` enum('add','remove') COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL COMMENT '0-active, 1-suspend',
  `description` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_license_supervisor`
--

INSERT INTO `iw_license_supervisor` (`license_supervisor_id`, `user_id`, `license_id`, `license_allocated`, `license_used`, `number_of_license`, `type`, `status`, `description`, `created_date`) VALUES
(1, 44, 1, 5, 2, 5, 'add', '0', 'more licences', '2017-11-27 03:51:32'),
(2, 44, 1, 8, 4, 3, 'add', '0', 'more', '2017-11-30 00:49:50'),
(3, 42, 1, 10, 0, 10, 'add', '0', 'Add Licenses', '2017-12-16 06:54:55');

-- --------------------------------------------------------

--
-- Table structure for table `iw_license_type`
--

CREATE TABLE `iw_license_type` (
  `license_type_id` int(11) NOT NULL,
  `license_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_license_type`
--

INSERT INTO `iw_license_type` (`license_type_id`, `license_type`) VALUES
(1, 'Lite'),
(2, 'Plus'),
(3, 'Pro'),
(4, 'Platinum');

-- --------------------------------------------------------

--
-- Table structure for table `iw_location`
--

CREATE TABLE `iw_location` (
  `location_id` int(11) NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iw_migrations`
--

CREATE TABLE `iw_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_migrations`
--

INSERT INTO `iw_migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2017_07_17_043128_create_iw_about_us_content_table', 1),
(3, '2017_07_17_043128_create_iw_about_us_slider_table', 1),
(4, '2017_07_17_043128_create_iw_admin_table', 1),
(5, '2017_07_17_043128_create_iw_application_method_table', 1),
(6, '2017_07_17_043128_create_iw_banner_detail_table', 1),
(7, '2017_07_17_043128_create_iw_blog_category_table', 1),
(8, '2017_07_17_043128_create_iw_blog_media_table', 1),
(9, '2017_07_17_043128_create_iw_blog_table', 1),
(10, '2017_07_17_043128_create_iw_chat_group_feedback_table', 1),
(11, '2017_07_17_043128_create_iw_chat_group_profile_placement_table', 1),
(12, '2017_07_17_043128_create_iw_chat_group_profile_table', 1),
(13, '2017_07_17_043128_create_iw_chat_group_table', 1),
(14, '2017_07_17_043128_create_iw_chat_group_user_table', 1),
(15, '2017_07_17_043128_create_iw_chat_message_details_table', 1),
(16, '2017_07_17_043128_create_iw_chat_message_table', 1),
(17, '2017_07_17_043128_create_iw_chat_table', 1),
(18, '2017_07_17_043128_create_iw_chat_type_table', 1),
(19, '2017_07_17_043128_create_iw_cities_table', 1),
(20, '2017_07_17_043128_create_iw_contact_us_reply_table', 1),
(21, '2017_07_17_043128_create_iw_contact_us_table', 1),
(22, '2017_07_17_043128_create_iw_countries_table', 1),
(23, '2017_07_17_043128_create_iw_department_table', 1),
(24, '2017_07_17_043128_create_iw_discipline_table', 1),
(25, '2017_07_17_043128_create_iw_email_stem_table', 1),
(26, '2017_07_17_043128_create_iw_email_template_table', 1),
(27, '2017_07_17_043128_create_iw_email_verification_table', 1),
(28, '2017_07_17_043128_create_iw_faq_table', 1),
(29, '2017_07_17_043128_create_iw_featured_user_table', 1),
(30, '2017_07_17_043128_create_iw_license_supervisor_table', 1),
(31, '2017_07_17_043128_create_iw_license_table', 1),
(32, '2017_07_17_043128_create_iw_license_type_table', 1),
(33, '2017_07_17_043128_create_iw_location_table', 1),
(34, '2017_07_17_043128_create_iw_opportunity_table', 1),
(35, '2017_07_17_043128_create_iw_options_table', 1),
(36, '2017_07_17_043128_create_iw_password_verification_table', 1),
(37, '2017_07_17_043128_create_iw_placement_discipline_table', 1),
(38, '2017_07_17_043128_create_iw_placement_document_table', 1),
(39, '2017_07_17_043128_create_iw_placement_funding_table', 1),
(40, '2017_07_17_043128_create_iw_placement_keyword_table', 1),
(41, '2017_07_17_043128_create_iw_placement_status_table', 1),
(42, '2017_07_17_043128_create_iw_placement_subject_table', 1),
(43, '2017_07_17_043128_create_iw_placement_table', 1),
(44, '2017_07_17_043128_create_iw_placement_type_table', 1),
(45, '2017_07_17_043128_create_iw_placement_view_table', 1),
(46, '2017_07_17_043128_create_iw_profession_table', 1),
(47, '2017_07_17_043128_create_iw_provider_admin_general_settings_table', 1),
(48, '2017_07_17_043128_create_iw_provider_admin_license_log_table', 1),
(49, '2017_07_17_043128_create_iw_provider_admin_profile_table', 1),
(50, '2017_07_17_043128_create_iw_provider_department_table', 1),
(51, '2017_07_17_043128_create_iw_provider_enquiry_table', 1),
(52, '2017_07_17_043128_create_iw_provider_organisation_keyword_table', 1),
(53, '2017_07_17_043128_create_iw_provider_organisation_license_log_table', 1),
(54, '2017_07_17_043128_create_iw_provider_organisation_location_table', 1),
(55, '2017_07_17_043128_create_iw_provider_organisation_profile_table', 1),
(56, '2017_07_17_043128_create_iw_provider_organisation_subject_table', 1),
(57, '2017_07_17_043128_create_iw_provider_type_table', 1),
(58, '2017_07_17_043128_create_iw_states_table', 1),
(59, '2017_07_17_043128_create_iw_static_content_table', 1),
(60, '2017_07_17_043128_create_iw_status_table', 1),
(61, '2017_07_17_043128_create_iw_student_academic_supervisor_table', 1),
(62, '2017_07_17_043128_create_iw_student_document_table', 1),
(63, '2017_07_17_043128_create_iw_student_education_table', 1),
(64, '2017_07_17_043128_create_iw_student_employment_table', 1),
(65, '2017_07_17_043128_create_iw_student_feedback_table', 1),
(66, '2017_07_17_043128_create_iw_student_keyword_table', 1),
(67, '2017_07_17_043128_create_iw_student_other_info_table', 1),
(68, '2017_07_17_043128_create_iw_student_placement_table', 1),
(69, '2017_07_17_043128_create_iw_student_profile_table', 1),
(70, '2017_07_17_043128_create_iw_student_research_table', 1),
(71, '2017_07_17_043128_create_iw_subject_table', 1),
(72, '2017_07_17_043128_create_iw_supervisor_keyword_table', 1),
(73, '2017_07_17_043128_create_iw_supervisor_profile_table', 1),
(74, '2017_07_17_043128_create_iw_user_log_table', 1),
(75, '2017_07_17_043128_create_iw_user_status_log_table', 1),
(76, '2017_07_17_043128_create_iw_users_table', 1),
(77, '2017_07_17_043128_create_iw_usertype_table', 1),
(78, '2017_07_17_043130_add_foreign_keys_to_iw_blog_media_table', 1),
(79, '2017_07_17_043130_add_foreign_keys_to_iw_blog_table', 1),
(80, '2017_07_17_043130_add_foreign_keys_to_iw_chat_group_feedback_table', 1),
(81, '2017_07_17_043130_add_foreign_keys_to_iw_chat_group_profile_placement_table', 1),
(82, '2017_07_17_043130_add_foreign_keys_to_iw_chat_group_profile_table', 1),
(83, '2017_07_17_043130_add_foreign_keys_to_iw_chat_group_table', 1),
(84, '2017_07_17_043130_add_foreign_keys_to_iw_chat_group_user_table', 1),
(85, '2017_07_17_043130_add_foreign_keys_to_iw_chat_message_details_table', 1),
(86, '2017_07_17_043130_add_foreign_keys_to_iw_chat_table', 1),
(87, '2017_07_17_043130_add_foreign_keys_to_iw_cities_table', 1),
(88, '2017_07_17_043130_add_foreign_keys_to_iw_contact_us_reply_table', 1),
(89, '2017_07_17_043130_add_foreign_keys_to_iw_email_stem_table', 1),
(90, '2017_07_17_043130_add_foreign_keys_to_iw_email_verification_table', 1),
(91, '2017_07_17_043130_add_foreign_keys_to_iw_featured_user_table', 1),
(92, '2017_07_17_043130_add_foreign_keys_to_iw_license_supervisor_table', 1),
(93, '2017_07_17_043130_add_foreign_keys_to_iw_license_table', 1),
(94, '2017_07_17_043130_add_foreign_keys_to_iw_password_verification_table', 1),
(95, '2017_07_17_043130_add_foreign_keys_to_iw_placement_discipline_table', 1),
(96, '2017_07_17_043130_add_foreign_keys_to_iw_placement_document_table', 1),
(97, '2017_07_17_043130_add_foreign_keys_to_iw_placement_keyword_table', 1),
(98, '2017_07_17_043130_add_foreign_keys_to_iw_placement_subject_table', 1),
(99, '2017_07_17_043130_add_foreign_keys_to_iw_placement_table', 1),
(100, '2017_07_17_043130_add_foreign_keys_to_iw_placement_view_table', 1),
(101, '2017_07_17_043130_add_foreign_keys_to_iw_provider_admin_general_settings_table', 1),
(102, '2017_07_17_043130_add_foreign_keys_to_iw_provider_admin_license_log_table', 1),
(103, '2017_07_17_043130_add_foreign_keys_to_iw_provider_admin_profile_table', 1),
(104, '2017_07_17_043130_add_foreign_keys_to_iw_provider_department_table', 1),
(105, '2017_07_17_043130_add_foreign_keys_to_iw_provider_organisation_keyword_table', 1),
(106, '2017_07_17_043130_add_foreign_keys_to_iw_provider_organisation_license_log_table', 1),
(107, '2017_07_17_043130_add_foreign_keys_to_iw_provider_organisation_location_table', 1),
(108, '2017_07_17_043130_add_foreign_keys_to_iw_provider_organisation_profile_table', 1),
(109, '2017_07_17_043130_add_foreign_keys_to_iw_provider_organisation_subject_table', 1),
(110, '2017_07_17_043130_add_foreign_keys_to_iw_states_table', 1),
(111, '2017_07_17_043130_add_foreign_keys_to_iw_student_academic_supervisor_table', 1),
(112, '2017_07_17_043130_add_foreign_keys_to_iw_student_document_table', 1),
(113, '2017_07_17_043130_add_foreign_keys_to_iw_student_education_table', 1),
(114, '2017_07_17_043130_add_foreign_keys_to_iw_student_employment_table', 1),
(115, '2017_07_17_043130_add_foreign_keys_to_iw_student_feedback_table', 1),
(116, '2017_07_17_043130_add_foreign_keys_to_iw_student_keyword_table', 1),
(117, '2017_07_17_043130_add_foreign_keys_to_iw_student_other_info_table', 1),
(118, '2017_07_17_043130_add_foreign_keys_to_iw_student_placement_table', 1),
(119, '2017_07_17_043130_add_foreign_keys_to_iw_student_profile_table', 1),
(120, '2017_07_17_043130_add_foreign_keys_to_iw_student_research_table', 1),
(121, '2017_07_17_043130_add_foreign_keys_to_iw_supervisor_keyword_table', 1),
(122, '2017_07_17_043130_add_foreign_keys_to_iw_supervisor_profile_table', 1),
(123, '2017_07_17_043130_add_foreign_keys_to_iw_user_log_table', 1),
(124, '2017_07_17_043130_add_foreign_keys_to_iw_user_status_log_table', 1),
(125, '2017_07_17_043130_add_foreign_keys_to_iw_users_table', 1),
(126, '2017_07_17_065008_create_settings_table', 1),
(127, '2017_07_17_090949_create_f_a_qs_table', 1),
(128, '2017_07_20_111654_favourite_company', 1),
(129, '2017_07_21_121938_type_of_enquiry', 2),
(130, '2017_07_24_053147_application_process', 2),
(131, '2017_07_25_055815_create_duration_table', 3),
(132, '2017_07_25_064219_create_type_table', 3),
(133, '2017_07_26_094843_provider_multiple_photo_table', 4),
(134, '2017_07_27_052812_create_mode_table', 4),
(135, '2017_08_03_124019_create_research_type', 5),
(136, '2017_08_04_045829_create_student_projects', 5),
(137, '2017_08_04_050453_add_foreign_keys_to_student_projects', 5),
(138, '2017_09_05_132918_create_student_favorite', 6),
(139, '2017_09_08_060433_create_featured_people_table', 7),
(140, '2017_09_14_133636_create_favorite_placement_table', 8),
(141, '2017_09_16_070505_alter_license_supervisor', 9),
(142, '2017_09_20_070701_add_archive_to_user_table', 10),
(143, '2017_09_21_060549_alter_student_placement_table', 11),
(144, '2017_09_21_063301_change_message_column_student_placement', 11),
(145, '2017_09_22_091759_create_notifications_table', 12),
(146, '2017_09_22_093519_create_notifications_template', 12),
(147, '2017_09_25_073246_add_withdraw_status', 13),
(148, '2017_10_04_104527_create_student_placement_info', 13),
(149, '2017_10_04_104556_create_student_placement_employment', 13),
(150, '2017_10_04_104622_create_student_placement_feedback', 13),
(151, '2017_10_04_104633_create_student_placement_keyword', 13),
(152, '2017_10_04_104647_create_student_placement_document', 13),
(153, '2017_10_04_104701_create_student_placement_academic_supervisor', 13),
(154, '2017_10_04_104712_create_student_placement_reserach', 13),
(155, '2017_10_04_104721_create_student_placement_other_info', 13),
(156, '2017_10_04_104729_create_student_placement_project', 13),
(157, '2017_10_04_104818_create_student_placement_education', 13),
(158, '2017_10_31_052658_create_institutional_email_verification', 14),
(159, '2017_11_01_042446_alter_institutional_email_verification', 14),
(160, '2017_11_21_053913_alter_group_placement_table', 15),
(161, '2017_11_21_060128_alter_group_placement_feedback_table', 15),
(162, '2017_11_22_105500_alter_chat_group_table', 16),
(163, '2017_11_23_122824_alter_provider_admin_license', 17),
(164, '2017_11_23_123504_create_provider_notes', 17),
(165, '2017_11_24_050032_alter_license_table', 18),
(166, '2017_11_24_104600_create_user_license', 18),
(167, '2017_11_30_045858_alter_about_us_slider_table', 19),
(168, '2017_11_30_081707_alter_featured_people', 20),
(169, '2017_11_30_114907_create_enquiry_reply_table', 21),
(170, '2017_12_11_095142_create_student_notification_opportunity', 22),
(171, '2017_12_11_095214_create_student_notification_level', 22),
(172, '2017_12_11_095239_create_student_notification_discipline', 22),
(173, '2017_12_11_095308_create_student_notification_location', 22),
(174, '2017_12_11_095325_create_student_notification_funding', 22),
(175, '2017_12_11_095352_create_student_notification_duration', 22),
(176, '2017_12_11_095423_create_student_notification_provider', 22),
(177, '2017_12_11_095446_create_student_notification_keyword', 22),
(178, '2017_12_12_072120_create_newsletter_table', 22),
(179, '2017_12_16_050856_create_licenses_log', 23),
(180, '2017_12_18_085836_alter_provider_profile', 24),
(181, '2018_01_02_055729_alter_student_profile', 25),
(182, '2018_01_04_104236_alter_supervisor_profile', 25),
(183, '2018_01_04_105200_alter_provider_org_profile', 25),
(184, '2018_01_31_054237_add_is_withdrawn_to_chat_group_user_table', 26),
(185, '2018_02_02_045515_iw_posts_shared_with_table', 26),
(186, '2018_02_17_070350_add_col_provider_organisation_profile', 27),
(187, '2018_02_17_100524_create_external_application_process', 27);

-- --------------------------------------------------------

--
-- Table structure for table `iw_mode`
--

CREATE TABLE `iw_mode` (
  `mode_id` int(10) UNSIGNED NOT NULL,
  `mode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_mode`
--

INSERT INTO `iw_mode` (`mode_id`, `mode`, `added_date`) VALUES
(1, 'In person (full time)', '2017-10-24 22:41:02'),
(2, 'In person (part time)', '2017-10-24 22:41:24'),
(5, 'Online (full time)', '2017-10-24 22:41:44'),
(6, 'Online (part time)', '2017-10-24 22:42:02');

-- --------------------------------------------------------

--
-- Table structure for table `iw_newsletter`
--

CREATE TABLE `iw_newsletter` (
  `newsletter_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_newsletter`
--

INSERT INTO `iw_newsletter` (`newsletter_id`, `email`, `created_date`) VALUES
(1, 'raveena@singsys.com', '2017-12-12 09:45:47'),
(2, 'anuj@singsys.com', '2017-12-12 09:45:56'),
(3, 'duncan775@gmail.com', '2017-12-12 22:32:48');

-- --------------------------------------------------------

--
-- Table structure for table `iw_notification`
--

CREATE TABLE `iw_notification` (
  `notification_id` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id` int(11) NOT NULL COMMENT 'can be team id',
  `type` enum('license','team_invitation','application_invitation','general','group_invitation','user_invitation') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_status` enum('pending','accept','reject') COLLATE utf8_unicode_ci NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `unread_status` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_notification`
--

INSERT INTO `iw_notification` (`notification_id`, `message`, `id`, `type`, `type_status`, `sender_id`, `receiver_id`, `unread_status`, `created_date`) VALUES
(1, 'David Test has invited you to join the Team Building.<br />\r\n', 2, 'team_invitation', 'accept', 41, 40, 'yes', '2017-11-20 01:28:36'),
(87, 'David Test has invited you to join the Team XA.<br />\r\n', 11, 'team_invitation', 'pending', 41, 40, 'yes', '2017-12-17 09:11:23'),
(88, 'Provider Raveena Nigam has been removed as a supervisor from company Singsys Pvt. Ltd', 0, 'general', 'pending', 0, 1, 'yes', '2017-12-20 05:43:53'),
(7, 'Mary Smithe has invited you to join the Engineering 3.', 3, 'user_invitation', 'accept', 44, 40, 'yes', '2017-11-20 02:19:10'),
(95, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2017-12-21 06:45:51'),
(8, 'Kriti Jaiswal has invited you to join the Core Building.<br />\r\n', 7, 'team_invitation', 'accept', 7, 14, 'yes', '2017-11-20 08:43:51'),
(9, 'Kriti Jaiswal has invited you to join the Core Building.<br />\r\n', 7, 'team_invitation', 'accept', 7, 10, 'yes', '2017-11-20 08:43:51'),
(10, 'Kriti Jaiswal has invited you to join the Core Building.<br />\r\n', 7, 'team_invitation', 'accept', 7, 13, 'no', '2017-11-20 08:43:51'),
(11, 'Mary Smithe has invited you to join the Medical Practice 5.', 2, 'group_invitation', 'accept', 44, 7, 'yes', '2017-11-20 03:23:04'),
(12, 'Mary Smithe has invited you to join the Medical Practice 5.', 8, 'user_invitation', 'accept', 44, 10, 'yes', '2017-11-20 03:24:54'),
(13, 'Mary Smithe has invited you to join the Medical Practice 5.', 8, 'user_invitation', 'accept', 44, 13, 'no', '2017-11-20 03:26:30'),
(14, 'Mary Smithe has invited you to join the Medical Practice 5.', 8, 'user_invitation', 'pending', 44, 14, 'yes', '2017-11-20 08:52:50'),
(96, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2017-12-21 08:40:08'),
(19, 'Mary Smithe has invited you to join the Medical Practice 5.', 3, 'group_invitation', 'accept', 44, 41, 'yes', '2017-11-20 07:59:46'),
(18, 'Mary Smithe has invited you to join the Medical Practice 5.', 3, 'group_invitation', 'pending', 44, 7, 'yes', '2017-11-20 13:08:05'),
(21, 'Mary Smithe has invited you to join the Medical Practice 5.', 10, 'user_invitation', 'pending', 44, 40, 'yes', '2017-11-20 13:30:42'),
(94, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2017-12-21 06:45:29'),
(23, 'David Test has invited you to join the Team XA.<br />\r\n', 11, 'team_invitation', 'accept', 41, 40, 'yes', '2017-11-20 17:30:19'),
(101, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2017-12-21 09:07:34'),
(25, 'Mary Smithe has invited you to join the Engineering Placement 2.', 13, 'user_invitation', 'accept', 44, 40, 'yes', '2017-11-20 18:05:49'),
(93, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2017-12-21 06:00:38'),
(90, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2017-12-21 04:26:45'),
(91, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2017-12-21 04:28:25'),
(92, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2017-12-21 06:00:04'),
(89, 'Supervisor Abhishek Kumar has been suspended from Singsys Pvt. Ltd', 0, 'general', 'pending', 0, 1, 'yes', '2017-12-20 06:46:02'),
(31, 'Raveena Nigam has invited you to join the Apply Opportunity 22 Nov - Accumsan pellentesque habitant morbi tristique senectus netus malesuada fames..', 9, 'group_invitation', 'pending', 3, 40, 'yes', '2017-11-22 01:13:18'),
(32, 'Raveena Nigam has invited you to join the Apply Opportunity 22 Nov - Accumsan pellentesque habitant morbi tristique senectus netus malesuada fames..', 10, 'group_invitation', 'accept', 3, 7, 'yes', '2017-11-22 01:52:30'),
(33, 'Duncan Rayner has invited you to join the Data Analysis version 2.', 11, 'group_invitation', 'accept', 4, 40, 'yes', '2017-11-22 18:17:27'),
(34, 'Duncan Rayner has invited you to join the Data Analysis version 2.', 27, 'user_invitation', 'accept', 4, 39, 'no', '2017-11-22 18:33:50'),
(35, 'Duncan Rayner has invited you to join the Data Analysis version 2.', 27, 'user_invitation', 'accept', 4, 39, 'yes', '2017-11-22 18:33:50'),
(86, 'John Teste has invited you to join the Team XEv2.<br />\r\n', 54, 'team_invitation', 'accept', 40, 41, 'yes', '2017-12-17 03:40:34'),
(81, 'Abhishek Trivedi has requested for 10 number of license(s).', 0, 'license', 'pending', 42, 3, 'yes', '2017-12-15 11:46:57'),
(38, 'John Teste has invited you to join the XD.<br />\r\n', 29, 'team_invitation', 'accept', 40, 39, 'yes', '2017-11-22 18:33:44'),
(78, 'Mary Smithe has invited you to join the Discovery 4.', 57, 'user_invitation', 'accept', 44, 40, 'yes', '2017-12-11 19:14:10'),
(79, 'Mary Smithe has invited you to join the Discovery 4.', 57, 'user_invitation', 'accept', 44, 41, 'yes', '2017-12-11 19:38:40'),
(80, 'Raveena Nigam has requested for 20 number of license(s).', 0, 'license', 'pending', 3, 1, 'yes', '2017-12-15 11:46:10'),
(75, 'Raveena Nigam has invited you to join the Linkedin Profile.', 23, 'group_invitation', 'accept', 3, 7, 'yes', '2017-12-07 03:16:23'),
(43, 'Duncan Rayner has invited you to join the IT systems development for HR management.', 8, 'group_invitation', 'pending', 4, 7, 'yes', '2017-11-23 00:22:54'),
(100, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2017-12-21 09:07:22'),
(45, 'Mary Smithe has invited you to join the Engineering Placement 2.', 34, 'user_invitation', 'pending', 44, 41, 'yes', '2017-11-23 00:29:26'),
(76, 'Raveena Nigam has invited you to join the Linkedin Profile.', 55, 'user_invitation', 'pending', 3, 13, 'yes', '2017-12-07 08:46:08'),
(85, 'Raveena Nigam has added 10 number of license(s) in your account.', 0, 'license', 'pending', 3, 42, 'yes', '2017-12-16 06:54:55'),
(48, 'Duncan Rayner has invited you to join the Data Analysis version 2.', 14, 'group_invitation', 'accept', 4, 7, 'yes', '2017-11-23 00:21:09'),
(49, 'Duncan Rayner has invited you to join the Data Analysis version 2.', 36, 'user_invitation', 'pending', 4, 10, 'yes', '2017-11-23 05:53:28'),
(50, 'Duncan Rayner has invited you to join the Data Analysis version 2.', 36, 'user_invitation', 'accept', 4, 13, 'yes', '2017-11-23 00:28:18'),
(83, 'Raveena Nigam has requested for 10 number of license(s).', 0, 'license', 'pending', 3, 1, 'yes', '2017-12-15 11:48:40'),
(64, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 0, 'general', 'pending', 1, 3, 'yes', '2017-11-30 09:53:36'),
(77, 'Mary Smithe has invited you to join the Discovery 4.', 24, 'group_invitation', 'accept', 44, 39, 'yes', '2017-12-11 19:08:48'),
(54, 'Raveena Nigam has invited you to join the Quality Pointers.', 16, 'group_invitation', 'accept', 3, 40, 'yes', '2017-11-23 01:41:45'),
(55, 'Raveena Nigam has invited you to join the Quality Pointers.', 16, 'group_invitation', 'accept', 3, 40, 'yes', '2017-11-23 01:41:45'),
(97, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2017-12-21 08:42:08'),
(57, 'Duncan Rayner has invited you to join the Data Analysis version 2.', 44, 'user_invitation', 'accept', 4, 39, 'no', '2017-11-23 02:51:42'),
(59, 'Duncan Rayner has invited you to join the Data Analysis version 2.', 17, 'group_invitation', 'accept', 4, 40, 'yes', '2017-11-23 02:53:18'),
(60, 'Mary Smithe has invited you to join the Discovery Project.', 6, 'application_invitation', 'accept', 44, 40, 'no', '2017-11-27 18:06:15'),
(65, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 0, 'general', 'pending', 1, 4, 'yes', '2017-11-30 09:53:36'),
(66, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 0, 'general', 'pending', 1, 6, 'yes', '2017-11-30 09:53:36'),
(67, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 0, 'general', 'pending', 1, 27, 'yes', '2017-11-30 09:53:36'),
(68, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 0, 'general', 'pending', 1, 47, 'yes', '2017-11-30 09:53:36'),
(98, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2017-12-21 08:49:12'),
(99, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2017-12-21 09:06:09'),
(117, 'Raveena Nigam has invited you to join the Health & Medicine (Pharmacy) - Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt..', 51, 'group_invitation', 'pending', 3, 7, 'yes', '2018-01-24 13:21:44'),
(74, 'John Teste has invited you to join the Team XE.<br />\r\n', 54, 'team_invitation', 'pending', 40, 7, 'yes', '2017-12-04 02:22:12'),
(102, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2017-12-21 09:16:19'),
(103, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2017-12-21 09:22:34'),
(104, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2017-12-21 09:23:26'),
(105, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2017-12-21 09:29:12'),
(106, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2017-12-21 09:33:02'),
(107, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2017-12-21 09:34:12'),
(108, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2017-12-21 09:36:08'),
(109, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2017-12-21 09:37:09'),
(110, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2017-12-21 09:37:35'),
(111, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2017-12-21 09:38:39'),
(112, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2017-12-21 09:54:03'),
(113, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2017-12-21 09:56:24'),
(114, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2017-12-21 09:57:50'),
(115, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2017-12-21 09:59:36'),
(116, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2017-12-21 10:08:11'),
(118, 'Raveena Nigam has archived your application Health & Medicine (Pharmacy) - Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt..', 26, 'general', 'pending', 3, 7, 'yes', '2018-01-29 05:25:00'),
(119, 'Raveena Nigam has invited you to join the Messages - Create Application.', 27, 'application_invitation', 'pending', 3, 64, 'yes', '2018-01-29 05:45:52'),
(120, 'Raveena Nigam has archived your application Messages - Create Application.', 27, 'general', 'pending', 3, 64, 'yes', '2018-01-29 05:50:40'),
(121, 'Raveena Nigam has invited you to join the Messages - Create Application.', 27, 'application_invitation', 'pending', 3, 64, 'yes', '2018-01-29 05:53:20'),
(122, 'Raveena Nigam has invited you to join the Messages - Create Application.', 27, 'application_invitation', 'pending', 3, 64, 'yes', '2018-01-29 05:56:08'),
(123, 'Raveena Nigam has invited you to join the Messages - Create Application.', 27, 'application_invitation', 'pending', 3, 64, 'yes', '2018-01-29 06:03:04'),
(124, 'Raveena Nigam has invited you to join the Messages - Create Application.', 27, 'application_invitation', 'pending', 3, 64, 'yes', '2018-01-29 06:11:05'),
(125, 'Raveena Nigam has invited you to join the Messages - Create Application.', 27, 'application_invitation', 'pending', 3, 64, 'yes', '2018-01-29 06:14:46'),
(126, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2018-01-29 06:18:51'),
(127, 'Raveena Nigam has invited you to join the Messages - Create Application.', 27, 'application_invitation', 'pending', 3, 64, 'yes', '2018-01-29 06:48:18'),
(128, 'Raveena Nigam has invited you to join the Messages - Create Application.', 27, 'application_invitation', 'pending', 3, 64, 'yes', '2018-01-29 07:05:36'),
(129, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2018-01-29 07:06:22'),
(130, 'Provider Pawan Kumar has been removed as a supervisor from company ', 0, 'general', 'pending', 0, 1, 'yes', '2018-01-31 09:19:02'),
(131, 'Provider Pawan Kumar has been removed as a supervisor from company ', 0, 'general', 'pending', 0, 1, 'yes', '2018-01-31 09:19:07'),
(132, 'Raveena Nigam has marked your application as pending for the Messages - Create Application.', 27, 'general', 'pending', 3, 64, 'yes', '2018-02-06 06:51:42'),
(133, 'Raveena Nigam has invited you to join the Messages - Create Application.', 27, 'application_invitation', 'pending', 3, 64, 'yes', '2018-02-06 06:52:20'),
(134, 'Raveena Nigam has marked your application as pending for the Messages - Create Application.', 27, 'general', 'pending', 3, 64, 'yes', '2018-02-06 06:53:10'),
(135, 'Raveena Nigam has invited you to join the Messages - Create Application.', 27, 'application_invitation', 'pending', 3, 64, 'yes', '2018-02-06 06:54:06'),
(136, 'Raveena Nigam has marked your application as pending for the Messages - Create Application.', 27, 'general', 'pending', 3, 64, 'yes', '2018-02-06 06:54:17'),
(137, 'Raveena Nigam has archived your application Messages - Create Application.', 27, 'general', 'pending', 3, 64, 'yes', '2018-02-06 06:54:47'),
(138, 'Raveena Nigam has archived your application Messages - Create Application.', 27, 'general', 'pending', 3, 64, 'yes', '2018-02-06 07:00:19'),
(139, 'Raveena Nigam has archived your application Messages - Create Application.', 27, 'general', 'pending', 3, 64, 'yes', '2018-02-06 07:01:21'),
(140, 'Raveena Nigam has archived your application Messages - Create Application.', 27, 'general', 'pending', 3, 64, 'yes', '2018-02-06 07:05:43'),
(141, 'Raveena Nigam has recommended you the application Sed eu risus diam. Morbi blandit velit libero, ut tristique mi aliquam quis. Phasellus eget eleifend magna, at vehicula erat..', 0, 'general', 'pending', 3, 64, 'yes', '2018-02-10 04:33:54'),
(142, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2018-02-14 08:04:16'),
(143, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2018-02-15 04:55:29'),
(144, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2018-02-15 04:58:00'),
(145, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2018-02-15 04:59:13'),
(146, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2018-02-15 05:03:46'),
(147, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2018-02-15 05:07:43'),
(148, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2018-02-15 05:09:54'),
(149, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2018-02-15 05:14:30'),
(150, 'New contact information found.', 0, 'general', 'pending', 0, 1, 'yes', '2018-02-15 05:22:47');

-- --------------------------------------------------------

--
-- Table structure for table `iw_notification_template`
--

CREATE TABLE `iw_notification_template` (
  `notification_template_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_notification_template`
--

INSERT INTO `iw_notification_template` (`notification_template_id`, `title`, `message`) VALUES
(1, 'license_request', '{NAME} has requested for {NUMBER} number of license(s).'),
(2, 'team_invitation', '{SENDER} has invited you to join the {TEAM}.\r\n'),
(3, 'application_invitation', '{SENDER} has invited you to join the {PROJECT}.'),
(4, 'license_received', '{NAME} has added {NUMBER} number of license(s) in your account.'),
(5, 'application_archived', '{SENDER} has archived your application {PROJECT}.'),
(6, 'contact_admin', 'New contact information found.'),
(7, 'enquiry_admin', 'New enquiry submitted.'),
(8, 'supervisor_suspend', 'Supervisor {NAME} has been suspended from {COMPANY}'),
(9, 'supervisor_deselect', 'Provider {NAME} has been removed as a supervisor from company {COMPANY}'),
(10, 'student_feedback ', 'You received a feedback from the supervisor {NAME} for the application {APPLICATION}'),
(11, 'team_feedback', 'Your team had received a feedback from the supervisor {NAME} for the application {APPLICATION}'),
(12, 'account_activated', 'Your account is activated.'),
(13, 'account_suspended', 'Your account is suspended.'),
(14, 'application_expire', '{APPLICATION} will expire in next {DAY} day(s)'),
(15, 'supervisor_application_expire', '{APPLICATION} will expire in next {DAY} day(s)'),
(16, 'application_pending', '{SENDER} has marked your application as pending for the {PROJECT}.'),
(17, 'recommend_post', '{SENDER} has recommended you the application - {PROJECT}.');

-- --------------------------------------------------------

--
-- Table structure for table `iw_opportunity`
--

CREATE TABLE `iw_opportunity` (
  `opportunity_id` int(11) NOT NULL,
  `opportunity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL,
  `child` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_opportunity`
--

INSERT INTO `iw_opportunity` (`opportunity_id`, `opportunity`, `parent`, `child`, `created_date`) VALUES
(1, 'Project', 0, 0, '2017-10-10 18:15:14'),
(2, 'Training', 0, 0, '2017-10-10 18:15:31'),
(3, 'Internship', 2, 0, '2017-10-10 18:17:13'),
(4, 'Work Experience', 2, 0, '2017-10-10 18:19:31'),
(5, 'Business', 1, 0, '2017-10-10 18:25:11'),
(6, 'Research', 1, 0, '2017-10-10 18:25:33'),
(7, 'Education', 1, 0, '2017-10-10 18:25:57'),
(8, 'Academic Placement', 2, 0, '2017-10-10 18:22:46'),
(9, 'Activity', 0, 0, '2017-10-03 20:54:00'),
(10, 'Employment', 0, 0, '2017-10-03 20:52:53'),
(11, 'Teaching', 10, 0, '2017-10-10 18:27:56'),
(12, 'Consultancy', 10, 0, '2017-08-23 23:44:51'),
(13, 'Technical', 10, 0, '2017-08-23 23:45:25'),
(20, 'Field Trip', 9, 0, '2017-10-10 18:33:43'),
(21, 'Conference', 9, 0, '2017-10-10 18:29:52'),
(22, 'Government', 1, 0, '2017-10-10 23:56:40'),
(23, 'Community', 1, 0, '2017-10-10 23:57:12'),
(24, 'Lab Work', 10, 0, '2017-10-11 00:01:56');

-- --------------------------------------------------------

--
-- Table structure for table `iw_options`
--

CREATE TABLE `iw_options` (
  `options_id` int(11) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iw_participant`
--

CREATE TABLE `iw_participant` (
  `participant_id` int(11) NOT NULL,
  `participant` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iw_participant`
--

INSERT INTO `iw_participant` (`participant_id`, `participant`, `created_date`) VALUES
(0, 'N/A', '2017-10-25 04:15:12'),
(1, '1', '2017-10-03 20:57:56'),
(2, '2-5', '2017-10-24 22:43:47'),
(3, '6-9', '2017-10-24 22:44:39'),
(5, '>9', '2017-10-24 22:44:59');

-- --------------------------------------------------------

--
-- Table structure for table `iw_password_resets`
--

CREATE TABLE `iw_password_resets` (
  `password_resets_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_password_resets`
--

INSERT INTO `iw_password_resets` (`password_resets_id`, `user_id`, `email`, `token`, `created_at`) VALUES
(2, 3, 'raveena@singsys.com', 'MyMjcmF2ZWVuYUBzaW5nc3lzLmNvbSMjMjAxNzA4MzAwODU0MjU=', '2017-08-30 00:54:32'),
(6, 23, 'akashkumar@singsys.com', 'MjMjI0tTUE1WMTQzIyMyMDE3MDgzMTA1NTQ0MQ==', '2017-08-30 21:54:44'),
(7, 1, 'info@internship.com', 'MSMjMFFHWkpITFgjIzIwMTcwODMxMDU1ODA4', '2017-08-30 21:58:11'),
(9, 30, 'shubham+super@singsys.com', 'MzAjI1NSQ0ZXRU5KIyMyMDE3MDgzMTAxMTIyNg==', '2017-08-31 05:12:29'),
(21, 7, 'kriti@singsys.com', 'NyMjVExLMDhSWkojIzIwMTcxMDEzMDY0MzA3', '2017-10-13 01:13:22');

-- --------------------------------------------------------

--
-- Table structure for table `iw_password_verification`
--

CREATE TABLE `iw_password_verification` (
  `password_verification_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `verified_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iw_placement`
--

CREATE TABLE `iw_placement` (
  `placement_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider_organisation_profile_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `provider_type` int(11) DEFAULT NULL,
  `placement_funding_id` int(11) DEFAULT NULL,
  `mode` int(11) DEFAULT NULL,
  `no_of_participants` int(11) NOT NULL,
  `placement_type` int(11) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `specify_deadline` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `placement_status` int(11) DEFAULT NULL,
  `opportunity_id` int(11) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `duration_id` int(11) DEFAULT NULL,
  `message_thread` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `visibility` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `send_copy` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `application_required` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `application_method_id` int(11) DEFAULT NULL,
  `url_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_posted` int(11) NOT NULL DEFAULT '0',
  `is_archived` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `is_featured` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `is_withdrawn` enum('0','1') COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_placement`
--

INSERT INTO `iw_placement` (`placement_id`, `user_id`, `provider_organisation_profile_id`, `title`, `description`, `provider_type`, `placement_funding_id`, `mode`, `no_of_participants`, `placement_type`, `start_date`, `end_date`, `specify_deadline`, `country_id`, `state_id`, `city_id`, `placement_status`, `opportunity_id`, `level_id`, `duration_id`, `message_thread`, `visibility`, `send_copy`, `application_required`, `application_method_id`, `url_email`, `is_posted`, `is_archived`, `is_featured`, `is_withdrawn`, `created_date`) VALUES
(1, 3, 2, 'Recreate - Accumsan pellentesque habitant morbi tristique senectus netus malesuada fames.', 'Investigation of the protein-protein interaction network of an anti-oxidant protein TPxGl in the human malaria parasite P. falciparum', NULL, 2, 2, 2, 2, '2017-08-15 00:00:00', '2017-08-31 00:00:00', '1', 35, NULL, 0, 4, 9, 3, 4, '1', '1', '1', '1', NULL, NULL, 1, '0', '0', NULL, '2017-08-10 06:27:22'),
(2, 3, 2, 'Sed eu risus diam. Morbi blandit velit libero, ut tristique mi aliquam quis. Phasellus eget eleifend magna, at vehicula erat.', 'Phasellus scelerisque facilisis sem ac pharetra. Curabitur sit amet tincidunt est. Ut nec congue odio. Duis pellentesque accumsan diam, a egestas tellus pulvinar tincidunt. Donec facilisis pretium justo non sodales. Praesent ligula lacus, pretium a nunc et, tempus efficitur tortor. Maecenas ultrices urna a neque faucibus cursus. Nam dignissim aliquet urna, sit amet condimentum enim commodo sed.', NULL, 2, 1, 5, 2, '2017-09-02 00:00:00', '2017-09-28 00:00:00', '1', 13, NULL, 0, 4, 9, 3, 3, '1', '1', '1', '1', NULL, NULL, 1, '0', '0', NULL, '2017-08-12 04:32:38'),
(3, 6, 4, 'Aliquam massa turpis, venenatis nec odio eu, tristique rhoncus lectus.', 'In nec ex eget arcu vestibulum maximus vel sed velit. Cras a ipsum cursus, euismod augue tempor, euismod sapien. Pellentesque interdum mauris sit amet convallis rhoncus. Nunc urna urna, euismod non aliquam in, pellentesque quis enim.', NULL, 3, 2, 2, 2, '2017-08-19 00:00:00', '2017-09-30 00:00:00', '1', 28, NULL, 0, 4, 9, 3, 2, '0', '1', '0', '1', NULL, NULL, 1, '0', '0', NULL, '2017-08-12 04:37:57'),
(4, 6, 4, 'Aenean semper, ipsum vitae porta commodo, quam neque porttitor purus, vel volutpat lacus urna at elit. Nam non varius tellus. Mauris et lacinia metus.', 'Phasellus scelerisque facilisis sem ac pharetra. Curabitur sit amet tincidunt est. Ut nec congue odio. Duis pellentesque accumsan diam, a egestas tellus pulvinar tincidunt. Donec facilisis pretium justo non sodales. Praesent ligula lacus, pretium a nunc et, tempus efficitur tortor. Maecenas ultrices urna a neque faucibus cursus. Nam dignissim aliquet urna, sit amet condimentum enim commodo sed.', NULL, 2, 2, 2, 2, '2017-08-13 00:00:00', '2017-08-31 00:00:00', '1', 208, NULL, 0, 4, 4, 3, 3, '1', '0', '1', '1', NULL, NULL, 1, '0', '0', NULL, '2017-08-12 04:47:27'),
(5, 9, 4, 'Investigation into Solar Cells', 'The project looks at the application of new nanotechnologies into solar cell structures and whether conversion rates can be increased through use of new compounts. This project is connected to industry and may have commercial applications.Some extra info', NULL, 1, 0, 0, 2, '2017-09-13 00:00:00', '2017-09-13 00:00:00', '0', 13, NULL, 0, 5, 2, 1, 3, '0', '1', '0', '1', NULL, NULL, 1, '0', '0', NULL, '2017-08-13 10:56:07'),
(6, 9, 4, 'Investigation into Solar Cells', 'The project looks at the application of new nanotechnologies into solar cell structures and whether conversion rates can be increased through use of new compounts. This project is connected to industry and may have commercial applications.Some extra info', NULL, 1, 0, 0, 2, '2017-09-13 00:00:00', '2017-09-13 00:00:00', '0', 13, NULL, 0, 5, 2, 1, 3, '0', '1', '0', '1', NULL, NULL, 1, '0', '0', NULL, '2017-08-13 11:08:06'),
(7, 9, 4, 'Investigation into Solar Cells - 2', 'The project looks at the application of new nanotechnologies into solar cell structures and whether conversion rates can be increased through use of new compounts. This project is connected to industry and may have commercial applications.Some extra info', NULL, 1, 0, 0, 2, '2017-08-21 00:00:00', '2017-09-01 00:00:00', '0', 13, NULL, 0, 5, 4, 1, 3, '1', '1', '0', '1', NULL, NULL, 1, '0', '0', NULL, '2017-08-13 11:08:08'),
(8, 4, 3, 'Accounting Placement', '<p>We have an opportunity to for an internship in accounting for 3 months. The intern will learn basic accounting skills, such as accounts payable and receivable. test</p>', NULL, 3, 2, 1, 2, '2017-11-22 00:00:00', '2017-11-30 00:00:00', '0', 13, NULL, 0, 1, 1, 2, 3, '0', '0', '0', '0', NULL, NULL, 1, '0', '0', '1', '2017-08-15 03:19:12'),
(9, 4, 3, 'IT systems development for HR management', 'We require an intern to work with our HR department to capture information that will be input into our new data warehouse system. The application should have skills in Excel, data analysis, simple programming and formulas. We can provide a stipend for this work. It is expected to last for about 3 months. The application can be based at our office in Adelaide.', NULL, 2, 2, 1, 2, '2017-12-21 00:00:00', '2017-12-28 00:00:00', '0', 189, NULL, 0, 1, 6, 2, 3, '0', '1', '0', '1', NULL, NULL, 1, '0', '0', '0', '2017-08-17 02:33:12'),
(10, 44, 3, 'Data Analysis version 2', 'We need a small group of students to conduct analysis of our market data, and  provide information about distribution of sales for each product, trends over a 5 year cycle, and sectors where sales are below the benchmark. \r\nThe work will also require some forecasting of sales for new products, based on the trends that are identified.', NULL, 1, 2, 1, 2, '2017-12-26 00:00:00', '2017-12-25 00:00:00', '0', 13, NULL, 58, 5, 8, 2, 2, '0', '0', '0', '1', NULL, NULL, 1, '0', '0', NULL, '2017-08-23 00:18:56'),
(11, 9, 4, 'Mixing chemical compounds', 'The student will be given a range of synthetic chemicals to mix. S/he is required to observe reactions from the mixing process and analyse the resulting compounds. The student will need to report any new synthetic compound resulting from the reactions. There are 20 different chemicals, and each mixing and reaction will need to be documented separately.', NULL, 2, 2, 1, 2, '2017-09-01 00:00:00', '2017-11-03 00:00:00', '0', 13, NULL, 58, 5, 7, 2, 3, '0', '1', '0', '0', NULL, NULL, 1, '0', '0', NULL, '2017-08-24 00:00:55'),
(12, 4, 3, 'Accounting HR Placement version 2', 'testing HR and accounting systems version 2 recreated', NULL, 2, 0, 1, 2, '2017-10-03 00:00:00', '2017-10-09 00:00:00', '0', 3, NULL, 0, 5, 1, 3, 2, '0', '1', '0', '0', NULL, NULL, 1, '0', '0', NULL, '2017-08-25 02:15:18'),
(13, 9, 3, 'Systems and management accounting', 'work on some software to update our financial accounting package. it requires knowledge of Tech 1 software.', NULL, 1, 1, 0, 2, '2017-09-07 00:00:00', '2017-09-08 00:00:00', '0', 6, NULL, 0, 5, 1, 6, 2, '0', '1', '0', '0', NULL, NULL, 1, '0', '0', NULL, '2017-08-25 03:44:16'),
(14, 9, 3, 'Database manager', 'We require an intern for 6 months to review and update our database of clients and other stakeholders. We have a new CRM system into which contact details need to be entered. The position requires attention to detail and persistence to make sure all the details are entered.', NULL, 2, 2, 1, 1, '2017-08-29 00:00:00', '2017-09-02 00:00:00', '0', 13, NULL, 58, 1, 5, 3, 3, '0', '1', '0', '0', NULL, NULL, 1, '0', '0', NULL, '2017-08-29 10:26:44'),
(15, 19, 2, 'Hello', 'Hello this is ankit', NULL, NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, NULL, NULL, 1, NULL, NULL, NULL, '0', '0', '0', '0', NULL, NULL, 0, '0', '0', NULL, '2017-08-29 10:40:55'),
(16, 19, 2, 'Hello', 'Hello this ankit', NULL, NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, NULL, NULL, 1, NULL, NULL, NULL, '0', '0', '0', '0', NULL, NULL, 0, '0', '0', NULL, '2017-08-29 10:42:52'),
(17, 19, 2, 'hi', 'hi this is ankit', NULL, NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, NULL, NULL, 1, NULL, NULL, NULL, '0', '0', '0', '0', NULL, NULL, 0, '0', '0', NULL, '2017-08-29 10:43:24'),
(18, 9, 4, 'Investigation in computational biology', 'This placement is available for a student to undertake some data analysis in computational biology. The student will require knowledge of science and statistical software.', NULL, 3, 2, 1, 1, '2017-09-06 00:00:00', '2017-09-08 00:00:00', '0', 13, NULL, 0, 5, 6, 3, 2, '0', '1', '0', '0', NULL, NULL, 1, '0', '0', NULL, '2017-08-29 11:30:39'),
(19, 9, 4, 'Mr', 'Ankit', NULL, 2, 0, 0, 1, '2017-08-29 00:00:00', '2017-08-31 00:00:00', '0', 2, NULL, 0, 5, 5, 1, 3, '0', '1', '1', '1', NULL, NULL, 1, '0', '0', NULL, '2017-08-29 12:50:11'),
(20, 21, 6, 'Advertisement', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, 2, 0, 3, 2, '2017-09-04 00:00:00', '2017-09-30 00:00:00', '1', 5, NULL, 0, 4, 1, 3, 3, '0', '1', '1', '1', NULL, NULL, 1, '0', '0', NULL, '2017-08-31 09:57:30'),
(21, 21, 6, 'Institution', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, 2, 1, 5, 2, '2017-09-07 00:00:00', '2017-09-21 00:00:00', '0', 8, NULL, 0, 5, 9, 6, 4, '0', '1', '1', '1', NULL, NULL, 1, '0', '0', NULL, '2017-08-31 10:03:29'),
(22, 21, 6, 'Internship', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, 3, 1, 2, 2, '2017-09-02 00:00:00', '2017-10-18 00:00:00', '0', 15, NULL, 0, 5, 9, 6, 3, '0', '0', '0', '0', NULL, NULL, 1, '0', '0', NULL, '2017-08-31 10:13:09'),
(23, 28, 6, 'News', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, 2, 2, 1, 1, '2017-09-07 00:00:00', '2017-09-20 00:00:00', '0', 4, NULL, 0, 5, 2, 6, 3, '0', '0', '0', '0', NULL, NULL, 1, '0', '0', NULL, '2017-08-31 11:10:37'),
(24, 28, 6, 'College', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, 2, 1, 3, 1, NULL, NULL, '1', 2, NULL, 0, 4, 2, 3, 2, '0', '1', '0', '0', NULL, NULL, 1, '0', '0', NULL, '2017-08-31 11:13:53'),
(25, 29, 11, 'Details of the Post Details of the Post Details of the Post Details of the Post Details of the Post', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, NULL, NULL, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, 1, NULL, NULL, NULL, '0', '1', '1', '1', NULL, NULL, 0, '0', '0', NULL, '2017-08-31 13:26:09'),
(26, 25, 9, 'Super 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nDetails of the Post', NULL, 1, 1, 3, 1, '2017-09-01 00:00:00', '2017-09-01 00:00:00', '1', 243, NULL, 0, 4, 1, 6, 2, '0', '1', '1', '1', NULL, NULL, 1, '0', '0', NULL, '2017-09-01 05:23:15'),
(27, 25, 9, 'SUPER 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nDetails of the Post\r\nDetails of the Post\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nDetails of the Post\r\nDetails of the Post\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nDetails of the Post\r\nDetails of the Post\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nDetails of the Post\r\nDetails of the Post\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nDetails of the Post\r\nDetails of the Post\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nDetails of the Post\r\nDetails of the Post\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nDetails of the Post\r\nDetails of the Post', NULL, 2, 1, 5, 2, '2017-09-02 00:00:00', '2017-09-16 00:00:00', '1', 2, NULL, 0, 4, 11, 8, 3, '1', '1', '0', '1', NULL, NULL, 1, '0', '0', NULL, '2017-09-01 05:50:22'),
(28, 21, 6, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, NULL, NULL, 1, NULL, NULL, NULL, '0', '1', '0', '1', NULL, NULL, 0, '0', '0', NULL, '2017-09-01 10:18:35'),
(29, 28, 6, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '0', NULL, NULL, NULL, 1, NULL, NULL, NULL, '0', '0', '0', '0', NULL, NULL, 0, '0', '0', NULL, '2017-09-01 10:36:20'),
(30, 3, 2, 'Health & Medicine - Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>', NULL, 3, 5, 3, 2, '2018-01-03 00:00:00', '2018-01-31 00:00:00', '1', 162, NULL, 0, 4, 1, 7, 4, '0', '1', '1', '1', NULL, NULL, 1, '0', '0', NULL, '2017-09-01 10:45:13'),
(31, 34, 6, 'Birthday', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, 2, 1, 5, 2, '2017-09-01 00:00:00', '2017-09-22 00:00:00', '0', 4, NULL, 0, 5, 2, 3, 3, '0', '1', '0', '0', NULL, NULL, 1, '0', '1', NULL, '2017-09-01 13:00:07'),
(33, 4, 3, 'Management Internshipv2', 'Join our graduate scheme to train the next generation of science managers, with specialisation in science commercialisation.', NULL, 2, 1, 1, 2, '2017-09-19 00:00:00', '2017-09-19 00:00:00', '0', 13, NULL, 0, 1, 5, 1, 4, '0', '1', '0', '0', NULL, NULL, 1, '0', '0', '1', '2017-09-11 01:28:40'),
(34, 3, 2, 'Accumsan pellentesque habitant morbi tristique senectus netus malesuada fames.', 'Investigation of the protein-protein interaction network of an anti-oxidant protein TPxGl in the human malaria parasite P. falciparum', NULL, 2, 2, 2, 2, '2017-08-15 00:00:00', '2017-08-31 00:00:00', '1', 35, NULL, 0, 1, 9, 3, 4, '0', '1', '1', '1', NULL, NULL, 1, '0', '0', NULL, '2017-09-11 12:08:57'),
(35, 3, 2, 'Recreate - Accumsan pellentesque habitant morbi tristique senectus netus malesuada fames.', 'Investigation of the protein-protein interaction network of an anti-oxidant protein TPxGl in the human malaria parasite P. falciparum', NULL, 2, 2, 2, 2, NULL, NULL, '1', 35, NULL, 0, 4, 9, 3, 4, '0', '1', '1', '1', NULL, NULL, 1, '0', '0', NULL, '2017-09-11 12:12:27'),
(48, 9, 2, 'Accumsan pellentesque habitant morbi tristique senectus netus malesuada fames.', 'Investigation of the protein-protein interaction network of an anti-oxidant protein TPxGl in the human malaria parasite P. falciparum', NULL, 2, 2, 2, 2, '2017-08-15 00:00:00', '2017-08-31 00:00:00', '1', 35, NULL, 0, 1, 9, 3, 4, '0', '1', '1', '1', NULL, NULL, 1, '0', '0', NULL, '2017-09-22 06:49:52'),
(37, 4, 3, 'Medical Practice 4', 'testing another medical practice work internship this has been further modified. immunology internship', NULL, 3, 2, 1, 2, '2017-11-29 00:00:00', '2017-11-30 00:00:00', '0', 189, NULL, 0, 5, 2, 3, 3, '0', '1', '0', '1', NULL, NULL, 1, '1', '0', '0', '2017-10-09 22:25:36'),
(96, 9, 3, 'test post 1', '<p>internship opportunity incuding</p>\r\n\r\n<ul>\r\n	<li>office space</li>\r\n	<li>market research</li>\r\n	<li>salary</li>\r\n</ul>\r\n\r\n<p><span style="color:#2ecc71">check&nbsp;it out now</span></p>', NULL, 2, 1, 2, 2, '2017-11-22 00:00:00', '2017-11-23 00:00:00', '0', 189, NULL, 0, 2, 21, 6, 3, '0', '1', '0', '0', NULL, NULL, 1, '0', '0', NULL, '2017-11-04 00:03:26'),
(97, 3, 2, '10 November - Apply Application - Accumsan pellentesque habitant morbi tristique senectus netus malesuada fames.', '<p>Apply Application - Investigation of the protein-protein interaction network of an anti-oxidant protein TPxGl in the human malaria parasite P. falciparum</p>', NULL, 2, 2, 2, 2, NULL, NULL, '1', 35, NULL, 0, 4, 9, 3, 4, '0', '1', '1', '1', NULL, NULL, 1, '0', '0', NULL, '2017-11-10 06:47:02'),
(41, 4, 3, 'IT systems development for HR management', '<p>We require an intern to work with our HR department to capture information that will be input into our new data warehouse system. The application should have skills in Excel, data analysis, simple programming and formulas. We can provide a stipend for this work. It is expected to last for about 3 months. The application can be based at our office in Adelaide.</p>', NULL, 2, 2, 2, 2, '2017-11-14 00:00:00', '2017-11-15 00:00:00', '0', 189, NULL, 0, 1, 6, 2, 3, '0', '1', '0', '1', NULL, NULL, 1, '0', '0', NULL, '2017-09-14 11:05:32'),
(99, 44, 3, 'Engineering 3', '<p>test placement for mechanical engineering&nbsp;</p>', NULL, 2, 1, 1, 2, '2017-12-08 00:00:00', '2017-11-30 00:00:00', '1', 3, NULL, 0, 4, 1, 7, 3, '0', '1', '0', '1', NULL, NULL, 1, '0', '1', NULL, '2017-11-17 00:25:51'),
(100, 3, 2, '17th Nov - Apply Opportunity - Accumsan pellentesque habitant morbi tristique senectus netus malesuada fames.', '<p>Apply Opportunity - Investigation of the protein-protein interaction network of an anti-oxidant protein TPxGl in the human malaria parasite P. falciparum</p>', NULL, 2, 2, 2, 2, NULL, NULL, '1', 35, NULL, 0, 4, 9, 3, 4, '0', '1', '1', '1', NULL, NULL, 1, '0', '0', NULL, '2017-11-17 10:44:30'),
(43, 4, 3, 'Medical Practice 2', 'testing another medical practice work internship - clinical research and heart function - updated by admin', NULL, 3, 2, 1, 2, '2017-11-07 00:00:00', '2017-11-08 00:00:00', '0', 189, NULL, 0, 5, 2, 3, 3, '0', '1', '0', '1', NULL, NULL, 1, '1', '0', '0', '2017-10-13 00:41:42'),
(44, 9, 3, 'Medical Practice 1', 'Students are required to do some analysis of biochemical specimens in a laboratory setting. This work is part of a research project that is looking at drugs made from synthetic compounds.', NULL, 3, 2, 1, 2, '2017-11-30 00:00:00', '2017-11-30 00:00:00', '0', 189, NULL, 0, 1, 7, 3, 3, '0', '1', '1', '1', NULL, NULL, 1, '0', '0', NULL, '2017-09-17 23:02:26'),
(101, 3, 2, 'Apply Application 22 Nov - Accumsan pellentesque habitant morbi tristique senectus netus malesuada fames.', '<p>Apply Application - Investigation of the protein-protein interaction network of an anti-oxidant protein TPxGl in the human malaria parasite P. falciparum</p>', NULL, 2, 2, 2, 2, NULL, NULL, '1', 35, NULL, 0, 4, 9, 3, 4, '0', '1', '1', '1', NULL, NULL, 1, '0', '0', NULL, '2017-11-22 06:09:42'),
(47, 9, 3, 'Management Internshipv2', 'Join our graduate scheme to train the next generation of science managers, with specialisation in science commercialisation.', NULL, 2, 1, 1, 2, '2017-09-25 00:00:00', '2017-10-12 00:00:00', '0', 13, NULL, 0, 1, 5, 1, 4, '0', '1', '0', '0', NULL, NULL, 1, '0', '0', NULL, '2017-09-19 12:24:23'),
(49, 9, 2, 'Sed eu risus diam. Morbi blandit velit libero, ut tristique mi aliquam quis. Phasellus eget eleifend magna, at vehicula erat.', 'Phasellus scelerisque facilisis sem ac pharetra. Curabitur sit amet tincidunt est. Ut nec congue odio. Duis pellentesque accumsan diam, a egestas tellus pulvinar tincidunt. Donec facilisis pretium justo non sodales. Praesent ligula lacus, pretium a nunc et, tempus efficitur tortor. Maecenas ultrices urna a neque faucibus cursus. Nam dignissim aliquet urna, sit amet condimentum enim commodo sed.', NULL, 2, 1, 5, 2, '2017-09-02 00:00:00', '2017-09-28 00:00:00', '1', 13, NULL, 0, 1, 9, 3, 3, '0', '1', '1', '1', NULL, NULL, 1, '0', '0', NULL, '2017-09-22 06:52:22'),
(50, 3, 2, 'Approved by Admin - Accumsan pellentesque habitant morbi tristique senectus netus malesuada fames.', 'Approved by Admin - Investigation of the protein-protein interaction network of an anti-oxidant protein TPxGl in the human malaria parasite P. falciparum', NULL, 2, 2, 2, 2, NULL, NULL, '1', 35, NULL, 0, 4, 9, 3, 4, '0', '1', '1', '1', NULL, NULL, 1, '0', '0', NULL, '2017-09-26 04:17:58'),
(51, 3, 2, 'Apply Opportunity - Accumsan pellentesque habitant morbi tristique senectus netus malesuada fames.', 'Apply Opportunity - Investigation of the protein-protein interaction network of an anti-oxidant protein TPxGl in the human malaria parasite P. falciparum', NULL, 2, 2, 2, 2, NULL, NULL, '1', 35, NULL, 0, 4, 9, 3, 4, '0', '1', '1', '1', NULL, NULL, 1, '0', '0', NULL, '2017-10-07 03:37:00'),
(52, 44, 3, 'IT systems development for HR management', 'We require an intern to work with our HR department to capture information that will be input into our new data warehouse system. The application should have skills in Excel, data analysis, simple programming and formulas. We can provide a stipend for this work. It is expected to last for about 3 months. The application can be based at our office in Adelaide.', NULL, 2, 2, 1, 2, '2017-08-22 00:00:00', '2017-10-27 00:00:00', '0', 189, NULL, 0, 1, 6, 2, 3, '0', '1', '0', '0', NULL, NULL, 1, '0', '0', NULL, '2017-10-10 10:51:07'),
(53, 44, 3, 'Law Project', 'Students needed to participate in a law project', NULL, 2, 1, 3, 1, '2017-10-26 00:00:00', '2017-11-01 00:00:00', '0', 13, NULL, 0, 5, 4, 3, 3, '0', '1', '0', '1', NULL, NULL, 1, '0', '0', NULL, '2017-10-10 10:54:43'),
(54, 44, 3, 'IT systems development for HR management', 'We require an intern to work with our HR department to capture information that will be input into our new data warehouse system. The application should have skills in Excel, data analysis, simple programming and formulas. We can provide a stipend for this work. It is expected to last for about 3 months. The application can be based at our office in Adelaide.', NULL, 2, 2, 1, 2, '2017-12-21 00:00:00', '2017-12-28 00:00:00', '0', 189, NULL, 0, 1, 6, 2, 3, '0', '1', '0', '1', NULL, NULL, 1, '0', '0', NULL, '2017-10-10 10:58:22'),
(55, 44, 3, 'Accounting HR Placement version 2', '<p>testing HR and accounting systems version 2 recreated</p>', NULL, 2, 2, 3, 2, '2017-11-01 00:00:00', '2017-11-01 00:00:00', '0', 13, NULL, 58, 5, 1, 3, 2, '0', '1', '0', '0', NULL, NULL, 1, '0', '0', NULL, '2017-10-10 11:05:01'),
(56, 44, 3, 'Medical Practice 5', 'testing another medical practice work internship this has been further modified. Version 5', NULL, 3, 2, 1, 2, '2017-11-29 00:00:00', '2017-11-30 00:00:00', '0', 189, NULL, 0, 5, 2, 3, 3, '0', '1', '0', '1', NULL, NULL, 1, '0', '0', NULL, '2017-10-11 04:10:55'),
(57, 9, 2, 'Apply Opportunity - Accumsan pellentesque habitant morbi tristique senectus netus malesuada fames.', 'Apply Opportunity - Investigation of the protein-protein interaction network of an anti-oxidant protein TPxGl in the human malaria parasite P. falciparum', NULL, 2, 2, 2, 2, NULL, NULL, '1', 35, NULL, 0, 1, 9, 3, 4, '0', '1', '1', '1', NULL, NULL, 1, '0', '0', '1', '2017-10-11 10:38:01'),
(61, 47, 12, 'Test', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', NULL, 2, 2, 3, 1, '2017-10-12 00:00:00', '2017-10-31 00:00:00', '1', 243, NULL, 0, 1, 1, 8, 3, '0', '1', '1', '1', NULL, NULL, 1, '0', '0', NULL, '2017-10-12 09:41:03'),
(62, 47, 12, 'Test', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', NULL, 2, 2, 3, 2, NULL, '2017-10-31 00:00:00', '1', 243, NULL, 0, 1, 1, 8, 3, '0', '1', '1', '1', NULL, NULL, 1, '0', '0', NULL, '2017-10-12 09:49:23'),
(65, 47, 12, 'SupervisorPost', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', NULL, 2, 2, 3, 2, '2017-10-13 00:00:00', '2017-10-30 00:00:00', '1', 4, NULL, 0, 1, 2, 8, 7, '0', '1', '1', '1', NULL, NULL, 1, '0', '0', NULL, '2017-10-12 10:02:18'),
(66, 47, 12, 'SupervisorPost', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', NULL, 2, 2, 3, 2, '2017-10-13 00:00:00', '2017-10-30 00:00:00', '1', 4, NULL, 0, 1, 2, 8, 7, '0', '1', '1', '1', NULL, NULL, 1, '0', '0', NULL, '2017-10-12 10:03:05'),
(114, 3, 2, 'Health & Medicine (Pharmacy) - Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>', NULL, 3, 5, 3, 2, '2018-01-03 00:00:00', '2018-01-31 00:00:00', '1', 162, NULL, 0, 4, 1, 7, 4, '0', '1', '1', '1', NULL, NULL, 1, '0', '1', NULL, '2018-01-02 05:21:44'),
(113, 3, 2, 'Messages - Create Application', '<p>Apply Opportunity - Investigation of the protein-protein interaction network of an anti-oxidant protein TPxGl in the human malaria parasite P. falciparum</p>', NULL, 2, 2, 2, 2, NULL, '2018-04-28 00:00:00', '1', 35, NULL, 0, 4, 9, 3, 4, '0', '1', '1', '1', NULL, NULL, 1, '0', '0', NULL, '2017-12-18 03:55:26'),
(108, 9, 3, 'Discovery Project', '<p><strong>Adelaide Uni</strong> is planning a field trip to the mountains. Anyone interested let us know.&nbsp;</p>', NULL, 8, 1, 5, 2, '2017-12-17 00:00:00', '2017-12-08 00:00:00', '0', 13, NULL, 58, 5, 20, 8, 2, '0', '1', '0', '0', NULL, NULL, 1, '0', '0', NULL, '2017-12-06 00:07:59'),
(109, 3, 2, 'Linkedin Profile', '<p>Apply Opportunity - Investigation of the protein-protein interaction network of an anti-oxidant protein TPxGl in the human malaria parasite P. falciparum</p>', NULL, 2, 2, 2, 2, NULL, '2018-04-28 00:00:00', '1', 35, NULL, 0, 4, 9, 3, 4, '0', '1', '1', '1', NULL, NULL, 1, '0', '0', NULL, '2017-12-07 08:40:00'),
(110, 44, 3, 'Data Analysis version 2', 'We need a small group of students to conduct analysis of our market data, and  provide information about distribution of sales for each product, trends over a 5 year cycle, and sectors where sales are below the benchmark. \r\nThe work will also require some forecasting of sales for new products, based on the trends that are identified.', NULL, 1, 2, 1, 2, '2017-12-26 00:00:00', '2017-12-25 00:00:00', '0', 13, NULL, 58, 5, 8, 2, 2, '0', '0', '0', '1', NULL, NULL, 1, '0', '0', NULL, '2017-12-07 22:46:00'),
(107, 9, 3, 'Discovery Project', '<p><strong>Adelaide Uni</strong> is planning a field trip to the mountains. Anyone interested let us know.&nbsp;</p>', NULL, 8, 1, 5, 2, '2017-12-17 00:00:00', '2017-12-08 00:00:00', '0', 13, NULL, 58, 5, 20, 8, 2, '0', '1', '0', '0', NULL, NULL, 1, '0', '0', NULL, '2017-12-05 01:03:19'),
(111, 44, 3, 'Discovery 4', '<p>A new conservation project that looks at the impact of climate change on farming and agricultural management.&nbsp; Scholarship available. Includes academic discussion.</p>', NULL, 2, 1, 2, 2, '2018-01-05 00:00:00', '2017-12-31 00:00:00', '1', 189, NULL, 60, 4, 8, 8, 3, '0', '1', '0', '1', NULL, NULL, 1, '0', '1', NULL, '2017-12-11 23:57:52'),
(112, 4, 3, 'Data Analysis version 2', 'We need a small group of students to conduct analysis of our market data, and  provide information about distribution of sales for each product, trends over a 5 year cycle, and sectors where sales are below the benchmark. \r\nThe work will also require some forecasting of sales for new products, based on the trends that are identified.', NULL, 1, 2, 1, 2, '2017-12-26 00:00:00', '2017-12-25 00:00:00', '0', 13, NULL, 58, 5, 8, 2, 2, '0', '0', '0', '1', NULL, NULL, 1, '0', '0', NULL, '2017-12-14 02:23:00'),
(95, 44, 3, 'test post 1', '<p>internship opportunity incuding</p>\r\n\r\n<ul>\r\n	<li>office space</li>\r\n	<li>market research</li>\r\n	<li>salary</li>\r\n</ul>\r\n\r\n<p><span style="color:#2ecc71">check&nbsp;it out now</span></p>', NULL, 2, 1, 2, 2, '2017-11-22 00:00:00', '2017-11-23 00:00:00', '0', 189, NULL, 0, 5, 21, 6, 3, '0', '1', '0', '0', NULL, NULL, 1, '1', '0', NULL, '2017-11-04 00:00:23'),
(86, 42, 2, 'Supervisor Post : The standard Lorem Ipsum passage, used since the 1500s', '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."', NULL, 3, 6, 5, 2, NULL, '2017-11-30 00:00:00', '1', 208, NULL, 0, 4, 10, 3, 8, '0', '0', '1', '1', NULL, NULL, 1, '0', '0', NULL, '2017-10-16 07:31:24'),
(89, 3, 2, 'Project | Research AND City | Country  -> Apply Opportunity - Accumsan pellentesque habitant morbi tristique senectus netus malesuada fames.', 'Apply Opportunity - Investigation of the protein-protein interaction network of an anti-oxidant protein TPxGl in the human malaria parasite P. falciparum', NULL, 2, 2, 2, 2, NULL, NULL, '1', 35, NULL, 0, 1, 9, 3, 4, '0', '1', '1', '1', NULL, NULL, 1, '0', '0', '1', '2017-10-17 07:30:49'),
(90, 3, 2, 'Project | Research AND City | Country  -> Apply Opportunity - Accumsan pellentesque habitant morbi tristique senectus netus malesuada fames.', 'Apply Opportunity - Investigation of the protein-protein interaction network of an anti-oxidant protein TPxGl in the human malaria parasite P. falciparum', NULL, 2, 2, 2, 2, NULL, NULL, '1', 13, NULL, 59, 4, 12, 3, 4, '0', '1', '1', '1', NULL, NULL, 1, '0', '0', NULL, '2017-10-17 07:32:44'),
(91, 44, 3, 'Medical Practice 6', '<p>This is an opportunity to research&nbsp;<span style="color:#2ecc71">immunology and proteins </span>for medical purposes<span style="color:#2ecc71">.&nbsp;</span></p>\r\n\r\n<p>You can work on:</p>\r\n\r\n<ul>\r\n	<li>laboratory process</li>\r\n	<li>data analysis</li>\r\n	<li>clinical trails</li>\r\n</ul>\r\n\r\n<p>A PhD scholarship may be available.&nbsp;</p>', NULL, 3, 1, 1, 2, '2017-11-01 00:00:00', '2017-11-01 00:00:00', '0', 13, NULL, 58, 1, 6, 7, 3, '0', '0', '0', '1', NULL, NULL, 1, '0', '0', '1', '2017-10-18 01:13:14'),
(92, 44, 3, 'Engineering Placement number 1', '<p>We are a leading engineering company offering a placement in civil for engineering for a final year student. This is an exciting opportunity.&nbsp;</p>', NULL, 7, 6, 1, 2, '2017-11-08 00:00:00', '2017-11-10 00:00:00', '0', 13, NULL, 58, 5, 8, 8, 3, '0', '1', '0', '0', NULL, NULL, 1, '0', '0', '1', '2017-10-27 11:09:49'),
(93, 3, 2, 'Apply Application - Accumsan pellentesque habitant morbi tristique senectus netus malesuada fames.', '<p>Apply Application - Investigation of the protein-protein interaction network of an anti-oxidant protein TPxGl in the human malaria parasite P. falciparum</p>', NULL, 2, 2, 2, 2, NULL, NULL, '1', 35, NULL, 0, 4, 9, 3, 4, '0', '1', '1', '1', NULL, NULL, 1, '0', '0', NULL, '2017-10-28 11:08:52'),
(94, 44, 3, 'Engineering Placement 2', '<p>Second engineering placement in Biomedical Engineering.&nbsp;</p>', NULL, 3, 1, 1, 1, '2017-11-28 00:00:00', '2017-11-30 00:00:00', '0', 13, NULL, 58, 5, 8, 8, 3, '0', '1', '1', '1', NULL, NULL, 1, '0', '0', '1', '2017-10-28 21:18:43'),
(102, 3, 2, 'Apply Opportunity 22 Nov - Accumsan pellentesque habitant morbi tristique senectus netus malesuada fames.', '<p>Apply Opportunity - Investigation of the protein-protein interaction network of an anti-oxidant protein TPxGl in the human malaria parasite P. falciparum</p>', NULL, 2, 2, 2, 2, NULL, NULL, '1', 35, NULL, 0, 4, 9, 3, 4, '0', '1', '1', '1', NULL, NULL, 1, '0', '0', NULL, '2017-11-22 06:10:00'),
(103, 3, 2, 'Quality Pointers', '<p>Apply Opportunity - Investigation of the protein-protein interaction network of an anti-oxidant protein TPxGl in the human malaria parasite P. falciparum</p>', NULL, 2, 2, 2, 2, '2017-11-23 00:00:00', '2018-04-28 00:00:00', '1', 35, NULL, 0, 4, 9, 3, 4, '0', '1', '1', '1', NULL, NULL, 1, '0', '0', NULL, '2017-11-23 06:09:40'),
(104, 44, 3, 'Discovery Project', '<p><strong>Adelaide Uni</strong> is planning a field trip to the mountains. Anyone interested let us know.&nbsp;</p>', NULL, 8, 1, 5, 2, '2017-12-29 00:00:00', '2017-12-25 00:00:00', '0', 13, NULL, 58, 5, 20, 8, 2, '0', '1', '0', '0', NULL, NULL, 1, '1', '0', '0', '2017-11-27 23:20:39'),
(105, 44, 3, 'Discovery Project 2 - Protection of Biodiversity and Environment in Urban Parks', '<p>Discovery project aimed at helping students understand the importance of maintaining open spaces and parkland in urban areas. We visit an experimental&nbsp;wetland area contained within a built up city suburb and explore the types of species that can thrive in such an environment. This includes types of birds, insects and small mamals. The activity requires pre-requisite knowledge of biodiversity systems&nbsp;</p>', NULL, 9, 1, 2, 2, '2017-12-22 00:00:00', '2017-12-08 00:00:00', '0', 13, NULL, 59, 5, 7, 8, 3, '0', '0', '0', '1', NULL, NULL, 1, '0', '1', NULL, '2017-11-29 02:02:53'),
(106, 44, 3, 'Discovery 3 - Environmental management and loss of natural habitat for wildlife due to urbanisation and agriculture', '<p>a project to look at environmental impact of climate change and pollution&nbsp;</p>', NULL, 3, 1, 2, 2, '2018-01-02 00:00:00', '2017-12-29 00:00:00', '0', 189, NULL, 60, 5, 7, 7, 3, '0', '1', '0', '1', NULL, NULL, 1, '0', '0', NULL, '2017-11-30 00:54:03'),
(115, 3, 2, 'qswsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqssssssssssssssssssssssssssssssssssssssssssssddddddddd', '<p>dd gctyghjm&nbsp; &nbsp;jnwnnwnk&nbsp; xm sxjwxw xkw xjwx w xjw dwws</p>', NULL, 9, 0, 0, NULL, '2018-02-15 00:00:00', '2018-02-23 00:00:00', '0', 243, NULL, 0, 2, 9, 7, 2, '0', '1', '0', '0', NULL, NULL, 1, '0', '0', NULL, '2018-02-14 10:02:19'),
(116, 3, 2, 'vscbs  wdwsndxwd diwjdijisj jijidjwij jdiwjdiwud uduwuw ijsjkjkajs jajsajsjai uiuaisqisuq usquiquwiqu bsjabsbNBS  JIQJIJISJ UIAHSA nwjndjwnwdwsd', '<p>sdfgfdsdfv dfdfvcvf sdfbvc vvfdfbfvv b</p>', NULL, 8, 6, 1, NULL, '2018-02-15 00:00:00', '2018-02-23 00:00:00', '0', 3, NULL, 0, 2, 1, 1, 2, '0', '1', '0', '0', NULL, NULL, 1, '0', '0', NULL, '2018-02-14 10:16:52');

--
-- Triggers `iw_placement`
--
DELIMITER $$
CREATE TRIGGER `delete_placement` AFTER DELETE ON `iw_placement` FOR EACH ROW BEGIN
        SET @id = OLD.placement_id; 

            DELETE FROM `iw_chat_group_profile_placement` WHERE placement_id = @id;
            DELETE FROM `iw_placement_discipline` WHERE placement_id = @id;
            DELETE FROM `iw_placement_document` WHERE placement_id = @id;
            DELETE FROM `iw_placement_keyword` WHERE placement_id = @id;
            DELETE FROM `iw_placement_view` WHERE placement_id = @id;
            DELETE FROM `iw_student_favorite_placement` WHERE placement_id = @id;
            DELETE FROM `iw_student_placement` WHERE placement_id = @id;
            DELETE FROM `iw_chat_group_feedback` WHERE placement_id = @id;
			DELETE FROM `iw_student_placement_feedback` WHERE placement_id = @id;
            DELETE FROM `iw_student_feedback` WHERE placement_id = @id;
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `iw_placement_availability`
--

CREATE TABLE `iw_placement_availability` (
  `placement_availability_id` int(11) NOT NULL,
  `availability` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iw_placement_availability`
--

INSERT INTO `iw_placement_availability` (`placement_availability_id`, `availability`, `created_date`) VALUES
(1, 'Internal', '2017-08-10 03:49:09'),
(2, 'External', '2017-08-10 03:49:09');

-- --------------------------------------------------------

--
-- Table structure for table `iw_placement_discipline`
--

CREATE TABLE `iw_placement_discipline` (
  `placement_discipline_id` int(11) NOT NULL,
  `placement_id` int(11) NOT NULL,
  `discipline_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_placement_discipline`
--

INSERT INTO `iw_placement_discipline` (`placement_discipline_id`, `placement_id`, `discipline_id`, `created_date`) VALUES
(86, 1, 7, '2017-09-11 12:31:41'),
(85, 1, 2, '2017-09-11 12:31:41'),
(84, 1, 1, '2017-09-11 12:31:41'),
(53, 2, 2, '2017-09-01 13:50:21'),
(10, 3, 7, '2017-08-12 07:32:22'),
(9, 4, 8, '2017-08-12 07:31:48'),
(8, 4, 2, '2017-08-12 07:31:48'),
(16, 5, 1, '2017-08-13 11:08:03'),
(17, 6, 1, '2017-08-13 11:08:06'),
(25, 7, 1, '2017-08-21 06:08:55'),
(218, 8, 7, '2017-11-08 05:59:59'),
(97, 9, 9, '2017-09-13 23:33:28'),
(103, 10, 9, '2017-09-17 22:58:43'),
(93, 11, 4, '2017-09-12 04:39:25'),
(65, 12, 4, '2017-09-09 22:45:22'),
(29, 13, 1, '2017-08-25 03:44:16'),
(30, 14, 8, '2017-08-29 10:26:44'),
(31, 18, 1, '2017-08-29 11:30:39'),
(32, 19, 1, '2017-08-29 12:50:11'),
(58, 20, 9, '2017-09-01 14:09:45'),
(57, 21, 2, '2017-09-01 14:09:27'),
(55, 22, 1, '2017-09-01 14:08:57'),
(40, 23, 2, '2017-08-31 11:10:37'),
(41, 24, 2, '2017-08-31 11:13:53'),
(42, 26, 2, '2017-09-01 05:31:35'),
(50, 27, 2, '2017-09-01 13:40:05'),
(48, 31, 2, '2017-09-01 13:12:22'),
(68, 33, 1, '2017-09-11 02:18:13'),
(75, 34, 7, '2017-09-11 12:08:57'),
(76, 34, 2, '2017-09-11 12:08:57'),
(77, 34, 1, '2017-09-11 12:08:57'),
(123, 35, 7, '2017-10-04 03:46:15'),
(122, 35, 2, '2017-10-04 03:46:15'),
(121, 35, 1, '2017-10-04 03:46:15'),
(111, 48, 7, '2017-09-22 06:49:52'),
(169, 37, 45, '2017-10-13 05:58:29'),
(224, 97, 1, '2017-11-10 06:47:19'),
(226, 99, 24, '2017-11-17 00:31:10'),
(223, 97, 7, '2017-11-10 06:47:19'),
(215, 41, 9, '2017-11-03 20:57:06'),
(217, 96, 3, '2017-11-04 00:03:26'),
(170, 43, 45, '2017-10-13 06:04:32'),
(106, 44, 45, '2017-09-17 23:02:26'),
(222, 97, 2, '2017-11-10 06:47:19'),
(232, 100, 7, '2017-11-17 10:45:37'),
(110, 47, 1, '2017-09-19 12:24:23'),
(112, 48, 2, '2017-09-22 06:49:52'),
(113, 48, 1, '2017-09-22 06:49:52'),
(114, 49, 2, '2017-09-22 06:52:22'),
(120, 50, 7, '2017-09-26 09:47:02'),
(119, 50, 2, '2017-09-26 09:47:02'),
(118, 50, 1, '2017-09-26 09:47:02'),
(132, 51, 1, '2017-10-07 03:37:32'),
(131, 51, 2, '2017-10-07 03:37:32'),
(130, 51, 7, '2017-10-07 03:37:32'),
(133, 52, 9, '2017-10-10 10:51:07'),
(134, 53, 39, '2017-10-10 10:54:43'),
(135, 54, 9, '2017-10-10 10:58:22'),
(203, 55, 4, '2017-10-26 11:08:44'),
(168, 56, 45, '2017-10-13 05:57:35'),
(144, 57, 7, '2017-10-11 10:38:08'),
(143, 57, 2, '2017-10-11 10:38:08'),
(142, 57, 1, '2017-10-11 10:38:08'),
(273, 113, 2, '2017-12-18 03:55:43'),
(267, 112, 9, '2017-12-14 02:23:00'),
(266, 111, 11, '2017-12-12 00:01:48'),
(148, 61, 1, '2017-10-12 09:41:03'),
(150, 62, 1, '2017-10-12 09:52:02'),
(265, 110, 9, '2017-12-07 22:46:00'),
(154, 65, 45, '2017-10-12 10:02:56'),
(156, 66, 45, '2017-10-12 10:03:07'),
(264, 109, 1, '2017-12-07 08:40:24'),
(263, 109, 2, '2017-12-07 08:40:24'),
(262, 109, 7, '2017-12-07 08:40:24'),
(257, 107, 10, '2017-12-05 01:03:19'),
(278, 114, 48, '2018-01-02 05:22:39'),
(258, 108, 10, '2017-12-06 00:07:59'),
(277, 30, 45, '2018-01-02 05:22:30'),
(272, 113, 7, '2017-12-18 03:55:43'),
(216, 95, 3, '2017-11-04 00:02:07'),
(183, 86, 7, '2017-10-16 07:33:02'),
(271, 113, 1, '2017-12-18 03:55:43'),
(194, 89, 7, '2017-10-17 07:31:19'),
(193, 89, 2, '2017-10-17 07:31:19'),
(192, 89, 1, '2017-10-17 07:31:19'),
(200, 90, 1, '2017-10-17 07:33:09'),
(199, 90, 2, '2017-10-17 07:33:09'),
(198, 90, 7, '2017-10-17 07:33:09'),
(202, 91, 45, '2017-10-24 04:05:11'),
(205, 92, 18, '2017-10-27 11:17:47'),
(211, 93, 7, '2017-10-28 11:09:12'),
(210, 93, 2, '2017-10-28 11:09:12'),
(209, 93, 1, '2017-10-28 11:09:12'),
(213, 94, 2, '2017-10-28 21:22:57'),
(231, 100, 2, '2017-11-17 10:45:37'),
(230, 100, 1, '2017-11-17 10:45:37'),
(247, 101, 7, '2017-11-22 06:11:22'),
(246, 101, 2, '2017-11-22 06:11:22'),
(245, 101, 1, '2017-11-22 06:11:22'),
(244, 102, 7, '2017-11-22 06:10:08'),
(243, 102, 2, '2017-11-22 06:10:08'),
(242, 102, 1, '2017-11-22 06:10:08'),
(253, 103, 1, '2017-11-23 06:23:33'),
(252, 103, 2, '2017-11-23 06:23:33'),
(251, 103, 7, '2017-11-23 06:23:33'),
(254, 104, 10, '2017-11-27 23:20:39'),
(255, 105, 10, '2017-11-29 02:04:10'),
(256, 106, 32, '2017-11-30 00:54:03'),
(279, 115, 1, '2018-02-14 10:02:19'),
(280, 115, 2, '2018-02-14 10:02:19'),
(281, 116, 2, '2018-02-14 10:16:52');

-- --------------------------------------------------------

--
-- Table structure for table `iw_placement_document`
--

CREATE TABLE `iw_placement_document` (
  `placement_document_id` int(11) NOT NULL,
  `placement_id` int(11) NOT NULL,
  `original_document` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `document` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_placement_document`
--

INSERT INTO `iw_placement_document` (`placement_document_id`, `placement_id`, `original_document`, `document`, `created_date`) VALUES
(1, 1, 'BTS User Guide_20170724.pdf', 'PDF-1502346537.pdf', '2017-08-10 06:28:57'),
(2, 1, 'BTS User Guide_20170724.pdf', 'PDF-1502346546.pdf', '2017-08-10 06:29:06'),
(3, 2, 'ERR Diagram of Blog & Student.pdf', 'PDF-1502512405.pdf', '2017-08-12 04:33:25'),
(4, 3, 'Internship Web Portal-v 1.5.pdf', 'PDF-1502512701.pdf', '2017-08-12 04:38:21'),
(5, 7, 'Test doc for website.docx', 'DOCX-1502623252.docx', '2017-08-13 11:20:52'),
(7, 25, 'pdf-sample - Copy (2).pdf', 'PDF-1504186011.pdf', '2017-08-31 13:26:51'),
(8, 26, 'TEST-PDF.pdf', 'PDF-1504243521.pdf', '2017-09-01 05:25:21'),
(9, 26, 'TEST-PDF.pdf', 'PDF-1504243718.pdf', '2017-09-01 05:28:38'),
(10, 26, 'TEST-PDF.pdf', 'PDF-1504243725.pdf', '2017-09-01 05:28:45'),
(11, 26, 'demo.docx', 'DOCX-1504243788.docx', '2017-09-01 05:29:48'),
(12, 26, 'TestWordDoc.doc', 'DOC-1504243796.doc', '2017-09-01 05:29:56'),
(13, 26, 'TestWordDoc.doc', 'DOC-1504243813.doc', '2017-09-01 05:30:13'),
(14, 26, 'TestWordDoc.doc', 'DOC-1504243817.doc', '2017-09-01 05:30:17'),
(15, 26, 'TestWordDoc.doc', 'DOC-1504243820.doc', '2017-09-01 05:30:20'),
(16, 26, 'TestWordDoc.doc', 'DOC-1504243822.doc', '2017-09-01 05:30:22'),
(17, 26, 'TestWordDoc.doc', 'DOC-1504243825.doc', '2017-09-01 05:30:25'),
(18, 26, 'TestWordDoc.doc', 'DOC-1504243827.doc', '2017-09-01 05:30:27'),
(20, 27, 'TestWordDoc.doc', 'DOC-1504247012.doc', '2017-09-01 06:23:32'),
(21, 28, 'SampleDOCFile_100kb.doc', 'DOC-1504261115.doc', '2017-09-01 10:18:35'),
(30, 31, 'SampleDOCFile_100kb.doc', 'DOC-1504270824.doc', '2017-09-01 13:00:24'),
(23, 29, 'SampleDOCFile_100kb.doc', 'DOC-1504262180.doc', '2017-09-01 10:36:20'),
(32, 34, 'BTS User Guide_20170724.pdf', 'EIJ-1505131737.pdf', '2017-09-11 12:08:57'),
(33, 34, 'BTS User Guide_20170724.pdf', '6P5-1505131737.pdf', '2017-09-11 12:08:57'),
(34, 35, 'BTS User Guide_20170724.pdf', 'MSC-1505131947.pdf', '2017-09-11 12:12:27'),
(36, 48, 'BTS User Guide_20170724.pdf', '5Z1-1506062992.pdf', '2017-09-22 06:49:52'),
(35, 35, 'BTS User Guide_20170724.pdf', 'YN8-1505131947.pdf', '2017-09-11 12:12:27'),
(37, 48, 'BTS User Guide_20170724.pdf', '0EF-1506062992.pdf', '2017-09-22 06:49:52'),
(38, 49, 'ERR Diagram of Blog & Student.pdf', 'UPO-1506063142.pdf', '2017-09-22 06:52:22'),
(39, 50, 'BTS User Guide_20170724.pdf', 'WPC-1506419201.pdf', '2017-09-26 09:46:41'),
(40, 50, 'BTS User Guide_20170724.pdf', 'TX9-1506419201.pdf', '2017-09-26 09:46:41'),
(41, 51, 'BTS User Guide_20170724.pdf', 'NSR-1507347420.pdf', '2017-10-07 03:37:00'),
(42, 51, 'BTS User Guide_20170724.pdf', 'L49-1507347420.pdf', '2017-10-07 03:37:00'),
(43, 57, 'BTS User Guide_20170724.pdf', '8OC-1507718281.pdf', '2017-10-11 10:38:01'),
(44, 57, 'BTS User Guide_20170724.pdf', 'PXD-1507718281.pdf', '2017-10-11 10:38:01'),
(87, 111, 'brochure GP.pdf', 'PDF-1513036672.pdf', '2017-12-11 23:57:52'),
(48, 65, 'demoform1.pdf', 'PDF-1507802538.pdf', '2017-10-12 10:02:18'),
(49, 66, 'demoform1.pdf', 'EK3-1507802585.pdf', '2017-10-12 10:03:05'),
(86, 109, 'BTS User Guide_20170724.pdf', 'K3W-1512636000.pdf', '2017-12-07 08:40:00'),
(85, 109, 'BTS User Guide_20170724.pdf', 'HSA-1512636000.pdf', '2017-12-07 08:40:00'),
(89, 113, 'BTS User Guide_20170724.pdf', '86G-1513569327.pdf', '2017-12-18 03:55:27'),
(62, 86, 'ERR Diagram of Placement & Supervisor.pdf', 'PDF-1508139115.pdf', '2017-10-16 07:31:55'),
(88, 113, 'BTS User Guide_20170724.pdf', '9DX-1513569326.pdf', '2017-12-18 03:55:27'),
(65, 89, 'BTS User Guide_20170724.pdf', 'S3C-1508225449.pdf', '2017-10-17 07:30:49'),
(66, 89, 'BTS User Guide_20170724.pdf', 'ISM-1508225449.pdf', '2017-10-17 07:30:49'),
(67, 90, 'BTS User Guide_20170724.pdf', 'F46-1508225564.pdf', '2017-10-17 07:32:44'),
(68, 90, 'BTS User Guide_20170724.pdf', 'EX3-1508225564.pdf', '2017-10-17 07:32:44'),
(69, 93, 'BTS User Guide_20170724.pdf', '20K-1509188932.pdf', '2017-10-28 11:08:52'),
(70, 93, 'BTS User Guide_20170724.pdf', 'C25-1509188932.pdf', '2017-10-28 11:08:52'),
(72, 41, 'Test upload for papers associated with a placement.docx', 'DOCX-1509742462.docx', '2017-11-03 20:54:22'),
(73, 95, 'Test upload for papers associated with a placement.docx', 'DOCX-1509753623.docx', '2017-11-04 00:00:23'),
(74, 96, 'Test upload for papers associated with a placement.docx', 'VYU-1509753806.docx', '2017-11-04 00:03:26'),
(75, 97, 'BTS User Guide_20170724.pdf', 'EH8-1510296422.pdf', '2017-11-10 06:47:02'),
(76, 97, 'BTS User Guide_20170724.pdf', 'D16-1510296422.pdf', '2017-11-10 06:47:02'),
(77, 100, 'BTS User Guide_20170724.pdf', 'QA4-1510915470.pdf', '2017-11-17 10:44:30'),
(78, 100, 'BTS User Guide_20170724.pdf', '8WE-1510915470.pdf', '2017-11-17 10:44:30'),
(79, 101, 'BTS User Guide_20170724.pdf', 'YTA-1511330982.pdf', '2017-11-22 06:09:42'),
(80, 101, 'BTS User Guide_20170724.pdf', 'QOT-1511330982.pdf', '2017-11-22 06:09:42'),
(81, 102, 'BTS User Guide_20170724.pdf', 'M7J-1511331000.pdf', '2017-11-22 06:10:00'),
(82, 102, 'BTS User Guide_20170724.pdf', 'ITJ-1511331000.pdf', '2017-11-22 06:10:00'),
(83, 103, 'BTS User Guide_20170724.pdf', 'F40-1511417380.pdf', '2017-11-23 06:09:40'),
(84, 103, 'BTS User Guide_20170724.pdf', 'QW3-1511417380.pdf', '2017-11-23 06:09:40');

-- --------------------------------------------------------

--
-- Table structure for table `iw_placement_funding`
--

CREATE TABLE `iw_placement_funding` (
  `placement_funding_id` int(11) NOT NULL,
  `funding` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_placement_funding`
--

INSERT INTO `iw_placement_funding` (`placement_funding_id`, `funding`, `created_date`) VALUES
(1, 'Full Salary', '2017-10-10 19:21:33'),
(2, 'Hourly Rates', '2017-10-24 22:35:11'),
(3, 'Stipend', '2017-10-10 19:23:50'),
(7, 'Pending', '2017-10-24 22:37:13'),
(8, 'No Funding', '2017-10-11 00:56:26'),
(9, 'N/A', '2017-10-11 00:57:08');

-- --------------------------------------------------------

--
-- Table structure for table `iw_placement_keyword`
--

CREATE TABLE `iw_placement_keyword` (
  `placement_keyword_id` int(11) NOT NULL,
  `placement_id` int(11) NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_placement_keyword`
--

INSERT INTO `iw_placement_keyword` (`placement_keyword_id`, `placement_id`, `keyword`, `created_date`) VALUES
(1, 1, 'Creative Director', '2017-08-10 06:27:22'),
(2, 1, 'Visual Director', '2017-08-10 06:27:30'),
(3, 2, 'Creative Director', '2017-08-12 04:32:38'),
(4, 3, 'IT Industry', '2017-08-12 04:37:57'),
(5, 3, 'Designer', '2017-08-12 04:38:04'),
(6, 4, 'Computer Science', '2017-08-12 04:47:27'),
(7, 5, 'nanotechnology', '2017-08-13 10:56:07'),
(8, 8, 'finance', '2017-08-15 03:19:12'),
(10, 9, 'Peoplesoft', '2017-08-17 02:33:25'),
(11, 11, 'organic chemistry', '2017-08-24 00:00:55'),
(12, 15, 'No', '2017-08-29 10:40:55'),
(13, 16, 'Hi', '2017-08-29 10:42:52'),
(14, 17, 'no', '2017-08-29 10:43:24'),
(15, 20, 'default', '2017-08-31 09:57:30'),
(20, 25, 'Test', '2017-08-31 13:26:34'),
(21, 26, 'One', '2017-09-01 05:23:15'),
(22, 26, 'Two', '2017-09-01 05:23:19'),
(23, 26, 'Three', '2017-09-01 05:24:57'),
(24, 26, '*', '2017-09-01 05:25:02'),
(25, 26, '#', '2017-09-01 05:25:07'),
(26, 27, 'A', '2017-09-01 06:23:13'),
(27, 27, 'B', '2017-09-01 06:23:18'),
(28, 27, 'C', '2017-09-01 06:23:23'),
(29, 34, 'Creative Director', '2017-09-11 12:08:57'),
(30, 34, 'Visual Director', '2017-09-11 12:08:57'),
(31, 35, 'Creative Director', '2017-09-11 12:12:27'),
(32, 35, 'Visual Director', '2017-09-11 12:12:27'),
(78, 97, 'Creative Director', '2017-11-10 06:47:02'),
(34, 41, 'Peoplesoft', '2017-09-14 11:05:32'),
(35, 48, 'Creative Director', '2017-09-22 06:49:52'),
(36, 48, 'Visual Director', '2017-09-22 06:49:52'),
(37, 49, 'Creative Director', '2017-09-22 06:52:22'),
(38, 50, 'Creative Director', '2017-09-26 09:46:41'),
(39, 50, 'Visual Director', '2017-09-26 09:46:41'),
(40, 51, 'Creative Director', '2017-10-07 03:37:00'),
(41, 51, 'Visual Director', '2017-10-07 03:37:00'),
(42, 52, 'Peoplesoft', '2017-10-10 10:51:07'),
(43, 54, 'Peoplesoft', '2017-10-10 10:58:22'),
(44, 57, 'Creative Director', '2017-10-11 10:38:01'),
(45, 57, 'Visual Director', '2017-10-11 10:38:01'),
(91, 109, 'Visual Director', '2017-12-07 08:40:00'),
(92, 113, 'Visual Director', '2017-12-18 03:55:27'),
(51, 61, 'Recent', '2017-10-12 09:41:03'),
(52, 62, 'Recent', '2017-10-12 09:49:23'),
(90, 109, 'Creative Director', '2017-12-07 08:40:00'),
(96, 114, 'Health', '2018-01-02 05:21:44'),
(94, 30, 'Health', '2018-01-02 05:17:52'),
(95, 30, 'Medicine', '2018-01-02 05:18:33'),
(93, 113, 'Creative Director', '2017-12-18 03:55:27'),
(66, 86, 'Computer Science', '2017-10-16 07:31:24'),
(67, 86, 'Tech Department', '2017-10-16 07:31:30'),
(68, 86, 'HR Admin', '2017-10-16 07:31:39'),
(70, 89, 'Creative Director', '2017-10-17 07:30:49'),
(71, 89, 'Visual Director', '2017-10-17 07:30:49'),
(72, 90, 'Creative Director', '2017-10-17 07:32:44'),
(73, 90, 'Visual Director', '2017-10-17 07:32:44'),
(74, 91, 'health', '2017-10-18 01:13:14'),
(75, 92, 'mechanical engineering', '2017-10-27 11:09:49'),
(76, 93, 'Creative Director', '2017-10-28 11:08:52'),
(77, 93, 'Visual Director', '2017-10-28 11:08:52'),
(79, 97, 'Visual Director', '2017-11-10 06:47:02'),
(80, 99, 'mechatronics', '2017-11-17 00:25:51'),
(81, 100, 'Creative Director', '2017-11-17 10:44:30'),
(82, 100, 'Visual Director', '2017-11-17 10:44:30'),
(83, 101, 'Creative Director', '2017-11-22 06:09:42'),
(84, 101, 'Visual Director', '2017-11-22 06:09:42'),
(85, 102, 'Creative Director', '2017-11-22 06:10:00'),
(86, 102, 'Visual Director', '2017-11-22 06:10:00'),
(87, 103, 'Creative Director', '2017-11-23 06:09:40'),
(88, 103, 'Visual Director', '2017-11-23 06:09:40'),
(89, 105, 'environmental protection', '2017-11-29 02:02:53'),
(97, 114, 'Medicine', '2018-01-02 05:21:44');

-- --------------------------------------------------------

--
-- Table structure for table `iw_placement_status`
--

CREATE TABLE `iw_placement_status` (
  `placement_status_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_placement_status`
--

INSERT INTO `iw_placement_status` (`placement_status_id`, `status`, `description`, `color`, `added_date`) VALUES
(1, 'Saved', 'Draft but not submmited', '#9adba8', '2017-09-14 03:29:16'),
(2, 'Pending', 'Submitted and waiting for SA approval', '#80c9e0', '2017-09-14 03:29:37'),
(4, 'Open', 'Post is published', '#e69cd3', '2017-09-14 03:29:59'),
(5, 'Closed', 'Deadline has passed', '#968f8f', '2017-09-14 03:30:23'),
(6, 'Reject', 'Rejected by SA', '#ff0000', '2017-09-03 21:00:29'),
(7, 'Open / Start', 'Open and group chat is initiated', '', '2017-09-20 10:52:47'),
(8, 'Closed / Completed', 'Closed and group chat is completed', '', '2017-09-20 10:52:47'),
(9, 'Suspend', 'Suspend will remove the visibility', '', '2017-12-14 04:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `iw_placement_subject`
--

CREATE TABLE `iw_placement_subject` (
  `placement_subject_id` int(11) NOT NULL,
  `placement_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iw_placement_type`
--

CREATE TABLE `iw_placement_type` (
  `placement_type_id` int(11) NOT NULL,
  `availability` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iw_placement_view`
--

CREATE TABLE `iw_placement_view` (
  `placement_view_id` int(11) NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `placement_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_placement_view`
--

INSERT INTO `iw_placement_view` (`placement_view_id`, `ip_address`, `placement_id`, `created_date`) VALUES
(1, '115.248.248.37', 2, '2017-09-19 11:43:58'),
(2, '115.248.248.37', 9, '2017-09-20 10:05:40'),
(3, '141.168.25.54', 9, '2017-09-22 00:48:54'),
(4, '141.168.25.54', 12, '2017-09-22 00:50:15'),
(5, '192.168.4.222', 50, '2017-09-26 09:49:13'),
(6, '192.168.4.222', 9, '2017-09-27 04:00:31'),
(7, '192.168.1.101', 4, '2017-10-03 10:27:27'),
(8, '141.168.25.54', 37, '2017-10-03 12:21:07'),
(9, '192.168.1.101', 9, '2017-10-04 03:45:16'),
(10, '192.168.1.101', 2, '2017-10-04 03:45:30'),
(11, '192.168.1.101', 1, '2017-10-04 03:48:14'),
(12, '141.168.25.54', 50, '2017-10-06 03:02:31'),
(13, '192.168.1.101', 50, '2017-10-06 07:43:15'),
(14, '192.168.1.101', 12, '2017-10-06 08:01:16'),
(15, '192.168.1.101', 51, '2017-10-07 03:39:23'),
(16, '141.168.25.54', 38, '2017-10-08 23:52:36'),
(17, '141.168.25.54', 1, '2017-10-08 23:57:29'),
(18, '141.168.25.54', 2, '2017-10-09 03:18:49'),
(19, '141.168.25.54', 33, '2017-10-09 04:22:20'),
(20, '141.168.25.54', 4, '2017-10-09 11:09:10'),
(21, '141.168.25.54', 46, '2017-10-10 04:00:47'),
(22, '141.168.25.54', 39, '2017-10-10 10:58:40'),
(23, '192.168.1.101', 35, '2017-10-11 13:02:51'),
(24, '101.178.163.19', 9, '2017-10-12 01:39:54'),
(25, '101.178.163.19', 4, '2017-10-12 01:40:37'),
(132, '120.20.80.176', 10, '2017-12-04 01:40:26'),
(131, '120.20.80.176', 106, '2017-12-04 01:38:09'),
(28, '27.97.251.54', 1, '2017-10-13 04:12:09'),
(29, '27.97.251.54', 9, '2017-10-13 04:12:51'),
(139, '141.168.25.54', 109, '2017-12-07 12:10:29'),
(31, '120.20.100.169', 56, '2017-10-13 06:16:26'),
(32, '120.20.100.169', 43, '2017-10-13 06:17:50'),
(33, '192.168.1.101', 27, '2017-10-13 06:53:25'),
(137, '141.168.25.54', 101, '2017-12-06 11:22:06'),
(36, '141.168.25.54', 53, '2017-10-13 12:45:34'),
(140, '175.45.84.98', 109, '2017-12-08 02:46:25'),
(38, '112.79.187.37', 9, '2017-10-13 14:19:19'),
(39, '103.232.208.170', 56, '2017-10-16 00:35:22'),
(40, '103.232.208.162', 56, '2017-10-16 00:40:22'),
(41, '192.168.1.101', 37, '2017-10-16 05:17:38'),
(136, '101.178.163.19', 107, '2017-12-06 01:29:36'),
(135, '101.178.163.19', 108, '2017-12-06 01:03:39'),
(45, '192.168.1.101', 86, '2017-10-16 12:38:26'),
(46, '192.168.1.101', 90, '2017-10-17 07:33:14'),
(47, '120.20.55.21', 9, '2017-10-18 00:17:38'),
(134, '141.168.25.54', 108, '2017-12-06 00:11:29'),
(49, '120.20.55.21', 90, '2017-10-18 00:19:23'),
(50, '120.20.55.21', 91, '2017-10-18 01:19:27'),
(141, '141.168.25.54', 110, '2017-12-08 20:27:38'),
(133, '141.168.25.54', 107, '2017-12-05 22:30:42'),
(54, '192.168.1.101', 20, '2017-10-24 12:08:00'),
(55, '141.168.25.54', 35, '2017-10-24 23:07:20'),
(56, '141.168.25.54', 27, '2017-10-24 23:07:34'),
(57, '192.168.1.101', 43, '2017-10-25 10:54:51'),
(58, '141.168.25.54', 20, '2017-10-25 11:33:45'),
(59, '141.168.25.54', 24, '2017-10-25 11:37:41'),
(60, '141.168.25.54', 3, '2017-10-25 11:39:23'),
(61, '101.178.163.19', 35, '2017-10-26 01:56:56'),
(62, '141.168.25.54', 55, '2017-10-26 11:22:25'),
(63, '120.20.214.15', 9, '2017-10-27 01:05:49'),
(64, '120.20.214.15', 37, '2017-10-27 01:06:22'),
(65, '120.20.214.15', 35, '2017-10-27 01:06:45'),
(66, '141.168.25.54', 90, '2017-10-27 11:00:20'),
(67, '141.168.25.54', 92, '2017-10-27 11:12:07'),
(68, '192.168.1.101', 93, '2017-10-28 11:11:43'),
(69, '141.168.25.54', 94, '2017-10-28 23:12:19'),
(70, '120.20.67.27', 9, '2017-10-29 00:38:46'),
(71, '120.20.67.27', 35, '2017-10-29 00:39:49'),
(72, '120.20.67.27', 27, '2017-10-29 00:40:34'),
(73, '120.20.67.27', 4, '2017-10-29 00:42:54'),
(74, '141.168.25.54', 91, '2017-10-29 23:31:09'),
(75, '141.168.25.54', 43, '2017-10-29 23:54:03'),
(76, '192.168.1.101', 24, '2017-10-31 06:28:24'),
(77, '101.178.163.19', 27, '2017-11-01 02:17:53'),
(78, '101.178.163.19', 12, '2017-11-01 02:31:39'),
(79, '120.20.34.46', 95, '2017-11-04 00:02:25'),
(80, '141.168.25.54', 56, '2017-11-05 22:40:17'),
(81, '120.20.189.84', 92, '2017-11-06 00:26:12'),
(82, '120.20.153.36', 56, '2017-11-06 01:07:25'),
(83, '120.20.169.170', 9, '2017-11-08 06:03:46'),
(84, '101.178.163.19', 94, '2017-11-10 01:50:54'),
(85, '101.178.163.19', 26, '2017-11-10 02:02:26'),
(86, '101.178.163.19', 24, '2017-11-10 02:03:09'),
(87, '101.178.163.19', 43, '2017-11-10 03:00:55'),
(88, '101.178.163.19', 56, '2017-11-10 03:01:04'),
(89, '101.178.163.19', 92, '2017-11-10 03:01:35'),
(90, '192.168.1.101', 97, '2017-11-10 06:49:10'),
(91, '150.101.89.150', 92, '2017-11-13 00:32:22'),
(92, '150.101.89.150', 9, '2017-11-13 00:56:26'),
(93, '150.101.89.150', 35, '2017-11-13 01:04:18'),
(94, '150.101.89.150', 93, '2017-11-13 01:05:38'),
(99, '141.168.25.54', 99, '2017-11-17 00:40:53'),
(97, '101.178.163.19', 2, '2017-11-14 00:44:25'),
(98, '141.168.25.54', 7, '2017-11-16 00:43:22'),
(100, '120.20.234.7', 9, '2017-11-17 02:34:51'),
(101, '141.168.25.54', 95, '2017-11-17 04:16:20'),
(102, '192.168.1.101', 100, '2017-11-17 10:48:36'),
(103, '141.168.25.54', 100, '2017-11-19 02:50:49'),
(104, '141.168.25.54', 93, '2017-11-19 03:02:53'),
(105, '192.168.1.101', 99, '2017-11-20 07:12:07'),
(106, '192.168.1.101', 56, '2017-11-20 08:48:49'),
(107, '101.178.163.19', 95, '2017-11-21 02:51:39'),
(108, '101.178.163.19', 93, '2017-11-21 04:31:46'),
(109, '192.168.1.101', 94, '2017-11-22 05:01:58'),
(110, '192.168.1.101', 95, '2017-11-22 05:10:21'),
(111, '192.168.1.101', 102, '2017-11-22 06:12:48'),
(112, '141.168.25.54', 10, '2017-11-22 23:39:25'),
(113, '192.168.1.101', 10, '2017-11-23 05:15:36'),
(114, '192.168.1.101', 103, '2017-11-23 06:25:24'),
(115, '101.178.163.19', 103, '2017-11-24 01:53:37'),
(116, '101.178.163.19', 102, '2017-11-24 01:55:31'),
(117, '101.178.163.19', 99, '2017-11-24 02:35:28'),
(118, '101.178.163.19', 10, '2017-11-24 02:36:33'),
(119, '141.168.25.54', 102, '2017-11-24 06:58:03'),
(120, '141.168.25.54', 103, '2017-11-26 23:33:42'),
(138, '192.168.1.101', 109, '2017-12-07 08:42:17'),
(122, '120.20.4.25', 102, '2017-11-27 00:55:58'),
(123, '141.168.25.54', 104, '2017-11-27 23:20:53'),
(124, '192.168.1.101', 104, '2017-11-28 10:13:29'),
(125, '120.20.33.139', 103, '2017-11-28 22:27:45'),
(126, '120.20.33.139', 104, '2017-11-28 22:34:59'),
(127, '101.178.163.19', 105, '2017-11-29 02:04:28'),
(128, '141.168.25.54', 105, '2017-11-29 03:51:09'),
(129, '101.178.163.19', 106, '2017-11-30 00:58:07'),
(130, '141.168.25.54', 106, '2017-12-01 04:35:30'),
(142, '192.168.1.101', 110, '2017-12-09 07:12:34'),
(143, '175.45.84.98', 110, '2017-12-11 23:46:02'),
(144, '175.45.84.98', 106, '2017-12-11 23:47:21'),
(145, '175.45.84.98', 104, '2017-12-11 23:48:17'),
(146, '175.45.84.98', 101, '2017-12-11 23:49:57'),
(147, '175.45.84.98', 100, '2017-12-11 23:50:25'),
(148, '175.45.84.98', 111, '2017-12-12 00:03:02'),
(149, '120.20.74.116', 109, '2017-12-14 01:32:54'),
(150, '141.168.25.54', 111, '2017-12-14 02:01:46'),
(151, '192.168.1.101', 112, '2017-12-15 04:06:52'),
(152, '116.15.34.167', 111, '2017-12-17 06:21:49'),
(153, '116.15.34.167', 102, '2017-12-17 08:42:45'),
(154, '192.168.1.101', 113, '2017-12-18 03:58:05'),
(155, '61.8.194.210', 111, '2017-12-18 10:57:21'),
(156, '61.8.194.210', 102, '2017-12-18 11:00:09'),
(157, '116.15.34.167', 113, '2017-12-22 12:21:28'),
(158, '116.15.34.167', 112, '2017-12-22 13:22:12'),
(159, '121.7.150.145', 113, '2017-12-27 06:55:18'),
(160, '192.168.1.101', 111, '2017-12-27 13:31:50'),
(161, '116.15.34.167', 100, '2018-01-01 04:09:55'),
(162, '192.168.1.101', 114, '2018-01-11 12:21:31'),
(163, '192.168.5.196', 114, '2018-01-24 13:17:53'),
(164, '192.168.5.196', 113, '2018-01-29 05:45:04'),
(165, '::1', 114, '2018-02-06 04:27:23'),
(166, '::1', 1, '2018-02-06 06:14:32'),
(167, '::1', 113, '2018-02-07 03:58:47'),
(168, '::1', 109, '2018-02-07 04:00:59'),
(169, '::1', 97, '2018-02-07 04:01:50'),
(170, '::1', 99, '2018-02-07 04:05:58'),
(171, '::1', 102, '2018-02-07 15:16:56'),
(172, '::1', 30, '2018-02-13 04:59:14'),
(173, '::1', 115, '2018-02-14 10:05:15'),
(174, '::1', 116, '2018-02-14 10:17:28'),
(175, '::1', 111, '2018-02-17 03:45:41');

-- --------------------------------------------------------

--
-- Table structure for table `iw_posts_shared_with`
--

CREATE TABLE `iw_posts_shared_with` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `placement_id` int(11) NOT NULL,
  `shared_with_user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_posts_shared_with`
--

INSERT INTO `iw_posts_shared_with` (`id`, `user_id`, `placement_id`, `shared_with_user_id`, `created_date`) VALUES
(1, 3, 114, 42, '2018-02-06 06:48:20');

-- --------------------------------------------------------

--
-- Table structure for table `iw_profession`
--

CREATE TABLE `iw_profession` (
  `profession_id` int(11) NOT NULL,
  `profession` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_profession`
--

INSERT INTO `iw_profession` (`profession_id`, `profession`, `parent`, `created_date`) VALUES
(1, 'Test Profession', 0, '2017-08-31 03:46:59'),
(2, 'Hello Testing', 1, '2017-08-31 11:47:10');

-- --------------------------------------------------------

--
-- Table structure for table `iw_provider_admin_general_settings`
--

CREATE TABLE `iw_provider_admin_general_settings` (
  `provider_admin_general_settings_id` int(11) NOT NULL,
  `provider_organisation_profile_id` int(11) NOT NULL,
  `allow_supervisor` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `allow_pa_supervisor` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `allow_internal_op` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_provider_admin_general_settings`
--

INSERT INTO `iw_provider_admin_general_settings` (`provider_admin_general_settings_id`, `provider_organisation_profile_id`, `allow_supervisor`, `allow_pa_supervisor`, `allow_internal_op`, `created_date`) VALUES
(1, 2, '1', '1', '1', '2017-07-25 12:12:51'),
(2, 3, '1', '1', '1', '2017-07-27 02:13:17'),
(3, 4, '1', '1', '1', '2017-07-27 09:43:38'),
(4, 5, '0', '0', '0', '2017-08-30 05:33:30'),
(5, 6, '0', '1', '0', '2017-08-31 04:21:49'),
(6, 7, '0', '0', '0', '2017-08-31 05:02:56'),
(7, 8, '0', '0', '0', '2017-08-31 08:57:31'),
(8, 9, '1', '1', '1', '2017-08-31 09:13:40'),
(9, 10, '1', '0', '1', '2017-08-31 10:49:26'),
(10, 11, '1', '1', '1', '2017-08-31 11:55:56'),
(11, 12, '1', '1', '1', '2017-10-12 07:16:08'),
(15, 16, '0', '1', '0', '2018-01-31 09:14:46');

-- --------------------------------------------------------

--
-- Table structure for table `iw_provider_admin_license_log`
--

CREATE TABLE `iw_provider_admin_license_log` (
  `iw_provider_organisation_license_log_id` int(11) NOT NULL,
  `provider_admin_profile_id` int(11) NOT NULL,
  `license_id` int(11) NOT NULL,
  `license_allocated` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `license_used` int(11) NOT NULL,
  `no_of_license` int(11) NOT NULL,
  `type` enum('add','remove') COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_provider_admin_license_log`
--

INSERT INTO `iw_provider_admin_license_log` (`iw_provider_organisation_license_log_id`, `provider_admin_profile_id`, `license_id`, `license_allocated`, `created_date`, `license_used`, `no_of_license`, `type`, `description`) VALUES
(1, 2, 1, 20, '2017-11-27 03:36:25', 0, 0, 'add', 'Adding 20 licenses'),
(2, 2, 2, 5, '2017-11-27 03:46:11', 0, 0, 'add', 'Few more licenses'),
(3, 3, 3, 10, '2017-11-27 03:50:31', 0, 0, 'add', 'test'),
(4, 3, 4, 5, '2017-11-30 00:47:31', 0, 0, 'add', 'more added'),
(5, 3, 5, 20, '2017-12-08 20:37:58', 0, 0, 'add', 'new licences'),
(6, 11, 6, 10, '2017-12-15 12:14:06', 0, 0, 'add', 'Allocate 10 licenses'),
(7, 11, 7, 5, '2017-12-15 12:15:10', 0, 0, 'add', 'Allocated 5 licenses on request'),
(8, 2, 8, 10, '2018-01-05 09:52:28', 0, 0, 'add', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(9, 2, 9, 5, '2018-01-05 09:52:47', 0, 0, 'add', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'),
(10, 2, 10, 4, '2018-01-05 09:53:22', 0, 0, 'add', 'Excepteur sint occaecat cupidatat non proident'),
(11, 17, 11, 20, '2018-01-31 09:14:46', 0, 0, 'add', ''),
(12, 2, 12, 2, '2018-02-09 04:04:51', 0, 0, 'remove', 'qwer'),
(13, 2, 13, 2, '2018-02-09 04:07:48', 0, 0, 'remove', 'dwd'),
(14, 2, 14, 1, '2018-02-09 04:09:57', 0, 0, 'remove', 'dc'),
(15, 2, 15, 1, '2018-02-09 04:11:59', 0, 0, 'remove', 'edcf'),
(16, 2, 16, 1, '2018-02-09 04:13:10', 0, 0, 'remove', 'frf'),
(17, 2, 17, 1, '2018-02-09 04:13:38', 0, 0, 'remove', 'rfrf'),
(18, 2, 18, 1, '2018-02-09 04:44:54', 0, 0, 'remove', '3e');

-- --------------------------------------------------------

--
-- Table structure for table `iw_provider_admin_profile`
--

CREATE TABLE `iw_provider_admin_profile` (
  `provider_admin_profile_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `department` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `change_settings` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_provider_admin_profile`
--

INSERT INTO `iw_provider_admin_profile` (`provider_admin_profile_id`, `user_id`, `country_id`, `city_id`, `department`, `designation`, `position`, `image`, `change_settings`, `location_id`, `created_date`) VALUES
(1, 2, 1, 7, '1', '', 0, '', '0', NULL, '2017-07-25 12:10:43'),
(2, 3, 10, 7, '8', 'Software Engineer', 0, 'crop_20171113055034.jpeg', '0', 5, '2017-07-25 12:12:51'),
(3, 4, 10, 7, '32', 'Placement Officer', 0, 'crop_20171104114859.jpeg', '0', 33, '2017-07-27 02:13:17'),
(5, 6, 1, 7, '2', 'Technical Lead', 0, 'crop_20171113085441.png', '0', 9, '2017-07-27 09:43:38'),
(6, 20, 1, 7, '', '', 0, '', '0', NULL, '2017-08-30 05:33:30'),
(7, 21, 1, 7, '15', 'ankitjaiswal@singsys.com', 0, 'JPG-1504270276.jpg', '0', 22, '2017-08-31 04:21:49'),
(8, 22, 1, 7, '', '', 0, '', '0', NULL, '2017-08-31 05:02:56'),
(9, 24, 1, 7, '', '', 0, '', '0', NULL, '2017-08-31 08:57:31'),
(10, 25, 1, 7, '12', 'Singer, Tester', 0, 'JPG-1504174418.jpg', '0', 12, '2017-08-31 09:13:40'),
(11, 27, 1, 7, '', '', 0, '', '0', NULL, '2017-08-31 10:49:26'),
(12, 29, 1, 7, '19', 'QA', 0, 'JPG-1504184417.jpg', '0', 21, '2017-08-31 11:55:56'),
(13, 47, 1, 7, '25', 'Provider', 0, 'JPG-1507793598.jpg', '0', 23, '2017-10-12 07:16:08'),
(17, 65, 1, 7, '', '', 0, '', '0', NULL, '2018-01-31 09:14:46');

--
-- Triggers `iw_provider_admin_profile`
--
DELIMITER $$
CREATE TRIGGER `delete_provider_profile` AFTER DELETE ON `iw_provider_admin_profile` FOR EACH ROW BEGIN
       DELETE FROM `iw_provider_admin_license_log` WHERE provider_admin_profile_id = OLD.provider_admin_profile_id;
            DELETE FROM `iw_provider_organisation_profile` WHERE provider_admin_profile_id = OLD.provider_admin_profile_id; 
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `iw_provider_department`
--

CREATE TABLE `iw_provider_department` (
  `provider_department_id` int(11) NOT NULL,
  `provider_organisation_profile_id` int(11) NOT NULL,
  `department` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_provider_department`
--

INSERT INTO `iw_provider_department` (`provider_department_id`, `provider_organisation_profile_id`, `department`, `added_on`) VALUES
(1, 4, 'System', '2017-07-27 09:50:47'),
(2, 4, 'HR Admin', '2017-07-27 09:50:52'),
(3, 4, 'Administration', '2017-07-27 09:51:01'),
(32, 3, 'Department of Engineering', '2017-10-23 23:05:34'),
(31, 3, 'Department of Science', '2017-10-23 23:05:24'),
(7, 2, 'HR Admin', '2017-08-09 11:15:37'),
(8, 2, 'Computer Technology', '2017-08-09 11:15:46'),
(33, 3, 'Department of Medicine', '2017-10-23 23:05:44'),
(12, 9, 'Administrative', '2017-08-31 10:00:39'),
(13, 6, 'Tster', '2017-08-31 10:21:06'),
(14, 6, 'NDLS', '2017-08-31 10:23:44'),
(15, 6, 'Tester', '2017-08-31 10:52:46'),
(16, 6, 'ADI', '2017-08-31 10:54:09'),
(17, 10, 'Admin', '2017-08-31 11:30:36'),
(18, 10, 'HR Admin', '2017-08-31 11:30:42'),
(19, 11, 'test Department', '2017-08-31 12:48:19'),
(20, 9, 'Engineer', '2017-09-01 06:52:59'),
(21, 6, 'test', '2017-09-01 11:08:39'),
(22, 6, 'nops', '2017-09-01 11:09:08'),
(23, 12, 'CDRI', '2017-10-12 07:22:25'),
(24, 12, 'CSRI', '2017-10-12 07:22:50'),
(25, 12, 'TEST', '2017-10-12 07:27:16'),
(28, 2, 'Creative Director', '2017-10-13 07:01:08'),
(35, 3, 'Arts Department', '2017-11-03 20:24:55');

-- --------------------------------------------------------

--
-- Table structure for table `iw_provider_enquiry`
--

CREATE TABLE `iw_provider_enquiry` (
  `provider_enquiry_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organisation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `enquiry` text COLLATE utf8_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_provider_enquiry`
--

INSERT INTO `iw_provider_enquiry` (`provider_enquiry_id`, `name`, `organisation`, `email`, `mobile`, `enquiry`, `added_date`) VALUES
(1, 'Raveena Nigam', 'Singsys Pte. Ltd', 'raveena@singsys.com', 987656783, 'Connect with employers & discover new opportunities based on your skills.', '2017-07-25 12:14:25'),
(2, 'ankit', 'Singsys', 'ankitjaiswal@singsys.com', 12345678, 'Test', '2017-08-31 08:42:10'),
(3, 'Shubham', 'test company', 'shubham@singsys.com', 2, 'ds', '2017-08-31 12:32:16'),
(4, 'Raveena Nigam', 'Singsys Pte. Ltd', 'raveena@singsys.com', 9834567892, 'This is testing description', '2017-11-30 12:05:47'),
(5, 'John', 'Company X', 'duncan775@gmail.com', 123456, 'test enquiry', '2017-12-08 20:32:42'),
(6, 'Raveena Nigam', 'Singsys Pte. Ltd', 'raveena@singsys.com', 9345697541, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', '2017-12-18 11:42:16');

-- --------------------------------------------------------

--
-- Table structure for table `iw_provider_enquiry_reply`
--

CREATE TABLE `iw_provider_enquiry_reply` (
  `provider_enquiry_reply_id` int(11) NOT NULL,
  `provider_enquiry_id` int(11) NOT NULL,
  `reply` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_provider_enquiry_reply`
--

INSERT INTO `iw_provider_enquiry_reply` (`provider_enquiry_reply_id`, `provider_enquiry_id`, `reply`, `added_date`) VALUES
(1, 1, 0, '2017-12-04 00:41:31'),
(2, 5, 0, '2017-12-08 15:04:08');

-- --------------------------------------------------------

--
-- Table structure for table `iw_provider_notes`
--

CREATE TABLE `iw_provider_notes` (
  `provider_notes_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_provider_notes`
--

INSERT INTO `iw_provider_notes` (`provider_notes_id`, `user_id`, `notes`, `created_date`) VALUES
(1, 3, 'Home page search – if user searches for child level, Posts that are specified at the parent level (no child filter) should be shown in the search results', '2017-11-23 13:36:18'),
(2, 3, 'testing', '2017-11-27 01:57:41'),
(3, 4, 'testing', '2017-11-27 01:58:07'),
(4, 7, 'Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.', '2017-11-30 10:22:26'),
(5, 7, 'Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.', '2017-11-30 10:22:41'),
(6, 4, 'more notes', '2017-12-12 22:37:59');

-- --------------------------------------------------------

--
-- Table structure for table `iw_provider_organisation_keyword`
--

CREATE TABLE `iw_provider_organisation_keyword` (
  `provider_organisation_keyword_id` int(11) NOT NULL,
  `provider_organisation_profile_id` int(11) NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iw_provider_organisation_license_log`
--

CREATE TABLE `iw_provider_organisation_license_log` (
  `provider_organisation_license_log_id` int(11) NOT NULL,
  `provider_organisation_profile_id` int(11) NOT NULL,
  `license_id` int(11) NOT NULL,
  `license_allocated` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iw_provider_organisation_location`
--

CREATE TABLE `iw_provider_organisation_location` (
  `provider_organisation_location_id` int(11) NOT NULL,
  `provider_organisation_profile_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_provider_organisation_location`
--

INSERT INTO `iw_provider_organisation_location` (`provider_organisation_location_id`, `provider_organisation_profile_id`, `country_id`, `city_id`, `created_date`) VALUES
(1, 2, 14, 0, '2017-08-24 07:20:08'),
(2, 2, 23, 0, '2017-08-24 07:20:08'),
(3, 2, 65, 0, '2017-08-24 07:20:08'),
(4, 2, 72, 0, '2017-08-24 07:20:08'),
(5, 2, 13, 59, '2017-08-24 07:20:08'),
(6, 2, 189, 60, '2017-08-24 07:20:08'),
(7, 4, 13, 0, '2017-08-24 08:46:16'),
(8, 4, 28, 0, '2017-08-24 08:46:16'),
(9, 4, 13, 59, '2017-08-24 08:46:49'),
(37, 3, 162, 0, '2017-11-22 23:26:22'),
(36, 3, 13, 57, '2017-11-22 23:25:41'),
(12, 9, 2, 0, '2017-08-31 09:47:22'),
(13, 9, 5, 0, '2017-08-31 09:47:22'),
(14, 9, 243, 0, '2017-08-31 09:47:22'),
(15, 9, 162, 0, '2017-08-31 09:47:22'),
(16, 9, 176, 0, '2017-08-31 09:47:22'),
(21, 11, 246, 0, '2017-08-31 12:58:42'),
(22, 6, 7, 0, '2017-09-01 11:10:12'),
(23, 12, 243, 0, '2017-10-12 07:30:21'),
(33, 3, 13, 58, '2017-11-20 00:00:42');

-- --------------------------------------------------------

--
-- Table structure for table `iw_provider_organisation_media`
--

CREATE TABLE `iw_provider_organisation_media` (
  `provider_organisation_media_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider_organisation_profile_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_provider_organisation_media`
--

INSERT INTO `iw_provider_organisation_media` (`provider_organisation_media_id`, `image`, `provider_organisation_profile_id`, `created_at`, `updated_at`) VALUES
(1, '1501149343-provider-gallery-thumb06.jpg', '4', '2017-07-27 01:55:43', NULL),
(2, '1501149343-provider-gallery-thumb07.jpg', '4', '2017-07-27 01:55:43', NULL),
(3, '1501149343-provider-gallery-thumb08.jpg', '4', '2017-07-27 01:55:43', NULL),
(4, '1501225513-patient-profile.jpg', '2', '2017-07-27 23:05:13', NULL),
(56, 'crop_20171119235745.jpeg', '3', '2017-11-19 06:27:45', NULL),
(8, '1502277225-provider-gallery-thumb04.jpg', '2', '2017-08-09 03:13:45', NULL),
(9, '1502277225-provider-gallery-thumb05.jpg', '2', '2017-08-09 03:13:45', NULL),
(10, '1502277225-provider-gallery-thumb06.jpg', '2', '2017-08-09 03:13:45', NULL),
(34, '1504250894-IMG-20170831-WA0003.jpg', '6', '2017-08-31 23:28:14', NULL),
(12, '1502277225-provider-gallery-thumb08.jpg', '2', '2017-08-09 03:13:45', NULL),
(13, '1502277225-provider-gallery-thumb09.jpg', '2', '2017-08-09 03:13:45', NULL),
(14, '1502429224-provider-gallery-thumb01.jpg', '2', '2017-08-10 21:27:04', NULL),
(15, '1502429224-provider-gallery-thumb02.jpg', '2', '2017-08-10 21:27:04', NULL),
(16, '1502429224-provider-gallery-thumb03.jpg', '2', '2017-08-10 21:27:04', NULL),
(30, '1504172720-1458274911.jpg', '9', '2017-08-31 01:45:20', NULL),
(27, '1504172684-Screen Shot 2017-08-23 at 11.24.14 AM.png', '9', '2017-08-31 01:44:44', NULL),
(28, '1504172691-Screen Shot 2017-08-23 at 11.23.31 AM.png', '9', '2017-08-31 01:44:51', NULL),
(20, '1502429224-provider-gallery-thumb07.jpg', '2', '2017-08-10 21:27:04', NULL),
(29, '1504172699-2017-01-10.jpg', '9', '2017-08-31 01:44:59', NULL),
(31, '1504177736-209a031f-ea07-406a-9b5e-f738a4cfd3c402032017163946.png', '10', '2017-08-31 03:08:56', NULL),
(32, '1504177746-273a7143-acf7-4b8e-a8df-267a7874e54802032017163825.png', '10', '2017-08-31 03:09:06', NULL),
(33, '1504183677-images (2).jpg', '11', '2017-08-31 04:47:57', NULL),
(35, '1504251092-image.jpg', '6', '2017-08-31 23:31:32', NULL),
(37, '1504251257-IMG-20170827-WA0006.jpg', '6', '2017-08-31 23:34:17', NULL),
(40, '1504273907-1504273792090486525019.jpg', '6', '2017-08-31 17:51:47', NULL),
(41, '1504273922-1504273823792255241164.jpg', '6', '2017-08-31 17:52:02', NULL),
(42, '1504273946-15042738807711262874223.jpg', '6', '2017-08-31 17:52:26', NULL),
(43, '1504273965-1504273851999747247270.jpg', '6', '2017-08-31 17:52:45', NULL),
(44, '1504275272-IMG-20170829-WA0003.jpg', '6', '2017-08-31 18:14:32', NULL),
(45, '1507793302-1.jpg', '12', '2017-10-12 01:58:22', NULL),
(47, '1507800132-2.jpg', '12', '2017-10-12 03:52:12', NULL),
(57, 'crop_20171119235832.jpeg', '3', '2017-11-19 06:28:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `iw_provider_organisation_profile`
--

CREATE TABLE `iw_provider_organisation_profile` (
  `provider_organisation_profile_id` int(11) NOT NULL,
  `provider_admin_profile_id` int(11) NOT NULL,
  `provider_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider_logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profession_id` int(11) NOT NULL,
  `provider_header` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `provider_type_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `about_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `about` text COLLATE utf8_unicode_ci NOT NULL,
  `visibility` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `if_published` enum('0','1','2') COLLATE utf8_unicode_ci NOT NULL,
  `admin_email` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `license_email` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `applicant_email` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `post_email` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `deadline_email` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `feature` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_provider_organisation_profile`
--

INSERT INTO `iw_provider_organisation_profile` (`provider_organisation_profile_id`, `provider_admin_profile_id`, `provider_name`, `provider_logo`, `profession_id`, `provider_header`, `country_id`, `city_id`, `provider_type_id`, `title`, `description`, `about_title`, `about`, `visibility`, `if_published`, `admin_email`, `license_email`, `applicant_email`, `post_email`, `deadline_email`, `created_date`, `feature`) VALUES
(1, 1, '', '', 1, '', 1, 7, 1, '', '', '', '', '1', '0', '0', '0', '0', '0', '0', '2017-07-25 12:10:43', '0'),
(2, 2, 'Singsys Pvt. Ltd', 'JPG-1503548874.jpg', 1, 'crop_20171115104257.jpeg', 1, 7, 4, 'Singsys Pte. Ltd', '<p>Vivamus tortor justo, placerat vestibulum liberoat consequat iaculis tortorIn utconsectetur urna suspendisse potenti morbi laoreeteu massa quis pretium etiam pharetra vulputate sem nec finibus proin feugiat egestasmi interdum vestibulum iaculis aodio nec tempus donec vel mauris aliquam bibendum velit hendrerit volutpat nulla. Aenean ultricies fringilla mauris non accumsan metus fringilla sed aliquam utsem atnulla venenatis consectetur quis vel sapien morbi pharetra ultricies feugiat suspendisse facilisis vitae sapien acfaucibus vestibulum volutpat non risus nec aliquet praesent aimperdiet sapien Morbi lobortis atorci eget porta duis tristique cursus aliquam mauris ornare nisi inquam tempor pulvinar aliquam aliquam magna quis ipsum pellentesque eget rhoncus est facilisis donec ac tincidunt ligula inviverra orci intempor purus utdolor elementum aliquam placerat vulputate metus sed sagittis nibh eleifend tristique quisque eget dui commodo euismod dui sed mattis. Mauris volutpat tincidunt ex, in consectetur magna porttitorat sed auctor nunc sed enim sodales at maximus neque luctus vivamus eu maximus orci mauris inmolestie augue sit amet vulputate odio nunc imperdiet interdum nunc eu facilisis tortor etegestas metus Inbibendum pulvinar ante aliquet imperdiet.</p>', 'sdfghj', '<p>Aliquam gravida non risus sed vestibulum nullam sed velit quis risus egestas imperdiet acquis erat suspendisse sollicitudin diam mauris etrhoncus est ultriciesac. Sed venenatis estin imperdiet maximus quam est commodo dolor varius convallis erat mi sed tellus curabitur mauris est finibus in porta acsemper sit amet elit fusce libero nibh euismod a magna mattis facilisis fermentum risus Morbiac turpis in enim fringilla accumsan phasellus mollis sapien dolor non suscipit leo aliquetid invenenatis risus libero at mattis libero imperdiet vel.</p>', '1', '1', '0', '0', '0', '0', '0', '2017-07-25 12:12:51', '0'),
(3, 3, 'Internship Association', 'crop_20171130011337.jpeg', 1, 'crop_20171206230507.jpeg', 1, 7, 6, 'Heading', '<p>We provide internships and many work placements in the area of IT and marketing. We are responsible for the operations and systems of the government department. This is the second version of the profile.</p>', '', '<p>We have many opportunities for students.We have a wide range of courses that we provide in collaboration with our university partners. Update</p>', '1', '0', '0', '0', '0', '0', '0', '2017-07-27 02:13:17', '0'),
(4, 5, 'Singsys Pte. Ltd', 'JPG-1503564508.jpg', 1, 'crop_20171113060754.png', 1, 7, 3, 'Singsys Pte. Ltd', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nAt vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.', '1', '0', '0', '0', '0', '0', '0', '2017-07-27 09:43:38', '0'),
(5, 6, '', '', 1, '', 1, 7, 1, '', '', '', '', '1', '0', '0', '0', '0', '0', '0', '2017-08-30 05:33:30', '0'),
(6, 7, 'Singsys', 'JPG-1504171509.jpg', 1, 'JPG-1504172420.jpg', 1, 7, 5, 'No Title', '<p><strong>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</strong></p>', '', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '1', '0', '0', '0', '0', '0', '0', '2017-08-31 04:21:49', '0'),
(7, 8, '', '', 1, '', 1, 7, 1, '', '', '', '', '1', '0', '0', '0', '0', '0', '0', '2017-08-31 05:02:56', '0'),
(8, 9, '', '', 1, '', 1, 7, 1, '', '', '', '', '1', '0', '0', '0', '0', '0', '0', '2017-08-31 08:57:31', '0'),
(9, 10, 'OneIndia', 'PNG-1504172415.png', 1, 'JPG-1504172310.jpg', 1, 7, 5, 'Title 1', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '1', '0', '0', '0', '0', '0', '0', '2017-08-31 09:13:40', '0'),
(10, 11, '', '', 1, '', 1, 7, 1, '', '', '', '', '1', '0', '0', '0', '0', '0', '0', '2017-08-31 10:49:26', '0'),
(11, 12, 'Shubham', 'JPG-1504183658.jpg', 1, 'JPG-1504183655.jpg', 1, 7, 7, 'Test Title', '<ul>\r\n	<li><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has</li>\r\n	<li>&nbsp;</li>\r\n	<li>been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</li>\r\n</ul>', '', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '1', '0', '0', '0', '0', '0', '0', '2017-08-31 11:55:56', '0'),
(12, 13, 'singsys1', 'JPG-1507792873.jpg', 1, 'JPG-1507792837.jpg', 1, 7, 7, 'Pro', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '1', '0', '0', '0', '0', '0', '0', '2017-10-12 07:16:08', '0'),
(16, 17, '', '', 1, '', 1, 7, 1, '', '', '', '', '1', '0', '0', '0', '0', '0', '0', '2018-01-31 09:14:46', '0');

--
-- Triggers `iw_provider_organisation_profile`
--
DELIMITER $$
CREATE TRIGGER `delete_provider_organisation` AFTER DELETE ON `iw_provider_organisation_profile` FOR EACH ROW BEGIN
        DELETE FROM `iw_provider_admin_general_settings` WHERE provider_organisation_profile_id = OLD.provider_organisation_profile_id;
            DELETE FROM `iw_provider_department` WHERE provider_organisation_profile_id = OLD.provider_organisation_profile_id;

            DELETE FROM `iw_provider_organisation_keyword` WHERE provider_organisation_profile_id = OLD.provider_organisation_profile_id;
            DELETE FROM `iw_provider_organisation_license_log` WHERE provider_organisation_profile_id = OLD.provider_organisation_profile_id;
            DELETE FROM `iw_provider_organisation_location` WHERE provider_organisation_profile_id = OLD.provider_organisation_profile_id;

            DELETE FROM `iw_provider_organisation_media` WHERE provider_organisation_profile_id = OLD.provider_organisation_profile_id;
            DELETE FROM `iw_provider_organisation_profile` WHERE provider_organisation_profile_id = OLD.provider_organisation_profile_id;
            DELETE FROM `iw_provider_organisation_subject` WHERE provider_organisation_profile_id = OLD.provider_organisation_profile_id;
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `iw_provider_organisation_subject`
--

CREATE TABLE `iw_provider_organisation_subject` (
  `provider_organisation_subject_id` int(11) NOT NULL,
  `provider_organisation_profile_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iw_provider_type`
--

CREATE TABLE `iw_provider_type` (
  `provider_type_id` int(11) NOT NULL,
  `provider_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL,
  `child` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_provider_type`
--

INSERT INTO `iw_provider_type` (`provider_type_id`, `provider_type`, `parent`, `child`, `created_date`) VALUES
(7, 'Research Institute', 0, 0, '2017-10-13 05:39:29'),
(6, 'Business / Industry', 0, 0, '2017-11-01 21:20:14'),
(5, 'Government Department', 0, 0, '2017-08-14 07:58:10'),
(4, 'University', 0, 0, '2017-08-14 07:57:31'),
(8, 'Community Organisation', 0, 0, '2017-10-10 19:32:29'),
(13, 'Health Care Provider', 0, 0, '2017-10-11 01:03:32'),
(14, 'Technical Institute', 0, 0, '2017-10-11 01:05:56'),
(15, 'Professional Association', 0, 0, '2017-10-11 01:06:17');

-- --------------------------------------------------------

--
-- Table structure for table `iw_research_type`
--

CREATE TABLE `iw_research_type` (
  `research_type_id` int(10) UNSIGNED NOT NULL,
  `research` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_research_type`
--

INSERT INTO `iw_research_type` (`research_type_id`, `research`, `created_at`, `updated_at`) VALUES
(1, 'Publication', '2017-08-01 16:51:18', '2017-10-24 22:45:48'),
(2, 'Conference paper', '2017-08-01 16:51:18', '2017-10-24 22:46:14'),
(3, 'Book', '2017-08-01 16:51:18', '2017-10-24 22:46:39'),
(4, 'Article', '2017-08-01 16:51:18', '2017-10-24 22:47:12'),
(5, 'Review', '2017-08-01 16:51:18', '2017-08-01 16:51:18'),
(7, 'Lab work', NULL, '2017-10-24 22:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `iw_settings`
--

CREATE TABLE `iw_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_settings`
--

INSERT INTO `iw_settings` (`id`, `created_at`, `updated_at`, `key`, `value`) VALUES
(1, '2017-12-17 21:37:08', '2017-12-17 21:37:08', 'admin_email', 'raveena@singsys.com'),
(2, '2017-12-17 21:37:08', '2017-12-17 21:37:08', 'facebook_url', 'https://www.facebook.com'),
(3, '2017-12-17 21:37:08', '2017-12-17 21:37:08', 'twitter_url', 'https://www.twitter.com'),
(4, '2017-12-17 21:37:08', '2017-12-17 21:37:08', 'linkedin_url', 'https://www.linkedin.com'),
(5, '2017-12-17 21:37:08', '2017-12-17 21:37:08', 'google_url', 'https://plus.google.com'),
(6, '2017-12-17 21:37:08', '2017-12-17 21:37:08', 'smtp_server_host', 'ssl://ded4031.inmotionhosting.com'),
(7, '2017-12-17 21:37:08', '2017-12-17 21:37:08', 'smtp_port_number', '465'),
(8, '2017-12-17 21:37:08', '2017-12-17 21:37:08', 'smtp_uName', 'do_not_reply@graduateprojects.com'),
(9, '2017-12-17 21:37:08', '2017-12-17 21:37:08', 'smtp_uPass', '1369JavabeInEmailoNade@1990'),
(10, '2017-12-17 21:37:08', '2017-12-17 21:37:08', 'copyright', '© Graduate Projects 2018. All rights reserved.'),
(11, '2017-12-17 21:37:08', '2017-12-17 21:37:08', 'site_title', 'Graduate Projects'),
(12, '2017-12-17 21:37:08', '2017-12-17 21:37:08', 'maintenance', '0'),
(13, '2017-12-17 21:37:08', '2017-12-17 21:37:08', 'maintenance_desc', 'Maintenance Mode is ON');

-- --------------------------------------------------------

--
-- Table structure for table `iw_states`
--

CREATE TABLE `iw_states` (
  `state_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iso_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_states`
--

INSERT INTO `iw_states` (`state_id`, `country_id`, `state`, `iso_code`, `added_date`) VALUES
(1, 21, 'Alabama', 'AL', '2017-07-22 18:54:15'),
(2, 21, 'Alaska', 'AK', '2017-07-22 18:54:15'),
(3, 21, 'Arizona', 'AZ', '2017-07-22 18:54:15'),
(4, 21, 'Arkansas', 'AR', '2017-07-22 18:54:15'),
(5, 21, 'California', 'CA', '2017-07-22 18:54:15'),
(6, 21, 'Colorado', 'CO', '2017-07-22 18:54:15'),
(7, 21, 'Connecticut', 'CT', '2017-07-22 18:54:15'),
(8, 21, 'Delaware', 'DE', '2017-07-22 18:54:15'),
(9, 21, 'Florida', 'FL', '2017-07-22 18:54:15'),
(10, 21, 'Georgia', 'GA', '2017-07-22 18:54:15'),
(11, 21, 'Hawaii', 'HI', '2017-07-22 18:54:15'),
(12, 21, 'Idaho', 'ID', '2017-07-22 18:54:15'),
(13, 21, 'Illinois', 'IL', '2017-07-22 18:54:15'),
(14, 21, 'Indiana', 'IN', '2017-07-22 18:54:15'),
(15, 21, 'Iowa', 'IA', '2017-07-22 18:54:15'),
(16, 21, 'Kansas', 'KS', '2017-07-22 18:54:15'),
(17, 21, 'Kentucky', 'KY', '2017-07-22 18:54:15'),
(18, 21, 'Louisiana', 'LA', '2017-07-22 18:54:15'),
(19, 21, 'Maine', 'ME', '2017-07-22 18:54:15'),
(20, 21, 'Maryland', 'MD', '2017-07-22 18:54:15'),
(21, 21, 'Massachusetts', 'MA', '2017-07-22 18:54:15'),
(22, 21, 'Michigan', 'MI', '2017-07-22 18:54:15'),
(23, 21, 'Minnesota', 'MN', '2017-07-22 18:54:15'),
(24, 21, 'Mississippi', 'MS', '2017-07-22 18:54:15'),
(25, 21, 'Missouri', 'MO', '2017-07-22 18:54:15'),
(26, 21, 'Montana', 'MT', '2017-07-22 18:54:15'),
(27, 21, 'Nebraska', 'NE', '2017-07-22 18:54:15'),
(28, 21, 'Nevada', 'NV', '2017-07-22 18:54:15'),
(29, 21, 'New Hampshire', 'NH', '2017-07-22 18:54:15'),
(30, 21, 'New Jersey', 'NJ', '2017-07-22 18:54:15'),
(31, 21, 'New Mexico', 'NM', '2017-07-22 18:54:15'),
(32, 21, 'New York', 'NY', '2017-07-22 18:54:15'),
(33, 21, 'North Carolina', 'NC', '2017-07-22 18:54:15'),
(34, 21, 'North Dakota', 'ND', '2017-07-22 18:54:15'),
(35, 21, 'Ohio', 'OH', '2017-07-22 18:54:15'),
(36, 21, 'Oklahoma', 'OK', '2017-07-22 18:54:15'),
(37, 21, 'Oregon', 'OR', '2017-07-22 18:54:15'),
(38, 21, 'Pennsylvania', 'PA', '2017-07-22 18:54:15'),
(39, 21, 'Rhode Island', 'RI', '2017-07-22 18:54:15'),
(40, 21, 'South Carolina', 'SC', '2017-07-22 18:54:15'),
(41, 21, 'South Dakota', 'SD', '2017-07-22 18:54:15'),
(42, 21, 'Tennessee', 'TN', '2017-07-22 18:54:15'),
(43, 21, 'Texas', 'TX', '2017-07-22 18:54:15'),
(44, 21, 'Utah', 'UT', '2017-07-22 18:54:15'),
(45, 21, 'Vermont', 'VT', '2017-07-22 18:54:15'),
(46, 21, 'Virginia', 'VA', '2017-07-22 18:54:15'),
(47, 21, 'Washington', 'WA', '2017-07-22 18:54:15'),
(48, 21, 'West Virginia', 'WV', '2017-07-22 18:54:15'),
(49, 21, 'Wisconsin', 'WI', '2017-07-22 18:54:15'),
(50, 21, 'Wyoming', 'WY', '2017-07-22 18:54:15'),
(51, 21, 'Puerto Rico', 'PR', '2017-07-22 18:54:15'),
(52, 21, 'US Virgin Islands', 'VI', '2017-07-22 18:54:15'),
(53, 21, 'District of Columbia', 'DC', '2017-07-22 18:54:15'),
(54, 145, 'Aguascalientes', 'AGS', '2017-07-22 18:54:15'),
(55, 145, 'Baja California', 'BCN', '2017-07-22 18:54:15'),
(56, 145, 'Baja California Sur', 'BCS', '2017-07-22 18:54:15'),
(57, 145, 'Campeche', 'CAM', '2017-07-22 18:54:15'),
(58, 145, 'Chiapas', 'CHP', '2017-07-22 18:54:15'),
(59, 145, 'Chihuahua', 'CHH', '2017-07-22 18:54:15'),
(60, 145, 'Coahuila', 'COA', '2017-07-22 18:54:15'),
(61, 145, 'Colima', 'COL', '2017-07-22 18:54:15'),
(62, 145, 'Distrito Federal', 'DIF', '2017-07-22 18:54:15'),
(63, 145, 'Durango', 'DUR', '2017-07-22 18:54:15'),
(64, 145, 'Guanajuato', 'GUA', '2017-07-22 18:54:15'),
(65, 145, 'Guerrero', 'GRO', '2017-07-22 18:54:15'),
(66, 145, 'Hidalgo', 'HID', '2017-07-22 18:54:15'),
(67, 145, 'Jalisco', 'JAL', '2017-07-22 18:54:15'),
(68, 145, 'Estado de México', 'MEX', '2017-07-22 18:54:15'),
(69, 145, 'Michoacán', 'MIC', '2017-07-22 18:54:15'),
(70, 145, 'Morelos', 'MOR', '2017-07-22 18:54:15'),
(71, 145, 'Nayarit', 'NAY', '2017-07-22 18:54:15'),
(72, 145, 'Nuevo León', 'NLE', '2017-07-22 18:54:15'),
(73, 145, 'Oaxaca', 'OAX', '2017-07-22 18:54:15'),
(74, 145, 'Puebla', 'PUE', '2017-07-22 18:54:15'),
(75, 145, 'Querétaro', 'QUE', '2017-07-22 18:54:15'),
(76, 145, 'Quintana Roo', 'ROO', '2017-07-22 18:54:15'),
(77, 145, 'San Luis Potosí', 'SLP', '2017-07-22 18:54:15'),
(78, 145, 'Sinaloa', 'SIN', '2017-07-22 18:54:15'),
(79, 145, 'Sonora', 'SON', '2017-07-22 18:54:15'),
(80, 145, 'Tabasco', 'TAB', '2017-07-22 18:54:15'),
(81, 145, 'Tamaulipas', 'TAM', '2017-07-22 18:54:15'),
(82, 145, 'Tlaxcala', 'TLA', '2017-07-22 18:54:15'),
(83, 145, 'Veracruz', 'VER', '2017-07-22 18:54:15'),
(84, 145, 'Yucatán', 'YUC', '2017-07-22 18:54:15'),
(85, 145, 'Zacatecas', 'ZAC', '2017-07-22 18:54:15'),
(86, 4, 'Ontario', 'ON', '2017-07-22 18:54:15'),
(87, 4, 'Quebec', 'QC', '2017-07-22 18:54:15'),
(88, 4, 'British Columbia', 'BC', '2017-07-22 18:54:15'),
(89, 4, 'Alberta', 'AB', '2017-07-22 18:54:15'),
(90, 4, 'Manitoba', 'MB', '2017-07-22 18:54:15'),
(91, 4, 'Saskatchewan', 'SK', '2017-07-22 18:54:15'),
(92, 4, 'Nova Scotia', 'NS', '2017-07-22 18:54:15'),
(93, 4, 'New Brunswick', 'NB', '2017-07-22 18:54:15'),
(94, 4, 'Newfoundland and Labrador', 'NL', '2017-07-22 18:54:15'),
(95, 4, 'Prince Edward Island', 'PE', '2017-07-22 18:54:15'),
(96, 4, 'Northwest Territories', 'NT', '2017-07-22 18:54:15'),
(97, 4, 'Yukon', 'YT', '2017-07-22 18:54:15'),
(98, 4, 'Nunavut', 'NU', '2017-07-22 18:54:15'),
(99, 44, 'Buenos Aires', 'B', '2017-07-22 18:54:15'),
(100, 44, 'Catamarca', 'K', '2017-07-22 18:54:15'),
(101, 44, 'Chaco', 'H', '2017-07-22 18:54:15'),
(102, 44, 'Chubut', 'U', '2017-07-22 18:54:15'),
(103, 44, 'Ciudad de Buenos Aires', 'C', '2017-07-22 18:54:15'),
(104, 44, 'Córdoba', 'X', '2017-07-22 18:54:15'),
(105, 44, 'Corrientes', 'W', '2017-07-22 18:54:15'),
(106, 44, 'Entre Ríos', 'E', '2017-07-22 18:54:15'),
(107, 44, 'Formosa', 'P', '2017-07-22 18:54:15'),
(108, 44, 'Jujuy', 'Y', '2017-07-22 18:54:15'),
(109, 44, 'La Pampa', 'L', '2017-07-22 18:54:15'),
(110, 44, 'La Rioja', 'F', '2017-07-22 18:54:15'),
(111, 44, 'Mendoza', 'M', '2017-07-22 18:54:15'),
(112, 44, 'Misiones', 'N', '2017-07-22 18:54:15'),
(113, 44, 'Neuquén', 'Q', '2017-07-22 18:54:15'),
(114, 44, 'Río Negro', 'R', '2017-07-22 18:54:15'),
(115, 44, 'Salta', 'A', '2017-07-22 18:54:15'),
(116, 44, 'San Juan', 'J', '2017-07-22 18:54:15'),
(117, 44, 'San Luis', 'D', '2017-07-22 18:54:15'),
(118, 44, 'Santa Cruz', 'Z', '2017-07-22 18:54:15'),
(119, 44, 'Santa Fe', 'S', '2017-07-22 18:54:15'),
(120, 44, 'Santiago del Estero', 'G', '2017-07-22 18:54:15'),
(121, 44, 'Tierra del Fuego', 'V', '2017-07-22 18:54:15'),
(122, 44, 'Tucumán', 'T', '2017-07-22 18:54:15'),
(123, 10, 'Agrigento', 'AG', '2017-07-22 18:54:15'),
(124, 10, 'Alessandria', 'AL', '2017-07-22 18:54:15'),
(125, 10, 'Ancona', 'AN', '2017-07-22 18:54:15'),
(126, 10, 'Aosta', 'AO', '2017-07-22 18:54:15'),
(127, 10, 'Arezzo', 'AR', '2017-07-22 18:54:15'),
(128, 10, 'Ascoli Piceno', 'AP', '2017-07-22 18:54:15'),
(129, 10, 'Asti', 'AT', '2017-07-22 18:54:15'),
(130, 10, 'Avellino', 'AV', '2017-07-22 18:54:15'),
(131, 10, 'Bari', 'BA', '2017-07-22 18:54:15'),
(132, 10, 'Barletta-Andria-Trani', 'BT', '2017-07-22 18:54:15'),
(133, 10, 'Belluno', 'BL', '2017-07-22 18:54:15'),
(134, 10, 'Benevento', 'BN', '2017-07-22 18:54:15'),
(135, 10, 'Bergamo', 'BG', '2017-07-22 18:54:15'),
(136, 10, 'Biella', 'BI', '2017-07-22 18:54:15'),
(137, 10, 'Bologna', 'BO', '2017-07-22 18:54:15'),
(138, 10, 'Bolzano', 'BZ', '2017-07-22 18:54:15'),
(139, 10, 'Brescia', 'BS', '2017-07-22 18:54:15'),
(140, 10, 'Brindisi', 'BR', '2017-07-22 18:54:15'),
(141, 10, 'Cagliari', 'CA', '2017-07-22 18:54:15'),
(142, 10, 'Caltanissetta', 'CL', '2017-07-22 18:54:15'),
(143, 10, 'Campobasso', 'CB', '2017-07-22 18:54:15'),
(144, 10, 'Carbonia-Iglesias', 'CI', '2017-07-22 18:54:15'),
(145, 10, 'Caserta', 'CE', '2017-07-22 18:54:15'),
(146, 10, 'Catania', 'CT', '2017-07-22 18:54:15'),
(147, 10, 'Catanzaro', 'CZ', '2017-07-22 18:54:15'),
(148, 10, 'Chieti', 'CH', '2017-07-22 18:54:15'),
(149, 10, 'Como', 'CO', '2017-07-22 18:54:15'),
(150, 10, 'Cosenza', 'CS', '2017-07-22 18:54:15'),
(151, 10, 'Cremona', 'CR', '2017-07-22 18:54:15'),
(152, 10, 'Crotone', 'KR', '2017-07-22 18:54:15'),
(153, 10, 'Cuneo', 'CN', '2017-07-22 18:54:15'),
(154, 10, 'Enna', 'EN', '2017-07-22 18:54:15'),
(155, 10, 'Fermo', 'FM', '2017-07-22 18:54:15'),
(156, 10, 'Ferrara', 'FE', '2017-07-22 18:54:15'),
(157, 10, 'Firenze', 'FI', '2017-07-22 18:54:15'),
(158, 10, 'Foggia', 'FG', '2017-07-22 18:54:15'),
(159, 10, 'Forlì-Cesena', 'FC', '2017-07-22 18:54:15'),
(160, 10, 'Frosinone', 'FR', '2017-07-22 18:54:15'),
(161, 10, 'Genova', 'GE', '2017-07-22 18:54:15'),
(162, 10, 'Gorizia', 'GO', '2017-07-22 18:54:15'),
(163, 10, 'Grosseto', 'GR', '2017-07-22 18:54:15'),
(164, 10, 'Imperia', 'IM', '2017-07-22 18:54:15'),
(165, 10, 'Isernia', 'IS', '2017-07-22 18:54:15'),
(166, 10, 'L\'Aquila', 'AQ', '2017-07-22 18:54:15'),
(167, 10, 'La Spezia', 'SP', '2017-07-22 18:54:15'),
(168, 10, 'Latina', 'LT', '2017-07-22 18:54:15'),
(169, 10, 'Lecce', 'LE', '2017-07-22 18:54:15'),
(170, 10, 'Lecco', 'LC', '2017-07-22 18:54:15'),
(171, 10, 'Livorno', 'LI', '2017-07-22 18:54:15'),
(172, 10, 'Lodi', 'LO', '2017-07-22 18:54:15'),
(173, 10, 'Lucca', 'LU', '2017-07-22 18:54:15'),
(174, 10, 'Macerata', 'MC', '2017-07-22 18:54:15'),
(175, 10, 'Mantova', 'MN', '2017-07-22 18:54:15'),
(176, 10, 'Massa', 'MS', '2017-07-22 18:54:15'),
(177, 10, 'Matera', 'MT', '2017-07-22 18:54:15'),
(178, 10, 'Medio Campidano', 'VS', '2017-07-22 18:54:15'),
(179, 10, 'Messina', 'ME', '2017-07-22 18:54:15'),
(180, 10, 'Milano', 'MI', '2017-07-22 18:54:15'),
(181, 10, 'Modena', 'MO', '2017-07-22 18:54:15'),
(182, 10, 'Monza e della Brianza', 'MB', '2017-07-22 18:54:15'),
(183, 10, 'Napoli', 'NA', '2017-07-22 18:54:15'),
(184, 10, 'Novara', 'NO', '2017-07-22 18:54:15'),
(185, 10, 'Nuoro', 'NU', '2017-07-22 18:54:15'),
(186, 10, 'Ogliastra', 'OG', '2017-07-22 18:54:15'),
(187, 10, 'Olbia-Tempio', 'OT', '2017-07-22 18:54:15'),
(188, 10, 'Oristano', 'OR', '2017-07-22 18:54:15'),
(189, 10, 'Padova', 'PD', '2017-07-22 18:54:15'),
(190, 10, 'Palermo', 'PA', '2017-07-22 18:54:15'),
(191, 10, 'Parma', 'PR', '2017-07-22 18:54:15'),
(192, 10, 'Pavia', 'PV', '2017-07-22 18:54:15'),
(193, 10, 'Perugia', 'PG', '2017-07-22 18:54:15'),
(194, 10, 'Pesaro-Urbino', 'PU', '2017-07-22 18:54:15'),
(195, 10, 'Pescara', 'PE', '2017-07-22 18:54:15'),
(196, 10, 'Piacenza', 'PC', '2017-07-22 18:54:15'),
(197, 10, 'Pisa', 'PI', '2017-07-22 18:54:15'),
(198, 10, 'Pistoia', 'PT', '2017-07-22 18:54:15'),
(199, 10, 'Pordenone', 'PN', '2017-07-22 18:54:15'),
(200, 10, 'Potenza', 'PZ', '2017-07-22 18:54:15'),
(201, 10, 'Prato', 'PO', '2017-07-22 18:54:15'),
(202, 10, 'Ragusa', 'RG', '2017-07-22 18:54:15'),
(203, 10, 'Ravenna', 'RA', '2017-07-22 18:54:15'),
(204, 10, 'Reggio Calabria', 'RC', '2017-07-22 18:54:15'),
(205, 10, 'Reggio Emilia', 'RE', '2017-07-22 18:54:15'),
(206, 10, 'Rieti', 'RI', '2017-07-22 18:54:15'),
(207, 10, 'Rimini', 'RN', '2017-07-22 18:54:15'),
(208, 10, 'Roma', 'RM', '2017-07-22 18:54:15'),
(209, 10, 'Rovigo', 'RO', '2017-07-22 18:54:15'),
(210, 10, 'Salerno', 'SA', '2017-07-22 18:54:15'),
(211, 10, 'Sassari', 'SS', '2017-07-22 18:54:15'),
(212, 10, 'Savona', 'SV', '2017-07-22 18:54:15'),
(213, 10, 'Siena', 'SI', '2017-07-22 18:54:15'),
(214, 10, 'Siracusa', 'SR', '2017-07-22 18:54:15'),
(215, 10, 'Sondrio', 'SO', '2017-07-22 18:54:15'),
(216, 10, 'Taranto', 'TA', '2017-07-22 18:54:15'),
(217, 10, 'Teramo', 'TE', '2017-07-22 18:54:15'),
(218, 10, 'Terni', 'TR', '2017-07-22 18:54:15'),
(219, 10, 'Torino', 'TO', '2017-07-22 18:54:15'),
(220, 10, 'Trapani', 'TP', '2017-07-22 18:54:15'),
(221, 10, 'Trento', 'TN', '2017-07-22 18:54:15'),
(222, 10, 'Treviso', 'TV', '2017-07-22 18:54:15'),
(223, 10, 'Trieste', 'TS', '2017-07-22 18:54:15'),
(224, 10, 'Udine', 'UD', '2017-07-22 18:54:15'),
(225, 10, 'Varese', 'VA', '2017-07-22 18:54:15'),
(226, 10, 'Venezia', 'VE', '2017-07-22 18:54:15'),
(227, 10, 'Verbano-Cusio-Ossola', 'VB', '2017-07-22 18:54:15'),
(228, 10, 'Vercelli', 'VC', '2017-07-22 18:54:15'),
(229, 10, 'Verona', 'VR', '2017-07-22 18:54:15'),
(230, 10, 'Vibo Valentia', 'VV', '2017-07-22 18:54:15'),
(231, 10, 'Vicenza', 'VI', '2017-07-22 18:54:15'),
(232, 10, 'Viterbo', 'VT', '2017-07-22 18:54:15'),
(233, 111, 'Aceh', 'AC', '2017-07-22 18:54:15'),
(234, 111, 'Bali', 'BA', '2017-07-22 18:54:15'),
(235, 111, 'Bangka', 'BB', '2017-07-22 18:54:15'),
(236, 111, 'Banten', 'BT', '2017-07-22 18:54:15'),
(237, 111, 'Bengkulu', 'BE', '2017-07-22 18:54:15'),
(238, 111, 'Central Java', 'JT', '2017-07-22 18:54:15'),
(239, 111, 'Central Kalimantan', 'KT', '2017-07-22 18:54:15'),
(240, 111, 'Central Sulawesi', 'ST', '2017-07-22 18:54:15'),
(241, 111, 'Coat of arms of East Java', 'JI', '2017-07-22 18:54:15'),
(242, 111, 'East kalimantan', 'KI', '2017-07-22 18:54:15'),
(243, 111, 'East Nusa Tenggara', 'NT', '2017-07-22 18:54:15'),
(244, 111, 'Lambang propinsi', 'GO', '2017-07-22 18:54:15'),
(245, 111, 'Jakarta', 'JK', '2017-07-22 18:54:15'),
(246, 111, 'Jambi', 'JA', '2017-07-22 18:54:15'),
(247, 111, 'Lampung', 'LA', '2017-07-22 18:54:15'),
(248, 111, 'Maluku', 'MA', '2017-07-22 18:54:15'),
(249, 111, 'North Maluku', 'MU', '2017-07-22 18:54:15'),
(250, 111, 'North Sulawesi', 'SA', '2017-07-22 18:54:15'),
(251, 111, 'North Sumatra', 'SU', '2017-07-22 18:54:15'),
(252, 111, 'Papua', 'PA', '2017-07-22 18:54:15'),
(253, 111, 'Riau', 'RI', '2017-07-22 18:54:15'),
(254, 111, 'Lambang Riau', 'KR', '2017-07-22 18:54:15'),
(255, 111, 'Southeast Sulawesi', 'SG', '2017-07-22 18:54:15'),
(256, 111, 'South Kalimantan', 'KS', '2017-07-22 18:54:15'),
(257, 111, 'South Sulawesi', 'SN', '2017-07-22 18:54:15'),
(258, 111, 'South Sumatra', 'SS', '2017-07-22 18:54:15'),
(259, 111, 'West Java', 'JB', '2017-07-22 18:54:15'),
(260, 111, 'West Kalimantan', 'KB', '2017-07-22 18:54:15'),
(261, 111, 'West Nusa Tenggara', 'NB', '2017-07-22 18:54:15'),
(262, 111, 'Lambang Provinsi Papua Barat', 'PB', '2017-07-22 18:54:15'),
(263, 111, 'West Sulawesi', 'SR', '2017-07-22 18:54:15'),
(264, 111, 'West Sumatra', 'SB', '2017-07-22 18:54:15'),
(265, 111, 'Yogyakarta', 'YO', '2017-07-22 18:54:15'),
(266, 11, 'Aichi', '23', '2017-07-22 18:54:15'),
(267, 11, 'Akita', '05', '2017-07-22 18:54:15'),
(268, 11, 'Aomori', '02', '2017-07-22 18:54:15'),
(269, 11, 'Chiba', '12', '2017-07-22 18:54:15'),
(270, 11, 'Ehime', '38', '2017-07-22 18:54:15'),
(271, 11, 'Fukui', '18', '2017-07-22 18:54:15'),
(272, 11, 'Fukuoka', '40', '2017-07-22 18:54:15'),
(273, 11, 'Fukushima', '07', '2017-07-22 18:54:15'),
(274, 11, 'Gifu', '21', '2017-07-22 18:54:15'),
(275, 11, 'Gunma', '10', '2017-07-22 18:54:15'),
(276, 11, 'Hiroshima', '34', '2017-07-22 18:54:15'),
(277, 11, 'Hokkaido', '01', '2017-07-22 18:54:15'),
(278, 11, 'Hyogo', '28', '2017-07-22 18:54:15'),
(279, 11, 'Ibaraki', '08', '2017-07-22 18:54:15'),
(280, 11, 'Ishikawa', '17', '2017-07-22 18:54:15'),
(281, 11, 'Iwate', '03', '2017-07-22 18:54:15'),
(282, 11, 'Kagawa', '37', '2017-07-22 18:54:15'),
(283, 11, 'Kagoshima', '46', '2017-07-22 18:54:15'),
(284, 11, 'Kanagawa', '14', '2017-07-22 18:54:15'),
(285, 11, 'Kochi', '39', '2017-07-22 18:54:15'),
(286, 11, 'Kumamoto', '43', '2017-07-22 18:54:15'),
(287, 11, 'Kyoto', '26', '2017-07-22 18:54:15'),
(288, 11, 'Mie', '24', '2017-07-22 18:54:15'),
(289, 11, 'Miyagi', '04', '2017-07-22 18:54:15'),
(290, 11, 'Miyazaki', '45', '2017-07-22 18:54:15'),
(291, 11, 'Nagano', '20', '2017-07-22 18:54:15'),
(292, 11, 'Nagasaki', '42', '2017-07-22 18:54:15'),
(293, 11, 'Nara', '29', '2017-07-22 18:54:15'),
(294, 11, 'Niigata', '15', '2017-07-22 18:54:15'),
(295, 11, 'Oita', '44', '2017-07-22 18:54:15'),
(296, 11, 'Okayama', '33', '2017-07-22 18:54:15'),
(297, 11, 'Okinawa', '47', '2017-07-22 18:54:15'),
(298, 11, 'Osaka', '27', '2017-07-22 18:54:15'),
(299, 11, 'Saga', '41', '2017-07-22 18:54:15'),
(300, 11, 'Saitama', '11', '2017-07-22 18:54:15'),
(301, 11, 'Shiga', '25', '2017-07-22 18:54:15'),
(302, 11, 'Shimane', '32', '2017-07-22 18:54:15'),
(303, 11, 'Shizuoka', '22', '2017-07-22 18:54:15'),
(304, 11, 'Tochigi', '09', '2017-07-22 18:54:15'),
(305, 11, 'Tokushima', '36', '2017-07-22 18:54:15'),
(306, 11, 'Tokyo', '13', '2017-07-22 18:54:15'),
(307, 11, 'Tottori', '31', '2017-07-22 18:54:15'),
(308, 11, 'Toyama', '16', '2017-07-22 18:54:15'),
(309, 11, 'Wakayama', '30', '2017-07-22 18:54:15'),
(310, 11, 'Yamagata', '06', '2017-07-22 18:54:15'),
(311, 11, 'Yamaguchi', '35', '2017-07-22 18:54:15'),
(312, 11, 'Yamanashi', '19', '2017-07-22 18:54:15'),
(313, 243, 'Andhra Pradesh', 'AP', '2017-07-22 18:54:15'),
(314, 243, 'Arunachal Pradesh', 'AR', '2017-07-22 18:54:15'),
(315, 243, 'Assam', 'AS', '2017-07-22 18:54:15'),
(316, 243, 'Bihar', 'BR', '2017-07-22 18:54:15'),
(317, 243, 'Chhattisgarh', 'CT', '2017-07-22 18:54:15'),
(318, 243, 'Goa', 'GA', '2017-07-22 18:54:15'),
(319, 243, 'Gujarat', 'GJ', '2017-07-22 18:54:15'),
(320, 243, 'Haryana', 'HR', '2017-07-22 18:54:15'),
(321, 243, 'Himachal Pradesh', 'HP', '2017-07-22 18:54:15'),
(322, 243, 'Jammu and Kashmir', 'JK', '2017-07-22 18:54:15'),
(323, 243, 'Jharkhand', 'JH', '2017-07-22 18:54:15'),
(324, 243, 'Karnataka', 'KA', '2017-07-22 18:54:15'),
(325, 243, 'Kerala', 'KL', '2017-07-22 18:54:15'),
(326, 243, 'Madhya Pradesh', 'MP', '2017-07-22 18:54:15'),
(327, 243, 'Maharashtra', 'MH', '2017-07-22 18:54:15'),
(328, 243, 'Manipur', 'MN', '2017-07-22 18:54:15'),
(329, 243, 'Meghalaya', 'ML', '2017-07-22 18:54:15'),
(330, 243, 'Mizoram', 'MZ', '2017-07-22 18:54:15'),
(331, 243, 'Nagaland', 'NL', '2017-07-22 18:54:15'),
(332, 243, 'Orissa', 'OR', '2017-07-22 18:54:15'),
(333, 243, 'Punjab', 'PB', '2017-07-22 18:54:15'),
(334, 243, 'Rajasthan', 'RJ', '2017-07-22 18:54:15'),
(335, 243, 'Sikkim', 'SK', '2017-07-22 18:54:15'),
(336, 243, 'Tamil Nadu', 'TN', '2017-07-22 18:54:15'),
(337, 243, 'Tripura', 'TR', '2017-07-22 18:54:15'),
(338, 243, 'Uttaranchal', 'UL', '2017-07-22 18:54:15'),
(339, 243, 'Uttar Pradesh', 'UP', '2017-07-22 18:54:15'),
(340, 243, 'West Bengal', 'WB', '2017-07-22 18:54:15'),
(341, 243, 'Andaman and Nicobar Islands', 'AN', '2017-07-22 18:54:15'),
(342, 243, 'Chandigarh', 'CH', '2017-07-22 18:54:15'),
(343, 243, 'Dadra and Nagar Haveli', 'DN', '2017-07-22 18:54:15'),
(344, 243, 'Daman and Diu', 'DD', '2017-07-22 18:54:15'),
(345, 243, 'Delhi', 'DL', '2017-07-22 18:54:15'),
(346, 243, 'Lakshadweep', 'LD', '2017-07-22 18:54:15'),
(347, 243, 'Pondicherry', 'PY', '2017-07-22 18:54:15'),
(348, 3, 'Albania State', 'ALB', '2017-07-22 18:54:15'),
(350, 208, 'Kowloon', 'Kowloon', '2017-07-22 18:54:15'),
(351, 208, 'New Territories', 'NTH', '2017-07-22 18:54:15'),
(352, 208, 'Hong Kong Iceland', 'HKI', '2017-07-22 18:54:15'),
(353, 162, 'Singapore state', 'SST', '2017-07-22 18:54:15'),
(355, 246, 'Test State  Test State   Test State', 'Test State', '2017-08-31 11:42:59');

-- --------------------------------------------------------

--
-- Table structure for table `iw_static_content`
--

CREATE TABLE `iw_static_content` (
  `static_content_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_static_content`
--

INSERT INTO `iw_static_content` (`static_content_id`, `title`, `description`, `alias`, `added_date`) VALUES
(1, 'Hello', '<p>Here at Graduate Projects we promote opportunities for students, graduates, researchers and other early-career professionals to apply their skills and expertise to projects, challenges, innovations or other tasks and activities in the workplace. The opportunities may be paid, educational or voluntary. &nbsp;We also promote activities for educational and professional development, for example conferences and mentoring. We aim to enrich the capabilities and prospects of students, researchers and early-career talent by facilitating links with a wide range of organisations that offer great training and professional opportunities and value contemporary skills and thinking in their workplaces. &nbsp;</p>\r\n\r\n<p>The opportunities we advertise are provided by a wide variety of organisations (called providers). They may be businesses, education providers, research organisations, government departments, community or professional associations. &nbsp;Each provider has an organisational profile and their scope of work and list of posts can be viewed on it. Graduate Projects provides a great way for organisations to showcase their projects, research, innovations or other work and attract promising talent who can contribute towards them.</p>\r\n\r\n<p>Graduate Projects aims to facilitate collaborations. For example, this could be through consultancies led by a professor, research partnerships or academic-industry project assignments. Collaboration between business and education is becoming more important these days, especially in research and innovation in areas such as science, technology and medicine. These collaborations often take the form of projects, research programs and partnership enterprises. There are great opportunities for organisations to showcase and promote such collaborations through Graduate Projects and attract developing talent and expertise.</p>\r\n\r\n<p>&nbsp;</p>', 'about', '2017-11-30 23:03:09'),
(2, 'Terms & Conditions', '<p>The standard Lorem Ipsum passage, used since the 1500s &quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p><strong>Excepteur sint occaecat cupidatat non proident, </strong></p>\r\n\r\n<p>sunt in culpa qui officia deserunt mollit anim id est laborum.&quot; Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC &quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<p><strong>1914 translation by H. Rackham </strong></p>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'terms', '2017-10-12 00:24:54'),
(3, 'Privacy Policy', '<p>The standard Lorem Ipsum passage, used since the 1500s &quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p><strong>Excepteur sint occaecat cupidatat non proident, </strong></p>\r\n\r\n<p>sunt in culpa qui officia deserunt mollit anim id est laborum.&quot; Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC &quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<p><strong>1914 translation by H. Rackham </strong></p>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'privacy', '2017-10-12 00:25:00');

-- --------------------------------------------------------

--
-- Table structure for table `iw_status`
--

CREATE TABLE `iw_status` (
  `status_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_status`
--

INSERT INTO `iw_status` (`status_id`, `status`) VALUES
(1, 'Active'),
(2, 'Inactive'),
(3, 'Pending'),
(4, 'Suspend'),
(5, 'Disabled'),
(6, 'Enabled'),
(7, 'Archive');

-- --------------------------------------------------------

--
-- Table structure for table `iw_student_academic_supervisor`
--

CREATE TABLE `iw_student_academic_supervisor` (
  `student_academic_supervisor_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `visibility` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_student_academic_supervisor`
--

INSERT INTO `iw_student_academic_supervisor` (`student_academic_supervisor_id`, `user_id`, `description`, `visibility`, `added_date`) VALUES
(1, 7, 'My academics supervisor is Dr. John Smith who is a professor in computer science at National University of Singapore', '1', '2017-08-04 12:46:24'),
(2, 7, 'My academics supervisor is Dr. John Smith who is a professor in computer science at National University of Australia', '1', '2017-08-04 12:46:38'),
(3, 31, '<p>Consider the following scenario. You create a new e-mail message in Microsoft Dynamics CRM 3.0 that contains an&nbsp;<em>attachment</em>. As expected, a temporary copy&nbsp;...</p>', '1', '2017-09-01 05:52:18'),
(4, 10, '<p>Add Supervisor Details</p>', '1', '2017-10-07 06:37:36'),
(6, 45, '<p>ASDFGHFDHSFGR</p>', '1', '2017-10-13 11:58:28');

-- --------------------------------------------------------

--
-- Table structure for table `iw_student_document`
--

CREATE TABLE `iw_student_document` (
  `student_document_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `document` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `original_document` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `visibility` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_student_document`
--

INSERT INTO `iw_student_document` (`student_document_id`, `user_id`, `document`, `original_document`, `visibility`, `created_date`) VALUES
(9, 31, 'DOC-1504258447.doc', 'SampleDOCFile_100kb.doc', '0', '2017-09-01 09:34:07'),
(18, 45, 'PDF-1507899830.pdf', 'demoform1.pdf', '1', '2017-10-13 13:03:50'),
(16, 7, 'PDF-1507897266.pdf', 'ERR Diagram of Placement & Supervisor.pdf', '1', '2017-10-13 12:21:07'),
(19, 41, 'PDF-1509612257.pdf', 'fr-Future-Of-Work-report.pdf', '1', '2017-11-02 08:44:17');

-- --------------------------------------------------------

--
-- Table structure for table `iw_student_education`
--

CREATE TABLE `iw_student_education` (
  `student_education_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `institute` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `achievement` text COLLATE utf8_unicode_ci NOT NULL,
  `organisational_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `end_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `visibility` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_student_education`
--

INSERT INTO `iw_student_education` (`student_education_id`, `user_id`, `institute`, `subject`, `level`, `achievement`, `organisational_email`, `start_date`, `end_date`, `country_id`, `visibility`, `created_date`) VALUES
(2, 7, 'University ABC', 'Maths and Economics', 2, 'Graduated with Distinction', NULL, '2012', '2015', 10, '1', '2017-08-18 02:00:23'),
(4, 7, 'University of Singapore', 'Maths', 2, '<p>Graduate with Honours <span style="background-color:#f1c40f">(First Class)</span></p>', NULL, '2014', '2016', 13, '1', '2017-08-24 02:15:33'),
(5, 7, 'Open University', 'Maths', 2, '<p>Graduated with GPA 5.5. and award for best student.&nbsp;</p>', NULL, '2013', '2015', 13, '1', '2017-09-01 02:21:03'),
(6, 31, 'NIT', 'ECE', 2, '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', NULL, '2011', '2015', 243, '1', '2017-09-01 04:19:51'),
(8, 8, 'University of Singapore', 'Maths', 3, '<ol>\n	<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rhoncus lectus ut ipsum dictum faucibus.</li>\n	<li>Nunc consectetur, est fringilla placerat eleifend, dolor nibh porta ipsum, non blandit urna odio ac tortor.</li>\n	<li>Nunc vitae gravida augue, non sollicitudin sapien. Pellentesque velit lectus, hendrerit a consequat nec, ullamcorper vel risus.</li>\n	<li>Sed elit sem, rhoncus at dignissim at, congue nec odio. Nam hendrerit eros vitae sollicitudin tempor.</li>\n	<li>Vestibulum interdum nisl sed erat semper interdum. Donec iaculis sapien sit amet leo accumsan convallis.</li>\n</ol>', NULL, '2015', '2020', 162, '0', '2017-09-06 06:10:01'),
(9, 10, 'University of Singapore', 'Science', 3, '<ul>\n	<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rhoncus lectus ut ipsum dictum faucibus.</li>\n	<li>Nunc consectetur, est fringilla placerat eleifend, dolor nibh porta ipsum, non blandit urna odio ac tortor. Nunc vitae gravida augue, non sollicitudin sapien. Pellentesque velit lectus, hendrerit a consequat nec, ullamcorper vel risus.</li>\n	<li>Sed elit sem, rhoncus at dignissim at, congue nec odio. Nam hendrerit eros vitae sollicitudin tempor. Vestibulum interdum nisl sed erat semper interdum. Donec iaculis sapien sit amet leo accumsan convallis.</li>\n</ul>', NULL, '2013', '2019', 162, '1', '2017-09-06 06:12:05'),
(10, 40, 'Flinders University', 'Business', 2, '<p>My bachelor modules included marketing, economics, finance, organisational culture and HR.</p>', NULL, '2013', '2016', 13, '1', '2017-09-11 00:04:12'),
(11, 40, 'Adelaide University', 'Commerce', 3, '<p>I achieved an MA in Commerce and graduated with Credit.&nbsp;</p>', NULL, '2016', '2017', 13, '1', '2017-09-11 00:06:02'),
(12, 39, 'York University', 'IT', 2, '<p>1st class honours</p>', NULL, '2012', '2014', 189, '1', '2017-09-11 00:39:23'),
(13, 39, 'Leeds University', 'Network Systems', 3, '<p>Specialised in security of networks</p>', NULL, '2016', '2016', 189, '1', '2017-09-11 00:40:24'),
(14, 41, 'Cambridge University', 'Biology', 2, '<p>Graduated with 2nd class Honours with specialisation in Marine Biology</p>', NULL, '2005', '2008', 189, '1', '2017-09-11 01:15:46'),
(15, 45, 'Amity', 'PCM', 1, '<p>Graduate</p>', NULL, '2011', '2015', 2, '1', '2017-10-13 11:56:44'),
(16, 41, 'ABC University', 'Maths', 2, '<p>Distinction in number theory.</p>', NULL, '2012', '2015', 3, '1', '2017-11-02 08:40:40');

-- --------------------------------------------------------

--
-- Table structure for table `iw_student_employment`
--

CREATE TABLE `iw_student_employment` (
  `student_employment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `employer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `end_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `responsibility` text COLLATE utf8_unicode_ci NOT NULL,
  `achievement` text COLLATE utf8_unicode_ci NOT NULL,
  `visibility` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_student_employment`
--

INSERT INTO `iw_student_employment` (`student_employment_id`, `user_id`, `employer`, `position`, `start_date`, `end_date`, `country_id`, `state_id`, `city_id`, `responsibility`, `achievement`, `visibility`, `created_date`) VALUES
(10, 41, 'Chemical Research Institute', 'Researcher', '2016', '2017', 190, NULL, NULL, '<p>researched new methods in biochemistry processes</p>', '<p>Developed new technique in biochemistry analysis</p>', '1', '2017-09-11 01:21:18'),
(11, 41, 'Chemical Research Institute', 'Researcher', '2016', '2017', 190, NULL, NULL, '<p>researched new methods in biochemistry processes</p>', '<p>Developed new technique in biochemistry analysis</p>', '1', '2017-09-11 01:21:18'),
(4, 7, 'Company Y', 'Product Engineer', '2012', '2018', 16, NULL, NULL, '<ul>\n	<li>Managing staff</li>\n	<li>Operations</li>\n	<li>Finance</li>\n</ul>', '<ul>\n	<li>Hired new sales team</li>\n	<li>Increased sales by 30%</li>\n	<li><span style="color:#e74c3c">Won &nbsp;employee of the year award</span></li>\n</ul>', '1', '2017-08-17 13:25:00'),
(6, 31, 'Singsys', 'Engineer', '2017', '2018', 243, NULL, NULL, '<p>Consider the following scenario. You create a new e-mail message in Microsoft Dynamics CRM 3.0 that contains an&nbsp;<em>attachment</em>. As expected, a temporary copy&nbsp;...</p>', '<p>Consider the following scenario. You create a new e-mail message in Microsoft Dynamics CRM 3.0 that contains an&nbsp;<em>attachment</em>. As expected, a temporary copy&nbsp;...</p>', '1', '2017-09-01 05:56:51'),
(7, 40, 'David Jones', 'Sales Assistant', '2016', '2016', 13, NULL, NULL, '<p>Assisted customers with purchases</p>', '<p>Sold on average $2000 worth of goods per week.&nbsp;</p>', '1', '2017-09-11 00:13:03'),
(8, 40, 'David Jones', 'Sales Manager', '2017', '2017', 13, NULL, NULL, '<p>I was promoted to Sales Manager for the Shoe Department.&nbsp;</p>\n\n<p>Supervised 3 other staff.&nbsp;</p>', '<p>Turn over increase 10% in 3 months</p>', '1', '2017-09-11 00:14:47'),
(9, 39, 'Microsoft', 'Network Developer', '2016', '2017', 189, NULL, NULL, '<p>managed security systems of clients</p>', '<p>no major security breaches</p>', '1', '2017-09-11 00:44:03'),
(12, 10, 'Employment', 'Employment Details', '2017', '2022', 104, NULL, NULL, '<p>Duties</p>', '<p>Achievements</p>', '1', '2017-10-07 06:35:42'),
(13, 45, 'Singsys', 'Analyst', '2017', '2018', 2, NULL, NULL, '<p>tes</p>', '<p>tset</p>', '1', '2017-10-13 11:58:15');

-- --------------------------------------------------------

--
-- Table structure for table `iw_student_favorite`
--

CREATE TABLE `iw_student_favorite` (
  `student_favorite_id` int(11) NOT NULL,
  `supervisor_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_student_favorite`
--

INSERT INTO `iw_student_favorite` (`student_favorite_id`, `supervisor_id`, `student_id`, `created_date`) VALUES
(1, 3, 8, '2017-09-06 06:45:05'),
(4, 9, 10, '2017-09-09 12:56:59'),
(11, 3, 7, '2017-10-07 10:52:42'),
(9, 9, 40, '2017-09-26 07:43:44'),
(10, 9, 7, '2017-09-26 07:45:01'),
(12, 4, 39, '2017-10-09 00:10:57'),
(13, 4, 40, '2017-10-09 04:30:25'),
(16, 50, 7, '2017-10-13 06:55:40'),
(22, 44, 7, '2017-11-02 02:58:24');

-- --------------------------------------------------------

--
-- Table structure for table `iw_student_favorite_placement`
--

CREATE TABLE `iw_student_favorite_placement` (
  `student_favorite_placement_id` int(11) NOT NULL,
  `placement_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_student_favorite_placement`
--

INSERT INTO `iw_student_favorite_placement` (`student_favorite_placement_id`, `placement_id`, `student_id`, `created_date`) VALUES
(1, 4, 7, '2017-09-15 07:31:33'),
(2, 2, 7, '2017-09-15 07:31:41'),
(3, 9, 7, '2017-09-15 07:31:47'),
(4, 3, 7, '2017-09-15 11:02:12'),
(5, 33, 7, '2017-09-15 11:02:16'),
(6, 31, 7, '2017-09-15 11:02:51'),
(22, 102, 41, '2017-11-24 01:55:47'),
(8, 1, 7, '2017-10-04 03:48:23'),
(9, 51, 7, '2017-10-11 13:02:27'),
(10, 9, 45, '2017-10-13 04:27:23'),
(26, 111, 39, '2017-12-17 07:25:45'),
(27, 111, 40, '2017-12-17 08:18:55'),
(16, 93, 7, '2017-10-28 11:12:23'),
(24, 104, 39, '2017-11-27 23:26:51'),
(25, 104, 40, '2017-11-27 23:27:55'),
(30, 3, 64, '2018-02-10 04:09:45'),
(31, 2, 64, '2018-02-10 04:14:23');

-- --------------------------------------------------------

--
-- Table structure for table `iw_student_feedback`
--

CREATE TABLE `iw_student_feedback` (
  `student_feedback_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `supervisor_id` int(11) NOT NULL,
  `placement_id` int(11) NOT NULL,
  `feedback` text COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `visibility` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_student_feedback`
--

INSERT INTO `iw_student_feedback` (`student_feedback_id`, `user_id`, `supervisor_id`, `placement_id`, `feedback`, `rating`, `visibility`, `created_date`) VALUES
(1, 7, 3, 2, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.', 3, '1', '2017-09-22 06:22:15'),
(4, 39, 4, 9, 'good project', 2, '1', '2017-10-15 08:17:05'),
(5, 39, 4, 9, '2nd comment', 5, '1', '2017-10-15 08:33:46'),
(50, 39, 4, 10, 'feedback test', 4, '1', '2017-12-07 22:50:01'),
(7, 10, 3, 97, 'Feedback to Pankaj\'s Pant for Kriti\'s Sub Team', 4, '0', '2017-11-13 13:02:10'),
(8, 10, 3, 97, 'Feedback to Pankaj\'s', 3, '0', '2017-11-13 13:07:39'),
(9, 10, 3, 97, 'Again a feedback', 4, '0', '2017-11-13 13:10:26'),
(10, 40, 44, 94, 'feedback eng2', 4, '0', '2017-11-14 03:52:20'),
(11, 7, 3, 97, 'Individual Feedback to Kriti', 5, '0', '2017-11-14 06:22:35'),
(25, 40, 44, 99, 'test on 18th', 4, '0', '2017-11-18 11:21:12'),
(24, 39, 44, 99, 'test on 18th', 4, '0', '2017-11-18 11:20:43'),
(23, 41, 44, 99, 'test feedback on 18th', 4, '0', '2017-11-18 11:19:46'),
(22, 40, 44, 99, 'test feedback to leader', 4, '0', '2017-11-17 01:29:13'),
(21, 39, 44, 99, 'test feedback', 4, '0', '2017-11-17 01:28:41'),
(20, 41, 44, 99, 'test feedback from Mary', 4, '0', '2017-11-17 01:28:18'),
(19, 40, 44, 92, 'feedback test for John', 4, '0', '2017-11-16 05:37:02'),
(26, 41, 44, 94, '21st Nov test', 4, '0', '2017-11-20 23:20:35'),
(27, 40, 44, 94, 'feedback 21st Nov', 4, '0', '2017-11-20 23:22:59'),
(28, 39, 44, 94, 'feedback test 21st Nov', 4, '0', '2017-11-20 23:23:30'),
(29, 40, 44, 94, 'feedback on 22nd', 4, '0', '2017-11-21 23:06:25'),
(30, 40, 44, 94, 'Individual Feedback', 4, '0', '2017-11-22 04:33:58'),
(31, 40, 4, 10, 'test', 4, '0', '2017-11-22 23:51:47'),
(32, 40, 4, 10, 'feedback TL', 4, '0', '2017-11-23 00:17:51'),
(33, 40, 44, 94, 'test feedback on 23rd', 4, '0', '2017-11-23 00:35:29'),
(34, 39, 4, 10, 'test feedback', 4, '0', '2017-11-23 00:49:29'),
(35, 41, 4, 10, 'send on the 23rd', 4, '0', '2017-11-23 00:57:24'),
(36, 7, 4, 10, 'Feedback to Kriti for Data Analysis 2', 3, '0', '2017-11-23 05:55:53'),
(37, 10, 4, 10, 'Feedback to Pankaj for Data Analysis 2', 4, '0', '2017-11-23 05:56:27'),
(38, 13, 4, 10, 'Feedback to Aatif for Data Analysis 2', 5, '0', '2017-11-23 05:56:39'),
(39, 40, 3, 103, 'Feedback to John Teste for Quality Pointers', 3, '0', '2017-11-23 07:23:01'),
(40, 39, 3, 103, 'Feedback to Fred for Quality Pointers', 4, '0', '2017-11-23 07:38:59'),
(41, 41, 3, 103, 'Feedback to David for Quality Pointers', 4, '0', '2017-11-23 07:39:18'),
(42, 39, 4, 10, 'fred test 23rd from Duncan', 4, '0', '2017-11-23 08:24:54'),
(43, 41, 4, 10, 'david test from Duncan 23rd', 4, '1', '2017-11-23 08:25:13'),
(44, 40, 4, 10, 'john test from duncan 23rd', 4, '0', '2017-11-23 08:25:33'),
(45, 41, 44, 95, 'feedback to David on 24th', 4, '1', '2017-11-24 07:28:08'),
(46, 40, 44, 105, 'test', 4, '0', '2017-11-29 04:01:58'),
(47, 41, 44, 105, 'test', 4, '1', '2017-11-29 04:02:14'),
(48, 39, 44, 105, 'test', 4, '0', '2017-11-29 04:04:00'),
(49, 39, 44, 105, 'test', 4, '0', '2017-11-29 04:13:41');

-- --------------------------------------------------------

--
-- Table structure for table `iw_student_info`
--

CREATE TABLE `iw_student_info` (
  `student_info_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `visibility` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_student_info`
--

INSERT INTO `iw_student_info` (`student_info_id`, `title`, `description`, `user_id`, `visibility`, `created_date`) VALUES
(5, 'Other skills', '<p>I am experienced in using <strong>Microsoft Office </strong>particularly the following applications:</p>\n\n<p>- Excel</p>\n\n<p>-Word</p>\n\n<p>-Project</p>\n\n<p>-Office</p>\n\n<p>I have excellent keyboard skills and can use full functions of these applications.&nbsp;</p>', 7, '1', '2017-08-19 02:47:21'),
(7, 'My interest', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 31, '1', '2017-09-01 04:18:56'),
(8, 'Summary of Skills', '<p>I have 10 years work experience in sales of consumer goods. This has included acting as Manager of a department in the David Jones retail store. I understand how&nbsp;to deal with customers and have good service skills.&nbsp;</p>', 40, '1', '2017-09-10 23:57:14'),
(9, 'Computer Skills', '<p>I am familiar with all the Microsoft computer applications including</p>\n\n<ul>\n	<li>Word</li>\n	<li>Excel</li>\n	<li>Project</li>\n</ul>', 40, '1', '2017-09-11 00:00:41'),
(10, 'outgoing, enthusiastic and capable employee', '<p>Educated to Masters level and with 10 years work experience, I have great transferable skills.</p>', 39, '1', '2017-09-11 00:37:33'),
(11, 'Introduction', '<p>New Introduction</p>', 10, '1', '2017-10-07 06:31:28'),
(12, 'intro', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 45, '1', '2017-10-12 11:48:56'),
(13, 'Student', '<p>hi</p>', 58, '1', '2017-10-13 06:27:32'),
(14, 'Key Skills', '<p>My key skills include:</p>\n\n<ul>\n	<li>coding</li>\n	<li>systems development</li>\n</ul>', 41, '1', '2017-11-02 08:38:51'),
(15, 'New Skills', '<p>I can use photoshop</p>', 41, '1', '2017-12-06 00:25:17'),
(16, 'next intro', '<p>testing and testing&nbsp;</p>', 39, '1', '2017-12-17 08:49:24');

-- --------------------------------------------------------

--
-- Table structure for table `iw_student_keyword`
--

CREATE TABLE `iw_student_keyword` (
  `student_keyword_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_student_keyword`
--

INSERT INTO `iw_student_keyword` (`student_keyword_id`, `user_id`, `keyword`, `added_on`) VALUES
(1, 7, 'Science', '2017-08-04 12:45:17'),
(5, 7, 'marketing', '2017-08-08 02:19:21'),
(3, 7, 'Technology', '2017-08-04 12:45:37'),
(4, 7, 'IT Industry', '2017-08-04 12:45:43'),
(6, 7, 'physics', '2017-08-18 03:31:39'),
(8, 31, 'Interest', '2017-09-01 05:53:23'),
(9, 40, 'commerce', '2017-09-11 00:22:18'),
(10, 41, 'organic', '2017-09-11 01:21:50'),
(11, 10, 'Creative Director', '2017-10-07 06:37:54'),
(12, 10, 'Technical Editor', '2017-10-07 06:38:09');

-- --------------------------------------------------------

--
-- Table structure for table `iw_student_notification_discipline`
--

CREATE TABLE `iw_student_notification_discipline` (
  `student_notification_discipline_id` int(11) NOT NULL,
  `discipline_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iw_student_notification_duration`
--

CREATE TABLE `iw_student_notification_duration` (
  `student_notification_duration_id` int(11) NOT NULL,
  `duration_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iw_student_notification_funding`
--

CREATE TABLE `iw_student_notification_funding` (
  `student_notification_funding_id` int(11) NOT NULL,
  `funding_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iw_student_notification_keyword`
--

CREATE TABLE `iw_student_notification_keyword` (
  `student_notification_keyword_id` int(11) NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iw_student_notification_level`
--

CREATE TABLE `iw_student_notification_level` (
  `student_notification_level_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iw_student_notification_location`
--

CREATE TABLE `iw_student_notification_location` (
  `student_notification_location_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iw_student_notification_opportunity`
--

CREATE TABLE `iw_student_notification_opportunity` (
  `student_notification_opportunity_id` int(11) NOT NULL,
  `opportunity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_student_notification_opportunity`
--

INSERT INTO `iw_student_notification_opportunity` (`student_notification_opportunity_id`, `opportunity_id`, `user_id`, `created_date`) VALUES
(3, 1, 7, '2018-02-01 13:14:24'),
(4, 2, 7, '2018-02-01 13:14:24');

-- --------------------------------------------------------

--
-- Table structure for table `iw_student_notification_provider`
--

CREATE TABLE `iw_student_notification_provider` (
  `student_notification_provider_id` int(11) NOT NULL,
  `provider_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iw_student_other_info`
--

CREATE TABLE `iw_student_other_info` (
  `student_other_info_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `visibility` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_student_other_info`
--

INSERT INTO `iw_student_other_info` (`student_other_info_id`, `title`, `description`, `user_id`, `visibility`, `created_date`) VALUES
(1, 'My Introduction & Interests', '<p>My key professional interests include marketing &amp; event organisation. I&rsquo;ve got experience in this area working for the following aliquam commodo tellus at porta aenean sollicitudin metus eget nisi consectetur vulputate neque viverra.</p>', 7, '0', '2017-08-04 12:47:22'),
(2, 'Other Introduction', '<p>Professional Skills</p>', 7, '0', '2017-08-17 13:30:15'),
(3, 'No Information', '<p>Consider the following scenario. You create a new e-mail message in Microsoft Dynamics CRM 3.0 that contains an&nbsp;<em>attachment</em>. As expected, a temporary copy&nbsp;...</p>', 31, '1', '2017-09-01 05:57:55'),
(4, 'Consider the following scenario. You create a new e-mail message in Microsoft Dynamics CRM 3.0 that contains an attachment. As expected, a temporary copy ...', '<p>Consider the following scenario. You create a new e-mail message in Microsoft Dynamics CRM 3.0 that contains an&nbsp;<em>attachment</em>. As expected, a temporary copy&nbsp;...</p>', 31, '0', '2017-09-01 05:58:24'),
(5, 'Career Ambitions', '<p>I would like to become the Sales Manager for a large department or independent retail unit. I have experience managing finances.&nbsp;</p>', 40, '1', '2017-09-11 00:17:51'),
(6, 'Others', '<p>Add Other Introduction</p>', 10, '1', '2017-10-07 06:36:56');

-- --------------------------------------------------------

--
-- Table structure for table `iw_student_placement`
--

CREATE TABLE `iw_student_placement` (
  `student_placement_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `placement_id` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `if_tailor` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `is_archived` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_student_placement`
--

INSERT INTO `iw_student_placement` (`student_placement_id`, `user_id`, `placement_id`, `message`, `status`, `if_tailor`, `is_archived`, `is_deleted`, `created_date`) VALUES
(1, 41, 95, 'test', 1, '1', '0', '0', '2017-11-24 07:16:39'),
(2, 39, 10, 'apply', 4, '0', '0', '0', '2017-11-24 00:09:37'),
(3, 41, 10, 'test', 1, '1', '0', '0', '2017-11-23 00:55:57'),
(9, 41, 110, 'test', 1, '1', '0', '0', '2017-12-13 00:14:47'),
(6, 40, 104, 'I would like to join.', 4, '0', '0', '0', '2017-11-27 18:06:15'),
(7, 13, 103, '', 2, '0', '0', '0', '2017-11-28 10:39:02'),
(27, 64, 113, 'Submit', 6, '0', '1', '0', '2018-02-06 07:05:49'),
(10, 41, 112, 'test', 1, '1', '0', '0', '2017-12-14 02:23:00'),
(25, 7, 112, '', 1, '0', '0', '0', '2017-12-29 06:01:43'),
(26, 7, 114, '', 5, '1', '1', '0', '2018-01-29 05:25:00'),
(28, 7, 99, '', 2, '0', '0', '0', '2018-02-07 04:07:33');

--
-- Triggers `iw_student_placement`
--
DELIMITER $$
CREATE TRIGGER `delete_student_placement` AFTER DELETE ON `iw_student_placement` FOR EACH ROW BEGIN

DELETE FROM `iw_student_placement_research` WHERE student_placement_id = OLD.student_placement_id;
            DELETE FROM `iw_student_placement_projects` WHERE student_placement_id = OLD.student_placement_id;
            DELETE FROM `iw_student_placement_other_info` WHERE student_placement_id = OLD.student_placement_id;
            DELETE FROM `iw_student_placement_info` WHERE student_placement_id = OLD.student_placement_id;
            DELETE FROM `iw_student_placement_feedback` WHERE student_placement_id = OLD.student_placement_id;
            
            DELETE FROM `iw_student_placement_employment` WHERE student_placement_id = OLD.student_placement_id;
            DELETE FROM `iw_student_placement_education` WHERE student_placement_id = OLD.student_placement_id;
            DELETE FROM `iw_student_placement_document` WHERE student_placement_id = OLD.student_placement_id;
            DELETE FROM `iw_student_placement_academic_supervisor` WHERE student_placement_id = OLD.student_placement_id;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `iw_student_placement_academic_supervisor`
--

CREATE TABLE `iw_student_placement_academic_supervisor` (
  `student_academic_supervisor_id` int(11) NOT NULL,
  `student_placement_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `visibility` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_student_placement_academic_supervisor`
--

INSERT INTO `iw_student_placement_academic_supervisor` (`student_academic_supervisor_id`, `student_placement_id`, `user_id`, `description`, `visibility`, `added_date`) VALUES
(1, 25, 7, 'My academics supervisor is Dr. John Smith who is a professor in computer science at National University of Singapore', '1', '2017-12-19 05:04:00'),
(2, 25, 7, 'My academics supervisor is Dr. John Smith who is a professor in computer science at National University of Australia', '1', '2017-12-19 05:04:00'),
(3, 26, 7, 'My academics supervisor is Dr. John Smith who is a professor in computer science at National University of Singapore', '1', '2018-01-24 08:46:21'),
(4, 26, 7, 'My academics supervisor is Dr. John Smith who is a professor in computer science at National University of Australia', '1', '2018-01-24 08:46:21'),
(5, 28, 7, 'My academics supervisor is Dr. John Smith who is a professor in computer science at National University of Singapore', '1', '2018-02-07 04:07:35'),
(6, 28, 7, 'My academics supervisor is Dr. John Smith who is a professor in computer science at National University of Australia', '1', '2018-02-07 04:07:35');

-- --------------------------------------------------------

--
-- Table structure for table `iw_student_placement_document`
--

CREATE TABLE `iw_student_placement_document` (
  `student_document_id` int(11) NOT NULL,
  `student_placement_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `document` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `original_document` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `visibility` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_student_placement_document`
--

INSERT INTO `iw_student_placement_document` (`student_document_id`, `student_placement_id`, `user_id`, `document`, `original_document`, `visibility`, `created_date`) VALUES
(1, 5, 41, 'PKO-1511743406.pdf', 'fr-Future-Of-Work-report.pdf', '1', '2017-11-27 00:43:26'),
(2, 25, 7, 'LQB-1513659841.pdf', 'ERR Diagram of Placement & Supervisor.pdf', '1', '2017-12-19 05:04:01'),
(3, 26, 7, 'SIJ-1516783581.pdf', 'ERR Diagram of Placement & Supervisor.pdf', '1', '2018-01-24 08:46:21'),
(4, 28, 7, 'L09-1517976456.pdf', 'ERR Diagram of Placement & Supervisor.pdf', '1', '2018-02-07 04:07:36');

-- --------------------------------------------------------

--
-- Table structure for table `iw_student_placement_education`
--

CREATE TABLE `iw_student_placement_education` (
  `student_education_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `student_placement_id` int(11) NOT NULL,
  `institute` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `qualification` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `achievement` text COLLATE utf8_unicode_ci NOT NULL,
  `organisational_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `end_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `visibility` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_student_placement_education`
--

INSERT INTO `iw_student_placement_education` (`student_education_id`, `user_id`, `student_placement_id`, `institute`, `subject`, `level`, `qualification`, `achievement`, `organisational_email`, `start_date`, `end_date`, `country_id`, `state_id`, `city_id`, `visibility`, `created_date`) VALUES
(1, 41, 5, 'Cambridge University', 'Biology', 2, '', '<p>Graduated with 2nd class Honours with specialisation in Marine Biology</p>', '', '2005', '2008', 189, 0, 0, '1', '2017-11-27 00:43:26'),
(2, 41, 5, 'ABC University', 'Maths', 2, '', '<p>Distinction in number theory.</p>', '', '2012', '2015', 3, 0, 0, '1', '2017-11-27 00:43:26'),
(3, 40, 8, 'Flinders University', 'Business', 2, '', '<p>My bachelor modules included marketing, economics, finance, organisational culture and HR.</p>', '', '2013', '2016', 13, 0, 0, '1', '2017-11-28 10:39:53'),
(4, 40, 8, 'Adelaide University', 'Commerce', 3, '', '<p>I achieved an MA in Commerce and graduated with Credit.&nbsp;</p>', '', '2016', '2017', 13, 0, 0, '1', '2017-11-28 10:39:53'),
(5, 39, 15, 'York University', 'IT', 2, '', '<p>1st class honours</p>', '', '2012', '2014', 189, 0, 0, '1', '2017-12-17 07:34:45'),
(6, 39, 15, 'Leeds University', 'Network Systems', 3, '', '<p>Specialised in security of networks</p>', '', '2016', '2016', 189, 0, 0, '1', '2017-12-17 07:34:45'),
(7, 7, 25, 'University ABC', 'Maths and Economics', 2, '', 'Graduated with Distinction', '', '2012', '2015', 10, 0, 0, '1', '2017-12-19 05:03:59'),
(8, 7, 25, 'University of Singapore', 'Maths', 2, '', '<p>Graduate with Honours <span style="background-color:#f1c40f">(First Class)</span></p>', '', '2014', '2016', 13, 0, 0, '1', '2017-12-19 05:03:59'),
(9, 7, 25, 'Open University', 'Maths', 2, '', '<p>Graduated with GPA 5.5. and award for best student.&nbsp;</p>', '', '2013', '2015', 13, 0, 0, '1', '2017-12-19 05:03:59'),
(10, 7, 26, 'University ABC', 'Maths and Economics', 2, '', 'Graduated with Distinction', '', '2012', '2015', 10, 0, 0, '1', '2018-01-24 08:46:20'),
(11, 7, 26, 'University of Singapore', 'Maths', 2, '', '<p>Graduate with Honours <span style="background-color:#f1c40f">(First Class)</span></p>', '', '2014', '2016', 13, 0, 0, '1', '2018-01-24 08:46:20'),
(12, 7, 26, 'Open University', 'Maths', 2, '', '<p>Graduated with GPA 5.5. and award for best student.&nbsp;</p>', '', '2013', '2015', 13, 0, 0, '1', '2018-01-24 08:46:20'),
(13, 7, 28, 'University ABC', 'Maths and Economics', 2, '', 'Graduated with Distinction', '', '2012', '2015', 10, 0, 0, '1', '2018-02-07 04:07:33'),
(14, 7, 28, 'University of Singapore', 'Maths', 2, '', '<p>Graduate with Honours <span style="background-color:#f1c40f">(First Class)</span></p>', '', '2014', '2016', 13, 0, 0, '1', '2018-02-07 04:07:33'),
(15, 7, 28, 'Open University', 'Maths', 2, '', '<p>Graduated with GPA 5.5. and award for best student.&nbsp;</p>', '', '2013', '2015', 13, 0, 0, '1', '2018-02-07 04:07:33');

-- --------------------------------------------------------

--
-- Table structure for table `iw_student_placement_employment`
--

CREATE TABLE `iw_student_placement_employment` (
  `student_employment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `student_placement_id` int(11) NOT NULL,
  `employer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `end_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `responsibility` text COLLATE utf8_unicode_ci NOT NULL,
  `achievement` text COLLATE utf8_unicode_ci NOT NULL,
  `visibility` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_student_placement_employment`
--

INSERT INTO `iw_student_placement_employment` (`student_employment_id`, `user_id`, `student_placement_id`, `employer`, `position`, `start_date`, `end_date`, `country_id`, `state_id`, `city_id`, `responsibility`, `achievement`, `visibility`, `created_date`) VALUES
(1, 41, 5, 'Chemical Research Institute', 'Researcher', '2016', '2017', 190, 0, 0, '<p>researched new methods in biochemistry processes</p>', '<p>Developed new technique in biochemistry analysis</p>', '1', '2017-11-27 00:43:26'),
(2, 41, 5, 'Chemical Research Institute', 'Researcher', '2016', '2017', 190, 0, 0, '<p>researched new methods in biochemistry processes</p>', '<p>Developed new technique in biochemistry analysis</p>', '1', '2017-11-27 00:43:26'),
(3, 40, 8, 'David Jones', 'Sales Assistant', '2016', '2016', 13, 0, 0, '<p>Assisted customers with purchases</p>', '<p>Sold on average $2000 worth of goods per week.&nbsp;</p>', '1', '2017-11-28 10:39:53'),
(4, 40, 8, 'David Jones', 'Sales Manager', '2017', '2017', 13, 0, 0, '<p>I was promoted to Sales Manager for the Shoe Department.&nbsp;</p>\n\n<p>Supervised 3 other staff.&nbsp;</p>', '<p>Turn over increase 10% in 3 months</p>', '1', '2017-11-28 10:39:53'),
(5, 39, 15, 'Microsoft', 'Network Developer', '2016', '2017', 189, 0, 0, '<p>managed security systems of clients</p>', '<p>no major security breaches</p>', '1', '2017-12-17 07:34:45'),
(6, 7, 25, 'Company Y', 'Product Engineer', '2012', '2018', 16, 0, 0, '<ul>\n	<li>Managing staff</li>\n	<li>Operations</li>\n	<li>Finance</li>\n</ul>', '<ul>\n	<li>Hired new sales team</li>\n	<li>Increased sales by 30%</li>\n	<li><span style="color:#e74c3c">Won &nbsp;employee of the year award</span></li>\n</ul>', '1', '2017-12-19 05:04:00'),
(7, 7, 26, 'Company Y', 'Product Engineer', '2012', '2018', 16, 0, 0, '<ul>\n	<li>Managing staff</li>\n	<li>Operations</li>\n	<li>Finance</li>\n</ul>', '<ul>\n	<li>Hired new sales team</li>\n	<li>Increased sales by 30%</li>\n	<li><span style="color:#e74c3c">Won &nbsp;employee of the year award</span></li>\n</ul>', '1', '2018-01-24 08:46:20'),
(8, 7, 28, 'Company Y', 'Product Engineer', '2012', '2018', 16, 0, 0, '<ul>\n	<li>Managing staff</li>\n	<li>Operations</li>\n	<li>Finance</li>\n</ul>', '<ul>\n	<li>Hired new sales team</li>\n	<li>Increased sales by 30%</li>\n	<li><span style="color:#e74c3c">Won &nbsp;employee of the year award</span></li>\n</ul>', '1', '2018-02-07 04:07:34');

-- --------------------------------------------------------

--
-- Table structure for table `iw_student_placement_feedback`
--

CREATE TABLE `iw_student_placement_feedback` (
  `student_feedback_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `student_placement_id` int(11) NOT NULL,
  `supervisor_id` int(11) NOT NULL,
  `placement_id` int(11) NOT NULL,
  `feedback` text COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `visibility` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_student_placement_feedback`
--

INSERT INTO `iw_student_placement_feedback` (`student_feedback_id`, `user_id`, `student_placement_id`, `supervisor_id`, `placement_id`, `feedback`, `rating`, `visibility`, `created_date`) VALUES
(1, 41, 5, 44, 95, 'feedback to David on 24th', 4, '0', '2017-11-27 00:43:26'),
(2, 41, 5, 4, 10, 'david test from Duncan 23rd', 4, '0', '2017-11-27 00:43:26'),
(3, 41, 5, 3, 103, 'Feedback to David for Quality Pointers', 4, '0', '2017-11-27 00:43:26'),
(4, 41, 5, 4, 10, 'send on the 23rd', 4, '0', '2017-11-27 00:43:26'),
(5, 41, 5, 44, 94, '21st Nov test', 4, '0', '2017-11-27 00:43:26'),
(6, 41, 5, 44, 99, 'test feedback on 18th', 4, '0', '2017-11-27 00:43:26'),
(7, 41, 5, 44, 99, 'test feedback from Mary', 4, '0', '2017-11-27 00:43:26'),
(8, 13, 7, 4, 10, 'Feedback to Aatif for Data Analysis 2', 5, '0', '2017-11-28 10:39:02'),
(9, 40, 8, 4, 10, 'john test from duncan 23rd', 4, '0', '2017-11-28 10:39:53'),
(10, 40, 8, 3, 103, 'Feedback to John Teste for Quality Pointers', 3, '0', '2017-11-28 10:39:53'),
(11, 40, 8, 44, 94, 'test feedback on 23rd', 4, '0', '2017-11-28 10:39:53'),
(12, 40, 8, 4, 10, 'feedback TL', 4, '0', '2017-11-28 10:39:53'),
(13, 40, 8, 4, 10, 'test', 4, '0', '2017-11-28 10:39:53'),
(14, 40, 8, 44, 94, 'Individual Feedback', 4, '0', '2017-11-28 10:39:53'),
(15, 40, 8, 44, 94, 'feedback on 22nd', 4, '0', '2017-11-28 10:39:53'),
(16, 40, 8, 44, 94, 'feedback 21st Nov', 4, '0', '2017-11-28 10:39:53'),
(17, 40, 8, 44, 99, 'test on 18th', 4, '0', '2017-11-28 10:39:53'),
(18, 40, 8, 44, 99, 'test feedback to leader', 4, '0', '2017-11-28 10:39:53'),
(19, 40, 8, 44, 92, 'feedback test for John', 4, '0', '2017-11-28 10:39:53'),
(20, 40, 8, 44, 94, 'feedback eng2', 4, '0', '2017-11-28 10:39:53'),
(21, 39, 15, 4, 10, 'feedback test', 4, '0', '2017-12-17 07:34:46'),
(22, 39, 15, 44, 105, 'test', 4, '0', '2017-12-17 07:34:46'),
(23, 39, 15, 44, 105, 'test', 4, '0', '2017-12-17 07:34:46'),
(24, 39, 15, 4, 10, 'fred test 23rd from Duncan', 4, '0', '2017-12-17 07:34:46'),
(25, 39, 15, 3, 103, 'Feedback to Fred for Quality Pointers', 4, '0', '2017-12-17 07:34:46'),
(26, 39, 15, 4, 10, 'test feedback', 4, '0', '2017-12-17 07:34:46'),
(27, 39, 15, 44, 94, 'feedback test 21st Nov', 4, '0', '2017-12-17 07:34:46'),
(28, 39, 15, 44, 99, 'test on 18th', 4, '0', '2017-12-17 07:34:46'),
(29, 39, 15, 44, 99, 'test feedback', 4, '0', '2017-12-17 07:34:46'),
(30, 39, 15, 4, 9, '2nd comment', 5, '0', '2017-12-17 07:34:46'),
(31, 39, 15, 4, 9, 'good project', 2, '0', '2017-12-17 07:34:46'),
(32, 7, 25, 4, 10, 'Feedback to Kriti for Data Analysis 2', 3, '0', '2017-12-19 05:04:00'),
(33, 7, 25, 3, 97, 'Individual Feedback to Kriti', 5, '0', '2017-12-19 05:04:00'),
(34, 7, 25, 3, 2, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.', 3, '1', '2017-12-19 05:04:00'),
(35, 7, 26, 4, 10, 'Feedback to Kriti for Data Analysis 2', 3, '0', '2018-01-24 08:46:21'),
(36, 7, 26, 3, 97, 'Individual Feedback to Kriti', 5, '0', '2018-01-24 08:46:21'),
(37, 7, 26, 3, 2, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.', 3, '1', '2018-01-24 08:46:21'),
(38, 7, 28, 4, 10, 'Feedback to Kriti for Data Analysis 2', 3, '0', '2018-02-07 04:07:35'),
(39, 7, 28, 3, 97, 'Individual Feedback to Kriti', 5, '0', '2018-02-07 04:07:35'),
(40, 7, 28, 3, 2, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.', 3, '1', '2018-02-07 04:07:36');

-- --------------------------------------------------------

--
-- Table structure for table `iw_student_placement_info`
--

CREATE TABLE `iw_student_placement_info` (
  `student_info_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `student_placement_id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `visibility` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_student_placement_info`
--

INSERT INTO `iw_student_placement_info` (`student_info_id`, `title`, `student_placement_id`, `description`, `user_id`, `visibility`, `created_date`) VALUES
(1, 'Key Skills', 5, '<p>My key skills include:</p>\n\n<ul>\n	<li>coding</li>\n	<li>systems development</li>\n</ul>', 41, '0', '2017-11-27 00:43:26'),
(2, 'Summary of Skills', 8, '<p>I have 10 years work experience in sales of consumer goods. This has included acting as Manager of a department in the David Jones retail store. I understand how&nbsp;to deal with customers and have good service skills.&nbsp;</p>', 40, '1', '2017-11-28 10:39:52'),
(3, 'Computer Skills', 8, '<p>I am familiar with all the Microsoft computer applications including</p>\n\n<ul>\n	<li>Word</li>\n	<li>Excel</li>\n	<li>Project</li>\n</ul>', 40, '1', '2017-11-28 10:39:53'),
(4, 'outgoing, enthusiastic and capable employee', 15, '<p>Educated to Masters level and with 10 years work experience, I have great transferable skills.</p>', 39, '1', '2017-12-17 07:34:45'),
(5, 'Other skills', 25, '<p>I am experienced in using <strong>Microsoft Office </strong>particularly the following applications:</p>\n\n<p>- Excel</p>\n\n<p>-Word</p>\n\n<p>-Project</p>\n\n<p>-Office</p>\n\n<p>I have excellent keyboard skills and can use full functions of these applications.&nbsp;</p>', 7, '1', '2017-12-19 05:03:59'),
(6, 'Other skills', 26, '<p>I am experienced in using <strong>Microsoft Office </strong>particularly the following applications:</p>\n\n<p>- Excel</p>\n\n<p>-Word</p>\n\n<p>-Project</p>\n\n<p>-Office</p>\n\n<p>I have excellent keyboard skills and can use full functions of these applications.&nbsp;</p>', 7, '1', '2018-01-24 08:46:20'),
(7, 'Other skills', 28, '<p>I am experienced in using <strong>Microsoft Office </strong>particularly the following applications:</p>\n\n<p>- Excel</p>\n\n<p>-Word</p>\n\n<p>-Project</p>\n\n<p>-Office</p>\n\n<p>I have excellent keyboard skills and can use full functions of these applications.&nbsp;</p>', 7, '1', '2018-02-07 04:07:33');

-- --------------------------------------------------------

--
-- Table structure for table `iw_student_placement_keyword`
--

CREATE TABLE `iw_student_placement_keyword` (
  `student_keyword_id` int(11) NOT NULL,
  `student_placement_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iw_student_placement_other_info`
--

CREATE TABLE `iw_student_placement_other_info` (
  `student_other_info_id` int(11) NOT NULL,
  `student_placement_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `visibility` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_student_placement_other_info`
--

INSERT INTO `iw_student_placement_other_info` (`student_other_info_id`, `student_placement_id`, `title`, `description`, `user_id`, `visibility`, `created_date`) VALUES
(1, 8, 'Career Ambitions', '<p>I would like to become the Sales Manager for a large department or independent retail unit. I have experience managing finances.&nbsp;</p>', 40, '1', '2017-11-28 10:39:53'),
(2, 25, 'My Introduction & Interests', '<p>My key professional interests include marketing &amp; event organisation. I&rsquo;ve got experience in this area working for the following aliquam commodo tellus at porta aenean sollicitudin metus eget nisi consectetur vulputate neque viverra.</p>', 7, '0', '2017-12-19 05:04:00'),
(3, 25, 'Other Introduction', '<p>Professional Skills</p>', 7, '0', '2017-12-19 05:04:00'),
(4, 26, 'My Introduction & Interests', '<p>My key professional interests include marketing &amp; event organisation. I&rsquo;ve got experience in this area working for the following aliquam commodo tellus at porta aenean sollicitudin metus eget nisi consectetur vulputate neque viverra.</p>', 7, '0', '2018-01-24 08:46:20'),
(5, 26, 'Other Introduction', '<p>Professional Skills</p>', 7, '0', '2018-01-24 08:46:20'),
(6, 28, 'My Introduction & Interests', '<p>My key professional interests include marketing &amp; event organisation. I&rsquo;ve got experience in this area working for the following aliquam commodo tellus at porta aenean sollicitudin metus eget nisi consectetur vulputate neque viverra.</p>', 7, '0', '2018-02-07 04:07:34'),
(7, 28, 'Other Introduction', '<p>Professional Skills</p>', 7, '0', '2018-02-07 04:07:35');

-- --------------------------------------------------------

--
-- Table structure for table `iw_student_placement_projects`
--

CREATE TABLE `iw_student_placement_projects` (
  `student_project_id` int(11) NOT NULL,
  `student_placement_id` int(11) NOT NULL,
  `organisation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `project_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `outcomes` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `visibility` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_student_placement_projects`
--

INSERT INTO `iw_student_placement_projects` (`student_project_id`, `student_placement_id`, `organisation`, `project_type`, `date`, `title`, `outcomes`, `user_id`, `country_id`, `visibility`, `created_date`) VALUES
(1, 5, 'ABC Company', 'Technical Review', '2016', 'User Specifications', 'Published document for customer.', 41, 6, '1', '2017-11-27 00:43:26'),
(2, 15, 'York University', 'IT upgrade', '2014', 'Casual work with university', 'updated some of the university systems on a casual employment basis', 39, 189, '1', '2017-12-17 07:34:46'),
(3, 25, 'Company A', 'Web project', '2013', 'Web Development', 'Outcomes include:\r\n1. A new approach to coding', 7, 3, '1', '2017-12-19 05:04:00'),
(4, 26, 'Company A', 'Web project', '2013', 'Web Development', 'Outcomes include:\r\n1. A new approach to coding', 7, 3, '1', '2018-01-24 08:46:20'),
(5, 28, 'Company A', 'Web project', '2013', 'Web Development', 'Outcomes include:\r\n1. A new approach to coding', 7, 3, '1', '2018-02-07 04:07:34');

-- --------------------------------------------------------

--
-- Table structure for table `iw_student_placement_research`
--

CREATE TABLE `iw_student_placement_research` (
  `student_research_id` int(11) NOT NULL,
  `student_placement_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `visibility` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_student_placement_research`
--

INSERT INTO `iw_student_placement_research` (`student_research_id`, `student_placement_id`, `type`, `title`, `date`, `description`, `user_id`, `visibility`, `created_date`) VALUES
(1, 5, 1, 'Biology papers', '2017-09-11 00:00:00', '<p>Co-authored a review of Experimental Biology papers for national conference&nbsp;</p>', 41, '1', '2017-11-27 00:43:26'),
(2, 5, 5, 'Biochemistry Journal', '2017-09-11 00:00:00', '<p>published paper on biology in Biochemistry Journal&nbsp;</p>', 41, '1', '2017-11-27 00:43:26'),
(3, 8, 5, 'Business Journal', '2017-09-11 00:00:00', '<p>Co-authored a paper on business development&nbsp;</p>', 40, '1', '2017-11-28 10:39:53'),
(4, 25, 1, 'conference paper', '2017-08-24 00:00:00', '<p>Conference paper to discuss chemical compounds</p>', 7, '1', '2017-12-19 05:04:00'),
(5, 25, 5, 'Journal of Chemistry', '2017-08-24 00:00:00', '<p>Review of paper to analyse reactive substances&nbsp;</p>', 7, '1', '2017-12-19 05:04:00'),
(6, 26, 1, 'conference paper', '2017-08-24 00:00:00', '<p>Conference paper to discuss chemical compounds</p>', 7, '1', '2018-01-24 08:46:20'),
(7, 26, 5, 'Journal of Chemistry', '2017-08-24 00:00:00', '<p>Review of paper to analyse reactive substances&nbsp;</p>', 7, '0', '2018-01-24 08:46:20'),
(8, 28, 1, 'conference paper', '2017-08-24 00:00:00', '<p>Conference paper to discuss chemical compounds</p>', 7, '1', '2018-02-07 04:07:34'),
(9, 28, 5, 'Journal of Chemistry', '2017-08-24 00:00:00', '<p>Review of paper to analyse reactive substances&nbsp;</p>', 7, '0', '2018-02-07 04:07:34');

-- --------------------------------------------------------

--
-- Table structure for table `iw_student_profile`
--

CREATE TABLE `iw_student_profile` (
  `student_profile_id` int(11) NOT NULL,
  `provider_organisation_profile_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `visibility` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `application_email` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `feedback_email` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `deadline_email` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_student_profile`
--

INSERT INTO `iw_student_profile` (`student_profile_id`, `provider_organisation_profile_id`, `user_id`, `image`, `visibility`, `country_id`, `city_id`, `application_email`, `feedback_email`, `deadline_email`, `added_on`) VALUES
(1, 0, 7, 'crop_20180210084927.jpeg', '', 13, 58, '1', '0', '1', '2017-08-04 13:25:07'),
(2, 0, 10, 'crop_20171104060846.jpeg', '0', 35, 0, '0', '0', '0', '2017-08-04 13:45:04'),
(4, NULL, 13, 'JPEG-1507358352.jpeg', '0', 92, 0, '0', '0', '0', '2017-08-04 16:58:44'),
(5, NULL, 14, '', '0', NULL, NULL, '0', '0', '0', '2017-08-06 23:25:34'),
(6, NULL, 15, '', '0', NULL, NULL, '0', '0', '0', '2017-08-08 11:43:07'),
(7, NULL, 23, '', '0', 0, 0, '0', '0', '0', '2017-08-31 05:52:42'),
(8, NULL, 31, 'JPG-1504247368.jpg', '0', 243, 0, '0', '0', '0', '2017-09-01 04:01:55'),
(9, NULL, 33, 'PNG-1504254119.png', '0', 0, 0, '0', '0', '0', '2017-09-01 08:02:32'),
(10, NULL, 38, '', '0', 0, 0, '0', '0', '0', '2017-09-01 14:05:21'),
(11, NULL, 39, 'crop_20171116011222.jpeg', '0', 13, 59, '0', '0', '0', '2017-09-10 11:55:23'),
(12, NULL, 40, 'crop_20171104104358.jpeg', '0', 2, 0, '0', '0', '0', '2017-09-10 23:20:22'),
(13, NULL, 41, 'crop_20171104111458.jpeg', '0', 6, 0, '0', '0', '0', '2017-09-10 23:45:53'),
(21, NULL, 63, 'crop_20171106125320.jpeg', '0', 189, 0, '0', '0', '0', '2017-11-06 12:51:47'),
(22, NULL, 64, '', '0', 162, 0, '0', '0', '0', '2018-01-29 05:29:57'),
(23, NULL, 66, '', '0', 0, 0, '0', '0', '0', '2018-02-09 06:41:16');

--
-- Triggers `iw_student_profile`
--
DELIMITER $$
CREATE TRIGGER `delete_student_profile` AFTER DELETE ON `iw_student_profile` FOR EACH ROW BEGIN
        DELETE FROM `iw_student_research` WHERE user_id = OLD.user_id;
            DELETE FROM `iw_student_projects` WHERE user_id = OLD.user_id;
            DELETE FROM `iw_student_other_info` WHERE user_id = OLD.user_id;
            DELETE FROM `iw_student_keyword` WHERE user_id = OLD.user_id;
            DELETE FROM `iw_student_info` WHERE user_id = OLD.user_id;
            DELETE FROM `iw_student_feedback` WHERE user_id = OLD.user_id;
            DELETE FROM `iw_student_favorite_placement` WHERE student_id = OLD.user_id;
            DELETE FROM `iw_student_employment` WHERE user_id = OLD.user_id;
            DELETE FROM `iw_student_education` WHERE user_id = OLD.user_id;
            DELETE FROM `iw_student_document` WHERE user_id = OLD.user_id;
            DELETE FROM `iw_student_academic_supervisor` WHERE user_id = OLD.user_id;
            DELETE FROM `iw_student_favorite` WHERE student_id = OLD.user_id;
            DELETE FROM `iw_student_placement` WHERE user_id = OLD.user_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `iw_student_projects`
--

CREATE TABLE `iw_student_projects` (
  `student_project_id` int(11) NOT NULL,
  `organisation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `project_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `outcomes` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `visibility` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_student_projects`
--

INSERT INTO `iw_student_projects` (`student_project_id`, `organisation`, `project_type`, `date`, `title`, `outcomes`, `user_id`, `country_id`, `visibility`, `created_date`) VALUES
(4, 'Singsys', 'Testing', '2017', 'Tester', 'Consider the following scenario. You create a new e-mail message in Microsoft Dynamics CRM 3.0 that contains an attachment. As expected, a temporary copy ...', 31, 243, '1', '2017-09-01 05:57:27'),
(3, 'Company A', 'Web project', '2013', 'Web Development', 'Outcomes include:\r\n1. A new approach to coding', 7, 3, '1', '2017-08-18 02:10:03'),
(5, 'York University', 'IT upgrade', '2014', 'Casual work with university', 'updated some of the university systems on a casual employment basisvs', 39, 189, '1', '2017-09-11 00:46:27'),
(6, 'New', 'Project', '2020', 'Project', 'Project Outcomes', 10, 169, '1', '2017-10-07 06:36:26'),
(8, 'ABC Company', 'Technical Review', '2016', 'User Specifications', 'Published document for customer.', 41, 6, '1', '2017-11-02 08:42:35');

-- --------------------------------------------------------

--
-- Table structure for table `iw_student_research`
--

CREATE TABLE `iw_student_research` (
  `student_research_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `visibility` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_student_research`
--

INSERT INTO `iw_student_research` (`student_research_id`, `type`, `title`, `date`, `description`, `user_id`, `visibility`, `created_date`) VALUES
(1, 1, 'conference paper', '2017-08-24 00:00:00', '<p>Conference paper to discuss chemical compounds</p>', 7, '1', '2017-08-24 02:24:41'),
(2, 5, 'Journal of Chemistry', '2017-08-24 00:00:00', '<p>Review of paper to analyse reactive substances&nbsp;</p>', 7, '0', '2017-08-24 23:38:20'),
(3, 1, 'Automation', '2017-09-01 00:00:00', '<p>Consider the following scenario. You create a new e-mail message in Microsoft Dynamics CRM 3.0 that contains an&nbsp;<em>attachment</em>. As expected, a temporary copy&nbsp;...</p>', 31, '1', '2017-09-01 05:59:58'),
(4, 5, 'Business Journal', '2017-09-11 00:00:00', '<p>Co-authored a paper on business development&nbsp;</p>', 40, '1', '2017-09-11 00:09:44'),
(5, 1, 'Biology papers', '2017-09-11 00:00:00', '<p>Co-authored a review of Experimental Biology papers for national conference&nbsp;</p>', 41, '1', '2017-09-11 01:18:11'),
(6, 5, 'Biochemistry Journal', '2017-09-11 00:00:00', '<p>published paper on biology in Biochemistry Journal&nbsp;</p>', 41, '1', '2017-09-11 01:19:29'),
(7, 2, 'Reserach', '2017-10-07 00:00:00', '<p>New Research</p>', 10, '1', '2017-10-07 06:34:45');

-- --------------------------------------------------------

--
-- Table structure for table `iw_subject`
--

CREATE TABLE `iw_subject` (
  `subject_id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iw_submission_status`
--

CREATE TABLE `iw_submission_status` (
  `status_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_submission_status`
--

INSERT INTO `iw_submission_status` (`status_id`, `status`, `description`, `color`, `added_date`) VALUES
(1, 'Pending', 'Applicants applied ', '#a9f9ee', '2017-10-06 21:23:11'),
(2, 'Saved', 'Applicants saved the Opportunity ', '#6ea8e6', '2017-10-06 21:23:11'),
(3, 'Add', 'Add Applicants to Opportunity', '#a7ed9d', '2017-10-06 21:23:11'),
(4, 'Confirmed', 'Applicants confirmed the joining', '#f2a0ee', '2017-10-06 21:24:01'),
(5, 'Unconfirmed', 'Applicants confirmation is pending', '#5f7de8', '2017-10-06 21:24:01'),
(6, 'Discard', 'Discarded the application', '#ff0000', '2017-10-06 21:24:51'),
(7, 'Declined', 'Decline the application', '#ff0000', '2017-10-26 13:23:54');

-- --------------------------------------------------------

--
-- Table structure for table `iw_supervisor_invitation`
--

CREATE TABLE `iw_supervisor_invitation` (
  `supervisor_invitation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iw_supervisor_invitation`
--

INSERT INTO `iw_supervisor_invitation` (`supervisor_invitation_id`, `user_id`, `email`, `added_on`) VALUES
(0, 47, 'ankitjaiswal+Super@singsys.com', '2017-10-12 11:06:49'),
(0, 47, 'ankitjaiswal+1@singsys.com', '2017-10-12 11:10:02'),
(0, 47, 'ankit+3@gmail.com', '2017-10-12 11:14:07'),
(0, 47, 'ankitjaiswal+2@singsys.com', '2017-10-12 13:11:48'),
(0, 50, 'ankitjaiswal+Super2@singsys.com', '2017-10-13 05:35:55'),
(0, 3, 'akmal@singsys.com', '2017-10-13 07:10:37'),
(0, 3, 'kriti@singsys.com', '2017-10-13 07:14:57'),
(0, 3, 'ankitjaiswal+super2@singsys.com', '2017-10-13 07:24:15'),
(0, 50, 'nadeem@singsys.com', '2017-10-13 07:36:23'),
(0, 50, 'ankitjaiswal+super3@singsys.com', '2017-10-13 07:37:48'),
(0, 50, 'ankitjaiswal+super4@singsys.com', '2017-10-13 07:39:05'),
(0, 50, 'ankitjaiswal+super5@singsys.com', '2017-10-13 07:39:50'),
(0, 50, 'ankitjaiswal+super9@singsys.com', '2017-10-13 11:21:58'),
(0, 50, 'ankitjaiswal+super90@singsys.com', '2017-10-13 11:23:58'),
(0, 50, 'ankitjaiswal+222@singsys.com', '2017-10-13 11:24:45'),
(0, 50, 'ankitjaiswal+1111@singsys.com', '2017-10-13 11:25:16'),
(0, 50, 'ankitjaiswal+super@singsys.com', '2017-10-13 12:14:56'),
(0, 4, 'duncan775@gmail.com', '2017-11-24 00:13:02');

-- --------------------------------------------------------

--
-- Table structure for table `iw_supervisor_keyword`
--

CREATE TABLE `iw_supervisor_keyword` (
  `supervisor_keyword_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iw_supervisor_profile`
--

CREATE TABLE `iw_supervisor_profile` (
  `supervisor_profile_id` int(11) NOT NULL,
  `provider_organisation_profile_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `visibility` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `admin_email` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `license_email` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `applicant_email` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `post_email` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `deadline_email` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `receive_email` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_supervisor_profile`
--

INSERT INTO `iw_supervisor_profile` (`supervisor_profile_id`, `provider_organisation_profile_id`, `user_id`, `image`, `designation`, `department`, `country_id`, `visibility`, `location_id`, `admin_email`, `license_email`, `applicant_email`, `post_email`, `deadline_email`, `receive_email`, `created_date`) VALUES
(1, 4, 9, 'JPG-1504961576.jpg', 'UI/UX Designer', '3', NULL, '0', 9, '0', '0', '0', '0', '0', '0', '2017-08-04 13:29:22'),
(2, 2, 18, '', '', '', NULL, '0', NULL, '0', '0', '0', '0', '0', '0', '2017-08-29 08:27:04'),
(3, 2, 19, '', 'hr', '7', NULL, '0', 5, '0', '0', '0', '0', '0', '0', '2017-08-29 10:29:22'),
(4, 9, 26, '', '', '', NULL, '0', NULL, '0', '0', '0', '0', '0', '0', '2017-08-31 10:46:15'),
(5, 6, 28, 'JPG-1504178087.jpg', 'manish@singsys.com', '15', NULL, '0', 18, '0', '0', '0', '0', '0', '0', '2017-08-31 11:07:37'),
(6, 2, 30, '', '', '', NULL, '0', NULL, '0', '0', '0', '0', '0', '0', '2017-08-31 13:08:06'),
(7, 9, 32, '', '', '', NULL, '0', NULL, '0', '0', '0', '0', '0', '0', '2017-09-01 07:30:50'),
(8, 6, 34, '', '', '', NULL, '0', NULL, '0', '0', '0', '0', '0', '0', '2017-09-01 12:40:17'),
(9, 2, 35, '', '', '', NULL, '0', NULL, '0', '0', '0', '0', '0', '0', '2017-09-01 12:55:31'),
(10, 6, 36, '', '', '', NULL, '0', NULL, '0', '0', '0', '0', '0', '0', '2017-09-01 13:20:56'),
(11, 9, 37, '', '', '', NULL, '0', NULL, '0', '0', '0', '0', '0', '0', '2017-09-01 13:37:58'),
(12, 2, 42, 'crop_20171221063713.jpeg', 'Software Engineer', '7', NULL, '0', 5, '0', '0', '0', '0', '0', '0', '2017-09-23 06:51:58'),
(14, 3, 44, 'crop_20180210080531.gif', 'Senior Lecturer', '33', NULL, '0', 33, '0', '0', '0', '0', '0', '0', '2017-10-05 11:14:13'),
(19, 2, 59, '', '', '', NULL, '0', NULL, '0', '0', '0', '0', '0', '0', '2017-10-13 07:45:54');

-- --------------------------------------------------------

--
-- Table structure for table `iw_type`
--

CREATE TABLE `iw_type` (
  `type_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_type`
--

INSERT INTO `iw_type` (`type_id`, `type`, `parent`, `added_date`) VALUES
(1, 'Expert', 0, '2017-10-10 18:59:24'),
(3, 'Early Career Researcher', 0, '2017-10-10 19:00:09'),
(6, 'Postgraduate', 0, '2017-10-10 19:00:51'),
(7, 'Honours', 0, '2017-10-10 19:10:02'),
(8, 'Undergraduate', 0, '2017-10-10 19:10:18'),
(13, 'Diploma', 0, '2017-10-11 00:40:42');

-- --------------------------------------------------------

--
-- Table structure for table `iw_type_of_enquiry`
--

CREATE TABLE `iw_type_of_enquiry` (
  `type_of_enquiry_id` int(11) NOT NULL,
  `enquiry` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_type_of_enquiry`
--

INSERT INTO `iw_type_of_enquiry` (`type_of_enquiry_id`, `enquiry`, `added_date`) VALUES
(1, 'Student Query', '2017-07-21 04:27:30'),
(2, 'Supervisor Query', '2017-07-21 04:27:30'),
(3, 'Provider Query', '2017-07-21 04:27:40'),
(5, 'Test Enquiry', '2017-08-31 03:48:12');

-- --------------------------------------------------------

--
-- Table structure for table `iw_users`
--

CREATE TABLE `iw_users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institutional_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile_code` smallint(6) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `status_id` int(11) NOT NULL,
  `check_in_period` int(11) NOT NULL,
  `usertype_id` int(11) NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_notification` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `allow_message` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `is_archived` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_users`
--

INSERT INTO `iw_users` (`user_id`, `first_name`, `last_name`, `email`, `institutional_email`, `password`, `mobile_code`, `mobile`, `status_id`, `check_in_period`, `usertype_id`, `remember_token`, `email_notification`, `allow_message`, `is_archived`, `added_date`) VALUES
(1, '', '', 'info@internship.com', '', '$2y$10$mdTH5IuzZMa9AbTGQP4aLuk1afjMdojdblJQ1rTV0yckgQ1OWXepW', 1, 987654321, 1, 1, 1, '4d9gUkcZrTjdlf6eEWxF69VoQ29j12onpcEsKX1mbWcIhWwEyUOvi7I7FfE6', '0', '0', '0', '2017-07-19 22:53:17'),
(3, 'Raveena', 'Nigam', 'raveena@singsys.com', '', '$2y$10$pCIJFwd62xdTr4F5DabchO2kWTah7V14ic4MI4YCTPXsLD85CXf3y', 0, 9876543123, 1, 0, 2, 'ZipnlhcMIJP2ZA7UwP5sUsmzNcUuuLZppmhFxPLRGiv7Ek88SuWMCkij4UYC', '0', '1', '0', '2018-02-12 22:15:06'),
(4, 'Duncan', 'Rayner', 'duncan775@gmail.com', '', '$2y$10$eQPf8FpsjFgyTDde/FFnPeqvFi9D8Rps8pid26QlX6x6asHhKT31e', 0, 123456, 1, 0, 2, 's4rcsJh7N9Kly5vkOKQhtT42UfTWzfgZuNsurZxXj6sXRb4pnGcuNkjpmRBk', '0', '1', '0', '2017-12-08 18:12:42'),
(6, 'Anjali', 'Pandey', 'anjali@singsys.com', '', '$2y$10$g47n73jo3OSQDAWk3UT7y.0ovgrACtsmtdPBJp35viCIQIqGqgNVa', 0, 8762345678, 1, 0, 2, '3TNF9weqPTt4QP8uZ7MNMn9jzgA0ZSpkMmNkN0crj6dPWc6aJHkZWFkpAytY', '1', '1', '0', '2017-11-13 03:22:47'),
(7, 'Kriti', 'Jaiswal', 'kriti@singsys.com', 'csushant+1@outlook.com', '$2y$10$JgMfE1287mDPARymXZ7RZ.XlfLJQgBkClgWzAhH38XYi2ZLcrTcz2', 0, 8721345678, 1, 0, 4, 'KIlcvKUWOA5KyKzmGfECBncvknCKJvyCHjYAqtDrFdilop7wo9jousAy4tN6', '1', '1', '0', '2018-02-12 22:14:42'),
(9, 'Kanchan', 'Srivastava', 'kanchan@singsys.com', '', '$2y$10$9uKXuhwfGF3HZw12cvDz2uZ4u0xZ35ctx7KTp3H1cdKFhyVByweXa', 0, 982345678, 1, 0, 3, 'z7tc9kMud6SWMSL7tG37Havq1tlDdoCtB09X4EBmT9SVl8gUkHEU480cocmJ', '0', '0', '0', '2017-09-09 04:52:56'),
(10, 'Pankaj', 'Pant', 'pankajpant@singsys.com', '', '$2y$10$JGsnmeOmOt0r0./R0z190.seZ9MTiSLfti5f5R74jlZMXHs8gwgsa', 0, 8765345678, 1, 0, 4, 'biI0h7FDJ0F0pCtzWaRCjMtelCu5gN8X8zNPNSb5Z8flaN0sLrf81BtXhFPF', '1', '1', '0', '2017-11-04 00:38:51'),
(13, 'Aatif', 'Nehal', 'aatif@singsys.com', '', '$2y$10$50odBLO4dulOACi1Ggwwn.0M6TixncNeBASY564cQ9EtKfGmdWe82', 0, 8723456781, 1, 0, 4, 'PPOfsEr5uqaMGTV8Zd0bYqia9sdSSSQB4qGrqigtFbSyc97WMFbVAFM4NvoO', '1', '1', '0', '2017-11-17 06:18:45'),
(14, 'Duncan', 'Rayner', 'duncanrayner1@gmail.com', '', '$2y$10$m49vL69gesdq1ta2B8B5N.ijiZmIKVJvu9hOReKIYK3CC7DBfdcPm', 0, 0, 5, 0, 4, '', '0', '0', '0', '2017-11-04 05:55:21'),
(15, 'Cyrus', 'Naji', 'naji.cyrus@gmail.com', '', '$2y$10$1CwYaWKSpsxg8pAhUak9kOCFv7NX2ZYDLXUc/IpEhSUHy3gT.pY/q', 0, 0, 1, 0, 4, '1XfniOxz8qhKWo5PwcszI3ICEt1GOYyaDjZZIr4EuwkFpHxtcmR7TUtFdEKN', '0', '0', '0', '2017-08-08 03:44:35'),
(27, 'Alpha', 'Dextor', 'alpha_1001@yopmail.com', '', '$2y$10$Z999rPtdc2xWhG7qPgI3YOejM.6cS5E7TIRSSFsq4/mdM1hqDYPSa', 0, 0, 1, 0, 2, 'DWSbfsalkd5KRhlLY4Wb6HGUA7yHLgs2r7RgWzV0paoqIZqPiQNmPkWvqnzD', '0', '0', '0', '2017-08-31 10:49:26'),
(39, 'Fred', 'Test', 'drtest60@yahoo.com', '', '$2y$10$A1JQUTGKMnzsGoQE.For..tfzulR5Z7Dkxa70PitEjCMu5g5jTpde', 0, 123456, 1, 0, 4, 'GocwnLhsS1vyOZYoNqyicO8JzsdVxiGML9VaVzPnWdirjFCcweNVpKtK0m7T', '0', '1', '0', '2017-11-24 01:23:55'),
(40, 'John', 'Teste', 'drtest60@mail.com', 'duncan775@gmail.com', '$2y$10$Kg9unO2jfrkpieemjaaqbuARbFPYZ3x/WXv9WQ7vlFSPNDfc5LkX2', 0, 654321, 1, 0, 4, 'YkbnfnmP7wgIgNIbX7pIQX3CjZ6bcmYBOU8iFGu9iSda6XtiK1yk7kij5ASd', '0', '1', '0', '2017-11-15 19:47:22'),
(41, 'David', 'Test', 'drtest60@gmx.com', 'duncan775@gmail.com', '$2y$10$07QD4WdNG736vMczBPmOm.9.xco6XPiLcWevc.eaMNZxHdG6Wgmtq', 0, 123456, 1, 0, 4, 'xi6rGRhuAsLeGAQTwyOiVSZQGE3FewOWJhGlfX8JvENnNvFCOvcGspsmPSkD', '0', '1', '0', '2017-12-17 00:39:56'),
(42, 'Abhishek', 'Trivedi', 'abhishektrivedi@singsys.com', '', '$2y$10$iZvSD7G68xOTiQjRGRlx6OXnW9Wx14WMzYig4pvm1dX9.gzMv2d6S', 0, 9876543234, 1, 0, 3, 'zem1gDM9pd5Y95myOOuhzXIEuu4Gw64O2TQ2FFHEVeELZbTmh2T4lf7B2IHp', '1', '1', '0', '2017-12-21 01:07:16'),
(44, 'Mary', 'Smithe', 'faith.yong24@gmail.com', '', '$2y$10$IPoQAncGEnoERFaeo5rei.T.YYyJHzaRkyU4fi4gX0uamj5FJ7dGm', 0, 12345678, 1, 0, 3, 'vR17AztGieJyqtbhI4Fc7ogdopeNAR04VH3EXrTXRaxKYBM6rqEBKKZz050V', '0', '1', '0', '2017-12-08 18:13:58'),
(64, 'Sushant', 'Chaudhary', 'sushant@singsys.com', 'raveena@singsys.com', '$2y$10$pK.zfR0eZMzncbM9cnZmnO7sjWdCcebegaJU4t9PgzvQFY0E2LrDC', 0, 9876523456, 1, 0, 4, '5tQCCeRplLFIcJXTaqJwQmiw9Es3i45JXc2wZhWItzhwNvHZsydmUsaRUilN', '0', '0', '0', '2018-02-09 01:03:06'),
(65, 'Pawan', 'Kumar', 'pawan@singsys.com', '', '$2y$10$ZJI5NZ9rdlJphQMRonk1EObjoo8kzcrVdDkn0OyfvGBJRAIsevude', 0, 0, 1, 0, 2, 'TFmyVp6tiC0fCCWy8bdwk3pRMQIgGCgYDHfDoeptucNL7DU3dU5eQwHPfdef', '0', '0', '0', '2018-01-31 09:14:46'),
(47, 'Vinay', 'Pandey', 'vinaypandey@singsys.com', '', '$2y$10$09JwIlf.VVo8ZJURzt1VIuHpeeAd9RUQcBhpeMEl2QRN9.xqFxmny', 0, 1234567899, 1, 0, 2, 'C38XSACtQCwJ6W3TUNRK0ebrcKZH2IWI1TkCWtbOF1mlWk53F56cbK4bXZjJ', '0', '0', '0', '2017-12-02 00:07:42'),
(59, 'Abhishek', 'Kumar', 'abhishekkumar@singsys.com', '', '$2y$10$uHjEkvvKyxFKU0hThUf5OOsdL8yzuTWZS0XxtGCMgoW2vT7s1L6Im', 0, 0, 4, 0, 3, '', '0', '0', '0', '2017-12-20 01:16:02'),
(63, 'William', 'D\'Cousta', 'w_mark@yopmail.com', 'w_mark@yopmail.com', '$2y$10$QLaRFI8s0j1yn8k3KSxymeUF6ISCznfKPq/g4IXz/ren.XYQlpohO', 0, 7623487654, 1, 0, 4, 'jw7sbanJd1T1jtHpAAO0EXJYicyddWS4WPm4HbmgiPipEvDOEJnAp1dflceQ', '1', '1', '0', '2017-11-06 07:23:26'),
(66, 'Ashish', 'Gupta', 'sushant+1@singsys.com', '', '$2y$10$QfP90q/4.ENTVJ.1K9Fp4.c7xUZjTdw881eQPo0OodywEWKcoq/P6', 0, 0, 1, 0, 4, '', '0', '0', '0', '2018-02-09 01:11:28');

--
-- Triggers `iw_users`
--
DELIMITER $$
CREATE TRIGGER `delete_user` BEFORE DELETE ON `iw_users` FOR EACH ROW BEGIN
        
        
        SET @usertype = OLD.usertype_id; 

				IF @usertype = 2 THEN 
                        DELETE FROM `iw_provider_admin_profile` WHERE user_id = OLD.user_id;   
                END IF; 
                IF @usertype = 3 THEN 
                        DELETE FROM `iw_license_supervisor` WHERE user_id = OLD.user_id; 
                        DELETE FROM `iw_supervisor_profile` WHERE user_id = OLD.user_id; 
                        DELETE FROM `iw_student_favorite` WHERE supervisor_id = OLD.user_id; 
                END IF; 

                IF @usertype = 4 THEN 
                        DELETE FROM `iw_student_profile` WHERE user_id = OLD.user_id;  
                        DELETE FROM `iw_student_placement` WHERE user_id = OLD.user_id;  
                END IF; 

                DELETE FROM `iw_blocked_contacts` WHERE user_id = OLD.user_id;
                DELETE FROM `iw_blocked_contacts` WHERE blocked_id = OLD.user_id;
                DELETE FROM `iw_chat_group` WHERE user_id = OLD.user_id; 
                DELETE FROM `iw_chat_group_feedback` WHERE supervisor_id = OLD.user_id;
                DELETE FROM `iw_chat_group_profile_placement` WHERE user_id = OLD.user_id;
                DELETE FROM `iw_chat_group_user` WHERE user_id = OLD.user_id;
                DELETE FROM `iw_chat_message_details` WHERE sender_id = OLD.user_id;
                DELETE FROM `iw_chat_message_details` WHERE receiver_id = OLD.user_id;
                DELETE FROM `iw_email_verification` WHERE user_id = OLD.user_id;
                DELETE FROM `iw_institutional_email_verification` WHERE user_id = OLD.user_id;
                DELETE FROM `iw_featured_user` WHERE user_id = OLD.user_id;
                DELETE FROM `iw_notification` WHERE sender_id = OLD.user_id;
                DELETE FROM `iw_notification` WHERE receiver_id = OLD.user_id;
                DELETE FROM `iw_password_resets` WHERE user_id = OLD.user_id;
                DELETE FROM `iw_password_verification` WHERE user_id = OLD.user_id;
                DELETE FROM `iw_placement` WHERE user_id = OLD.user_id;
                DELETE FROM `iw_provider_notes` WHERE user_id = OLD.user_id;
                DELETE FROM `iw_user_license` WHERE user_id = OLD.user_id;
                DELETE FROM `iw_user_log` WHERE user_id = OLD.user_id;
        
        
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `iw_usertype`
--

CREATE TABLE `iw_usertype` (
  `usertype_id` int(11) NOT NULL,
  `usertype` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iw_user_license`
--

CREATE TABLE `iw_user_license` (
  `user_license_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `license` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_user_license`
--

INSERT INTO `iw_user_license` (`user_license_id`, `user_id`, `license`, `created_date`) VALUES
(1, 3, 31, '2017-11-27 03:36:25'),
(2, 4, 31, '2017-11-27 03:50:31'),
(3, 27, 15, '2017-12-15 12:14:06'),
(4, 65, 20, '2018-01-31 09:14:46');

-- --------------------------------------------------------

--
-- Table structure for table `iw_user_log`
--

CREATE TABLE `iw_user_log` (
  `user_log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_active` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('ON','OFF') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'OFF'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iw_user_log`
--

INSERT INTO `iw_user_log` (`user_log_id`, `user_id`, `ip_address`, `last_active`, `status`) VALUES
(1, 3, '192.168.1.101', '2017-10-10 06:05:06', 'OFF'),
(2, 7, '192.168.1.101', '2017-10-10 13:52:16', 'OFF'),
(3, 3, '192.168.1.101', '2017-10-10 08:42:38', 'OFF'),
(4, 4, '141.168.25.54', '2017-10-10 09:25:49', 'OFF'),
(5, 3, '192.168.1.101', '2017-10-10 13:52:19', 'OFF'),
(6, 44, '141.168.25.54', '2017-10-10 10:52:35', 'OFF'),
(7, 4, '141.168.25.54', '2017-10-10 10:56:28', 'OFF'),
(8, 44, '141.168.25.54', '2017-10-10 11:01:18', 'OFF'),
(9, 4, '141.168.25.54', '2017-10-10 11:03:18', 'OFF'),
(10, 44, '141.168.25.54', '2017-10-10 11:06:39', 'OFF'),
(11, 39, '141.168.25.54', '2017-10-11 02:38:30', 'OFF'),
(12, 4, '141.168.25.54', '2017-10-11 11:51:17', 'OFF'),
(13, 3, '192.168.1.101', '2017-10-11 08:26:31', 'OFF'),
(14, 3, '192.168.1.101', '2017-10-11 12:35:57', 'OFF'),
(15, 7, '192.168.1.101', '2017-10-11 12:25:57', 'OFF'),
(16, 9, '192.168.1.101', '2017-10-11 12:26:30', 'OFF'),
(17, 42, '192.168.1.101', '2017-10-11 13:51:10', 'OFF'),
(18, 7, '192.168.1.101', '2017-10-11 13:01:20', 'OFF'),
(19, 7, '192.168.1.101', '2017-10-11 13:04:33', 'OFF'),
(20, 4, '101.178.163.19', '2017-10-12 05:02:24', 'OFF'),
(21, 39, '141.168.25.54', '2017-10-12 05:04:32', 'OFF'),
(22, 4, '141.168.25.54', '2017-10-12 05:25:57', 'OFF'),
(1073, 40, '141.168.25.54', '2017-12-05 12:18:03', 'OFF'),
(1072, 44, '141.168.25.54', '2017-12-05 10:33:53', 'OFF'),
(1071, 7, '192.168.1.101', '2017-12-05 13:01:44', 'OFF'),
(1086, 41, '141.168.25.54', '2017-12-06 11:22:48', 'OFF'),
(1070, 7, '192.168.1.101', '2017-12-05 06:07:30', 'OFF'),
(1069, 44, '120.20.190.201', '2017-12-05 01:11:06', 'OFF'),
(1068, 9, '120.20.190.201', '2017-12-05 01:07:43', 'OFF'),
(1085, 3, '192.168.1.101', '2017-12-06 14:07:24', 'OFF'),
(1084, 41, '141.168.25.54', '2017-12-06 04:26:44', 'OFF'),
(1067, 44, '120.20.190.201', '2017-12-05 01:05:47', 'OFF'),
(35, 47, '192.168.1.101', '2017-10-12 07:33:18', 'OFF'),
(36, 47, '192.168.1.101', '2017-10-12 07:36:07', 'OFF'),
(37, 47, '192.168.1.101', '2017-10-12 07:44:52', 'OFF'),
(38, 47, '192.168.1.101', '2017-10-12 09:10:59', 'OFF'),
(39, 47, '192.168.1.101', '2017-10-12 10:58:31', 'OFF'),
(1083, 44, '141.168.25.54', '2017-12-06 04:26:46', 'OFF'),
(1082, 44, '101.178.163.19', '2017-12-06 03:19:43', 'OFF'),
(1081, 41, '101.178.163.19', '2017-12-06 02:26:01', 'OFF'),
(43, 47, '192.168.1.101', '2017-10-12 13:06:52', 'OFF'),
(1066, 39, '120.20.190.201', '2017-12-05 00:59:03', 'OFF'),
(46, 39, '141.168.25.54', '2017-10-12 12:32:04', 'OFF'),
(1080, 41, '141.168.25.54', '2017-12-06 00:27:33', 'OFF'),
(49, 47, '192.168.1.101', '2017-10-12 13:42:33', 'OFF'),
(1065, 44, '141.168.25.54', '2017-12-05 00:49:49', 'OFF'),
(1064, 4, '141.168.25.54', '2017-12-04 23:39:46', 'OFF'),
(1063, 41, '141.168.25.54', '2017-12-04 23:37:31', 'OFF'),
(53, 7, '27.97.251.54', '2017-10-13 05:55:37', 'OFF'),
(54, 47, '192.168.1.101', '2017-10-13 04:17:20', 'OFF'),
(1097, 13, '192.168.1.101', '2017-12-07 14:03:53', 'OFF'),
(1062, 44, '141.168.25.54', '2017-12-04 23:31:58', 'OFF'),
(1096, 3, '192.168.1.101', '2017-12-07 09:02:39', 'OFF'),
(59, 47, '192.168.1.101', '2017-10-13 04:54:52', 'OFF'),
(1061, 44, '141.168.25.54', '2017-12-04 23:21:33', 'OFF'),
(1079, 44, '141.168.25.54', '2017-12-06 00:08:44', 'OFF'),
(63, 47, '192.168.1.101', '2017-10-13 05:24:15', 'OFF'),
(64, 47, '192.168.1.101', '2017-10-13 05:24:55', 'OFF'),
(65, 47, '192.168.1.101', '2017-10-13 05:56:05', 'OFF'),
(66, 4, '120.20.100.169', '2017-10-13 06:05:43', 'OFF'),
(1078, 44, '141.168.25.54', '2017-12-05 22:50:38', 'OFF'),
(1077, 44, '141.168.25.54', '2017-12-05 22:46:26', 'OFF'),
(69, 7, '192.168.1.101', '2017-10-13 05:55:39', 'OFF'),
(70, 7, '192.168.1.101', '2017-10-13 06:35:54', 'OFF'),
(1076, 41, '141.168.25.54', '2017-12-05 22:46:06', 'OFF'),
(1060, 3, '192.168.1.101', '2017-12-04 14:07:59', 'OFF'),
(1059, 3, '192.168.1.101', '2017-12-04 12:16:42', 'OFF'),
(1058, 44, '141.168.25.54', '2017-12-04 12:18:06', 'OFF'),
(77, 47, '192.168.1.101', '2017-10-13 06:25:31', 'OFF'),
(1108, 3, '192.168.1.101', '2017-12-08 09:18:01', 'OFF'),
(80, 7, '192.168.1.101', '2017-10-13 07:48:47', 'OFF'),
(1120, 44, '141.168.25.54', '2017-12-11 06:01:22', 'OFF'),
(1119, 41, '141.168.25.54', '2017-12-11 03:19:01', 'OFF'),
(1118, 44, '141.168.25.54', '2017-12-11 03:16:09', 'OFF'),
(84, 3, '192.168.1.101', '2017-10-13 07:44:41', 'OFF'),
(1117, 39, '141.168.25.54', '2017-12-09 08:47:55', 'OFF'),
(1095, 7, '192.168.1.101', '2017-12-07 14:03:53', 'OFF'),
(1094, 3, '192.168.1.101', '2017-12-07 08:41:19', 'OFF'),
(1057, 44, '141.168.25.54', '2017-12-04 12:08:51', 'OFF'),
(90, 3, '192.168.1.101', '2017-10-13 07:46:46', 'OFF'),
(91, 3, '192.168.1.101', '2017-10-13 08:03:17', 'OFF'),
(92, 7, '192.168.1.101', '2017-10-13 09:29:06', 'OFF'),
(93, 3, '192.168.1.101', '2017-10-13 09:17:40', 'OFF'),
(1056, 44, '141.168.25.54', '2017-12-04 12:00:33', 'OFF'),
(95, 47, '192.168.1.101', '2017-10-13 08:27:59', 'OFF'),
(96, 47, '192.168.1.101', '2017-10-13 08:37:06', 'OFF'),
(1107, 44, '175.45.84.98', '2017-12-08 03:53:58', 'OFF'),
(1106, 39, '141.168.25.54', '2017-12-07 23:04:47', 'OFF'),
(1116, 4, '120.20.74.255', '2017-12-09 00:03:24', 'OFF'),
(102, 3, '192.168.1.101', '2017-10-13 09:33:46', 'OFF'),
(103, 47, '192.168.1.101', '2017-10-13 09:20:19', 'OFF'),
(1055, 3, '192.168.1.101', '2017-12-04 12:14:02', 'OFF'),
(105, 47, '192.168.1.101', '2017-10-13 09:30:35', 'OFF'),
(106, 47, '192.168.1.101', '2017-10-13 09:32:50', 'OFF'),
(107, 7, '192.168.1.101', '2017-10-13 09:47:03', 'OFF'),
(1115, 44, '120.20.74.255', '2017-12-08 23:47:23', 'OFF'),
(109, 3, '192.168.1.101', '2017-10-13 09:57:45', 'OFF'),
(1114, 4, '120.20.74.255', '2017-12-08 23:43:08', 'OFF'),
(1093, 41, '141.168.25.54', '2017-12-07 03:58:05', 'OFF'),
(113, 7, '192.168.1.101', '2017-10-13 09:57:31', 'OFF'),
(1113, 4, '141.168.25.54', '2017-12-08 20:53:35', 'OFF'),
(115, 47, '192.168.1.101', '2017-10-13 09:57:53', 'OFF'),
(1112, 44, '192.168.1.101', '2017-12-08 14:15:52', 'OFF'),
(117, 7, '192.168.1.101', '2017-10-13 10:26:46', 'OFF'),
(118, 3, '192.168.1.101', '2017-10-13 14:20:21', 'OFF'),
(1092, 4, '141.168.25.54', '2017-12-07 00:22:44', 'OFF'),
(1054, 44, '141.168.25.54', '2017-12-04 11:09:19', 'OFF'),
(122, 47, '192.168.1.101', '2017-10-13 10:32:47', 'OFF'),
(123, 7, '192.168.1.101', '2017-10-13 11:09:28', 'OFF'),
(1091, 39, '141.168.25.54', '2017-12-06 22:47:30', 'OFF'),
(125, 47, '192.168.1.101', '2017-10-13 11:05:49', 'OFF'),
(1103, 44, '141.168.25.54', '2017-12-07 22:48:28', 'OFF'),
(1104, 4, '141.168.25.54', '2017-12-07 22:54:35', 'OFF'),
(1105, 44, '141.168.25.54', '2017-12-07 22:58:14', 'OFF'),
(1075, 3, '192.168.1.101', '2017-12-05 13:52:21', 'OFF'),
(1074, 40, '192.168.1.101', '2017-12-05 13:38:31', 'OFF'),
(132, 7, '192.168.1.101', '2017-10-13 12:09:02', 'OFF'),
(1090, 41, '141.168.25.54', '2017-12-06 22:27:02', 'OFF'),
(135, 47, '192.168.1.101', '2017-10-13 11:36:34', 'OFF'),
(136, 47, '192.168.1.101', '2017-10-13 11:49:28', 'OFF'),
(1102, 4, '141.168.25.54', '2017-12-07 22:46:54', 'OFF'),
(1053, 44, '141.168.25.54', '2017-12-04 09:37:45', 'OFF'),
(139, 47, '192.168.1.101', '2017-10-13 12:12:15', 'OFF'),
(140, 4, '141.168.25.54', '2017-10-13 11:50:10', 'OFF'),
(141, 4, '141.168.25.54', '2017-10-13 12:39:16', 'OFF'),
(1052, 44, '141.168.25.54', '2017-12-04 07:10:19', 'OFF'),
(143, 7, '192.168.1.101', '2017-10-13 12:41:29', 'OFF'),
(144, 47, '192.168.1.101', '2017-10-13 12:28:21', 'OFF'),
(1111, 44, '141.168.25.54', '2017-12-08 11:11:38', 'OFF'),
(1098, 39, '141.168.25.54', '2017-12-07 12:11:11', 'OFF'),
(1051, 41, '141.168.25.54', '2017-12-04 06:53:38', 'OFF'),
(148, 40, '141.168.25.54', '2017-10-13 12:40:31', 'OFF'),
(149, 40, '141.168.25.54', '2017-10-13 12:47:17', 'OFF'),
(150, 4, '141.168.25.54', '2017-10-13 12:51:16', 'OFF'),
(151, 44, '141.168.25.54', '2017-10-13 12:54:59', 'OFF'),
(1110, 44, '141.168.25.54', '2017-12-08 10:08:13', 'OFF'),
(1050, 41, '120.20.80.176', '2017-12-04 02:29:03', 'OFF'),
(154, 7, '192.168.1.101', '2017-10-13 14:20:24', 'OFF'),
(1109, 7, '192.168.1.101', '2017-12-08 12:04:11', 'OFF'),
(1101, 4, '141.168.25.54', '2017-12-07 22:35:49', 'OFF'),
(1049, 39, '120.20.80.176', '2017-12-04 02:27:34', 'OFF'),
(1048, 40, '120.20.80.176', '2017-12-04 02:25:09', 'OFF'),
(159, 4, '141.168.25.54', '2017-10-15 08:33:53', 'OFF'),
(160, 40, '141.168.25.54', '2017-10-15 08:34:33', 'OFF'),
(161, 39, '141.168.25.54', '2017-10-15 08:35:59', 'OFF'),
(162, 4, '141.168.25.54', '2017-10-15 09:03:52', 'OFF'),
(163, 44, '141.168.25.54', '2017-10-15 11:29:47', 'OFF'),
(164, 4, '103.232.208.184', '2017-10-16 00:05:10', 'OFF'),
(165, 40, '103.232.208.177', '2017-10-16 00:53:40', 'OFF'),
(166, 4, '103.232.208.168', '2017-10-16 01:06:21', 'OFF'),
(167, 4, '141.168.25.54', '2017-10-16 04:40:29', 'OFF'),
(1047, 41, '120.20.80.176', '2017-12-04 02:15:42', 'OFF'),
(1046, 44, '141.168.25.54', '2017-12-04 01:37:32', 'OFF'),
(170, 7, '192.168.1.101', '2017-10-16 05:08:20', 'OFF'),
(171, 7, '192.168.1.101', '2017-10-16 05:11:20', 'OFF'),
(172, 7, '192.168.1.101', '2017-10-16 06:39:47', 'OFF'),
(1100, 41, '141.168.25.54', '2017-12-07 22:33:10', 'OFF'),
(1089, 4, '141.168.25.54', '2017-12-06 22:22:24', 'OFF'),
(1088, 41, '141.168.25.54', '2017-12-06 22:18:45', 'OFF'),
(1099, 44, '141.168.25.54', '2017-12-07 12:12:52', 'OFF'),
(178, 3, '192.168.1.101', '2017-10-16 12:36:53', 'OFF'),
(179, 42, '192.168.1.101', '2017-10-16 07:33:08', 'OFF'),
(180, 4, '141.168.25.54', '2017-10-16 12:21:27', 'OFF'),
(1045, 44, '141.168.25.54', '2017-12-03 23:53:09', 'OFF'),
(182, 42, '192.168.1.101', '2017-10-16 13:03:57', 'OFF'),
(183, 7, '192.168.1.101', '2017-10-16 14:01:14', 'OFF'),
(184, 3, '192.168.1.101', '2017-10-16 14:01:11', 'OFF'),
(185, 3, '192.168.1.101', '2017-10-17 07:31:25', 'OFF'),
(186, 3, '192.168.1.101', '2017-10-17 07:33:27', 'OFF'),
(187, 4, '141.168.25.54', '2017-10-17 11:14:09', 'OFF'),
(188, 44, '141.168.25.54', '2017-10-17 11:14:53', 'OFF'),
(189, 4, '141.168.25.54', '2017-10-17 11:46:42', 'OFF'),
(190, 4, '120.20.55.21', '2017-10-18 01:15:55', 'OFF'),
(191, 39, '120.20.55.21', '2017-10-18 01:28:23', 'OFF'),
(192, 4, '141.168.25.54', '2017-10-19 03:23:36', 'OFF'),
(193, 4, '141.168.25.54', '2017-10-19 04:51:21', 'OFF'),
(194, 4, '141.168.25.54', '2017-10-23 03:42:09', 'OFF'),
(195, 7, '192.168.1.101', '2017-10-23 07:06:42', 'OFF'),
(196, 40, '141.168.25.54', '2017-10-23 07:50:41', 'OFF'),
(197, 7, '192.168.1.101', '2017-10-23 14:44:57', 'OFF'),
(198, 40, '141.168.25.54', '2017-10-23 11:35:07', 'OFF'),
(1087, 44, '141.168.25.54', '2017-12-06 11:23:49', 'OFF'),
(200, 3, '192.168.1.101', '2017-10-23 13:47:20', 'OFF'),
(201, 4, '141.168.25.54', '2017-10-24 04:07:02', 'OFF'),
(202, 7, '192.168.1.101', '2017-10-24 05:58:08', 'OFF'),
(203, 44, '141.168.25.54', '2017-10-24 04:09:14', 'OFF'),
(204, 44, '141.168.25.54', '2017-10-24 04:10:01', 'OFF'),
(205, 7, '192.168.1.101', '2017-10-24 11:46:46', 'OFF'),
(206, 40, '141.168.25.54', '2017-10-24 11:15:41', 'OFF'),
(207, 40, '141.168.25.54', '2017-10-24 11:16:02', 'OFF'),
(208, 40, '141.168.25.54', '2017-10-24 11:46:13', 'OFF'),
(209, 44, '141.168.25.54', '2017-10-25 03:55:11', 'OFF'),
(210, 7, '192.168.1.101', '2017-10-25 12:21:55', 'OFF'),
(211, 3, '192.168.1.101', '2017-10-25 13:57:06', 'OFF'),
(212, 40, '101.178.163.19', '2017-10-26 08:09:06', 'OFF'),
(213, 3, '192.168.1.101', '2017-10-26 12:37:32', 'OFF'),
(214, 7, '192.168.1.101', '2017-10-26 06:42:17', 'OFF'),
(215, 7, '192.168.1.101', '2017-10-26 10:41:58', 'OFF'),
(216, 44, '141.168.25.54', '2017-10-26 11:27:49', 'OFF'),
(217, 44, '141.168.25.54', '2017-10-26 12:06:35', 'OFF'),
(218, 7, '192.168.1.101', '2017-10-26 13:16:53', 'OFF'),
(219, 7, '192.168.1.101', '2017-10-26 13:48:57', 'OFF'),
(220, 44, '120.20.226.112', '2017-10-27 04:42:25', 'OFF'),
(221, 40, '120.20.226.112', '2017-10-27 04:45:17', 'OFF'),
(222, 44, '141.168.25.54', '2017-10-27 11:47:42', 'OFF'),
(223, 40, '141.168.25.54', '2017-10-27 11:58:39', 'OFF'),
(224, 3, '192.168.1.101', '2017-10-28 11:08:32', 'OFF'),
(225, 3, '192.168.1.101', '2017-10-28 11:25:54', 'OFF'),
(226, 7, '192.168.1.101', '2017-10-28 13:38:20', 'OFF'),
(227, 40, '141.168.25.54', '2017-10-28 11:49:39', 'OFF'),
(228, 3, '192.168.1.101', '2017-10-28 11:42:29', 'OFF'),
(229, 3, '192.168.1.101', '2017-10-28 13:50:19', 'OFF'),
(230, 40, '141.168.25.54', '2017-10-28 11:49:58', 'OFF'),
(231, 40, '141.168.25.54', '2017-10-28 12:02:40', 'OFF'),
(232, 44, '141.168.25.54', '2017-10-28 21:23:29', 'OFF'),
(233, 4, '141.168.25.54', '2017-10-28 21:28:52', 'OFF'),
(234, 40, '141.168.25.54', '2017-10-28 23:25:05', 'OFF'),
(235, 39, '120.20.67.27', '2017-10-29 01:05:33', 'OFF'),
(236, 40, '141.168.25.54', '2017-10-29 06:12:01', 'OFF'),
(237, 4, '141.168.25.54', '2017-10-29 06:13:46', 'OFF'),
(238, 40, '141.168.25.54', '2017-10-29 10:45:56', 'OFF'),
(239, 39, '141.168.25.54', '2017-10-29 10:47:42', 'OFF'),
(240, 41, '141.168.25.54', '2017-10-29 10:51:25', 'OFF'),
(241, 39, '141.168.25.54', '2017-10-29 10:52:43', 'OFF'),
(242, 39, '141.168.25.54', '2017-10-29 10:53:10', 'OFF'),
(243, 39, '141.168.25.54', '2017-10-29 11:21:56', 'OFF'),
(244, 41, '141.168.25.54', '2017-10-29 11:29:17', 'OFF'),
(245, 39, '141.168.25.54', '2017-10-29 11:45:35', 'OFF'),
(246, 4, '141.168.25.54', '2017-10-29 11:45:56', 'OFF'),
(247, 4, '141.168.25.54', '2017-10-29 11:52:27', 'OFF'),
(248, 41, '141.168.25.54', '2017-10-29 22:54:09', 'OFF'),
(249, 39, '141.168.25.54', '2017-10-29 23:25:27', 'OFF'),
(250, 41, '141.168.25.54', '2017-10-29 23:29:33', 'OFF'),
(251, 39, '141.168.25.54', '2017-10-29 23:33:35', 'OFF'),
(252, 4, '141.168.25.54', '2017-10-30 04:35:11', 'OFF'),
(253, 3, '192.168.1.101', '2017-10-30 11:11:51', 'OFF'),
(254, 10, '192.168.1.101', '2017-10-30 13:22:42', 'OFF'),
(255, 7, '192.168.1.101', '2017-10-30 18:02:47', 'OFF'),
(256, 4, '141.168.25.54', '2017-10-30 22:28:11', 'OFF'),
(257, 4, '141.168.25.54', '2017-10-30 23:24:01', 'OFF'),
(258, 4, '141.168.25.54', '2017-10-31 04:16:25', 'OFF'),
(259, 4, '141.168.25.54', '2017-10-31 04:26:36', 'OFF'),
(260, 42, '192.168.1.101', '2017-10-31 04:33:41', 'OFF'),
(261, 3, '192.168.1.101', '2017-10-31 04:38:01', 'OFF'),
(262, 3, '192.168.1.101', '2017-10-31 08:58:43', 'OFF'),
(263, 7, '192.168.1.101', '2017-10-31 07:11:17', 'OFF'),
(264, 7, '192.168.1.101', '2017-10-31 13:49:15', 'OFF'),
(265, 10, '192.168.1.101', '2017-10-31 13:49:15', 'OFF'),
(266, 4, '141.168.25.54', '2017-10-31 10:36:19', 'OFF'),
(267, 41, '141.168.25.54', '2017-10-31 11:08:23', 'OFF'),
(268, 40, '141.168.25.54', '2017-10-31 11:17:29', 'OFF'),
(269, 39, '141.168.25.54', '2017-10-31 11:25:18', 'OFF'),
(270, 41, '141.168.25.54', '2017-10-31 11:29:52', 'OFF'),
(271, 41, '141.168.25.54', '2017-10-31 11:33:09', 'OFF'),
(272, 41, '141.168.25.54', '2017-10-31 11:35:58', 'OFF'),
(273, 40, '141.168.25.54', '2017-10-31 11:37:53', 'OFF'),
(274, 4, '101.178.163.19', '2017-11-01 02:30:46', 'OFF'),
(275, 41, '101.178.163.19', '2017-11-01 04:20:44', 'OFF'),
(276, 7, '192.168.1.101', '2017-11-01 05:50:01', 'OFF'),
(277, 7, '192.168.1.101', '2017-11-01 13:44:20', 'OFF'),
(278, 10, '192.168.1.101', '2017-11-01 13:34:15', 'OFF'),
(279, 4, '141.168.25.54', '2017-11-02 02:38:11', 'OFF'),
(280, 44, '141.168.25.54', '2017-11-02 02:40:04', 'OFF'),
(281, 44, '141.168.25.54', '2017-11-02 02:42:31', 'OFF'),
(282, 4, '141.168.25.54', '2017-11-02 02:48:17', 'OFF'),
(283, 4, '141.168.25.54', '2017-11-02 03:42:28', 'OFF'),
(284, 44, '141.168.25.54', '2017-11-02 03:46:45', 'OFF'),
(285, 44, '192.168.1.101', '2017-11-02 05:37:57', 'OFF'),
(286, 44, '141.168.25.54', '2017-11-02 07:10:20', 'OFF'),
(287, 41, '141.168.25.54', '2017-11-02 07:17:18', 'OFF'),
(288, 41, '141.168.25.54', '2017-11-02 08:59:18', 'OFF'),
(289, 4, '141.168.25.54', '2017-11-02 11:13:32', 'OFF'),
(290, 44, '141.168.25.54', '2017-11-02 11:15:38', 'OFF'),
(291, 41, '141.168.25.54', '2017-11-02 11:40:18', 'OFF'),
(292, 44, '141.168.25.54', '2017-11-02 11:41:47', 'OFF'),
(293, 44, '141.168.25.54', '2017-11-03 06:00:48', 'OFF'),
(294, 4, '141.168.25.54', '2017-11-03 06:04:15', 'OFF'),
(295, 4, '141.168.25.54', '2017-11-03 06:11:36', 'OFF'),
(296, 4, '141.168.25.54', '2017-11-03 06:20:16', 'OFF'),
(297, 4, '141.168.25.54', '2017-11-03 11:59:32', 'OFF'),
(298, 4, '141.168.25.54', '2017-11-03 12:49:35', 'OFF'),
(299, 3, '192.168.1.101', '2017-11-03 13:52:34', 'OFF'),
(300, 7, '192.168.1.101', '2017-11-03 13:52:37', 'OFF'),
(301, 4, '141.168.25.54', '2017-11-03 23:56:06', 'OFF'),
(302, 44, '120.20.34.46', '2017-11-04 00:03:53', 'OFF'),
(303, 3, '192.168.1.101', '2017-11-04 10:23:09', 'OFF'),
(304, 7, '192.168.1.101', '2017-11-04 06:05:22', 'OFF'),
(305, 4, '192.168.1.101', '2017-11-04 06:05:44', 'OFF'),
(306, 10, '192.168.1.101', '2017-11-04 10:23:12', 'OFF'),
(307, 41, '141.168.25.54', '2017-11-04 10:37:42', 'OFF'),
(308, 39, '141.168.25.54', '2017-11-04 10:38:04', 'OFF'),
(309, 39, '141.168.25.54', '2017-11-04 10:39:09', 'OFF'),
(310, 44, '141.168.25.54', '2017-11-04 10:40:14', 'OFF'),
(311, 40, '141.168.25.54', '2017-11-04 10:59:46', 'OFF'),
(312, 40, '141.168.25.54', '2017-11-04 11:11:42', 'OFF'),
(313, 41, '141.168.25.54', '2017-11-04 11:17:11', 'OFF'),
(314, 41, '141.168.25.54', '2017-11-04 11:25:59', 'OFF'),
(315, 41, '141.168.25.54', '2017-11-04 11:33:37', 'OFF'),
(316, 4, '141.168.25.54', '2017-11-04 12:04:52', 'OFF'),
(317, 39, '141.168.25.54', '2017-11-05 05:16:28', 'OFF'),
(318, 41, '141.168.25.54', '2017-11-05 08:59:02', 'OFF'),
(319, 4, '141.168.25.54', '2017-11-05 22:33:13', 'OFF'),
(320, 41, '141.168.25.54', '2017-11-05 22:53:14', 'OFF'),
(321, 44, '141.168.25.54', '2017-11-05 22:54:39', 'OFF'),
(322, 41, '141.168.25.54', '2017-11-05 23:01:00', 'OFF'),
(323, 44, '141.168.25.54', '2017-11-05 23:01:18', 'OFF'),
(324, 44, '141.168.25.54', '2017-11-05 23:05:29', 'OFF'),
(325, 41, '141.168.25.54', '2017-11-05 23:06:30', 'OFF'),
(326, 44, '141.168.25.54', '2017-11-05 23:12:24', 'OFF'),
(327, 4, '141.168.25.54', '2017-11-05 23:14:11', 'OFF'),
(328, 4, '141.168.25.54', '2017-11-05 23:44:27', 'OFF'),
(329, 41, '141.168.25.54', '2017-11-05 23:46:33', 'OFF'),
(330, 40, '141.168.25.54', '2017-11-05 23:54:37', 'OFF'),
(331, 44, '141.168.25.54', '2017-11-05 23:55:56', 'OFF'),
(332, 40, '141.168.25.54', '2017-11-06 00:31:13', 'OFF'),
(333, 44, '120.20.153.36', '2017-11-06 00:32:36', 'OFF'),
(334, 40, '120.20.153.36', '2017-11-06 00:36:38', 'OFF'),
(335, 39, '120.20.153.36', '2017-11-06 00:38:45', 'OFF'),
(336, 40, '120.20.153.36', '2017-11-06 00:46:25', 'OFF'),
(337, 41, '120.20.153.36', '2017-11-06 00:53:36', 'OFF'),
(338, 40, '120.20.153.36', '2017-11-06 00:54:52', 'OFF'),
(339, 39, '120.20.153.36', '2017-11-06 00:57:56', 'OFF'),
(340, 40, '120.20.153.36', '2017-11-06 01:00:02', 'OFF'),
(341, 41, '120.20.153.36', '2017-11-06 01:05:38', 'OFF'),
(342, 40, '120.20.153.36', '2017-11-06 01:16:55', 'OFF'),
(343, 41, '120.20.153.36', '2017-11-06 01:18:31', 'OFF'),
(344, 39, '120.20.153.36', '2017-11-06 01:20:12', 'OFF'),
(345, 44, '120.20.153.36', '2017-11-06 01:23:39', 'OFF'),
(346, 40, '120.20.153.36', '2017-11-06 01:25:48', 'OFF'),
(347, 44, '120.20.153.36', '2017-11-06 01:34:42', 'OFF'),
(348, 40, '120.20.153.36', '2017-11-06 01:37:24', 'OFF'),
(349, 40, '120.20.153.36', '2017-11-06 01:40:05', 'OFF'),
(350, 44, '120.20.153.36', '2017-11-06 01:40:31', 'OFF'),
(351, 44, '120.20.153.36', '2017-11-06 01:42:11', 'OFF'),
(352, 41, '120.20.153.36', '2017-11-06 01:43:23', 'OFF'),
(353, 39, '120.20.153.36', '2017-11-06 01:45:33', 'OFF'),
(354, 44, '120.20.153.36', '2017-11-06 01:50:38', 'OFF'),
(355, 39, '120.20.153.36', '2017-11-06 01:52:37', 'OFF'),
(356, 41, '120.20.153.36', '2017-11-06 01:54:05', 'OFF'),
(357, 41, '141.168.25.54', '2017-11-06 02:49:47', 'OFF'),
(358, 40, '141.168.25.54', '2017-11-06 02:54:05', 'OFF'),
(359, 44, '141.168.25.54', '2017-11-06 02:54:57', 'OFF'),
(360, 4, '141.168.25.54', '2017-11-06 03:11:32', 'OFF'),
(361, 41, '141.168.25.54', '2017-11-06 03:12:12', 'OFF'),
(362, 41, '141.168.25.54', '2017-11-06 03:12:54', 'OFF'),
(363, 40, '141.168.25.54', '2017-11-06 03:21:21', 'OFF'),
(364, 4, '141.168.25.54', '2017-11-06 03:32:25', 'OFF'),
(365, 3, '192.168.1.101', '2017-11-06 05:49:08', 'OFF'),
(366, 4, '141.168.25.54', '2017-11-06 06:12:51', 'OFF'),
(367, 40, '141.168.25.54', '2017-11-06 06:13:20', 'OFF'),
(368, 39, '141.168.25.54', '2017-11-06 06:14:03', 'OFF'),
(369, 41, '141.168.25.54', '2017-11-06 06:24:27', 'OFF'),
(370, 41, '141.168.25.54', '2017-11-06 06:35:47', 'OFF'),
(371, 4, '192.168.1.101', '2017-11-06 08:40:30', 'OFF'),
(372, 41, '141.168.25.54', '2017-11-06 08:37:32', 'OFF'),
(373, 40, '141.168.25.54', '2017-11-06 08:38:49', 'OFF'),
(374, 39, '141.168.25.54', '2017-11-06 08:39:35', 'OFF'),
(375, 4, '141.168.25.54', '2017-11-06 08:41:04', 'OFF'),
(376, 4, '141.168.25.54', '2017-11-06 11:49:18', 'OFF'),
(377, 44, '141.168.25.54', '2017-11-06 08:43:18', 'OFF'),
(378, 7, '192.168.1.101', '2017-11-06 12:39:16', 'OFF'),
(379, 7, '192.168.1.101', '2017-11-06 12:54:56', 'OFF'),
(380, 3, '192.168.1.101', '2017-11-06 14:01:17', 'OFF'),
(381, 4, '192.168.1.101', '2017-11-06 12:49:29', 'OFF'),
(382, 63, '192.168.1.101', '2017-11-06 13:06:03', 'OFF'),
(383, 13, '192.168.1.101', '2017-11-06 13:10:53', 'OFF'),
(384, 10, '192.168.1.101', '2017-11-06 14:01:20', 'OFF'),
(385, 41, '141.168.25.54', '2017-11-06 22:01:26', 'OFF'),
(386, 40, '141.168.25.54', '2017-11-06 22:02:03', 'OFF'),
(387, 39, '141.168.25.54', '2017-11-06 22:19:32', 'OFF'),
(388, 44, '141.168.25.54', '2017-11-06 22:23:08', 'OFF'),
(389, 39, '141.168.25.54', '2017-11-06 22:24:30', 'OFF'),
(390, 44, '101.178.163.19', '2017-11-07 00:28:59', 'OFF'),
(391, 39, '192.168.1.101', '2017-11-07 06:49:06', 'OFF'),
(392, 7, '192.168.1.101', '2017-11-07 06:49:44', 'OFF'),
(393, 7, '192.168.1.101', '2017-11-07 07:17:08', 'OFF'),
(394, 3, '192.168.1.101', '2017-11-07 07:26:23', 'OFF'),
(395, 63, '192.168.1.101', '2017-11-07 13:15:41', 'OFF'),
(396, 3, '192.168.1.101', '2017-11-07 12:28:58', 'OFF'),
(397, 7, '192.168.1.101', '2017-11-07 12:29:41', 'OFF'),
(398, 7, '192.168.1.101', '2017-11-07 13:54:32', 'OFF'),
(399, 39, '192.168.1.101', '2017-11-07 13:54:35', 'OFF'),
(400, 39, '141.168.25.54', '2017-11-07 22:49:53', 'OFF'),
(401, 41, '141.168.25.54', '2017-11-07 22:51:13', 'OFF'),
(402, 39, '141.168.25.54', '2017-11-07 23:05:24', 'OFF'),
(403, 44, '141.168.25.54', '2017-11-07 23:06:24', 'OFF'),
(404, 4, '141.168.25.54', '2017-11-07 23:08:34', 'OFF'),
(405, 41, '141.168.25.54', '2017-11-08 02:52:26', 'OFF'),
(406, 4, '141.168.25.54', '2017-11-08 06:10:44', 'OFF'),
(407, 7, '192.168.1.101', '2017-11-08 05:58:40', 'OFF'),
(408, 7, '192.168.1.101', '2017-11-08 11:23:16', 'OFF'),
(409, 7, '192.168.1.101', '2017-11-08 13:55:35', 'OFF'),
(410, 39, '141.168.25.54', '2017-11-08 23:46:23', 'OFF'),
(411, 4, '141.168.25.54', '2017-11-09 00:10:47', 'OFF'),
(412, 4, '141.168.25.54', '2017-11-09 04:00:34', 'OFF'),
(413, 7, '192.168.1.101', '2017-11-09 10:27:12', 'OFF'),
(414, 7, '192.168.1.101', '2017-11-09 10:31:31', 'OFF'),
(415, 7, '192.168.1.101', '2017-11-09 13:49:31', 'OFF'),
(416, 4, '141.168.25.54', '2017-11-09 11:53:16', 'OFF'),
(417, 4, '141.168.25.54', '2017-11-09 12:14:24', 'OFF'),
(418, 3, '192.168.1.101', '2017-11-09 13:49:27', 'OFF'),
(419, 39, '141.168.25.54', '2017-11-10 00:15:10', 'OFF'),
(420, 4, '141.168.25.54', '2017-11-10 00:16:40', 'OFF'),
(421, 44, '141.168.25.54', '2017-11-10 00:20:05', 'OFF'),
(422, 39, '141.168.25.54', '2017-11-10 00:22:06', 'OFF'),
(423, 41, '141.168.25.54', '2017-11-10 00:29:39', 'OFF'),
(424, 44, '141.168.25.54', '2017-11-10 00:31:24', 'OFF'),
(425, 41, '141.168.25.54', '2017-11-10 00:34:08', 'OFF'),
(426, 4, '141.168.25.54', '2017-11-10 01:20:02', 'OFF'),
(427, 41, '101.178.163.19', '2017-11-10 01:22:30', 'OFF'),
(428, 40, '101.178.163.19', '2017-11-10 01:28:53', 'OFF'),
(429, 41, '101.178.163.19', '2017-11-10 01:34:29', 'OFF'),
(430, 40, '101.178.163.19', '2017-11-10 01:40:28', 'OFF'),
(431, 39, '101.178.163.19', '2017-11-10 01:48:25', 'OFF'),
(432, 41, '101.178.163.19', '2017-11-10 01:59:41', 'OFF'),
(433, 40, '101.178.163.19', '2017-11-10 02:04:11', 'OFF'),
(434, 41, '101.178.163.19', '2017-11-10 02:13:25', 'OFF'),
(435, 40, '101.178.163.19', '2017-11-10 02:15:34', 'OFF'),
(436, 41, '101.178.163.19', '2017-11-10 02:21:09', 'OFF'),
(437, 40, '101.178.163.19', '2017-11-10 02:22:09', 'OFF'),
(438, 41, '101.178.163.19', '2017-11-10 02:23:16', 'OFF'),
(439, 40, '101.178.163.19', '2017-11-10 02:24:40', 'OFF'),
(440, 44, '101.178.163.19', '2017-11-10 02:35:37', 'OFF'),
(441, 41, '101.178.163.19', '2017-11-10 02:37:42', 'OFF'),
(442, 40, '101.178.163.19', '2017-11-10 02:40:15', 'OFF'),
(443, 4, '101.178.163.19', '2017-11-10 02:42:42', 'OFF'),
(444, 41, '101.178.163.19', '2017-11-10 02:45:56', 'OFF'),
(445, 40, '101.178.163.19', '2017-11-10 02:46:56', 'OFF'),
(446, 39, '101.178.163.19', '2017-11-10 02:48:51', 'OFF'),
(447, 41, '101.178.163.19', '2017-11-10 02:51:04', 'OFF'),
(448, 44, '101.178.163.19', '2017-11-10 02:52:58', 'OFF'),
(449, 40, '101.178.163.19', '2017-11-10 02:54:52', 'OFF'),
(450, 44, '101.178.163.19', '2017-11-10 02:57:35', 'OFF'),
(451, 41, '101.178.163.19', '2017-11-10 02:59:42', 'OFF'),
(452, 40, '101.178.163.19', '2017-11-10 03:01:49', 'OFF'),
(453, 41, '101.178.163.19', '2017-11-10 03:03:55', 'OFF'),
(454, 44, '101.178.163.19', '2017-11-10 03:08:02', 'OFF'),
(455, 40, '101.178.163.19', '2017-11-10 03:09:47', 'OFF'),
(456, 44, '101.178.163.19', '2017-11-10 03:11:13', 'OFF'),
(457, 40, '101.178.163.19', '2017-11-10 03:13:49', 'OFF'),
(458, 44, '101.178.163.19', '2017-11-10 03:17:38', 'OFF'),
(459, 41, '101.178.163.19', '2017-11-10 03:19:47', 'OFF'),
(460, 40, '101.178.163.19', '2017-11-10 03:21:03', 'OFF'),
(461, 44, '101.178.163.19', '2017-11-10 03:28:53', 'OFF'),
(462, 40, '101.178.163.19', '2017-11-10 03:30:12', 'OFF'),
(463, 44, '101.178.163.19', '2017-11-10 05:43:21', 'OFF'),
(464, 3, '192.168.1.101', '2017-11-10 05:19:46', 'OFF'),
(465, 7, '192.168.1.101', '2017-11-10 06:18:32', 'OFF'),
(466, 10, '192.168.1.101', '2017-11-10 05:31:12', 'OFF'),
(467, 3, '192.168.1.101', '2017-11-10 06:13:50', 'OFF'),
(468, 44, '141.168.25.54', '2017-11-10 06:04:52', 'OFF'),
(469, 44, '141.168.25.54', '2017-11-10 06:13:12', 'OFF'),
(470, 4, '141.168.25.54', '2017-11-10 06:15:11', 'OFF'),
(471, 41, '141.168.25.54', '2017-11-10 06:16:34', 'OFF'),
(472, 4, '141.168.25.54', '2017-11-10 06:17:31', 'OFF'),
(473, 4, '141.168.25.54', '2017-11-10 06:17:59', 'OFF'),
(474, 41, '192.168.1.101', '2017-11-10 06:18:20', 'OFF'),
(475, 41, '141.168.25.54', '2017-11-10 06:21:16', 'OFF'),
(476, 39, '192.168.1.101', '2017-11-10 06:46:25', 'OFF'),
(477, 4, '141.168.25.54', '2017-11-10 06:20:57', 'OFF'),
(478, 41, '141.168.25.54', '2017-11-10 06:50:24', 'OFF'),
(479, 40, '141.168.25.54', '2017-11-10 06:26:04', 'OFF'),
(480, 3, '192.168.1.101', '2017-11-10 06:47:19', 'OFF'),
(481, 7, '192.168.1.101', '2017-11-10 07:32:14', 'OFF'),
(482, 39, '192.168.1.101', '2017-11-10 06:55:08', 'OFF'),
(483, 10, '192.168.1.101', '2017-11-10 06:56:05', 'OFF'),
(484, 13, '192.168.1.101', '2017-11-10 07:31:29', 'OFF'),
(485, 3, '192.168.1.101', '2017-11-10 09:32:15', 'OFF'),
(486, 39, '192.168.1.101', '2017-11-10 07:40:16', 'OFF'),
(487, 13, '192.168.1.101', '2017-11-10 09:01:43', 'OFF'),
(488, 10, '192.168.1.101', '2017-11-10 09:13:50', 'OFF'),
(489, 13, '192.168.1.101', '2017-11-10 10:14:50', 'OFF'),
(490, 40, '141.168.25.54', '2017-11-10 09:35:06', 'OFF'),
(491, 4, '141.168.25.54', '2017-11-10 09:35:46', 'OFF'),
(492, 44, '141.168.25.54', '2017-11-10 09:55:08', 'OFF'),
(493, 41, '141.168.25.54', '2017-11-10 09:59:27', 'OFF'),
(494, 3, '192.168.1.101', '2017-11-10 10:01:36', 'OFF'),
(495, 3, '192.168.1.101', '2017-11-10 10:16:24', 'OFF'),
(496, 40, '141.168.25.54', '2017-11-10 10:07:59', 'OFF'),
(497, 39, '141.168.25.54', '2017-11-10 10:08:51', 'OFF'),
(498, 41, '141.168.25.54', '2017-11-10 10:18:32', 'OFF'),
(499, 7, '192.168.1.101', '2017-11-10 11:34:56', 'OFF'),
(500, 10, '192.168.1.101', '2017-11-10 10:36:44', 'OFF'),
(501, 40, '141.168.25.54', '2017-11-10 10:20:43', 'OFF'),
(502, 41, '141.168.25.54', '2017-11-10 10:25:29', 'OFF'),
(503, 40, '141.168.25.54', '2017-11-10 10:45:26', 'OFF'),
(504, 3, '192.168.1.101', '2017-11-10 13:54:40', 'OFF'),
(505, 39, '141.168.25.54', '2017-11-10 11:05:22', 'OFF'),
(506, 4, '141.168.25.54', '2017-11-10 11:57:30', 'OFF'),
(507, 39, '192.168.1.101', '2017-11-10 11:49:45', 'OFF'),
(508, 10, '192.168.1.101', '2017-11-10 13:54:38', 'OFF'),
(509, 41, '141.168.25.54', '2017-11-11 11:32:24', 'OFF'),
(510, 40, '141.168.25.54', '2017-11-11 11:37:33', 'OFF'),
(511, 44, '141.168.25.54', '2017-11-11 11:43:31', 'OFF'),
(512, 41, '141.168.25.54', '2017-11-11 11:46:04', 'OFF'),
(513, 40, '141.168.25.54', '2017-11-11 11:48:16', 'OFF'),
(514, 39, '141.168.25.54', '2017-11-11 12:00:07', 'OFF'),
(515, 4, '150.101.89.150', '2017-11-13 00:18:44', 'OFF'),
(516, 41, '150.101.89.150', '2017-11-13 00:21:37', 'OFF'),
(517, 39, '150.101.89.150', '2017-11-13 00:23:23', 'OFF'),
(518, 44, '150.101.89.150', '2017-11-13 00:28:29', 'OFF'),
(519, 41, '150.101.89.150', '2017-11-13 00:30:37', 'OFF'),
(520, 40, '150.101.89.150', '2017-11-13 00:33:38', 'OFF'),
(521, 44, '150.101.89.150', '2017-11-13 00:35:55', 'OFF'),
(522, 40, '150.101.89.150', '2017-11-13 00:36:57', 'OFF'),
(523, 44, '150.101.89.150', '2017-11-13 01:21:31', 'OFF'),
(524, 41, '141.168.25.54', '2017-11-13 02:46:41', 'OFF'),
(525, 44, '141.168.25.54', '2017-11-13 02:51:39', 'OFF'),
(526, 41, '141.168.25.54', '2017-11-13 02:59:27', 'OFF'),
(527, 44, '141.168.25.54', '2017-11-13 03:00:47', 'OFF'),
(528, 41, '141.168.25.54', '2017-11-13 03:57:53', 'OFF'),
(529, 40, '101.178.163.19', '2017-11-13 04:10:41', 'OFF'),
(530, 39, '101.178.163.19', '2017-11-13 04:14:18', 'OFF'),
(531, 3, '192.168.1.101', '2017-11-13 05:51:23', 'OFF'),
(532, 6, '192.168.1.101', '2017-11-13 08:55:26', 'OFF'),
(533, 41, '141.168.25.54', '2017-11-13 12:11:21', 'OFF'),
(534, 7, '192.168.1.101', '2017-11-13 13:02:56', 'OFF'),
(535, 3, '192.168.1.101', '2017-11-13 13:53:28', 'OFF'),
(536, 10, '192.168.1.101', '2017-11-13 13:53:30', 'OFF'),
(537, 44, '141.168.25.54', '2017-11-14 00:36:47', 'OFF'),
(538, 41, '101.178.163.19', '2017-11-14 01:55:21', 'OFF'),
(539, 4, '101.178.163.19', '2017-11-14 01:55:54', 'OFF'),
(540, 4, '101.178.163.19', '2017-11-14 02:00:41', 'OFF'),
(541, 44, '101.178.163.19', '2017-11-14 02:03:09', 'OFF'),
(542, 44, '101.178.163.19', '2017-11-14 02:55:56', 'OFF'),
(543, 41, '141.168.25.54', '2017-11-14 02:59:37', 'OFF'),
(544, 44, '141.168.25.54', '2017-11-14 03:04:15', 'OFF'),
(545, 41, '141.168.25.54', '2017-11-14 03:05:58', 'OFF'),
(546, 40, '141.168.25.54', '2017-11-14 03:07:50', 'OFF'),
(547, 39, '141.168.25.54', '2017-11-14 03:09:43', 'OFF'),
(548, 3, '192.168.1.101', '2017-11-14 05:20:27', 'OFF'),
(549, 41, '101.178.163.19', '2017-11-14 03:42:58', 'OFF'),
(550, 44, '101.178.163.19', '2017-11-14 03:55:55', 'OFF'),
(551, 40, '101.178.163.19', '2017-11-14 04:03:07', 'OFF'),
(552, 44, '101.178.163.19', '2017-11-14 04:05:27', 'OFF'),
(553, 44, '192.168.1.101', '2017-11-14 04:25:54', 'OFF'),
(554, 44, '101.178.163.19', '2017-11-14 06:03:33', 'OFF'),
(555, 44, '141.168.25.54', '2017-11-14 06:15:05', 'OFF'),
(556, 41, '141.168.25.54', '2017-11-14 06:16:28', 'OFF'),
(557, 3, '192.168.1.101', '2017-11-14 07:17:06', 'OFF'),
(558, 44, '141.168.25.54', '2017-11-14 06:25:06', 'OFF'),
(559, 7, '192.168.1.101', '2017-11-14 09:12:54', 'OFF'),
(560, 41, '141.168.25.54', '2017-11-14 06:29:27', 'OFF'),
(561, 44, '141.168.25.54', '2017-11-14 06:30:51', 'OFF'),
(562, 41, '141.168.25.54', '2017-11-14 06:32:38', 'OFF'),
(563, 44, '141.168.25.54', '2017-11-14 06:33:32', 'OFF'),
(564, 41, '141.168.25.54', '2017-11-14 06:36:13', 'OFF'),
(565, 41, '141.168.25.54', '2017-11-14 06:38:02', 'OFF'),
(566, 44, '141.168.25.54', '2017-11-14 06:40:40', 'OFF'),
(567, 41, '141.168.25.54', '2017-11-14 06:50:12', 'OFF'),
(568, 4, '192.168.1.101', '2017-11-14 09:55:38', 'OFF'),
(569, 41, '192.168.1.101', '2017-11-14 09:52:02', 'OFF'),
(570, 4, '192.168.1.101', '2017-11-14 13:44:29', 'OFF'),
(571, 7, '192.168.1.101', '2017-11-14 13:49:40', 'OFF'),
(572, 41, '141.168.25.54', '2017-11-14 10:57:02', 'OFF'),
(573, 40, '141.168.25.54', '2017-11-14 10:57:42', 'OFF'),
(574, 39, '141.168.25.54', '2017-11-14 10:58:21', 'OFF'),
(575, 44, '141.168.25.54', '2017-11-14 11:03:21', 'OFF'),
(576, 41, '141.168.25.54', '2017-11-14 11:04:57', 'OFF'),
(577, 40, '141.168.25.54', '2017-11-14 11:06:08', 'OFF'),
(578, 44, '141.168.25.54', '2017-11-14 11:09:35', 'OFF'),
(579, 41, '141.168.25.54', '2017-11-14 11:25:40', 'OFF'),
(580, 44, '141.168.25.54', '2017-11-14 11:37:42', 'OFF'),
(581, 44, '192.168.1.101', '2017-11-14 11:42:03', 'OFF'),
(582, 41, '141.168.25.54', '2017-11-14 11:43:28', 'OFF'),
(583, 44, '141.168.25.54', '2017-11-14 11:44:32', 'OFF'),
(584, 44, '141.168.25.54', '2017-11-14 11:46:14', 'OFF'),
(585, 41, '141.168.25.54', '2017-11-14 11:47:35', 'OFF'),
(586, 44, '141.168.25.54', '2017-11-14 11:50:34', 'OFF'),
(587, 41, '141.168.25.54', '2017-11-14 11:52:17', 'OFF'),
(588, 44, '141.168.25.54', '2017-11-14 12:03:36', 'OFF'),
(589, 41, '120.20.108.68', '2017-11-15 00:12:27', 'OFF'),
(590, 39, '120.20.108.68', '2017-11-15 00:15:07', 'OFF'),
(591, 40, '120.20.108.68', '2017-11-15 00:28:51', 'OFF'),
(592, 4, '120.20.108.68', '2017-11-15 00:34:38', 'OFF'),
(593, 44, '120.20.108.68', '2017-11-15 00:38:33', 'OFF'),
(594, 41, '120.20.108.68', '2017-11-15 00:56:32', 'OFF'),
(595, 40, '120.20.193.2', '2017-11-15 01:13:00', 'OFF'),
(596, 39, '120.20.193.2', '2017-11-15 01:19:24', 'OFF'),
(597, 41, '120.20.193.2', '2017-11-15 01:25:55', 'OFF'),
(598, 40, '120.20.193.2', '2017-11-15 01:27:32', 'OFF'),
(599, 39, '120.20.193.2', '2017-11-15 01:29:38', 'OFF'),
(600, 44, '141.168.25.54', '2017-11-15 02:22:01', 'OFF'),
(601, 41, '141.168.25.54', '2017-11-15 02:25:17', 'OFF'),
(602, 39, '141.168.25.54', '2017-11-15 02:27:08', 'OFF'),
(603, 40, '141.168.25.54', '2017-11-15 02:28:24', 'OFF'),
(604, 44, '141.168.25.54', '2017-11-15 02:30:45', 'OFF'),
(605, 41, '141.168.25.54', '2017-11-15 02:31:20', 'OFF'),
(606, 40, '141.168.25.54', '2017-11-15 02:32:02', 'OFF'),
(607, 39, '141.168.25.54', '2017-11-15 02:33:39', 'OFF'),
(608, 44, '141.168.25.54', '2017-11-15 02:39:51', 'OFF'),
(609, 40, '141.168.25.54', '2017-11-15 02:42:45', 'OFF'),
(610, 44, '141.168.25.54', '2017-11-15 02:43:54', 'OFF'),
(611, 39, '141.168.25.54', '2017-11-15 02:44:40', 'OFF'),
(612, 44, '141.168.25.54', '2017-11-15 02:50:32', 'OFF'),
(613, 4, '141.168.25.54', '2017-11-15 02:56:38', 'OFF'),
(614, 44, '141.168.25.54', '2017-11-15 03:05:57', 'OFF'),
(615, 3, '192.168.1.101', '2017-11-15 04:21:41', 'OFF'),
(616, 3, '192.168.1.101', '2017-11-15 04:33:57', 'OFF'),
(617, 3, '192.168.1.101', '2017-11-15 04:48:10', 'OFF'),
(618, 42, '192.168.1.101', '2017-11-15 05:52:59', 'OFF'),
(619, 7, '192.168.1.101', '2017-11-15 04:54:06', 'OFF'),
(620, 39, '192.168.1.101', '2017-11-15 04:54:55', 'OFF'),
(621, 39, '192.168.1.101', '2017-11-15 04:55:31', 'OFF'),
(622, 41, '192.168.1.101', '2017-11-15 06:01:26', 'OFF'),
(623, 44, '192.168.1.101', '2017-11-15 06:04:22', 'OFF'),
(624, 7, '192.168.1.101', '2017-11-15 06:05:27', 'OFF'),
(625, 7, '192.168.1.101', '2017-11-15 06:24:11', 'OFF'),
(626, 10, '192.168.1.101', '2017-11-15 06:56:22', 'OFF'),
(627, 44, '192.168.1.101', '2017-11-15 06:35:55', 'OFF'),
(628, 7, '192.168.1.101', '2017-11-15 11:22:21', 'OFF'),
(629, 3, '192.168.1.101', '2017-11-15 12:47:31', 'OFF'),
(630, 44, '141.168.25.54', '2017-11-15 09:28:03', 'OFF'),
(631, 41, '141.168.25.54', '2017-11-15 09:29:50', 'OFF'),
(632, 7, '192.168.1.101', '2017-11-15 12:52:17', 'OFF'),
(633, 7, '192.168.1.101', '2017-11-15 16:03:21', 'OFF'),
(634, 41, '141.168.25.54', '2017-11-16 01:09:25', 'OFF'),
(635, 39, '141.168.25.54', '2017-11-16 01:15:20', 'OFF'),
(636, 40, '141.168.25.54', '2017-11-16 01:20:13', 'OFF'),
(637, 40, '141.168.25.54', '2017-11-16 01:21:47', 'OFF'),
(638, 39, '141.168.25.54', '2017-11-16 01:25:24', 'OFF'),
(639, 40, '141.168.25.54', '2017-11-16 01:26:53', 'OFF'),
(640, 41, '141.168.25.54', '2017-11-16 01:33:47', 'OFF'),
(641, 40, '141.168.25.54', '2017-11-16 01:38:21', 'OFF'),
(642, 41, '141.168.25.54', '2017-11-16 01:46:31', 'OFF'),
(643, 40, '141.168.25.54', '2017-11-16 01:47:34', 'OFF'),
(644, 39, '141.168.25.54', '2017-11-16 01:48:21', 'OFF'),
(645, 41, '141.168.25.54', '2017-11-16 01:50:43', 'OFF'),
(646, 40, '141.168.25.54', '2017-11-16 01:51:45', 'OFF'),
(647, 39, '141.168.25.54', '2017-11-16 01:53:34', 'OFF'),
(648, 41, '141.168.25.54', '2017-11-16 02:03:23', 'OFF'),
(649, 40, '141.168.25.54', '2017-11-16 02:05:53', 'OFF'),
(650, 44, '141.168.25.54', '2017-11-16 02:11:47', 'OFF'),
(651, 41, '141.168.25.54', '2017-11-16 02:17:49', 'OFF'),
(652, 40, '141.168.25.54', '2017-11-16 02:20:36', 'OFF'),
(653, 39, '141.168.25.54', '2017-11-16 02:22:36', 'OFF'),
(654, 44, '141.168.25.54', '2017-11-16 02:26:11', 'OFF'),
(655, 39, '141.168.25.54', '2017-11-16 02:28:16', 'OFF'),
(656, 40, '141.168.25.54', '2017-11-16 02:30:03', 'OFF'),
(657, 41, '141.168.25.54', '2017-11-16 02:32:15', 'OFF'),
(658, 44, '141.168.25.54', '2017-11-16 02:36:55', 'OFF'),
(659, 39, '141.168.25.54', '2017-11-16 02:37:54', 'OFF'),
(660, 44, '141.168.25.54', '2017-11-16 02:43:05', 'OFF'),
(661, 41, '141.168.25.54', '2017-11-16 02:44:44', 'OFF'),
(662, 44, '141.168.25.54', '2017-11-16 02:48:33', 'OFF'),
(663, 39, '141.168.25.54', '2017-11-16 02:49:27', 'OFF'),
(664, 40, '141.168.25.54', '2017-11-16 02:53:04', 'OFF'),
(665, 41, '141.168.25.54', '2017-11-16 03:50:47', 'OFF'),
(666, 7, '192.168.1.101', '2017-11-16 05:59:11', 'OFF'),
(667, 44, '141.168.25.54', '2017-11-16 04:33:45', 'OFF'),
(668, 3, '192.168.1.101', '2017-11-16 06:34:19', 'OFF'),
(669, 41, '141.168.25.54', '2017-11-16 05:25:36', 'OFF'),
(670, 44, '141.168.25.54', '2017-11-16 05:37:10', 'OFF'),
(671, 40, '141.168.25.54', '2017-11-16 05:38:40', 'OFF'),
(672, 44, '141.168.25.54', '2017-11-16 05:40:04', 'OFF'),
(673, 39, '141.168.25.54', '2017-11-16 06:10:26', 'OFF'),
(674, 7, '103.97.211.245', '2017-11-16 07:33:09', 'OFF'),
(675, 7, '192.168.1.101', '2017-11-16 12:42:38', 'OFF'),
(676, 41, '141.168.25.54', '2017-11-16 11:05:26', 'OFF'),
(677, 42, '192.168.1.101', '2017-11-16 13:51:30', 'OFF'),
(678, 39, '192.168.1.101', '2017-11-16 13:51:28', 'OFF'),
(679, 4, '141.168.25.54', '2017-11-16 12:21:53', 'OFF'),
(680, 41, '141.168.25.54', '2017-11-17 00:15:07', 'OFF'),
(681, 44, '141.168.25.54', '2017-11-17 00:22:48', 'OFF'),
(682, 41, '141.168.25.54', '2017-11-17 00:23:36', 'OFF'),
(683, 44, '141.168.25.54', '2017-11-17 00:31:47', 'OFF'),
(684, 4, '141.168.25.54', '2017-11-17 00:38:57', 'OFF'),
(685, 4, '141.168.25.54', '2017-11-17 00:40:06', 'OFF'),
(686, 40, '141.168.25.54', '2017-11-17 00:55:51', 'OFF'),
(687, 41, '141.168.25.54', '2017-11-17 01:17:20', 'OFF'),
(688, 39, '141.168.25.54', '2017-11-17 01:19:17', 'OFF'),
(689, 40, '141.168.25.54', '2017-11-17 01:23:22', 'OFF'),
(690, 44, '141.168.25.54', '2017-11-17 01:29:36', 'OFF'),
(691, 40, '141.168.25.54', '2017-11-17 01:33:01', 'OFF'),
(692, 41, '141.168.25.54', '2017-11-17 01:35:06', 'OFF'),
(693, 39, '141.168.25.54', '2017-11-17 01:36:20', 'OFF'),
(694, 44, '141.168.25.54', '2017-11-17 01:42:00', 'OFF'),
(695, 41, '141.168.25.54', '2017-11-17 01:43:30', 'OFF'),
(696, 39, '141.168.25.54', '2017-11-17 01:43:48', 'OFF'),
(697, 40, '141.168.25.54', '2017-11-17 01:44:17', 'OFF'),
(698, 39, '141.168.25.54', '2017-11-17 01:46:14', 'OFF'),
(699, 41, '141.168.25.54', '2017-11-17 01:47:04', 'OFF'),
(700, 40, '141.168.25.54', '2017-11-17 01:48:01', 'OFF'),
(701, 44, '141.168.25.54', '2017-11-17 03:38:06', 'OFF'),
(702, 41, '141.168.25.54', '2017-11-17 03:38:41', 'OFF'),
(703, 40, '141.168.25.54', '2017-11-17 03:40:39', 'OFF'),
(704, 39, '141.168.25.54', '2017-11-17 03:43:05', 'OFF'),
(705, 44, '141.168.25.54', '2017-11-17 03:51:15', 'OFF'),
(706, 41, '141.168.25.54', '2017-11-17 03:54:59', 'OFF'),
(707, 40, '141.168.25.54', '2017-11-17 03:57:45', 'OFF'),
(708, 44, '141.168.25.54', '2017-11-17 03:59:48', 'OFF'),
(709, 44, '192.168.1.101', '2017-11-17 04:19:06', 'OFF'),
(710, 39, '141.168.25.54', '2017-11-17 04:05:09', 'OFF'),
(711, 40, '192.168.1.101', '2017-11-17 04:24:47', 'OFF'),
(712, 39, '141.168.25.54', '2017-11-17 04:18:38', 'OFF'),
(713, 44, '141.168.25.54', '2017-11-17 04:23:25', 'OFF'),
(714, 39, '141.168.25.54', '2017-11-17 04:22:57', 'OFF'),
(715, 44, '141.168.25.54', '2017-11-17 04:26:06', 'OFF'),
(716, 40, '141.168.25.54', '2017-11-17 04:27:38', 'OFF'),
(717, 44, '141.168.25.54', '2017-11-17 04:30:51', 'OFF'),
(718, 40, '141.168.25.54', '2017-11-17 04:28:58', 'OFF'),
(719, 41, '141.168.25.54', '2017-11-17 04:28:28', 'OFF'),
(720, 40, '141.168.25.54', '2017-11-17 04:51:27', 'OFF'),
(721, 44, '141.168.25.54', '2017-11-17 04:33:12', 'OFF'),
(722, 41, '141.168.25.54', '2017-11-17 04:32:53', 'OFF'),
(723, 44, '141.168.25.54', '2017-11-17 06:40:38', 'OFF'),
(724, 41, '141.168.25.54', '2017-11-17 04:35:47', 'OFF'),
(725, 41, '192.168.1.101', '2017-11-17 06:22:12', 'OFF'),
(726, 3, '192.168.1.101', '2017-11-17 06:31:58', 'OFF'),
(727, 40, '192.168.1.101', '2017-11-17 06:33:51', 'OFF'),
(728, 41, '192.168.1.101', '2017-11-17 06:34:38', 'OFF'),
(729, 39, '192.168.1.101', '2017-11-17 09:35:32', 'OFF'),
(730, 3, '192.168.1.101', '2017-11-17 10:46:40', 'OFF'),
(731, 7, '192.168.1.101', '2017-11-17 10:56:01', 'OFF'),
(732, 10, '192.168.1.101', '2017-11-17 10:59:54', 'OFF'),
(733, 3, '192.168.1.101', '2017-11-17 13:59:09', 'OFF'),
(734, 7, '192.168.1.101', '2017-11-17 11:02:37', 'OFF'),
(735, 13, '192.168.1.101', '2017-11-17 11:58:36', 'OFF'),
(736, 39, '192.168.1.101', '2017-11-17 13:59:10', 'OFF'),
(737, 7, '192.168.1.101', '2017-11-17 13:31:31', 'OFF'),
(738, 40, '141.168.25.54', '2017-11-18 07:18:30', 'OFF'),
(739, 44, '141.168.25.54', '2017-11-18 07:24:20', 'OFF'),
(740, 44, '141.168.25.54', '2017-11-18 11:02:11', 'OFF'),
(741, 41, '141.168.25.54', '2017-11-18 11:12:11', 'OFF'),
(742, 44, '141.168.25.54', '2017-11-18 11:21:22', 'OFF'),
(743, 41, '141.168.25.54', '2017-11-18 11:23:23', 'OFF'),
(744, 40, '141.168.25.54', '2017-11-18 11:24:36', 'OFF'),
(745, 39, '141.168.25.54', '2017-11-18 11:25:38', 'OFF'),
(746, 44, '141.168.25.54', '2017-11-18 11:47:23', 'OFF'),
(747, 39, '141.168.25.54', '2017-11-18 11:51:22', 'OFF'),
(748, 40, '141.168.25.54', '2017-11-18 11:53:13', 'OFF'),
(749, 39, '141.168.25.54', '2017-11-18 11:53:50', 'OFF'),
(750, 39, '141.168.25.54', '2017-11-18 11:54:24', 'OFF'),
(751, 41, '141.168.25.54', '2017-11-18 11:55:49', 'OFF'),
(752, 44, '141.168.25.54', '2017-11-18 11:58:22', 'OFF'),
(753, 44, '141.168.25.54', '2017-11-18 20:38:29', 'OFF'),
(754, 41, '141.168.25.54', '2017-11-18 20:40:25', 'OFF'),
(755, 40, '141.168.25.54', '2017-11-18 20:41:21', 'OFF'),
(756, 44, '141.168.25.54', '2017-11-18 20:42:12', 'OFF'),
(757, 40, '141.168.25.54', '2017-11-18 20:51:20', 'OFF'),
(758, 39, '141.168.25.54', '2017-11-18 20:54:15', 'OFF'),
(759, 39, '141.168.25.54', '2017-11-18 20:54:42', 'OFF'),
(760, 39, '141.168.25.54', '2017-11-18 20:55:32', 'OFF'),
(761, 44, '141.168.25.54', '2017-11-18 21:02:34', 'OFF'),
(762, 41, '141.168.25.54', '2017-11-18 21:04:50', 'OFF'),
(763, 40, '141.168.25.54', '2017-11-18 21:05:52', 'OFF'),
(764, 39, '141.168.25.54', '2017-11-18 21:08:12', 'OFF'),
(765, 44, '141.168.25.54', '2017-11-18 21:15:35', 'OFF'),
(766, 44, '141.168.25.54', '2017-11-18 21:18:30', 'OFF'),
(767, 41, '141.168.25.54', '2017-11-18 21:19:56', 'OFF'),
(768, 40, '141.168.25.54', '2017-11-18 21:21:13', 'OFF'),
(769, 39, '141.168.25.54', '2017-11-18 21:24:27', 'OFF'),
(770, 40, '141.168.25.54', '2017-11-18 21:25:25', 'OFF'),
(771, 41, '141.168.25.54', '2017-11-18 21:26:49', 'OFF'),
(772, 39, '141.168.25.54', '2017-11-18 21:27:39', 'OFF'),
(773, 4, '141.168.25.54', '2017-11-18 21:33:39', 'OFF'),
(774, 40, '141.168.25.54', '2017-11-18 21:36:32', 'OFF'),
(775, 39, '141.168.25.54', '2017-11-18 21:38:52', 'OFF'),
(776, 4, '141.168.25.54', '2017-11-18 21:40:27', 'OFF'),
(777, 41, '141.168.25.54', '2017-11-18 21:41:45', 'OFF'),
(778, 40, '141.168.25.54', '2017-11-18 21:42:25', 'OFF'),
(779, 39, '141.168.25.54', '2017-11-18 21:43:18', 'OFF'),
(780, 40, '141.168.25.54', '2017-11-18 21:44:33', 'OFF'),
(781, 41, '141.168.25.54', '2017-11-19 11:44:37', 'OFF'),
(782, 4, '141.168.25.54', '2017-11-20 00:03:31', 'OFF'),
(783, 4, '141.168.25.54', '2017-11-20 00:43:31', 'OFF'),
(784, 41, '141.168.25.54', '2017-11-20 01:30:15', 'OFF'),
(785, 40, '141.168.25.54', '2017-11-20 01:33:18', 'OFF'),
(786, 39, '141.168.25.54', '2017-11-20 01:39:40', 'OFF'),
(787, 44, '141.168.25.54', '2017-11-20 01:41:13', 'OFF'),
(788, 39, '141.168.25.54', '2017-11-20 01:44:21', 'OFF'),
(789, 41, '141.168.25.54', '2017-11-20 02:00:58', 'OFF'),
(790, 44, '141.168.25.54', '2017-11-20 02:05:10', 'OFF'),
(791, 41, '141.168.25.54', '2017-11-20 02:06:05', 'OFF'),
(792, 44, '141.168.25.54', '2017-11-20 02:08:06', 'OFF'),
(793, 40, '141.168.25.54', '2017-11-20 02:13:31', 'OFF'),
(794, 39, '141.168.25.54', '2017-11-20 02:15:20', 'OFF'),
(795, 40, '141.168.25.54', '2017-11-20 02:16:45', 'OFF'),
(796, 39, '141.168.25.54', '2017-11-20 02:18:18', 'OFF'),
(797, 41, '141.168.25.54', '2017-11-20 02:19:05', 'OFF'),
(798, 44, '141.168.25.54', '2017-11-20 02:23:23', 'OFF'),
(799, 41, '141.168.25.54', '2017-11-20 02:24:31', 'OFF'),
(800, 44, '141.168.25.54', '2017-11-20 02:26:41', 'OFF'),
(801, 41, '141.168.25.54', '2017-11-20 02:28:37', 'OFF'),
(802, 40, '141.168.25.54', '2017-11-20 02:29:33', 'OFF'),
(803, 44, '141.168.25.54', '2017-11-20 05:40:43', 'OFF'),
(804, 44, '192.168.1.101', '2017-11-20 08:39:47', 'OFF'),
(805, 40, '192.168.1.101', '2017-11-20 06:49:13', 'OFF'),
(806, 41, '192.168.1.101', '2017-11-20 06:58:13', 'OFF'),
(807, 40, '192.168.1.101', '2017-11-20 06:58:58', 'OFF'),
(808, 39, '192.168.1.101', '2017-11-20 06:59:32', 'OFF'),
(809, 41, '192.168.1.101', '2017-11-20 07:25:17', 'OFF'),
(810, 39, '192.168.1.101', '2017-11-20 07:27:06', 'OFF'),
(811, 40, '192.168.1.101', '2017-11-20 07:52:21', 'OFF'),
(812, 39, '192.168.1.101', '2017-11-20 07:53:49', 'OFF'),
(813, 41, '192.168.1.101', '2017-11-20 08:47:44', 'OFF'),
(814, 7, '192.168.1.101', '2017-11-20 09:03:08', 'OFF'),
(815, 44, '192.168.1.101', '2017-11-20 08:54:05', 'OFF'),
(816, 10, '192.168.1.101', '2017-11-20 08:56:06', 'OFF'),
(817, 13, '192.168.1.101', '2017-11-20 10:59:25', 'OFF'),
(818, 44, '192.168.1.101', '2017-11-20 13:58:52', 'OFF'),
(819, 39, '192.168.1.101', '2017-11-20 12:57:58', 'OFF'),
(820, 40, '192.168.1.101', '2017-11-20 12:59:16', 'OFF'),
(821, 41, '192.168.1.101', '2017-11-20 13:03:13', 'OFF'),
(822, 41, '192.168.1.101', '2017-11-20 13:31:52', 'OFF'),
(823, 39, '192.168.1.101', '2017-11-20 13:58:52', 'OFF'),
(824, 44, '141.168.25.54', '2017-11-20 22:40:17', 'OFF'),
(825, 41, '141.168.25.54', '2017-11-20 22:41:52', 'OFF'),
(826, 40, '141.168.25.54', '2017-11-20 22:42:46', 'OFF'),
(827, 39, '141.168.25.54', '2017-11-20 22:43:05', 'OFF'),
(828, 39, '141.168.25.54', '2017-11-20 22:47:47', 'OFF'),
(829, 41, '141.168.25.54', '2017-11-20 22:59:08', 'OFF'),
(830, 40, '141.168.25.54', '2017-11-20 23:00:43', 'OFF'),
(831, 39, '141.168.25.54', '2017-11-20 23:05:26', 'OFF'),
(832, 44, '141.168.25.54', '2017-11-20 23:11:29', 'OFF'),
(833, 41, '141.168.25.54', '2017-11-20 23:12:44', 'OFF'),
(834, 41, '141.168.25.54', '2017-11-20 23:17:01', 'OFF'),
(835, 44, '141.168.25.54', '2017-11-20 23:17:26', 'OFF'),
(836, 44, '141.168.25.54', '2017-11-20 23:23:55', 'OFF'),
(837, 41, '141.168.25.54', '2017-11-20 23:30:46', 'OFF'),
(838, 39, '141.168.25.54', '2017-11-20 23:33:14', 'OFF'),
(839, 40, '141.168.25.54', '2017-11-20 23:36:17', 'OFF'),
(840, 44, '141.168.25.54', '2017-11-20 23:39:31', 'OFF'),
(841, 39, '141.168.25.54', '2017-11-20 23:41:39', 'OFF'),
(842, 40, '141.168.25.54', '2017-11-20 23:45:17', 'OFF'),
(843, 44, '141.168.25.54', '2017-11-20 23:48:20', 'OFF'),
(844, 44, '101.178.163.19', '2017-11-21 04:35:11', 'OFF'),
(845, 44, '192.168.1.101', '2017-11-21 13:56:38', 'OFF'),
(846, 41, '192.168.1.101', '2017-11-21 13:56:38', 'OFF'),
(847, 41, '141.168.25.54', '2017-11-21 22:24:09', 'OFF'),
(848, 40, '141.168.25.54', '2017-11-21 22:24:53', 'OFF'),
(849, 44, '141.168.25.54', '2017-11-21 22:37:55', 'OFF'),
(850, 41, '141.168.25.54', '2017-11-21 22:39:37', 'OFF'),
(851, 44, '141.168.25.54', '2017-11-21 22:41:15', 'OFF'),
(852, 41, '141.168.25.54', '2017-11-21 22:45:43', 'OFF'),
(853, 44, '141.168.25.54', '2017-11-21 22:47:11', 'OFF'),
(854, 41, '141.168.25.54', '2017-11-21 22:48:39', 'OFF'),
(855, 40, '141.168.25.54', '2017-11-21 22:49:25', 'OFF'),
(856, 44, '141.168.25.54', '2017-11-21 22:52:43', 'OFF'),
(857, 40, '141.168.25.54', '2017-11-21 22:54:41', 'OFF'),
(858, 39, '141.168.25.54', '2017-11-21 22:56:05', 'OFF'),
(859, 41, '141.168.25.54', '2017-11-21 22:57:27', 'OFF'),
(860, 40, '141.168.25.54', '2017-11-21 23:05:21', 'OFF'),
(861, 44, '141.168.25.54', '2017-11-21 23:09:21', 'OFF'),
(862, 40, '141.168.25.54', '2017-11-21 23:11:26', 'OFF'),
(863, 41, '141.168.25.54', '2017-11-21 23:13:08', 'OFF'),
(864, 39, '141.168.25.54', '2017-11-21 23:14:58', 'OFF'),
(865, 40, '141.168.25.54', '2017-11-21 23:16:43', 'OFF'),
(866, 41, '141.168.25.54', '2017-11-21 23:18:28', 'OFF'),
(867, 44, '141.168.25.54', '2017-11-21 23:23:23', 'OFF'),
(868, 44, '192.168.1.101', '2017-11-22 03:40:50', 'OFF'),
(869, 40, '141.168.25.54', '2017-11-22 03:40:36', 'OFF'),
(870, 44, '141.168.25.54', '2017-11-22 06:08:39', 'OFF'),
(871, 40, '192.168.1.101', '2017-11-22 05:01:01', 'OFF'),
(872, 7, '192.168.1.101', '2017-11-22 05:52:48', 'OFF'),
(873, 40, '192.168.1.101', '2017-11-22 06:10:12', 'OFF'),
(874, 3, '192.168.1.101', '2017-11-22 07:12:58', 'OFF'),
(875, 40, '192.168.1.101', '2017-11-22 07:20:07', 'OFF'),
(876, 7, '192.168.1.101', '2017-11-22 12:03:34', 'OFF'),
(877, 44, '192.168.1.101', '2017-11-22 07:20:30', 'OFF'),
(878, 3, '192.168.1.101', '2017-11-22 12:17:12', 'OFF'),
(879, 44, '141.168.25.54', '2017-11-22 11:56:03', 'OFF'),
(880, 41, '141.168.25.54', '2017-11-22 12:04:26', 'OFF'),
(881, 44, '192.168.1.101', '2017-11-22 12:04:53', 'OFF'),
(882, 44, '141.168.25.54', '2017-11-22 12:07:53', 'OFF'),
(883, 4, '141.168.25.54', '2017-11-22 12:10:46', 'OFF'),
(884, 44, '141.168.25.54', '2017-11-22 12:17:45', 'OFF'),
(885, 44, '192.168.1.101', '2017-11-22 12:22:40', 'OFF'),
(886, 44, '141.168.25.54', '2017-11-22 14:00:47', 'OFF'),
(887, 4, '141.168.25.54', '2017-11-22 23:30:26', 'OFF'),
(888, 41, '141.168.25.54', '2017-11-22 23:31:45', 'OFF'),
(889, 40, '141.168.25.54', '2017-11-22 23:35:10', 'OFF'),
(890, 4, '141.168.25.54', '2017-11-22 23:39:44', 'OFF'),
(891, 40, '141.168.25.54', '2017-11-22 23:41:48', 'OFF'),
(892, 4, '141.168.25.54', '2017-11-22 23:44:10', 'OFF'),
(893, 39, '141.168.25.54', '2017-11-22 23:44:37', 'OFF'),
(894, 39, '141.168.25.54', '2017-11-22 23:46:46', 'OFF'),
(895, 40, '141.168.25.54', '2017-11-22 23:48:12', 'OFF'),
(896, 39, '141.168.25.54', '2017-11-22 23:48:45', 'OFF'),
(897, 4, '141.168.25.54', '2017-11-22 23:55:10', 'OFF'),
(898, 40, '141.168.25.54', '2017-11-23 00:02:52', 'OFF'),
(899, 39, '141.168.25.54', '2017-11-23 00:04:30', 'OFF'),
(900, 41, '141.168.25.54', '2017-11-23 00:06:45', 'OFF'),
(901, 40, '141.168.25.54', '2017-11-23 00:09:26', 'OFF'),
(902, 4, '141.168.25.54', '2017-11-23 00:12:00', 'OFF'),
(903, 39, '141.168.25.54', '2017-11-23 00:14:05', 'OFF'),
(904, 41, '141.168.25.54', '2017-11-23 00:15:04', 'OFF'),
(905, 40, '141.168.25.54', '2017-11-23 00:16:03', 'OFF'),
(906, 4, '141.168.25.54', '2017-11-23 00:25:06', 'OFF'),
(907, 40, '141.168.25.54', '2017-11-23 00:28:24', 'OFF'),
(908, 44, '141.168.25.54', '2017-11-23 00:29:47', 'OFF'),
(909, 39, '141.168.25.54', '2017-11-23 00:30:09', 'OFF'),
(910, 39, '141.168.25.54', '2017-11-23 00:30:52', 'OFF');
INSERT INTO `iw_user_log` (`user_log_id`, `user_id`, `ip_address`, `last_active`, `status`) VALUES
(911, 44, '141.168.25.54', '2017-11-23 00:33:42', 'OFF'),
(912, 40, '141.168.25.54', '2017-11-23 00:34:41', 'OFF'),
(913, 44, '141.168.25.54', '2017-11-23 00:35:53', 'OFF'),
(914, 40, '141.168.25.54', '2017-11-23 00:37:41', 'OFF'),
(915, 4, '141.168.25.54', '2017-11-23 00:47:23', 'OFF'),
(916, 39, '141.168.25.54', '2017-11-23 00:48:17', 'OFF'),
(917, 4, '141.168.25.54', '2017-11-23 00:50:01', 'OFF'),
(918, 39, '141.168.25.54', '2017-11-23 00:51:31', 'OFF'),
(919, 4, '141.168.25.54', '2017-11-23 00:54:01', 'OFF'),
(920, 41, '141.168.25.54', '2017-11-23 00:56:11', 'OFF'),
(921, 4, '141.168.25.54', '2017-11-23 00:57:33', 'OFF'),
(922, 40, '141.168.25.54', '2017-11-23 00:58:26', 'OFF'),
(923, 41, '141.168.25.54', '2017-11-23 00:59:06', 'OFF'),
(924, 4, '141.168.25.54', '2017-11-23 03:46:37', 'OFF'),
(925, 39, '141.168.25.54', '2017-11-23 03:48:09', 'OFF'),
(926, 4, '141.168.25.54', '2017-11-23 03:50:30', 'OFF'),
(927, 39, '141.168.25.54', '2017-11-23 03:51:33', 'OFF'),
(928, 44, '141.168.25.54', '2017-11-23 03:53:46', 'OFF'),
(929, 39, '141.168.25.54', '2017-11-23 03:56:01', 'OFF'),
(930, 4, '141.168.25.54', '2017-11-23 04:24:07', 'OFF'),
(931, 44, '192.168.1.101', '2017-11-23 04:18:07', 'OFF'),
(932, 4, '192.168.1.101', '2017-11-23 05:54:13', 'OFF'),
(933, 7, '192.168.1.101', '2017-11-23 05:57:28', 'OFF'),
(934, 40, '141.168.25.54', '2017-11-23 05:53:46', 'OFF'),
(935, 4, '141.168.25.54', '2017-11-23 05:58:18', 'OFF'),
(936, 39, '141.168.25.54', '2017-11-23 05:56:51', 'OFF'),
(937, 41, '141.168.25.54', '2017-11-23 05:57:55', 'OFF'),
(938, 13, '192.168.1.101', '2017-11-23 05:57:57', 'OFF'),
(939, 13, '192.168.1.101', '2017-11-23 06:01:24', 'OFF'),
(940, 4, '141.168.25.54', '2017-11-23 06:02:49', 'OFF'),
(941, 40, '141.168.25.54', '2017-11-23 06:02:25', 'OFF'),
(942, 10, '192.168.1.101', '2017-11-23 06:51:59', 'OFF'),
(943, 4, '141.168.25.54', '2017-11-23 08:12:19', 'OFF'),
(944, 3, '192.168.1.101', '2017-11-23 06:23:34', 'OFF'),
(945, 40, '192.168.1.101', '2017-11-23 07:40:56', 'OFF'),
(946, 3, '192.168.1.101', '2017-11-23 13:03:32', 'OFF'),
(947, 39, '192.168.1.101', '2017-11-23 08:00:31', 'OFF'),
(948, 40, '192.168.1.101', '2017-11-23 08:14:35', 'OFF'),
(949, 40, '141.168.25.54', '2017-11-23 08:16:46', 'OFF'),
(950, 4, '141.168.25.54', '2017-11-23 08:16:30', 'OFF'),
(951, 40, '141.168.25.54', '2017-11-23 08:22:54', 'OFF'),
(952, 4, '141.168.25.54', '2017-11-23 08:20:52', 'OFF'),
(953, 39, '141.168.25.54', '2017-11-23 08:21:47', 'OFF'),
(954, 41, '141.168.25.54', '2017-11-23 08:22:35', 'OFF'),
(955, 40, '141.168.25.54', '2017-11-23 08:29:19', 'OFF'),
(956, 4, '141.168.25.54', '2017-11-23 08:26:21', 'OFF'),
(957, 40, '141.168.25.54', '2017-11-23 08:46:55', 'OFF'),
(958, 41, '141.168.25.54', '2017-11-23 10:57:38', 'OFF'),
(959, 7, '192.168.1.101', '2017-11-23 10:14:00', 'OFF'),
(960, 3, '192.168.1.101', '2017-11-23 13:48:04', 'OFF'),
(961, 4, '141.168.25.54', '2017-11-24 01:06:36', 'OFF'),
(962, 44, '101.178.163.19', '2017-11-24 01:14:19', 'OFF'),
(963, 41, '101.178.163.19', '2017-11-24 01:14:53', 'OFF'),
(964, 40, '101.178.163.19', '2017-11-24 01:19:06', 'OFF'),
(965, 44, '101.178.163.19', '2017-11-24 01:20:23', 'OFF'),
(966, 40, '101.178.163.19', '2017-11-24 01:22:28', 'OFF'),
(967, 39, '101.178.163.19', '2017-11-24 01:24:22', 'OFF'),
(968, 40, '101.178.163.19', '2017-11-24 01:33:56', 'OFF'),
(969, 39, '101.178.163.19', '2017-11-24 01:35:12', 'OFF'),
(970, 40, '101.178.163.19', '2017-11-24 01:43:28', 'OFF'),
(971, 39, '101.178.163.19', '2017-11-24 01:45:16', 'OFF'),
(972, 44, '101.178.163.19', '2017-11-24 01:50:41', 'OFF'),
(973, 41, '101.178.163.19', '2017-11-24 01:58:26', 'OFF'),
(974, 39, '101.178.163.19', '2017-11-24 01:59:12', 'OFF'),
(975, 39, '101.178.163.19', '2017-11-24 03:42:41', 'OFF'),
(976, 39, '141.168.25.54', '2017-11-24 06:55:48', 'OFF'),
(977, 40, '141.168.25.54', '2017-11-24 07:01:12', 'OFF'),
(978, 44, '141.168.25.54', '2017-11-24 07:28:11', 'OFF'),
(979, 41, '141.168.25.54', '2017-11-24 07:35:47', 'OFF'),
(980, 44, '141.168.25.54', '2017-11-27 00:21:02', 'OFF'),
(981, 41, '141.168.25.54', '2017-11-27 01:00:25', 'OFF'),
(982, 40, '120.20.4.25', '2017-11-27 01:01:33', 'OFF'),
(983, 4, '120.20.4.25', '2017-11-27 01:44:34', 'OFF'),
(984, 40, '120.20.4.25', '2017-11-27 03:50:43', 'OFF'),
(985, 4, '141.168.25.54', '2017-11-27 03:53:49', 'OFF'),
(986, 44, '141.168.25.54', '2017-11-27 03:54:23', 'OFF'),
(987, 4, '141.168.25.54', '2017-11-27 04:13:30', 'OFF'),
(988, 3, '192.168.1.101', '2017-11-27 13:55:30', 'OFF'),
(989, 4, '141.168.25.54', '2017-11-27 04:15:39', 'OFF'),
(990, 44, '141.168.25.54', '2017-11-27 04:17:24', 'OFF'),
(991, 4, '141.168.25.54', '2017-11-27 04:18:02', 'OFF'),
(992, 4, '141.168.25.54', '2017-11-27 04:19:24', 'OFF'),
(993, 4, '141.168.25.54', '2017-11-27 04:23:11', 'OFF'),
(994, 4, '141.168.25.54', '2017-11-27 04:26:29', 'OFF'),
(995, 4, '141.168.25.54', '2017-11-27 04:30:18', 'OFF'),
(996, 4, '141.168.25.54', '2017-11-27 06:03:59', 'OFF'),
(997, 4, '141.168.25.54', '2017-11-27 06:04:29', 'OFF'),
(998, 41, '141.168.25.54', '2017-11-27 22:31:30', 'OFF'),
(999, 44, '141.168.25.54', '2017-11-27 23:21:44', 'OFF'),
(1000, 39, '141.168.25.54', '2017-11-27 23:28:04', 'OFF'),
(1001, 40, '141.168.25.54', '2017-11-27 23:31:30', 'OFF'),
(1002, 44, '141.168.25.54', '2017-11-27 23:31:47', 'OFF'),
(1003, 44, '141.168.25.54', '2017-11-27 23:35:18', 'OFF'),
(1004, 40, '141.168.25.54', '2017-11-27 23:36:40', 'OFF'),
(1005, 13, '192.168.1.101', '2017-11-28 10:39:11', 'OFF'),
(1006, 40, '192.168.1.101', '2017-11-28 13:53:57', 'OFF'),
(1007, 41, '120.20.33.139', '2017-11-28 22:52:13', 'OFF'),
(1008, 44, '120.20.33.139', '2017-11-28 22:59:01', 'OFF'),
(1009, 44, '101.178.163.19', '2017-11-29 02:11:19', 'OFF'),
(1010, 44, '101.178.163.19', '2017-11-29 02:13:11', 'OFF'),
(1011, 39, '101.178.163.19', '2017-11-29 02:33:01', 'OFF'),
(1012, 41, '101.178.163.19', '2017-11-29 02:49:13', 'OFF'),
(1013, 40, '101.178.163.19', '2017-11-29 03:36:20', 'OFF'),
(1014, 41, '141.168.25.54', '2017-11-29 03:39:56', 'OFF'),
(1015, 39, '141.168.25.54', '2017-11-29 03:52:40', 'OFF'),
(1016, 44, '141.168.25.54', '2017-11-29 04:04:15', 'OFF'),
(1017, 41, '141.168.25.54', '2017-11-29 04:05:59', 'OFF'),
(1018, 40, '120.20.185.71', '2017-11-29 04:09:24', 'OFF'),
(1019, 39, '120.20.185.71', '2017-11-29 04:12:15', 'OFF'),
(1020, 44, '120.20.185.71', '2017-11-29 04:15:18', 'OFF'),
(1021, 39, '120.20.185.71', '2017-11-29 04:16:38', 'OFF'),
(1022, 44, '120.20.185.71', '2017-11-29 04:23:29', 'OFF'),
(1023, 39, '120.20.185.71', '2017-11-29 04:27:18', 'OFF'),
(1024, 44, '141.168.25.54', '2017-11-29 04:28:22', 'OFF'),
(1025, 44, '141.168.25.54', '2017-11-29 07:47:48', 'OFF'),
(1026, 41, '141.168.25.54', '2017-11-29 11:33:26', 'OFF'),
(1027, 44, '141.168.25.54', '2017-11-29 11:54:59', 'OFF'),
(1028, 3, '192.168.1.101', '2017-11-29 12:31:23', 'OFF'),
(1029, 41, '141.168.25.54', '2017-11-29 23:00:10', 'OFF'),
(1030, 44, '141.168.25.54', '2017-11-29 23:03:19', 'OFF'),
(1031, 39, '141.168.25.54', '2017-11-29 23:11:48', 'OFF'),
(1032, 44, '101.178.163.19', '2017-11-30 00:42:43', 'OFF'),
(1033, 4, '101.178.163.19', '2017-11-30 00:47:52', 'OFF'),
(1034, 4, '101.178.163.19', '2017-11-30 00:49:58', 'OFF'),
(1035, 44, '101.178.163.19', '2017-11-30 00:54:16', 'OFF'),
(1036, 4, '101.178.163.19', '2017-11-30 00:54:55', 'OFF'),
(1037, 44, '101.178.163.19', '2017-11-30 00:56:33', 'OFF'),
(1038, 4, '101.178.163.19', '2017-11-30 01:01:02', 'OFF'),
(1039, 4, '101.178.163.19', '2017-11-30 03:10:04', 'OFF'),
(1040, 44, '192.168.1.101', '2017-11-30 04:50:15', 'OFF'),
(1041, 3, '192.168.1.101', '2017-11-30 12:04:14', 'OFF'),
(1042, 44, '141.168.25.54', '2017-12-01 10:57:25', 'OFF'),
(1043, 41, '141.168.25.54', '2017-12-01 10:58:16', 'OFF'),
(1044, 4, '141.168.25.54', '2017-12-01 10:59:03', 'OFF'),
(1121, 41, '192.168.1.101', '2017-12-11 14:25:02', 'OFF'),
(1122, 44, '192.168.1.101', '2017-12-11 06:06:40', 'OFF'),
(1123, 44, '141.168.25.54', '2017-12-11 14:25:03', 'OFF'),
(1124, 3, '192.168.1.101', '2017-12-11 07:16:06', 'OFF'),
(1125, 3, '192.168.1.101', '2017-12-11 10:01:33', 'OFF'),
(1126, 7, '192.168.1.101', '2017-12-11 10:09:59', 'OFF'),
(1127, 44, '175.45.84.98', '2017-12-12 00:15:08', 'OFF'),
(1128, 41, '175.45.84.98', '2017-12-12 00:21:47', 'OFF'),
(1129, 40, '175.45.84.98', '2017-12-12 00:25:08', 'OFF'),
(1130, 39, '175.45.84.98', '2017-12-12 00:25:34', 'OFF'),
(1131, 39, '175.45.84.98', '2017-12-12 00:30:35', 'OFF'),
(1132, 44, '175.45.84.98', '2017-12-12 00:33:35', 'OFF'),
(1133, 41, '175.45.84.98', '2017-12-12 00:34:29', 'OFF'),
(1134, 39, '175.45.84.98', '2017-12-12 00:39:58', 'OFF'),
(1135, 40, '175.45.84.98', '2017-12-12 00:41:02', 'OFF'),
(1136, 41, '175.45.84.98', '2017-12-12 00:41:43', 'OFF'),
(1137, 44, '175.45.84.98', '2017-12-12 00:43:11', 'OFF'),
(1138, 40, '175.45.84.98', '2017-12-12 00:44:30', 'OFF'),
(1139, 41, '175.45.84.98', '2017-12-12 01:05:39', 'OFF'),
(1140, 44, '175.45.84.98', '2017-12-12 01:07:37', 'OFF'),
(1141, 41, '175.45.84.98', '2017-12-12 01:09:45', 'OFF'),
(1142, 44, '175.45.84.98', '2017-12-12 01:14:51', 'OFF'),
(1143, 39, '175.45.84.98', '2017-12-12 01:15:53', 'OFF'),
(1144, 44, '175.45.84.98', '2017-12-12 01:17:18', 'OFF'),
(1145, 41, '175.45.84.98', '2017-12-12 01:18:30', 'OFF'),
(1146, 44, '175.45.84.98', '2017-12-12 01:21:33', 'OFF'),
(1147, 44, '175.45.84.98', '2017-12-12 01:22:50', 'OFF'),
(1148, 39, '175.45.84.98', '2017-12-12 01:25:41', 'OFF'),
(1149, 41, '175.45.84.98', '2017-12-12 01:27:23', 'OFF'),
(1150, 44, '175.45.84.98', '2017-12-12 01:31:40', 'OFF'),
(1151, 41, '175.45.84.98', '2017-12-12 01:35:51', 'OFF'),
(1152, 39, '175.45.84.98', '2017-12-12 01:49:51', 'OFF'),
(1153, 4, '175.45.84.98', '2017-12-12 01:54:07', 'OFF'),
(1154, 39, '141.168.25.54', '2017-12-12 12:12:45', 'OFF'),
(1155, 39, '141.168.25.54', '2017-12-12 23:28:43', 'OFF'),
(1156, 40, '141.168.25.54', '2017-12-12 23:47:56', 'OFF'),
(1157, 39, '141.168.25.54', '2017-12-12 23:49:17', 'OFF'),
(1158, 40, '141.168.25.54', '2017-12-12 23:58:23', 'OFF'),
(1159, 39, '141.168.25.54', '2017-12-13 00:00:32', 'OFF'),
(1160, 41, '141.168.25.54', '2017-12-13 00:02:27', 'OFF'),
(1161, 40, '141.168.25.54', '2017-12-13 00:05:38', 'OFF'),
(1162, 39, '141.168.25.54', '2017-12-13 00:07:29', 'OFF'),
(1163, 41, '141.168.25.54', '2017-12-13 00:10:03', 'OFF'),
(1164, 44, '141.168.25.54', '2017-12-13 00:15:16', 'OFF'),
(1165, 39, '141.168.25.54', '2017-12-13 00:20:40', 'OFF'),
(1166, 41, '141.168.25.54', '2017-12-13 00:21:03', 'OFF'),
(1167, 41, '141.168.25.54', '2017-12-13 00:22:36', 'OFF'),
(1168, 44, '141.168.25.54', '2017-12-13 01:38:28', 'OFF'),
(1169, 39, '120.20.63.74', '2017-12-13 02:48:20', 'OFF'),
(1170, 41, '141.168.25.54', '2017-12-13 02:54:20', 'OFF'),
(1171, 39, '141.168.25.54', '2017-12-13 03:07:28', 'OFF'),
(1172, 44, '141.168.25.54', '2017-12-13 03:18:24', 'OFF'),
(1173, 40, '141.168.25.54', '2017-12-13 04:33:03', 'OFF'),
(1174, 7, '192.168.1.101', '2017-12-13 05:13:05', 'OFF'),
(1175, 3, '192.168.1.101', '2017-12-13 06:30:16', 'OFF'),
(1176, 3, '192.168.1.101', '2017-12-13 14:08:22', 'OFF'),
(1177, 44, '141.168.25.54', '2017-12-13 09:05:23', 'OFF'),
(1178, 4, '141.168.25.54', '2017-12-13 12:29:18', 'OFF'),
(1179, 44, '141.168.25.54', '2017-12-13 23:32:16', 'OFF'),
(1180, 44, '141.168.25.54', '2017-12-14 02:05:23', 'OFF'),
(1181, 4, '141.168.25.54', '2017-12-14 02:20:01', 'OFF'),
(1182, 44, '141.168.25.54', '2017-12-14 08:19:29', 'OFF'),
(1183, 3, '192.168.1.101', '2017-12-14 07:00:52', 'OFF'),
(1184, 7, '103.97.211.245', '2017-12-14 17:49:40', 'OFF'),
(1185, 7, '192.168.1.101', '2017-12-15 04:05:06', 'OFF'),
(1186, 3, '192.168.1.101', '2017-12-15 05:05:31', 'OFF'),
(1187, 3, '192.168.1.101', '2017-12-15 11:46:23', 'OFF'),
(1188, 42, '192.168.1.101', '2017-12-15 11:46:58', 'OFF'),
(1189, 3, '192.168.1.101', '2017-12-15 14:04:53', 'OFF'),
(1190, 7, '192.168.1.101', '2017-12-15 13:45:06', 'OFF'),
(1191, 3, '192.168.1.101', '2017-12-16 08:37:53', 'OFF'),
(1192, 41, '116.15.34.167', '2017-12-17 06:14:27', 'OFF'),
(1193, 40, '116.15.34.167', '2017-12-17 06:16:24', 'OFF'),
(1194, 39, '116.15.34.167', '2017-12-17 06:17:35', 'OFF'),
(1195, 41, '116.15.34.167', '2017-12-17 06:18:20', 'OFF'),
(1196, 41, '116.15.34.167', '2017-12-17 06:19:01', 'OFF'),
(1197, 39, '116.15.34.167', '2017-12-17 06:19:38', 'OFF'),
(1198, 39, '116.15.34.167', '2017-12-17 06:27:21', 'OFF'),
(1199, 40, '116.15.34.167', '2017-12-17 06:46:50', 'OFF'),
(1200, 39, '116.15.34.167', '2017-12-17 08:12:43', 'OFF'),
(1201, 40, '116.15.34.167', '2017-12-17 08:19:48', 'OFF'),
(1202, 41, '116.15.34.167', '2017-12-17 08:47:29', 'OFF'),
(1203, 39, '116.15.34.167', '2017-12-17 08:50:12', 'OFF'),
(1204, 39, '116.15.34.167', '2017-12-17 09:05:44', 'OFF'),
(1205, 41, '116.15.34.167', '2017-12-17 09:06:35', 'OFF'),
(1206, 39, '116.15.34.167', '2017-12-17 09:08:26', 'OFF'),
(1207, 40, '116.15.34.167', '2017-12-17 09:09:50', 'OFF'),
(1208, 41, '116.15.34.167', '2017-12-17 09:11:32', 'OFF'),
(1209, 40, '116.15.34.167', '2017-12-17 09:19:51', 'OFF'),
(1210, 44, '116.15.34.167', '2017-12-17 11:06:26', 'OFF'),
(1211, 4, '116.15.34.167', '2017-12-17 11:24:36', 'OFF'),
(1212, 3, '192.168.1.101', '2017-12-18 04:14:15', 'OFF'),
(1213, 7, '192.168.1.101', '2017-12-18 06:08:56', 'OFF'),
(1214, 13, '192.168.1.101', '2017-12-18 05:00:18', 'OFF'),
(1215, 3, '192.168.1.101', '2017-12-18 06:09:14', 'OFF'),
(1216, 3, '192.168.1.101', '2017-12-18 08:40:58', 'OFF'),
(1217, 7, '192.168.1.101', '2017-12-18 06:23:07', 'OFF'),
(1218, 42, '192.168.1.101', '2017-12-18 11:41:49', 'OFF'),
(1219, 39, '61.8.194.210', '2017-12-18 11:53:20', 'OFF'),
(1220, 4, '61.8.194.210', '2017-12-18 14:35:29', 'OFF'),
(1221, 7, '192.168.1.101', '2017-12-19 06:49:48', 'OFF'),
(1222, 44, '61.8.194.210', '2017-12-19 14:26:11', 'OFF'),
(1223, 3, '192.168.1.101', '2017-12-20 05:19:54', 'OFF'),
(1224, 3, '192.168.1.101', '2017-12-20 06:31:33', 'OFF'),
(1225, 3, '192.168.1.101', '2017-12-20 08:48:26', 'OFF'),
(1226, 3, '192.168.1.101', '2017-12-20 09:55:44', 'OFF'),
(1227, 44, '61.8.194.210', '2017-12-20 13:15:43', 'OFF'),
(1228, 42, '192.168.1.101', '2017-12-21 08:26:03', 'OFF'),
(1229, 3, '192.168.1.101', '2017-12-21 10:52:57', 'OFF'),
(1230, 3, '192.168.1.101', '2017-12-21 13:38:38', 'OFF'),
(1231, 3, '192.168.1.101', '2017-12-21 13:54:31', 'OFF'),
(1232, 3, '192.168.1.101', '2017-12-22 07:03:47', 'OFF'),
(1233, 42, '192.168.1.101', '2017-12-22 07:14:41', 'OFF'),
(1234, 42, '192.168.1.101', '2017-12-22 07:16:38', 'OFF'),
(1235, 42, '192.168.1.101', '2017-12-22 11:28:41', 'OFF'),
(1236, 3, '192.168.1.101', '2017-12-22 10:23:27', 'OFF'),
(1237, 3, '192.168.1.101', '2017-12-22 11:28:52', 'OFF'),
(1238, 3, '192.168.1.101', '2017-12-22 12:00:25', 'OFF'),
(1239, 42, '192.168.1.101', '2017-12-22 12:00:13', 'OFF'),
(1240, 3, '192.168.1.101', '2017-12-22 14:04:27', 'OFF'),
(1241, 41, '116.15.34.167', '2017-12-22 13:57:49', 'OFF'),
(1242, 41, '116.15.34.167', '2017-12-22 14:33:11', 'OFF'),
(1243, 44, '116.15.34.167', '2017-12-22 14:35:27', 'OFF'),
(1244, 4, '116.15.34.167', '2017-12-22 14:49:27', 'OFF'),
(1245, 44, '116.15.34.167', '2017-12-22 14:53:36', 'OFF'),
(1246, 41, '116.15.34.167', '2017-12-23 09:53:59', 'OFF'),
(1247, 44, '116.15.34.167', '2017-12-23 10:21:42', 'OFF'),
(1248, 41, '116.15.34.167', '2017-12-24 03:51:29', 'OFF'),
(1249, 41, '116.15.34.167', '2017-12-25 01:55:27', 'OFF'),
(1250, 44, '116.15.34.167', '2017-12-25 04:51:47', 'OFF'),
(1251, 44, '116.15.34.167', '2017-12-26 02:05:00', 'OFF'),
(1252, 44, '116.15.34.167', '2017-12-26 15:03:28', 'OFF'),
(1253, 41, '116.15.34.167', '2017-12-26 15:17:26', 'OFF'),
(1254, 44, '116.15.34.167', '2017-12-27 07:00:56', 'OFF'),
(1255, 3, '192.168.1.101', '2017-12-27 15:54:23', 'OFF'),
(1256, 7, '192.168.1.101', '2017-12-27 11:29:36', 'OFF'),
(1257, 41, '121.7.150.145', '2017-12-27 07:03:33', 'OFF'),
(1258, 7, '192.168.1.101', '2017-12-29 10:26:45', 'OFF'),
(1259, 7, '192.168.1.101', '2017-12-29 10:31:22', 'OFF'),
(1260, 3, '192.168.1.101', '2017-12-29 10:31:41', 'OFF'),
(1261, 3, '192.168.1.101', '2017-12-29 11:07:10', 'OFF'),
(1262, 42, '192.168.1.101', '2017-12-29 10:36:55', 'OFF'),
(1263, 7, '192.168.1.101', '2017-12-29 10:56:27', 'OFF'),
(1264, 7, '192.168.1.101', '2017-12-29 11:32:44', 'OFF'),
(1265, 3, '192.168.1.101', '2017-12-29 11:54:40', 'OFF'),
(1266, 3, '192.168.1.101', '2017-12-29 14:26:49', 'OFF'),
(1267, 44, '116.15.34.167', '2018-01-01 03:27:10', 'OFF'),
(1268, 4, '116.15.34.167', '2018-01-01 03:27:46', 'OFF'),
(1269, 39, '116.15.34.167', '2018-01-01 04:10:39', 'OFF'),
(1270, 7, '192.168.1.101', '2018-01-01 04:00:49', 'OFF'),
(1271, 3, '192.168.1.101', '2018-01-01 04:03:37', 'OFF'),
(1272, 3, '192.168.1.101', '2018-01-01 07:16:31', 'OFF'),
(1273, 7, '192.168.1.101', '2018-01-01 07:22:51', 'OFF'),
(1274, 7, '192.168.1.101', '2018-01-01 08:44:58', 'OFF'),
(1275, 7, '192.168.1.101', '2018-01-01 08:48:01', 'OFF'),
(1276, 7, '192.168.1.101', '2018-01-01 08:48:45', 'OFF'),
(1277, 7, '192.168.1.101', '2018-01-01 11:35:17', 'OFF'),
(1278, 3, '192.168.1.101', '2018-01-01 11:55:54', 'OFF'),
(1279, 39, '116.15.34.167', '2018-01-01 11:04:12', 'OFF'),
(1280, 3, '192.168.1.101', '2018-01-01 12:17:07', 'OFF'),
(1281, 3, '192.168.1.101', '2018-01-01 12:19:13', 'OFF'),
(1282, 7, '192.168.1.101', '2018-01-01 12:19:03', 'OFF'),
(1283, 3, '192.168.1.101', '2018-01-01 13:54:50', 'OFF'),
(1284, 39, '116.15.34.167', '2018-01-01 13:15:24', 'OFF'),
(1285, 3, '192.168.1.101', '2018-01-02 05:42:28', 'OFF'),
(1286, 7, '192.168.1.101', '2018-01-02 12:18:47', 'OFF'),
(1287, 3, '192.168.1.101', '2018-01-05 14:01:15', 'OFF'),
(1288, 3, '192.168.1.101', '2018-01-08 08:07:20', 'OFF'),
(1289, 3, '192.168.1.101', '2018-01-09 14:11:08', 'OFF'),
(1290, 7, '192.168.1.101', '2018-01-09 14:11:09', 'OFF'),
(1291, 3, '192.168.1.101', '2018-01-10 12:40:45', 'OFF'),
(1292, 7, '192.168.1.101', '2018-01-18 03:49:37', 'OFF'),
(1293, 3, '192.168.1.101', '2018-01-18 03:59:47', 'OFF'),
(1294, 7, '192.168.1.101', '2018-01-18 04:06:28', 'OFF'),
(1295, 7, '192.168.1.101', '2018-01-18 06:46:59', 'OFF'),
(1296, 3, '192.168.1.101', '2018-01-18 11:59:51', 'OFF'),
(1297, 3, '192.168.1.101', '2018-01-24 13:09:21', 'OFF'),
(1298, 7, '192.168.1.101', '2018-01-24 16:20:48', 'OFF'),
(1299, 3, '192.168.5.196', '2018-01-24 16:20:48', 'OFF'),
(1300, 3, '192.168.5.196', '2018-01-25 09:32:04', 'OFF'),
(1301, 3, '192.168.1.101', '2018-01-25 10:52:12', 'OFF'),
(1302, 3, '192.168.5.196', '2018-01-25 14:13:51', 'OFF'),
(1303, 3, '192.168.1.101', '2018-01-29 05:29:09', 'OFF'),
(1304, 3, '192.168.5.196', '2018-01-29 07:39:23', 'OFF'),
(1305, 64, '192.168.5.196', '2018-01-29 06:16:25', 'OFF'),
(1306, 64, '192.168.1.101', '2018-01-29 14:13:25', 'OFF'),
(1307, 3, '192.168.5.196', '2018-01-29 11:16:21', 'OFF'),
(1308, 3, '192.168.4.32', '2018-01-29 12:11:24', 'OFF'),
(1309, 3, '192.168.1.101', '2018-01-29 14:12:33', 'OFF'),
(1310, 3, '192.168.5.196', '2018-01-30 10:13:34', 'OFF'),
(1311, 3, '192.168.4.32', '2018-01-30 14:05:17', 'OFF'),
(1312, 3, '192.168.5.196', '2018-01-31 09:08:06', 'OFF'),
(1313, 65, '192.168.5.196', '2018-01-31 13:19:48', 'OFF'),
(1314, 7, '192.168.1.101', '2018-01-31 12:28:44', 'OFF'),
(1315, 3, '192.168.5.196', '2018-01-31 13:58:40', 'OFF'),
(1316, 3, '192.168.1.101', '2018-02-01 04:43:59', 'OFF'),
(1317, 7, '192.168.1.101', '2018-02-01 05:29:51', 'OFF'),
(1318, 7, '192.168.1.101', '2018-02-01 07:49:05', 'OFF'),
(1319, 7, '192.168.1.101', '2018-02-01 09:25:10', 'OFF'),
(1320, 7, '192.168.5.196', '2018-02-01 13:47:22', 'OFF'),
(1321, 7, '192.168.5.196', '2018-02-02 04:23:21', 'OFF'),
(1322, 7, '192.168.1.101', '2018-02-02 09:18:29', 'OFF'),
(1323, 3, '192.168.1.101', '2018-02-02 09:17:39', 'OFF'),
(1324, 3, '192.168.1.101', '2018-02-02 09:19:49', 'OFF'),
(1325, 7, '192.168.1.101', '2018-02-02 09:21:43', 'OFF'),
(1326, 3, '192.168.5.196', '2018-02-02 09:24:42', 'OFF'),
(1327, 7, '192.168.1.101', '2018-02-02 09:34:39', 'OFF'),
(1328, 3, '192.168.1.101', '2018-02-02 09:38:04', 'OFF'),
(1329, 7, '192.168.5.196', '2018-02-02 09:39:47', 'OFF'),
(1330, 3, '192.168.5.196', '2018-02-02 17:35:22', 'OFF'),
(1331, 7, '192.168.1.101', '2018-02-02 10:14:33', 'OFF'),
(1332, 7, '192.168.5.196', '2018-02-02 13:56:02', 'OFF'),
(1333, 3, '192.168.1.101', '2018-02-05 08:58:23', 'OFF'),
(1334, 3, '192.168.1.101', '2018-02-05 10:26:28', 'OFF'),
(1335, 7, '::1', '2018-02-06 05:45:43', 'OFF'),
(1336, 3, '::1', '2018-02-06 09:45:41', 'OFF'),
(1337, 3, '::1', '2018-02-06 14:24:10', 'OFF'),
(1338, 64, '::1', '2018-02-07 04:00:21', 'OFF'),
(1339, 7, '::1', '2018-02-07 04:17:35', 'OFF'),
(1340, 7, '::1', '2018-02-07 04:23:52', 'OFF'),
(1341, 7, '::1', '2018-02-07 08:41:13', 'OFF'),
(1342, 7, '::1', '2018-02-07 10:12:38', 'OFF'),
(1343, 3, '::1', '2018-02-07 15:15:16', 'OFF'),
(1344, 7, '::1', '2018-02-07 15:41:33', 'OFF'),
(1345, 3, '::1', '2018-02-08 12:07:57', 'OFF'),
(1346, 7, '::1', '2018-02-08 13:51:34', 'OFF'),
(1347, 3, '::1', '2018-02-09 04:45:49', 'OFF'),
(1348, 7, '::1', '2018-02-09 06:29:48', 'OFF'),
(1349, 3, '::1', '2018-02-10 07:17:51', 'OFF'),
(1350, 64, '::1', '2018-02-10 11:42:02', 'OFF'),
(1351, 7, '::1', '2018-02-10 07:18:58', 'OFF'),
(1352, 44, '::1', '2018-02-10 08:22:50', 'OFF'),
(1353, 7, '::1', '2018-02-10 11:42:07', 'OFF'),
(1354, 64, '::1', '2018-02-12 03:39:41', 'OFF'),
(1355, 7, '::1', '2018-02-12 04:16:24', 'OFF'),
(1356, 3, '::1', '2018-02-12 05:25:48', 'OFF'),
(1357, 44, '::1', '2018-02-12 14:01:54', 'OFF'),
(1358, 3, '::1', '2018-02-13 03:48:56', 'OFF'),
(1359, 7, '::1', '2018-02-13 05:19:37', 'OFF'),
(1360, 3, '::1', '2018-02-14 10:41:30', 'OFF'),
(1361, 3, '::1', '2018-02-15 06:49:32', 'OFF'),
(1362, 42, '::1', '2018-02-15 05:01:17', 'OFF'),
(1363, 3, '::1', '2018-02-15 12:17:48', 'ON');

-- --------------------------------------------------------

--
-- Table structure for table `iw_user_status_log`
--

CREATE TABLE `iw_user_status_log` (
  `user_status_log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `iw_about_us_content`
--
ALTER TABLE `iw_about_us_content`
  ADD PRIMARY KEY (`about_us_content_id`);

--
-- Indexes for table `iw_about_us_slider`
--
ALTER TABLE `iw_about_us_slider`
  ADD PRIMARY KEY (`about_us_slider_id`);

--
-- Indexes for table `iw_admin`
--
ALTER TABLE `iw_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `iw_application_method`
--
ALTER TABLE `iw_application_method`
  ADD PRIMARY KEY (`application_method_id`);

--
-- Indexes for table `iw_application_process`
--
ALTER TABLE `iw_application_process`
  ADD PRIMARY KEY (`application_process_id`);

--
-- Indexes for table `iw_banner_detail`
--
ALTER TABLE `iw_banner_detail`
  ADD PRIMARY KEY (`banner_detail_id`);

--
-- Indexes for table `iw_blocked_contacts`
--
ALTER TABLE `iw_blocked_contacts`
  ADD PRIMARY KEY (`blocked_contact_id`);

--
-- Indexes for table `iw_blog`
--
ALTER TABLE `iw_blog`
  ADD PRIMARY KEY (`blog_id`),
  ADD KEY `blog_category_id_blog` (`blog_category_id`);

--
-- Indexes for table `iw_blog_category`
--
ALTER TABLE `iw_blog_category`
  ADD PRIMARY KEY (`blog_category_id`);

--
-- Indexes for table `iw_blog_media`
--
ALTER TABLE `iw_blog_media`
  ADD PRIMARY KEY (`blog_media_id`),
  ADD KEY `blog_media_index` (`blog_media_id`,`blog_id`),
  ADD KEY `blog_media_fk` (`blog_id`);

--
-- Indexes for table `iw_chat`
--
ALTER TABLE `iw_chat`
  ADD PRIMARY KEY (`chat_id`),
  ADD KEY `chat_type_id` (`chat_type_id`),
  ADD KEY `chat_group_id` (`chat_group_id`),
  ADD KEY `chat_message_id` (`chat_message_id`);

--
-- Indexes for table `iw_chat_group`
--
ALTER TABLE `iw_chat_group`
  ADD PRIMARY KEY (`chat_group_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `iw_chat_group_feedback`
--
ALTER TABLE `iw_chat_group_feedback`
  ADD PRIMARY KEY (`group_feedback_id`),
  ADD KEY `chat_group_id` (`chat_group_id`),
  ADD KEY `supervisor_id` (`supervisor_id`),
  ADD KEY `placement_id` (`placement_id`);

--
-- Indexes for table `iw_chat_group_profile`
--
ALTER TABLE `iw_chat_group_profile`
  ADD PRIMARY KEY (`group_profile_id`),
  ADD KEY `chat_group_id` (`chat_group_id`);

--
-- Indexes for table `iw_chat_group_profile_placement`
--
ALTER TABLE `iw_chat_group_profile_placement`
  ADD PRIMARY KEY (`group_profile_placement_id`),
  ADD KEY `placement_id` (`placement_id`),
  ADD KEY `group_profile_placement_fk` (`chat_group_id`);

--
-- Indexes for table `iw_chat_group_user`
--
ALTER TABLE `iw_chat_group_user`
  ADD PRIMARY KEY (`chat_group_user_id`),
  ADD KEY `chat_id_chat_group_user` (`user_id`),
  ADD KEY `user_id_chat_group_user` (`chat_group_id`);

--
-- Indexes for table `iw_chat_message`
--
ALTER TABLE `iw_chat_message`
  ADD PRIMARY KEY (`chat_message_id`);

--
-- Indexes for table `iw_chat_message_details`
--
ALTER TABLE `iw_chat_message_details`
  ADD PRIMARY KEY (`chat_message_details_id`),
  ADD KEY `chat_id_chat_message` (`chat_id`),
  ADD KEY `user_id_chat_message` (`sender_id`),
  ADD KEY `receiver_id` (`receiver_id`);

--
-- Indexes for table `iw_chat_type`
--
ALTER TABLE `iw_chat_type`
  ADD PRIMARY KEY (`chat_type_id`);

--
-- Indexes for table `iw_cities`
--
ALTER TABLE `iw_cities`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `state_id` (`country_id`);

--
-- Indexes for table `iw_contact_us`
--
ALTER TABLE `iw_contact_us`
  ADD PRIMARY KEY (`contact_us_id`);

--
-- Indexes for table `iw_contact_us_reply`
--
ALTER TABLE `iw_contact_us_reply`
  ADD PRIMARY KEY (`contact_us_reply_id`),
  ADD KEY `contact_us_id` (`contact_us_id`);

--
-- Indexes for table `iw_countries`
--
ALTER TABLE `iw_countries`
  ADD PRIMARY KEY (`country_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `iw_department`
--
ALTER TABLE `iw_department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `iw_discipline`
--
ALTER TABLE `iw_discipline`
  ADD PRIMARY KEY (`discipline_id`);

--
-- Indexes for table `iw_duration`
--
ALTER TABLE `iw_duration`
  ADD PRIMARY KEY (`duration_id`);

--
-- Indexes for table `iw_email_stem`
--
ALTER TABLE `iw_email_stem`
  ADD PRIMARY KEY (`email_stem_id`),
  ADD KEY `user_id_email_stem` (`provider_organisation_profile_id`);

--
-- Indexes for table `iw_email_template`
--
ALTER TABLE `iw_email_template`
  ADD PRIMARY KEY (`email_template_id`);

--
-- Indexes for table `iw_email_verification`
--
ALTER TABLE `iw_email_verification`
  ADD PRIMARY KEY (`email_verification_id`),
  ADD KEY `user_id_email_verification` (`user_id`);

--
-- Indexes for table `iw_external_application_process`
--
ALTER TABLE `iw_external_application_process`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iw_faq`
--
ALTER TABLE `iw_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `iw_favourite_company`
--
ALTER TABLE `iw_favourite_company`
  ADD PRIMARY KEY (`favourite_company_id`);

--
-- Indexes for table `iw_featured_people`
--
ALTER TABLE `iw_featured_people`
  ADD PRIMARY KEY (`featured_people_id`);

--
-- Indexes for table `iw_featured_user`
--
ALTER TABLE `iw_featured_user`
  ADD PRIMARY KEY (`featured_user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `iw_f_a_qs`
--
ALTER TABLE `iw_f_a_qs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iw_institutional_email_verification`
--
ALTER TABLE `iw_institutional_email_verification`
  ADD PRIMARY KEY (`institutional_email_verification_id`),
  ADD KEY `user_id_institutional_email_verification` (`user_id`);

--
-- Indexes for table `iw_level`
--
ALTER TABLE `iw_level`
  ADD PRIMARY KEY (`level_id`),
  ADD KEY `level_id` (`level_id`);

--
-- Indexes for table `iw_license`
--
ALTER TABLE `iw_license`
  ADD PRIMARY KEY (`license_id`),
  ADD KEY `license_type_id_license` (`license_type_id`),
  ADD KEY `provider_organisation_license` (`provider_organisation_profile_id`);

--
-- Indexes for table `iw_license_log`
--
ALTER TABLE `iw_license_log`
  ADD PRIMARY KEY (`license_log_id`);

--
-- Indexes for table `iw_license_supervisor`
--
ALTER TABLE `iw_license_supervisor`
  ADD PRIMARY KEY (`license_supervisor_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `license_id` (`license_id`);

--
-- Indexes for table `iw_license_type`
--
ALTER TABLE `iw_license_type`
  ADD PRIMARY KEY (`license_type_id`);

--
-- Indexes for table `iw_location`
--
ALTER TABLE `iw_location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `iw_migrations`
--
ALTER TABLE `iw_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iw_mode`
--
ALTER TABLE `iw_mode`
  ADD PRIMARY KEY (`mode_id`);

--
-- Indexes for table `iw_newsletter`
--
ALTER TABLE `iw_newsletter`
  ADD PRIMARY KEY (`newsletter_id`);

--
-- Indexes for table `iw_notification`
--
ALTER TABLE `iw_notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `iw_notification_template`
--
ALTER TABLE `iw_notification_template`
  ADD PRIMARY KEY (`notification_template_id`);

--
-- Indexes for table `iw_opportunity`
--
ALTER TABLE `iw_opportunity`
  ADD PRIMARY KEY (`opportunity_id`);

--
-- Indexes for table `iw_options`
--
ALTER TABLE `iw_options`
  ADD PRIMARY KEY (`options_id`);

--
-- Indexes for table `iw_participant`
--
ALTER TABLE `iw_participant`
  ADD PRIMARY KEY (`participant_id`);

--
-- Indexes for table `iw_password_resets`
--
ALTER TABLE `iw_password_resets`
  ADD PRIMARY KEY (`password_resets_id`),
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `iw_password_verification`
--
ALTER TABLE `iw_password_verification`
  ADD PRIMARY KEY (`password_verification_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `iw_placement`
--
ALTER TABLE `iw_placement`
  ADD PRIMARY KEY (`placement_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `provider_type` (`provider_type`),
  ADD KEY `placement_funding_id` (`placement_funding_id`),
  ADD KEY `placement_type` (`placement_type`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `state_id` (`state_id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `placement_status_id_placement` (`placement_status`),
  ADD KEY `opportunity` (`opportunity_id`),
  ADD KEY `application_method_id` (`application_method_id`);

--
-- Indexes for table `iw_placement_availability`
--
ALTER TABLE `iw_placement_availability`
  ADD PRIMARY KEY (`placement_availability_id`);

--
-- Indexes for table `iw_placement_discipline`
--
ALTER TABLE `iw_placement_discipline`
  ADD PRIMARY KEY (`placement_discipline_id`),
  ADD KEY `placement_id` (`placement_id`),
  ADD KEY `discipline_id` (`discipline_id`);

--
-- Indexes for table `iw_placement_document`
--
ALTER TABLE `iw_placement_document`
  ADD PRIMARY KEY (`placement_document_id`),
  ADD KEY `placement_id_placement_document` (`placement_id`);

--
-- Indexes for table `iw_placement_funding`
--
ALTER TABLE `iw_placement_funding`
  ADD PRIMARY KEY (`placement_funding_id`);

--
-- Indexes for table `iw_placement_keyword`
--
ALTER TABLE `iw_placement_keyword`
  ADD PRIMARY KEY (`placement_keyword_id`),
  ADD KEY `placement_id_placement_keyword` (`placement_id`);

--
-- Indexes for table `iw_placement_status`
--
ALTER TABLE `iw_placement_status`
  ADD PRIMARY KEY (`placement_status_id`);

--
-- Indexes for table `iw_placement_subject`
--
ALTER TABLE `iw_placement_subject`
  ADD PRIMARY KEY (`placement_subject_id`),
  ADD KEY `placement_id_placement_view` (`placement_id`),
  ADD KEY `subject_id_placement_view` (`subject_id`);

--
-- Indexes for table `iw_placement_type`
--
ALTER TABLE `iw_placement_type`
  ADD PRIMARY KEY (`placement_type_id`);

--
-- Indexes for table `iw_placement_view`
--
ALTER TABLE `iw_placement_view`
  ADD PRIMARY KEY (`placement_view_id`),
  ADD UNIQUE KEY `unique_ip` (`placement_id`,`ip_address`),
  ADD KEY `user_id_placement_view` (`placement_id`);

--
-- Indexes for table `iw_posts_shared_with`
--
ALTER TABLE `iw_posts_shared_with`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iw_profession`
--
ALTER TABLE `iw_profession`
  ADD PRIMARY KEY (`profession_id`);

--
-- Indexes for table `iw_provider_admin_general_settings`
--
ALTER TABLE `iw_provider_admin_general_settings`
  ADD PRIMARY KEY (`provider_admin_general_settings_id`),
  ADD KEY `user_id_provider_admin_general_settings` (`provider_organisation_profile_id`);

--
-- Indexes for table `iw_provider_admin_license_log`
--
ALTER TABLE `iw_provider_admin_license_log`
  ADD PRIMARY KEY (`iw_provider_organisation_license_log_id`),
  ADD KEY `provider_admin_profile_id` (`provider_admin_profile_id`),
  ADD KEY `license_id` (`license_id`);

--
-- Indexes for table `iw_provider_admin_profile`
--
ALTER TABLE `iw_provider_admin_profile`
  ADD PRIMARY KEY (`provider_admin_profile_id`),
  ADD KEY `user_id_provider_admin_profile` (`user_id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `department_id_provider_admin_profile` (`department`);

--
-- Indexes for table `iw_provider_department`
--
ALTER TABLE `iw_provider_department`
  ADD PRIMARY KEY (`provider_department_id`),
  ADD KEY `provider_id` (`provider_organisation_profile_id`),
  ADD KEY `department_id` (`department`);

--
-- Indexes for table `iw_provider_enquiry`
--
ALTER TABLE `iw_provider_enquiry`
  ADD PRIMARY KEY (`provider_enquiry_id`);

--
-- Indexes for table `iw_provider_enquiry_reply`
--
ALTER TABLE `iw_provider_enquiry_reply`
  ADD PRIMARY KEY (`provider_enquiry_reply_id`),
  ADD KEY `provider_enquiry_id` (`provider_enquiry_id`);

--
-- Indexes for table `iw_provider_notes`
--
ALTER TABLE `iw_provider_notes`
  ADD PRIMARY KEY (`provider_notes_id`);

--
-- Indexes for table `iw_provider_organisation_keyword`
--
ALTER TABLE `iw_provider_organisation_keyword`
  ADD PRIMARY KEY (`provider_organisation_keyword_id`),
  ADD KEY `user_id_provider_organisation_keyword` (`provider_organisation_profile_id`);

--
-- Indexes for table `iw_provider_organisation_license_log`
--
ALTER TABLE `iw_provider_organisation_license_log`
  ADD PRIMARY KEY (`provider_organisation_license_log_id`),
  ADD KEY `provider_organisation_profile_id` (`provider_organisation_profile_id`),
  ADD KEY `license_id` (`license_id`);

--
-- Indexes for table `iw_provider_organisation_location`
--
ALTER TABLE `iw_provider_organisation_location`
  ADD PRIMARY KEY (`provider_organisation_location_id`),
  ADD UNIQUE KEY `unique_index` (`provider_organisation_profile_id`,`country_id`,`city_id`),
  ADD KEY `provider_organisation_profile_id` (`provider_organisation_profile_id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `iw_provider_organisation_media`
--
ALTER TABLE `iw_provider_organisation_media`
  ADD PRIMARY KEY (`provider_organisation_media_id`);

--
-- Indexes for table `iw_provider_organisation_profile`
--
ALTER TABLE `iw_provider_organisation_profile`
  ADD PRIMARY KEY (`provider_organisation_profile_id`),
  ADD KEY `user_id_provider_organisation_profile` (`provider_admin_profile_id`),
  ADD KEY `profession_id_provider_organisation_profile` (`profession_id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `provider_type_id` (`provider_type_id`);

--
-- Indexes for table `iw_provider_organisation_subject`
--
ALTER TABLE `iw_provider_organisation_subject`
  ADD PRIMARY KEY (`provider_organisation_subject_id`),
  ADD KEY `user_id` (`provider_organisation_profile_id`),
  ADD KEY `subject_id_provider_organisation_subject` (`subject_id`);

--
-- Indexes for table `iw_provider_type`
--
ALTER TABLE `iw_provider_type`
  ADD PRIMARY KEY (`provider_type_id`);

--
-- Indexes for table `iw_research_type`
--
ALTER TABLE `iw_research_type`
  ADD PRIMARY KEY (`research_type_id`),
  ADD KEY `research_type_id` (`research_type_id`);

--
-- Indexes for table `iw_settings`
--
ALTER TABLE `iw_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iw_states`
--
ALTER TABLE `iw_states`
  ADD PRIMARY KEY (`state_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `iw_static_content`
--
ALTER TABLE `iw_static_content`
  ADD PRIMARY KEY (`static_content_id`);

--
-- Indexes for table `iw_status`
--
ALTER TABLE `iw_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `iw_student_academic_supervisor`
--
ALTER TABLE `iw_student_academic_supervisor`
  ADD PRIMARY KEY (`student_academic_supervisor_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id`),
  ADD KEY `user_id_3` (`user_id`),
  ADD KEY `user_id_4` (`user_id`);

--
-- Indexes for table `iw_student_document`
--
ALTER TABLE `iw_student_document`
  ADD PRIMARY KEY (`student_document_id`),
  ADD KEY `user_id_student_document` (`user_id`);

--
-- Indexes for table `iw_student_education`
--
ALTER TABLE `iw_student_education`
  ADD PRIMARY KEY (`student_education_id`),
  ADD KEY `user_id_student_education` (`user_id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `country_id_2` (`country_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `iw_student_employment`
--
ALTER TABLE `iw_student_employment`
  ADD PRIMARY KEY (`student_employment_id`),
  ADD KEY `user_id_student_employment` (`user_id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `state_id` (`state_id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `iw_student_favorite`
--
ALTER TABLE `iw_student_favorite`
  ADD PRIMARY KEY (`student_favorite_id`),
  ADD UNIQUE KEY `unique_favorite` (`supervisor_id`,`student_id`);

--
-- Indexes for table `iw_student_favorite_placement`
--
ALTER TABLE `iw_student_favorite_placement`
  ADD PRIMARY KEY (`student_favorite_placement_id`);

--
-- Indexes for table `iw_student_feedback`
--
ALTER TABLE `iw_student_feedback`
  ADD PRIMARY KEY (`student_feedback_id`),
  ADD KEY `user_id_student_feedback` (`user_id`),
  ADD KEY `supervisor_id_student_feedback` (`supervisor_id`),
  ADD KEY `placement_id` (`placement_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `iw_student_info`
--
ALTER TABLE `iw_student_info`
  ADD PRIMARY KEY (`student_info_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id`);

--
-- Indexes for table `iw_student_keyword`
--
ALTER TABLE `iw_student_keyword`
  ADD PRIMARY KEY (`student_keyword_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id`);

--
-- Indexes for table `iw_student_notification_discipline`
--
ALTER TABLE `iw_student_notification_discipline`
  ADD PRIMARY KEY (`student_notification_discipline_id`);

--
-- Indexes for table `iw_student_notification_duration`
--
ALTER TABLE `iw_student_notification_duration`
  ADD PRIMARY KEY (`student_notification_duration_id`);

--
-- Indexes for table `iw_student_notification_funding`
--
ALTER TABLE `iw_student_notification_funding`
  ADD PRIMARY KEY (`student_notification_funding_id`);

--
-- Indexes for table `iw_student_notification_keyword`
--
ALTER TABLE `iw_student_notification_keyword`
  ADD PRIMARY KEY (`student_notification_keyword_id`);

--
-- Indexes for table `iw_student_notification_level`
--
ALTER TABLE `iw_student_notification_level`
  ADD PRIMARY KEY (`student_notification_level_id`);

--
-- Indexes for table `iw_student_notification_location`
--
ALTER TABLE `iw_student_notification_location`
  ADD PRIMARY KEY (`student_notification_location_id`);

--
-- Indexes for table `iw_student_notification_opportunity`
--
ALTER TABLE `iw_student_notification_opportunity`
  ADD PRIMARY KEY (`student_notification_opportunity_id`);

--
-- Indexes for table `iw_student_notification_provider`
--
ALTER TABLE `iw_student_notification_provider`
  ADD PRIMARY KEY (`student_notification_provider_id`);

--
-- Indexes for table `iw_student_other_info`
--
ALTER TABLE `iw_student_other_info`
  ADD PRIMARY KEY (`student_other_info_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id`);

--
-- Indexes for table `iw_student_placement`
--
ALTER TABLE `iw_student_placement`
  ADD PRIMARY KEY (`student_placement_id`),
  ADD KEY `user_id_student_placement` (`user_id`),
  ADD KEY `placement_id` (`placement_id`);

--
-- Indexes for table `iw_student_placement_academic_supervisor`
--
ALTER TABLE `iw_student_placement_academic_supervisor`
  ADD PRIMARY KEY (`student_academic_supervisor_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `iw_student_placement_document`
--
ALTER TABLE `iw_student_placement_document`
  ADD PRIMARY KEY (`student_document_id`),
  ADD KEY `user_id_student_document` (`user_id`);

--
-- Indexes for table `iw_student_placement_education`
--
ALTER TABLE `iw_student_placement_education`
  ADD PRIMARY KEY (`student_education_id`),
  ADD KEY `user_id_student_education` (`user_id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `state_id` (`state_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `iw_student_placement_employment`
--
ALTER TABLE `iw_student_placement_employment`
  ADD PRIMARY KEY (`student_employment_id`),
  ADD KEY `user_id_student_employment` (`user_id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `state_id` (`state_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `iw_student_placement_feedback`
--
ALTER TABLE `iw_student_placement_feedback`
  ADD PRIMARY KEY (`student_feedback_id`),
  ADD KEY `user_id_student_feedback` (`user_id`),
  ADD KEY `supervisor_id_student_feedback` (`supervisor_id`),
  ADD KEY `placement_id` (`placement_id`);

--
-- Indexes for table `iw_student_placement_info`
--
ALTER TABLE `iw_student_placement_info`
  ADD PRIMARY KEY (`student_info_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `iw_student_placement_keyword`
--
ALTER TABLE `iw_student_placement_keyword`
  ADD PRIMARY KEY (`student_keyword_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `iw_student_placement_other_info`
--
ALTER TABLE `iw_student_placement_other_info`
  ADD PRIMARY KEY (`student_other_info_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `iw_student_placement_projects`
--
ALTER TABLE `iw_student_placement_projects`
  ADD PRIMARY KEY (`student_project_id`),
  ADD KEY `user_id_student_projects` (`user_id`),
  ADD KEY `country_id_student_projects` (`country_id`);

--
-- Indexes for table `iw_student_placement_research`
--
ALTER TABLE `iw_student_placement_research`
  ADD PRIMARY KEY (`student_research_id`),
  ADD KEY `user_id_student_research` (`user_id`);

--
-- Indexes for table `iw_student_profile`
--
ALTER TABLE `iw_student_profile`
  ADD PRIMARY KEY (`student_profile_id`),
  ADD KEY `user_id` (`provider_organisation_profile_id`),
  ADD KEY `user_id_2` (`user_id`),
  ADD KEY `user_id_3` (`user_id`);

--
-- Indexes for table `iw_student_projects`
--
ALTER TABLE `iw_student_projects`
  ADD PRIMARY KEY (`student_project_id`),
  ADD KEY `user_id_student_projects` (`user_id`),
  ADD KEY `country_id_student_projects` (`country_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `iw_student_research`
--
ALTER TABLE `iw_student_research`
  ADD PRIMARY KEY (`student_research_id`),
  ADD KEY `user_id_student_research` (`user_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `iw_subject`
--
ALTER TABLE `iw_subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `iw_submission_status`
--
ALTER TABLE `iw_submission_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `iw_supervisor_keyword`
--
ALTER TABLE `iw_supervisor_keyword`
  ADD PRIMARY KEY (`supervisor_keyword_id`),
  ADD KEY `user_id_supervisor_keyword` (`user_id`);

--
-- Indexes for table `iw_supervisor_profile`
--
ALTER TABLE `iw_supervisor_profile`
  ADD PRIMARY KEY (`supervisor_profile_id`),
  ADD KEY `user_id_supervisor_profile` (`provider_organisation_profile_id`),
  ADD KEY `provider_id` (`user_id`);

--
-- Indexes for table `iw_type`
--
ALTER TABLE `iw_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `iw_type_of_enquiry`
--
ALTER TABLE `iw_type_of_enquiry`
  ADD PRIMARY KEY (`type_of_enquiry_id`);

--
-- Indexes for table `iw_users`
--
ALTER TABLE `iw_users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `usertype_id_users` (`usertype_id`);

--
-- Indexes for table `iw_usertype`
--
ALTER TABLE `iw_usertype`
  ADD PRIMARY KEY (`usertype_id`);

--
-- Indexes for table `iw_user_license`
--
ALTER TABLE `iw_user_license`
  ADD PRIMARY KEY (`user_license_id`);

--
-- Indexes for table `iw_user_log`
--
ALTER TABLE `iw_user_log`
  ADD PRIMARY KEY (`user_log_id`),
  ADD KEY `user_id_user_log` (`user_id`);

--
-- Indexes for table `iw_user_status_log`
--
ALTER TABLE `iw_user_status_log`
  ADD PRIMARY KEY (`user_status_log_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `status_id` (`status_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `iw_about_us_content`
--
ALTER TABLE `iw_about_us_content`
  MODIFY `about_us_content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `iw_about_us_slider`
--
ALTER TABLE `iw_about_us_slider`
  MODIFY `about_us_slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `iw_admin`
--
ALTER TABLE `iw_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iw_application_method`
--
ALTER TABLE `iw_application_method`
  MODIFY `application_method_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iw_application_process`
--
ALTER TABLE `iw_application_process`
  MODIFY `application_process_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `iw_banner_detail`
--
ALTER TABLE `iw_banner_detail`
  MODIFY `banner_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `iw_blocked_contacts`
--
ALTER TABLE `iw_blocked_contacts`
  MODIFY `blocked_contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `iw_blog`
--
ALTER TABLE `iw_blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `iw_blog_category`
--
ALTER TABLE `iw_blog_category`
  MODIFY `blog_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `iw_blog_media`
--
ALTER TABLE `iw_blog_media`
  MODIFY `blog_media_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `iw_chat`
--
ALTER TABLE `iw_chat`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;
--
-- AUTO_INCREMENT for table `iw_chat_group`
--
ALTER TABLE `iw_chat_group`
  MODIFY `chat_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `iw_chat_group_feedback`
--
ALTER TABLE `iw_chat_group_feedback`
  MODIFY `group_feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=952;
--
-- AUTO_INCREMENT for table `iw_chat_group_profile`
--
ALTER TABLE `iw_chat_group_profile`
  MODIFY `group_profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;
--
-- AUTO_INCREMENT for table `iw_chat_group_profile_placement`
--
ALTER TABLE `iw_chat_group_profile_placement`
  MODIFY `group_profile_placement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `iw_chat_group_user`
--
ALTER TABLE `iw_chat_group_user`
  MODIFY `chat_group_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=423;
--
-- AUTO_INCREMENT for table `iw_chat_message`
--
ALTER TABLE `iw_chat_message`
  MODIFY `chat_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;
--
-- AUTO_INCREMENT for table `iw_chat_message_details`
--
ALTER TABLE `iw_chat_message_details`
  MODIFY `chat_message_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;
--
-- AUTO_INCREMENT for table `iw_chat_type`
--
ALTER TABLE `iw_chat_type`
  MODIFY `chat_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `iw_cities`
--
ALTER TABLE `iw_cities`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `iw_contact_us`
--
ALTER TABLE `iw_contact_us`
  MODIFY `contact_us_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `iw_contact_us_reply`
--
ALTER TABLE `iw_contact_us_reply`
  MODIFY `contact_us_reply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `iw_countries`
--
ALTER TABLE `iw_countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;
--
-- AUTO_INCREMENT for table `iw_department`
--
ALTER TABLE `iw_department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iw_discipline`
--
ALTER TABLE `iw_discipline`
  MODIFY `discipline_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `iw_duration`
--
ALTER TABLE `iw_duration`
  MODIFY `duration_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `iw_email_stem`
--
ALTER TABLE `iw_email_stem`
  MODIFY `email_stem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `iw_email_template`
--
ALTER TABLE `iw_email_template`
  MODIFY `email_template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `iw_email_verification`
--
ALTER TABLE `iw_email_verification`
  MODIFY `email_verification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `iw_external_application_process`
--
ALTER TABLE `iw_external_application_process`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iw_faq`
--
ALTER TABLE `iw_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `iw_favourite_company`
--
ALTER TABLE `iw_favourite_company`
  MODIFY `favourite_company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `iw_featured_people`
--
ALTER TABLE `iw_featured_people`
  MODIFY `featured_people_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `iw_featured_user`
--
ALTER TABLE `iw_featured_user`
  MODIFY `featured_user_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iw_f_a_qs`
--
ALTER TABLE `iw_f_a_qs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iw_institutional_email_verification`
--
ALTER TABLE `iw_institutional_email_verification`
  MODIFY `institutional_email_verification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `iw_level`
--
ALTER TABLE `iw_level`
  MODIFY `level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `iw_license`
--
ALTER TABLE `iw_license`
  MODIFY `license_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `iw_license_log`
--
ALTER TABLE `iw_license_log`
  MODIFY `license_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `iw_license_supervisor`
--
ALTER TABLE `iw_license_supervisor`
  MODIFY `license_supervisor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `iw_license_type`
--
ALTER TABLE `iw_license_type`
  MODIFY `license_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `iw_location`
--
ALTER TABLE `iw_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iw_migrations`
--
ALTER TABLE `iw_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;
--
-- AUTO_INCREMENT for table `iw_mode`
--
ALTER TABLE `iw_mode`
  MODIFY `mode_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `iw_newsletter`
--
ALTER TABLE `iw_newsletter`
  MODIFY `newsletter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `iw_notification`
--
ALTER TABLE `iw_notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
--
-- AUTO_INCREMENT for table `iw_notification_template`
--
ALTER TABLE `iw_notification_template`
  MODIFY `notification_template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `iw_opportunity`
--
ALTER TABLE `iw_opportunity`
  MODIFY `opportunity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `iw_options`
--
ALTER TABLE `iw_options`
  MODIFY `options_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iw_password_resets`
--
ALTER TABLE `iw_password_resets`
  MODIFY `password_resets_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `iw_password_verification`
--
ALTER TABLE `iw_password_verification`
  MODIFY `password_verification_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iw_placement`
--
ALTER TABLE `iw_placement`
  MODIFY `placement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT for table `iw_placement_discipline`
--
ALTER TABLE `iw_placement_discipline`
  MODIFY `placement_discipline_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;
--
-- AUTO_INCREMENT for table `iw_placement_document`
--
ALTER TABLE `iw_placement_document`
  MODIFY `placement_document_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `iw_placement_funding`
--
ALTER TABLE `iw_placement_funding`
  MODIFY `placement_funding_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `iw_placement_keyword`
--
ALTER TABLE `iw_placement_keyword`
  MODIFY `placement_keyword_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `iw_placement_status`
--
ALTER TABLE `iw_placement_status`
  MODIFY `placement_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `iw_placement_subject`
--
ALTER TABLE `iw_placement_subject`
  MODIFY `placement_subject_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iw_placement_type`
--
ALTER TABLE `iw_placement_type`
  MODIFY `placement_type_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iw_placement_view`
--
ALTER TABLE `iw_placement_view`
  MODIFY `placement_view_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;
--
-- AUTO_INCREMENT for table `iw_posts_shared_with`
--
ALTER TABLE `iw_posts_shared_with`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `iw_profession`
--
ALTER TABLE `iw_profession`
  MODIFY `profession_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `iw_provider_admin_general_settings`
--
ALTER TABLE `iw_provider_admin_general_settings`
  MODIFY `provider_admin_general_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `iw_provider_admin_license_log`
--
ALTER TABLE `iw_provider_admin_license_log`
  MODIFY `iw_provider_organisation_license_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `iw_provider_admin_profile`
--
ALTER TABLE `iw_provider_admin_profile`
  MODIFY `provider_admin_profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `iw_provider_department`
--
ALTER TABLE `iw_provider_department`
  MODIFY `provider_department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `iw_provider_enquiry`
--
ALTER TABLE `iw_provider_enquiry`
  MODIFY `provider_enquiry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `iw_provider_enquiry_reply`
--
ALTER TABLE `iw_provider_enquiry_reply`
  MODIFY `provider_enquiry_reply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `iw_provider_notes`
--
ALTER TABLE `iw_provider_notes`
  MODIFY `provider_notes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `iw_provider_organisation_keyword`
--
ALTER TABLE `iw_provider_organisation_keyword`
  MODIFY `provider_organisation_keyword_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iw_provider_organisation_license_log`
--
ALTER TABLE `iw_provider_organisation_license_log`
  MODIFY `provider_organisation_license_log_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iw_provider_organisation_location`
--
ALTER TABLE `iw_provider_organisation_location`
  MODIFY `provider_organisation_location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `iw_provider_organisation_media`
--
ALTER TABLE `iw_provider_organisation_media`
  MODIFY `provider_organisation_media_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `iw_provider_organisation_profile`
--
ALTER TABLE `iw_provider_organisation_profile`
  MODIFY `provider_organisation_profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `iw_provider_organisation_subject`
--
ALTER TABLE `iw_provider_organisation_subject`
  MODIFY `provider_organisation_subject_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iw_provider_type`
--
ALTER TABLE `iw_provider_type`
  MODIFY `provider_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `iw_research_type`
--
ALTER TABLE `iw_research_type`
  MODIFY `research_type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `iw_settings`
--
ALTER TABLE `iw_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `iw_states`
--
ALTER TABLE `iw_states`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=356;
--
-- AUTO_INCREMENT for table `iw_static_content`
--
ALTER TABLE `iw_static_content`
  MODIFY `static_content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `iw_status`
--
ALTER TABLE `iw_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `iw_student_academic_supervisor`
--
ALTER TABLE `iw_student_academic_supervisor`
  MODIFY `student_academic_supervisor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `iw_student_document`
--
ALTER TABLE `iw_student_document`
  MODIFY `student_document_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `iw_student_education`
--
ALTER TABLE `iw_student_education`
  MODIFY `student_education_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `iw_student_employment`
--
ALTER TABLE `iw_student_employment`
  MODIFY `student_employment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `iw_student_favorite`
--
ALTER TABLE `iw_student_favorite`
  MODIFY `student_favorite_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `iw_student_favorite_placement`
--
ALTER TABLE `iw_student_favorite_placement`
  MODIFY `student_favorite_placement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `iw_student_feedback`
--
ALTER TABLE `iw_student_feedback`
  MODIFY `student_feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `iw_student_info`
--
ALTER TABLE `iw_student_info`
  MODIFY `student_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `iw_student_keyword`
--
ALTER TABLE `iw_student_keyword`
  MODIFY `student_keyword_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `iw_student_notification_discipline`
--
ALTER TABLE `iw_student_notification_discipline`
  MODIFY `student_notification_discipline_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iw_student_notification_duration`
--
ALTER TABLE `iw_student_notification_duration`
  MODIFY `student_notification_duration_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iw_student_notification_funding`
--
ALTER TABLE `iw_student_notification_funding`
  MODIFY `student_notification_funding_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iw_student_notification_keyword`
--
ALTER TABLE `iw_student_notification_keyword`
  MODIFY `student_notification_keyword_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iw_student_notification_level`
--
ALTER TABLE `iw_student_notification_level`
  MODIFY `student_notification_level_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iw_student_notification_location`
--
ALTER TABLE `iw_student_notification_location`
  MODIFY `student_notification_location_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iw_student_notification_opportunity`
--
ALTER TABLE `iw_student_notification_opportunity`
  MODIFY `student_notification_opportunity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `iw_student_notification_provider`
--
ALTER TABLE `iw_student_notification_provider`
  MODIFY `student_notification_provider_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iw_student_other_info`
--
ALTER TABLE `iw_student_other_info`
  MODIFY `student_other_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `iw_student_placement`
--
ALTER TABLE `iw_student_placement`
  MODIFY `student_placement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `iw_student_placement_academic_supervisor`
--
ALTER TABLE `iw_student_placement_academic_supervisor`
  MODIFY `student_academic_supervisor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `iw_student_placement_document`
--
ALTER TABLE `iw_student_placement_document`
  MODIFY `student_document_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `iw_student_placement_education`
--
ALTER TABLE `iw_student_placement_education`
  MODIFY `student_education_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `iw_student_placement_employment`
--
ALTER TABLE `iw_student_placement_employment`
  MODIFY `student_employment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `iw_student_placement_feedback`
--
ALTER TABLE `iw_student_placement_feedback`
  MODIFY `student_feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `iw_student_placement_info`
--
ALTER TABLE `iw_student_placement_info`
  MODIFY `student_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `iw_student_placement_keyword`
--
ALTER TABLE `iw_student_placement_keyword`
  MODIFY `student_keyword_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iw_student_placement_other_info`
--
ALTER TABLE `iw_student_placement_other_info`
  MODIFY `student_other_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `iw_student_placement_projects`
--
ALTER TABLE `iw_student_placement_projects`
  MODIFY `student_project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `iw_student_placement_research`
--
ALTER TABLE `iw_student_placement_research`
  MODIFY `student_research_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `iw_student_profile`
--
ALTER TABLE `iw_student_profile`
  MODIFY `student_profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `iw_student_projects`
--
ALTER TABLE `iw_student_projects`
  MODIFY `student_project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `iw_student_research`
--
ALTER TABLE `iw_student_research`
  MODIFY `student_research_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `iw_subject`
--
ALTER TABLE `iw_subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iw_supervisor_keyword`
--
ALTER TABLE `iw_supervisor_keyword`
  MODIFY `supervisor_keyword_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iw_supervisor_profile`
--
ALTER TABLE `iw_supervisor_profile`
  MODIFY `supervisor_profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `iw_type`
--
ALTER TABLE `iw_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `iw_type_of_enquiry`
--
ALTER TABLE `iw_type_of_enquiry`
  MODIFY `type_of_enquiry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `iw_users`
--
ALTER TABLE `iw_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `iw_usertype`
--
ALTER TABLE `iw_usertype`
  MODIFY `usertype_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iw_user_license`
--
ALTER TABLE `iw_user_license`
  MODIFY `user_license_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `iw_user_log`
--
ALTER TABLE `iw_user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1364;
--
-- AUTO_INCREMENT for table `iw_user_status_log`
--
ALTER TABLE `iw_user_status_log`
  MODIFY `user_status_log_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
