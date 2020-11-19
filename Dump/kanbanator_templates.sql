-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: kanbanator
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `templates`
--

DROP TABLE IF EXISTS `templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `templates` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL DEFAULT '',
  `description` varchar(300) NOT NULL DEFAULT '',
  `image_url` varchar(300) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `link` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templates`
--

LOCK TABLES `templates` WRITE;
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
INSERT INTO `templates` VALUES (1,'Lean Canvas','Lean Canvas is a 1-page business plan template that helps you deconstruct your idea into its key assumptions. It is optimized for Lean Startups and replaces elaborate business plans with a single page business model.','https://images.pexels.com/photos/936137/pexels-photo-936137.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500','Business','lean-canvas'),(2,'Business Model Canvas','Business Model Canvas is a strategic management and lean startup template for developing new or documenting existing business models.','https://images.pexels.com/photos/2312369/pexels-photo-2312369.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500','Business','business-model-canvas'),(3,'Company Overview','The goal of this board is to give people a high level overview of what\'s happening throughout the company, with the ability to find details when they want to.','https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500','Business','company-overview'),(4,'Learn a language','Learning a language takes time and patience, but most of all it takes consistent practice. With a Trello board I try to break everything I do into small, achievable tasks that take at most a few hours to complete.','https://images.pexels.com/photos/4144923/pexels-photo-4144923.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500','Education','learn-a-language'),(5,'Project Based Learning','The entirety of a students’ assessment is based on projects, so one of the key aspects of that is organizing your project, creating a timeline, responsibilities, and checklists.','https://images.pexels.com/photos/2714073/pexels-photo-2714073.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500','Education','project-based-learning'),(6,'Homeschool ','At the beginning of the week, create lists for each school day. Fill each list with cards for the day’s school assignments with “must do” labels on the things that will be graded. The cards can have everything needed to complete each assignment.','https://images.pexels.com/photos/5088008/pexels-photo-5088008.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500','Education','homeschool '),(7,'Budget Template','I use this board to track monthly expenses as well as payment due/ bank withdrawal dates. This board can be used to track amount and date for all recurring charges. It\'s especially useful for avoiding overdrafts.','https://images.pexels.com/photos/724994/pexels-photo-724994.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500','Personal & Productivity','budget-template'),(8,'The Home Workout Organizer','Since I’m not able to go to the gym at the moment, I started using Trello to track and organize my at-home workouts. I created a new board called “Home Workout” with columns for each type of exercise and cards containing every viable option within each of those areas.','https://images.pexels.com/photos/19677/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500','Personal & Productivity','the-home-workout-organizer'),(9,'Productivity Template','Need a day-to-day productivity template to help you stay organized and on top of all of the details? Here it is!','https://images.pexels.com/photos/669996/pexels-photo-669996.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500','Personal & Productivity','productivity-template'),(10,'Copywriting','This board is great for copywriters. Copy projects get added to the backlog, and whenever a copywriter is free they assign themselves to the card and add a link to their Google Doc with the new copy. A different team then publishes the copy from the cards and moves the card along to Published.','https://images.pexels.com/photos/669610/pexels-photo-669610.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500','Marketing','copywriting'),(11,'Marketing Request','This board is a collaboration board between the JotForm Marketing and Growth teams. When the Marketing team has a request, it fills out a design request form (powered by JotForm) that automatically populates this board with the request details.','https://images.pexels.com/photos/6231/marketing-color-colors-wheel.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500','Marketing','marketing-request'),(12,'Blog Content Schedule','The scheduled pipeline of all upcoming content for your blog. Plan content, assign to authors and manage the editing & publishing of a post.','https://images.pexels.com/photos/185576/pexels-photo-185576.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500','Marketing','blog-content-schedule'),(13,'IT Project Workflow','Manage IT projects workflow and make more visible:\n- blocking issues\n- on which environment items are installed\n- the status of tests by the environment','https://images.pexels.com/photos/355952/pexels-photo-355952.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500','Project Management','it-project-workflow'),(14,'Agile Board','Use this board to get things done. It isn’t just about shipping a product, or checking off items on a list, or even about marking a project as Done. Getting things done is a process: it’s a way of thinking that involves planning, execution, iteration, and reflection.','https://images.pexels.com/photos/268362/pexels-photo-268362.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500','Project Management','agile-board'),(15,'Eisenhower Matrix','The Eisenhower Matrix is a powerful method to organize your daily/weekly tasks. Read the explanation on how to use this method wisely in Trello. The lists represents the category the task belong too. The cards represents the tasks.','https://images.pexels.com/photos/669615/pexels-photo-669615.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500','Project Management','eisenhower-matrix'),(16,'Heuristic Evaluation','Use this board to conduct a heuristic evaluation of any UI projects your team is working on. Get a bird\'s eye view of how well the project complies with 10 recognized usability principles, and identify specific usability issues that require further design exploration.','https://images.pexels.com/photos/5836/yellow-metal-design-decoration.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500','Design','heuristic-evaluation'),(17,'Game Design','Use this Trello board as an easy to organize template for planning a video game project. We\'ve translated common sections and ideas typically seen in Game Design Documents (GDDs) into an easy to use Trello board so you no longer have to get lost in an endless sea of wikis or word document templates.','https://images.pexels.com/photos/5933/color-paint-palette-wall-painting.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500','Design','game-design'),(18,'Design Sprint','A design sprint is a week-long process to ideate on early concepts and test ideas out with customers. The major value of design sprints are how quickly they can be run. They are most effective with a small and focused team that can clear their schedule for the week and hit the ground running.','https://images.pexels.com/photos/5356427/pexels-photo-5356427.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500','Design','design-sprint'),(19,'Remote Team Hub','Consider this board mission control for team productivity. A one stop shop for team resources, FAQ’s, and for anyone to see what’s currently being worked on and who’s doing what. Create cards for important items like OKRs, projects, and team activities to provide an at-a-glance overview.','https://images.pexels.com/photos/4099388/pexels-photo-4099388.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500','Remote Work','remote-team-hub'),(20,'Remote Team Meetings','Bring focus and transparency to your remote team meetings. Save time with a dedicated board that creates a structured agenda for your team’s weekly (or daily) meetings. Create a democratic and open meeting structure by allowing any teammate to add cards to the “This Week” list.','https://images.pexels.com/photos/389818/pexels-photo-389818.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500','Remote Work','remote-team-meetings'),(21,'Distributed Team Brainstorming','Welcome to a better way to brainstorm new ideas. This is a board that you can use to collaborate and share ideas with your team, no matter where they’re located. Make the left-most list a place to identify the higher level initiative or problems you wish to solve.','https://images.pexels.com/photos/3568792/pexels-photo-3568792.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500','Remote Work','distributed-team-brainstorming');
/*!40000 ALTER TABLE `templates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-19 20:47:16
