-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 15, 2018 at 10:27 AM
-- Server version: 10.1.23-MariaDB-9+deb9u1
-- PHP Version: 7.0.27-0+deb9u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `StillAlive`
--

-- --------------------------------------------------------

--
-- Table structure for table `Characters`
--

CREATE TABLE `Characters` (
  `characterID` int(11) NOT NULL,
  `playerID` int(11) NOT NULL,
  `name` text NOT NULL,
  `startDate` date NOT NULL,
  `isAlive` tinyint(4) NOT NULL,
  `deathDate` date DEFAULT NULL,
  `numSkills` int(11) NOT NULL,
  `spentXp` int(11) NOT NULL,
  `freeSkillsSpent` int(11) NOT NULL,
  `infection` int(11) NOT NULL,
  `primaryWeaponID` int(11) NOT NULL,
  `bullets` int(11) NOT NULL,
  `megas` int(11) NOT NULL,
  `accus` int(11) NOT NULL,
  `millitaries` int(11) NOT NULL,
  `rockets` int(11) NOT NULL,
  `bio` text NOT NULL,
  `bulletCasings` int(11) NOT NULL,
  `megaCasings` int(11) NOT NULL,
  `accuCasings` int(11) NOT NULL,
  `millitaryCasings` int(11) NOT NULL,
  `rocketCasings` int(11) NOT NULL,
  `techParts` int(11) NOT NULL,
  `mechParts` int(11) NOT NULL,
  `stone` int(11) NOT NULL,
  `wood` int(11) NOT NULL,
  `metal` int(11) NOT NULL,
  `cloth` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Characters`
--

INSERT INTO `Characters` (`characterID`, `playerID`, `name`, `startDate`, `isAlive`, `deathDate`, `numSkills`, `spentXp`, `freeSkillsSpent`, `infection`, `primaryWeaponID`, `bullets`, `megas`, `accus`, `millitaries`, `rockets`, `bio`, `bulletCasings`, `megaCasings`, `accuCasings`, `millitaryCasings`, `rocketCasings`, `techParts`, `mechParts`, `stone`, `wood`, `metal`, `cloth`) VALUES
(1, 1, 'Ziya (Zi) Helvar', '2017-07-19', 1, NULL, 9, 4, 1, 0, 1, 8, 0, 1, 0, 0, 'My name is Ziya Helvar, but you can call me Zi. I guess I should start from the beginning. I lived alone in an apartment near the bookstore I worked at in Brooklyn. At first the stories about the infection were sparse, but given that Brooklyn is in one of the most densely populated areas in America, the infection spread quickly. As soon as I realized this, I began my preparations to get out of the city. When I was ready, I got on my bike and barely spared a glance back. All my friends had either refused to leave their homes, or had already been infected. So I headed for a new life in the Midwest because the east and west coasts were chock full of cities, and there would be no way to tame the infection in those areas. \n\nLife had been lonely for the past three years. For the most part I travelled alone; scavenging what I could from abandoned stores and homes, or living off the land I travel across. Once in awhile I would run into another group of survivors and stay with them for a few days. One of the few times that I stuck with a group for over a week, I heard constant talk about a camp for survivors up in Wisconsin that they were thinking about heading for. I didn\'t trust them enough to go with, but I took some time to think it over and figured it wouldn\'t hurt to take a look for myself.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 3, 'Aria Sinclair', '2017-05-22', 1, NULL, 14, 5, 1, 12, 1, 10, 0, 0, 0, 0, 'After the plague hit I left my job as an educator to be closer to my family, up North. However, by the time I got to Wisconsin, my hometown was already condemned. My mother and father died from the disease and I haven’t heard from my sister even years before the break out. I presume that she died just like our parents. The hardest part was losing Rex, my dog. Once he was no longer in the picture I ran. For a few years I ran all day and bunkered down for the dreadful nights. Until just over a year ago I stumbled upon a few people running, just as I had been. They told me of a camp, not too far from where we were, that they were heading to. I decided that day that I was sick of running and it was time to start fighting. It was a struggle to fit into Camp Still Alive. Everybody had well established place in the group and I was the newcomer just trying to fit in. It got easier as the month went on, I was able to use my teaching ability to help others learn new skills. I may not be good at everything, but I am careful and observant. If you give me a little time, I can teach you just about anything about everything. \r\n\r\nBIO: Before the world went to shit, I was happy. I was a part of a typical nuclear family, had a momma that nagged me to much and a dadda that gave me anything I wanted. My sister and I’s relationship was complicated at best, but so is everyone else\'s. I was happy working my 7-3 job at the university and coming home to Rex, my pup, every day. It was a normal life, a boring life, but I was happy.\r\n\r\nThen the proverbial foot dropped. They say it started in the hospitals as a fever or whatever. I honestly wouldn’t give a crap how it started. I just wished the government gave a shit. They didn’t do much to stop the spread. I would have nuked the whole fucking town, but no that was inhumane. Well please tell me, how losing your entire family and your barely old enough pup to this sick plague humane? It’s not, but the government could care less, they\'re only worried about saving their own damn asses. That’s why we started our own government. \r\n\r\nIt’s not much of a government and at a moments notice we would probably all abandon each other to save our own asses, but we follow the rules for now. The sergeant gives us orders and we chip in our share of the labor. It’s more of a mutual agreement then anything, but it works. My mother was the first to go when the plague hit our home town. I remember talking to her over the phone, before the cell towers fell. She wouldn’t let me come see her. It was to dangerous. “Just survive” were the last words I heard from my mother before she was taken away from us. \r\n\r\nJust survive. That is what I have been doing for the last five years. I have survived through a lot of shit. A lot of betrayals and backstabs, a lot of death. Momma if you are watching me I want you to know that I am surviving. For you I will always survive. And to think I use to be happy.', 0, 0, 0, 0, 0, 2, 1, 1, 7, 4, 0),
(5, 4, 'Morgan Goodwin', '2017-05-30', 0, '2017-05-30', 8, 4, 1, 0, 1, 3, 0, 0, 0, 0, '-None Given-', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 5, 'Jack Lanser', '2017-05-01', 1, NULL, 29, 0, 0, 0, 1, 0, 0, 0, 0, 0, '-None Given-', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 6, 'Scooter', '2017-05-30', 0, '2017-07-25', 15, 0, 0, 0, 1, 0, 0, 0, 0, 0, '-None Given-', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 7, 'Jay (Trout) Flyer', '2017-05-18', 1, NULL, 10, 3, 1, 7, 1, 29, 0, 0, 0, 0, 'Life’s always a struggle, no matter what. Whether born in a mansion or a gutter, every man and woman is going to face challenges in their lives. You can rise to meet them, or you can be crushed by reality. Such was the life of Jay. Born into an upper middle class household, he learned all the life lessons in the comfort of financial stability. He could fish and hunt with his father whenever the urge across, and came home to a loving homemaker of a mother. He learned how to be a responsible, loyal, and brave all without responsibility, challenge or fears. Is life was one big hypothetical that he felt ready to tackle. In school he excelled without being challenged, and thought himself god’s gift to the world. When it was time for him to find a career he chose medicine, still clinging to the belief of doing the chivalrous thing and helping others as well as himself. That was when life got real however. Three years at med-school in Chicago and life was not what he expected it to be. Twice mugged, twice failed, and a mediocre understanding of medical ethics had kicked young Mr. Flyer square in the teeth without the courtesy of a painkiller. A CNN report would change everything for him though. The outbreak had started. As panic spread through the windy city, now was finally his time to shine. In a campus surrounded by pricks with a silver spoon shoved you know where, Jay finally had a shot. In the first year following the outbreak, the now self-appointed Dr. Flyer, treated more patients than any physician would in a lifetime. Sure, not all procedures were successful, most happened to be on the students who so proudly boasted about their families estates or perfect GPA’s, but hey where else are you gonna go when the world is falling apart. Finally as the cities survivor population dwindled, Jay decided it was time to move north. On the cold shores of Lake Superior, he knew he could isolate himself and survive for as long as need be. For a nearly a year he worked his way north slowly. Living in broken down cars, survivor camps and boarded up shops he trekked northward until meeting a group of survivors near the shores of Lake Delton. Commander Davis and his men were eager to add another medic, and hell, there were waterslides nearby. That is how Jay “Trout” Flyer came to be the youngest head of Medicine in Chicago history and a pretty damn fine medic and zombie slayer.', 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0),
(9, 8, 'Richard Gantz', '2017-05-19', 1, NULL, 21, 0, 0, 0, 1, 0, 0, 0, 0, 0, '**See \"The Story\" section of the Still Alive Handbook to see the backstory of Richard Gantz and Commander Davis.**', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 9, 'Commander Davis', '2017-05-01', 1, NULL, 21, 2, 0, 0, 1, 0, 0, 0, 0, 0, '**See &#34;The Story&#34; section of the Still Alive Handbook to see the backstory of Richard Gantz and Commander Davis.**', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 10, 'Ray Lanmen', '2017-07-18', 0, '2017-07-25', 9, 4, 1, 0, 1, 0, 0, 1, 0, 0, 'Ray Lanmen had always been lost in life. His dreams and goals never clear, and his choices even less so. After trying a year of college he dropped out, hoping to find some path that worked for him. He only returned to a town of chaos. If he wasn\'t lost enough before, he now couldn\'t even recognize his own home town as torn bodies grazed across the streets, attempting to eat anything the moved. He luckily found his way home, but his moving vehicle attracted those living corpses home with him. After several attempts to get inside the locked house, Ray\'s brother, Max, saw him through some nailed up boards in a window. His brother opened up the garage just enough for Ray to slide under, but unfortunately the flesh hungry mob starting forcing themselves under as well. Ray quickly ran inside and tried to warn his brother as his parents ran to the door in the garage trying to hold it closed. They yelled at Ray and Max to make a break through the window leading to the back porch, but as Ray and Max were climbing through the window, the horde broke down the door and Ray watched in the window as groups of these monsters leaped upon his parents, tearing their flesh away and eating them alive. Max quickly pulled Ray through the window and they ran off the back porch, trying to make barely any noise. They ran for what felt like hours, hoping to find something that wasn\'t undead. They finally stumbled across Camp Still Alive and found faces of fighters and other scared people, but most importantly, a new home. At Camp Still Alive, Ray does what he can to keep his brother safe and to help out this new community, but slowly insanity has been eating away at him for the sight of his parents death is torturing him, and he knows he\'s the one at fault for their horrid end.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 11, 'Jada Jones', '2017-05-30', 1, NULL, 12, 8, 1, 26, 1, 24, 3, 1, 0, 0, 'Age: 25\r\n\r\nHometown: Riley, Wisconsin\r\n\r\nPrevious occupation: Animal caretaker (non-medical)\r\n\r\nCharacteristics: outdoorsy type, cautious, loves animals\r\n\r\nI was living in a small town on the outside of Madison when all hell broke loose. I\'ve lost everyone - my friends, family… my older sister, my dad.  I never knew my mom.  She and dad split when I was young.  She traveled down south and I hadn’t seen her since. I guess it\'s for the best- it\'s one less person to lose. I used to spend my days at a pet daycare that I worked at.  One of the worst parts was when the daycare got infected.  All those poor animals.. gone.  I\'m still not quite sure how I got away without a scratch. \r\n\r\nFor the past couple years, I’ve been scavenging from town to town, making my way away from the major city, where zombies were living in abundance.  Then I caught wind of a survivor camp in the area. That\'s when I made my way to find Camp Davis.  It’s a relief to have found a group to survive with, rather than continue fending on my own in the lonely wasteland.\r\n', 9, 2, 2, 0, 0, 1, 0, 0, 6, 5, 5),
(13, 12, 'Zache Clark', '2017-06-27', 1, NULL, 8, 3, 1, 3, 1, 31, 1, 4, 0, 0, '-None Given-', 0, 0, 0, 0, 0, 1, 0, 0, 1, 2, 0),
(14, 14, 'Tyler ', '2017-05-22', 0, '2017-05-30', 9, 4, 1, 0, 1, 0, 0, 0, 0, 0, 'Two years… two years I was on the road before stepping foot into camp. Before then I was held up in a small town that managed to hold off those damn things for a year; but like the rest of the cities, it was eventually overrun. My family, my friends, everything I have ever known was taken from me by the dead. But that doesn’t matter now. \r\nI’ve learned to scavenge for myself. I try to avoid as much conflict as possible with potential threats, but will fight when it is necessary. I am quiet and reserved as a result. I’ve gotten used to life on the road; never sticking with any single group for very long. It’s better that way, so I can’t get too attached. \r\nI’m fairly new here in camp. There’s food, water, and a safe place to sleep; just what I need. Life as a drifter really takes its toll on a guy. I feel like I haven’t gotten a good night sleep in years. The people here were kind enough to take me in when I happen upon the camp, a rarity in these times. Life here might be different: perhaps my days on the road are over?', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 14, 'James (Jimmy) Moore', '2017-06-27', 0, '2017-07-25', 10, 5, 1, 0, 1, 0, 0, 0, 0, 0, 'It feels like I’ve been wandering for ages, god knows how long it’s been since I’ve had a good night sleep. I’m relieved that someone finally found me and took me in. Somewhat of a coward, I avoid conflict at all cost. I’m quick on my feet and very good at hiding, it’s how I’ve gotten this far, I suppose. \r\nI come from a very well-off family, so I had a lot to get used to when the dead ravaged my home town three years ago. Camp Davis is a sight for sore eyes (nothing compared to my old home), but I’ll be safe here I guess…\r\nI am on a mission to find my family and friends. The last that I have heard from them was months ago, back before we were separated on a scavenging mission gone wrong. We were on our way a base up north. Rumor had it this military base had a cure to this disease and a safe place to stay! If there is any hope of seeing them again, I must reach the base.\r\nI am not above lying to get what I want, stealing what I need to live, and throwing others under the bus to survive. I’ll play nice with others when I need to, but watch out, or you’ll get a knife in your back.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `CharacterSkills`
--

CREATE TABLE `CharacterSkills` (
  `characterID` int(11) NOT NULL,
  `skillID` int(11) NOT NULL,
  `dateAdded` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `CharacterSkills`
--

INSERT INTO `CharacterSkills` (`characterID`, `skillID`, `dateAdded`) VALUES
(1, 9, '2018-05-12'),
(1, 10, '2018-05-12'),
(1, 18, '2018-05-12'),
(1, 36, '2018-05-12'),
(1, 46, '2018-05-12'),
(1, 47, '2018-05-12'),
(1, 75, '2018-05-12'),
(1, 79, '2018-05-12'),
(1, 83, '2018-05-12'),
(4, 9, '2018-05-12'),
(4, 18, '2018-05-12'),
(4, 42, '2018-05-12'),
(4, 46, '2018-05-12'),
(4, 47, '2018-05-12'),
(4, 49, '2018-05-12'),
(4, 50, '2018-05-12'),
(4, 56, '2018-05-12'),
(4, 68, '2018-05-12'),
(4, 75, '2018-05-12'),
(4, 79, '2018-05-12'),
(4, 80, '2018-05-12'),
(4, 82, '2018-05-12'),
(4, 86, '2018-05-12'),
(5, 9, '2018-05-12'),
(5, 18, '2018-05-12'),
(5, 47, '2018-05-12'),
(5, 56, '2018-05-12'),
(5, 73, '2018-05-12'),
(5, 75, '2018-05-12'),
(5, 79, '2018-05-12'),
(5, 82, '2018-05-12'),
(6, 9, '2018-05-12'),
(6, 47, '2018-05-12'),
(6, 75, '2018-05-12'),
(6, 79, '2018-05-12'),
(7, 6, '2018-05-12'),
(7, 7, '2018-05-12'),
(7, 8, '2018-05-12'),
(7, 9, '2018-05-12'),
(7, 15, '2018-05-12'),
(7, 32, '2018-05-12'),
(7, 45, '2018-05-12'),
(7, 47, '2018-05-12'),
(7, 51, '2018-05-12'),
(7, 52, '2018-05-12'),
(7, 53, '2018-05-12'),
(7, 75, '2018-05-12'),
(7, 79, '2018-05-12'),
(7, 82, '2018-05-12'),
(7, 91, '2018-05-12'),
(8, 9, '2018-05-12'),
(8, 18, '2018-05-12'),
(8, 20, '2018-05-12'),
(8, 47, '2018-05-12'),
(8, 49, '2018-05-12'),
(8, 54, '2018-05-12'),
(8, 58, '2018-05-12'),
(8, 75, '2018-05-12'),
(8, 76, '2018-05-12'),
(8, 79, '2018-05-12'),
(9, 2, '2018-05-12'),
(9, 3, '2018-05-12'),
(9, 4, '2018-05-12'),
(9, 9, '2018-05-12'),
(9, 10, '2018-05-12'),
(9, 11, '2018-05-12'),
(9, 18, '2018-05-12'),
(9, 34, '2018-05-12'),
(9, 47, '2018-05-12'),
(9, 49, '2018-05-12'),
(9, 54, '2018-05-12'),
(9, 56, '2018-05-12'),
(9, 58, '2018-05-12'),
(9, 62, '2018-05-12'),
(9, 71, '2018-05-12'),
(9, 73, '2018-05-12'),
(9, 75, '2018-05-12'),
(9, 79, '2018-05-12'),
(9, 83, '2018-05-12'),
(9, 84, '2018-05-12'),
(10, 2, '2018-05-13'),
(10, 3, '2018-05-13'),
(10, 4, '2018-05-13'),
(10, 5, '2018-05-12'),
(10, 6, '2018-05-14'),
(10, 9, '2018-05-12'),
(10, 10, '2018-05-12'),
(10, 11, '2018-05-13'),
(10, 12, '2018-05-12'),
(10, 18, '2018-05-12'),
(10, 19, '2018-05-12'),
(10, 22, '2018-05-12'),
(10, 27, '2018-05-12'),
(10, 28, '2018-05-13'),
(10, 30, '2018-05-13'),
(10, 31, '2018-05-14'),
(10, 33, '2018-05-13'),
(10, 34, '2018-05-12'),
(10, 35, '2018-05-13'),
(10, 46, '2018-05-13'),
(10, 47, '2018-05-12'),
(10, 48, '2018-05-14'),
(10, 49, '2018-05-12'),
(10, 56, '2018-05-12'),
(10, 58, '2018-05-13'),
(10, 60, '2018-05-12'),
(10, 61, '2018-05-12'),
(10, 64, '2018-05-12'),
(10, 69, '2018-05-13'),
(10, 71, '2018-05-13'),
(10, 73, '2018-05-13'),
(10, 74, '2018-05-12'),
(10, 75, '2018-05-12'),
(10, 78, '2018-05-12'),
(10, 79, '2018-05-12'),
(10, 82, '2018-05-13'),
(10, 86, '2018-05-13'),
(10, 88, '2018-05-12'),
(11, 2, '2018-05-12'),
(11, 9, '2018-05-12'),
(11, 10, '2018-05-12'),
(11, 18, '2018-05-12'),
(11, 47, '2018-05-12'),
(11, 73, '2018-05-12'),
(11, 75, '2018-05-12'),
(11, 79, '2018-05-12'),
(11, 82, '2018-05-12'),
(12, 2, '2018-05-12'),
(12, 9, '2018-05-12'),
(12, 10, '2018-05-12'),
(12, 18, '2018-05-12'),
(12, 30, '2018-05-12'),
(12, 46, '2018-05-12'),
(12, 47, '2018-05-12'),
(12, 71, '2018-05-12'),
(12, 73, '2018-05-12'),
(12, 75, '2018-05-12'),
(12, 79, '2018-05-12'),
(12, 83, '2018-05-12'),
(13, 9, '2018-05-12'),
(13, 10, '2018-05-12'),
(13, 18, '2018-05-12'),
(13, 47, '2018-05-12'),
(13, 56, '2018-05-12'),
(13, 73, '2018-05-12'),
(13, 75, '2018-05-12'),
(13, 79, '2018-05-12');

-- --------------------------------------------------------

--
-- Table structure for table `EventAttendees`
--

CREATE TABLE `EventAttendees` (
  `eventID` int(11) NOT NULL,
  `playerID` int(11) NOT NULL,
  `characterID` int(11) DEFAULT NULL,
  `checkinTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `EventAttendees`
--

INSERT INTO `EventAttendees` (`eventID`, `playerID`, `characterID`, `checkinTime`) VALUES
(1, 2, NULL, '16:00:00'),
(1, 3, 4, '16:00:00'),
(1, 5, 6, '16:00:00'),
(1, 6, 7, '16:00:00'),
(1, 7, 8, '16:00:00'),
(1, 8, 9, '16:00:00'),
(1, 9, 10, '16:00:00'),
(1, 11, 12, '16:00:00'),
(1, 14, 14, '16:00:00'),
(2, 2, NULL, '16:00:00'),
(2, 3, 4, '16:00:00'),
(2, 5, 6, '16:00:00'),
(2, 6, 7, '16:00:00'),
(2, 7, NULL, '16:00:00'),
(2, 8, 9, '16:00:00'),
(2, 9, 10, '16:00:00'),
(2, 11, NULL, '16:00:00'),
(2, 12, 13, '16:00:00'),
(2, 14, 15, '16:00:00'),
(3, 1, 1, '16:00:00'),
(3, 2, NULL, '16:00:00'),
(3, 3, 4, '16:00:00'),
(3, 4, 5, '16:00:00'),
(3, 5, 6, '16:00:00'),
(3, 6, 7, '16:00:00'),
(3, 7, 8, '16:00:00'),
(3, 8, 9, '16:00:00'),
(3, 9, 10, '16:00:00'),
(3, 10, 11, '16:00:00'),
(3, 11, 12, '16:00:00'),
(3, 12, 13, '16:00:00'),
(3, 13, NULL, '16:00:00'),
(3, 14, 15, '16:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Events`
--

CREATE TABLE `Events` (
  `eventID` int(11) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `eventRunning` tinyint(4) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Events`
--

INSERT INTO `Events` (`eventID`, `startDate`, `endDate`, `startTime`, `endTime`, `eventRunning`, `name`, `description`) VALUES
(1, '2017-05-30', '2017-05-30', '16:00:00', '23:59:59', 0, 'Welcome to Camp Still Alive', 'The first ever Still Alive Event!'),
(2, '2017-06-27', '2017-06-27', '16:00:00', '23:59:59', 0, 'After the Storm', 'With the large storm destroying parts of the camp walls, the Campers are faced with the dilemma of fixing the walls before the horde comes at nightfall.'),
(3, '2017-07-25', '2017-07-25', '16:00:00', '23:59:59', 0, 'Symbols in Blood and Looming Darkness', 'Strange symbols have begun to appear in the forest and Commander Davis wants a basic radio receiver built for the camp.'),
(4, '2018-05-19', '2018-05-19', '16:00:00', '23:59:59', 0, 'Practice and Refresher Event', 'Version 1.2 was released. We want a practice event to get everyone acquainted to the new rules, show the new players how to play, and get everyone stoked for this season of Still Alive!');

-- --------------------------------------------------------

--
-- Table structure for table `HistoricalEvents`
--

CREATE TABLE `HistoricalEvents` (
  `historyID` int(11) NOT NULL,
  `playerID` int(11) DEFAULT NULL,
  `characterID` int(11) DEFAULT NULL,
  `eventID` int(11) DEFAULT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `HistoricalEvents`
--

INSERT INTO `HistoricalEvents` (`historyID`, `playerID`, `characterID`, `eventID`, `name`, `description`, `date`) VALUES
(1, 1, NULL, NULL, 'Player Created', 'The Player profile was created on this date.', '2017-07-19'),
(2, 1, 1, NULL, 'Character Created', 'The Character was created on this date.', '2017-07-19'),
(3, 2, NULL, NULL, 'Player was Created', 'On this date this player\'s profile was created', '2017-05-30'),
(4, 3, 4, 2, 'Won XP 2!', 'June 2017 Raffle Winner. Won 2 Experience.', '2017-06-27'),
(5, 3, 4, 3, 'Won 1 Xp!', 'Winner of July 2017 Raffle. Won 1 experience.', '2017-07-25'),
(6, 3, NULL, NULL, 'Player Created', 'On this date, the Player\'s profile was created!', '2017-05-22'),
(7, 3, 4, NULL, 'Character Created!', 'On this date this character was created!', '2017-05-22'),
(8, 4, NULL, NULL, 'Player Created', 'The player\'s profile was created on this date', '2017-05-30'),
(9, 4, 5, NULL, 'Character Created!', 'This character was created on this date!', '2017-05-30'),
(10, 4, 5, NULL, 'Character Died', 'This character was killed in a gunfight with a rival camp.', '2017-05-30'),
(11, 5, NULL, NULL, 'Player Created', 'On this date the Player\'s profile was created.', '2017-05-01'),
(12, 5, 6, NULL, 'Character Created', 'On this date the character was created.', '2017-05-01'),
(13, 6, NULL, NULL, 'Player Created!', 'The Player\'s profile was created on this date.', '2017-05-30'),
(14, 6, 7, NULL, 'Character Created!', 'The Character was created on this date!', '2017-05-30'),
(15, 6, 7, NULL, 'Character Died!', 'The character died in a gunfight with a rival camp.', '2017-07-25'),
(16, 7, NULL, NULL, 'Player Created', 'The player\'s profile was created on this date.', '2017-05-18'),
(17, 7, 8, NULL, 'Character Created', 'This character was created on this date.', '2017-05-18'),
(18, 8, NULL, NULL, 'Player Created', 'This player\'s profile was created on this date.', '2017-05-19'),
(19, 8, 9, NULL, 'Character Created', 'This character was created on this date.', '2017-05-19'),
(20, 9, NULL, NULL, 'Player Created', 'This player\'s profile was created on this date', '2017-05-01'),
(21, 9, 10, NULL, 'Character Created', 'This character was created on this date.', '2017-05-01'),
(22, 10, NULL, NULL, 'Player Created', 'The player\'s profile was created on this date.', '2017-07-18'),
(23, 10, 11, NULL, 'Character Created!', 'This character was created on this date!', '2017-05-18'),
(24, 10, 11, NULL, 'Character Died', 'This character died from a gunshot wound during a fight with a rival camp.', '2017-05-25'),
(25, 11, NULL, NULL, 'Player Created', 'The player\'s profile was created on this date.', '2017-05-30'),
(26, 11, 12, NULL, 'Character Created!', 'This character was created on this date!', '2017-05-30'),
(27, 11, NULL, NULL, 'Won 1xp!', 'This player won 1 experience during the raffle!', '2017-05-31'),
(28, 12, NULL, NULL, 'Player Created', 'The player\'s profile was created on this date.', '2017-06-27'),
(29, 12, 13, NULL, 'Character Created', 'This character was created on this date.', '2017-06-27'),
(30, 13, NULL, NULL, 'Player Created.', 'The player\'s profile was created on this date.', '2017-07-25'),
(31, 14, NULL, NULL, 'Player Created', 'The player\'s profile was created on this date.', '2017-05-22'),
(32, 14, 14, NULL, 'Character Created!', 'This character was created on this date.', '2017-05-22'),
(33, 14, 14, NULL, 'Character Died', 'This character was mauled by zombies and passed away.', '2017-05-30'),
(34, 14, 15, NULL, 'Character Created', 'This character was created on this date.', '2017-06-27'),
(35, 14, 15, NULL, 'Character Died', 'This character died due to an unfortunate tapping. He was killed by friendly fire during a firefight with a rival camp.', '2017-07-25');

-- --------------------------------------------------------

--
-- Table structure for table `Items`
--

CREATE TABLE `Items` (
  `itemID` int(11) NOT NULL,
  `characterID` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Items`
--

INSERT INTO `Items` (`itemID`, `characterID`, `name`, `description`, `date`) VALUES
(1, 4, 'Blacklight', 'Purchased a Blacklight Flashlight from the shop.', '2017-07-25'),
(2, 4, 'RANK: PRIVATE', 'Received the Rank of Private from Commander Davis', '2017-05-30'),
(3, 8, 'Blacklight', 'Purchased a blacklight from the shop', '2017-05-30'),
(4, 12, 'Super Light Melee Weapon', 'Coreless knife given to the character.', '2017-05-30'),
(5, 12, 'Blacklight', 'A blacklight flashlight purchased from the in-game shop.', '2017-05-30'),
(6, 13, 'Blacklight', 'A Blacklight Flashlight purchased from the in-game shop.', '2017-06-27');

-- --------------------------------------------------------

--
-- Table structure for table `Players`
--

CREATE TABLE `Players` (
  `playerID` int(11) NOT NULL,
  `username` text NOT NULL,
  `name` text NOT NULL,
  `startDate` date NOT NULL,
  `experience` int(11) NOT NULL,
  `numEventsAttended` int(11) NOT NULL,
  `numNpcEvents` int(11) NOT NULL,
  `numPcEvents` int(11) NOT NULL,
  `isCheckedIn` tinyint(4) NOT NULL,
  `lastCheckIn` date DEFAULT NULL,
  `freeSkills` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Players`
--

INSERT INTO `Players` (`playerID`, `username`, `name`, `startDate`, `experience`, `numEventsAttended`, `numNpcEvents`, `numPcEvents`, `isCheckedIn`, `lastCheckIn`, `freeSkills`) VALUES
(1, 'ahartzell', 'Ahnika Hartzell', '2017-07-19', 1, 1, 0, 1, 0, '2017-07-25', 0),
(2, 'bpierce', 'Brandon Pierce', '2017-05-30', 10, 3, 3, 0, 0, '2017-07-25', 1),
(3, 'bnovy', 'Brianna Novy', '2017-05-22', 4, 3, 0, 3, 0, '2017-07-25', 0),
(4, 'dglesne', 'Daniel Glesne', '2017-05-30', 4, 1, 0, 1, 0, '2017-05-30', 1),
(5, 'enovy', 'Ethan Novy', '2017-05-01', 99999, 3, 0, 3, 0, '2017-07-25', 99999),
(6, 'jbeardsley', 'Jacob Beardsley', '2017-05-30', 99999, 3, 0, 3, 0, '2017-07-25', 99999),
(7, 'jenglert', 'Jeff Englert', '2017-05-18', 3, 3, 1, 2, 0, '2017-07-25', 0),
(8, 'knovy', 'Kevin Novy', '2017-05-19', 99999, 3, 0, 3, 0, '2017-07-25', 99999),
(9, 'rcraker', 'Rydge Craker', '2017-05-01', 99988, 3, 0, 3, 0, '2017-07-25', 99989),
(10, 'rlane', 'Ryan Lane', '2017-07-18', 4, 1, 0, 1, 0, '2017-07-25', 1),
(11, 'shartzell', 'Sarah Hartzell', '2017-05-30', 1, 3, 1, 2, 0, '2017-07-25', 0),
(12, 'sgard', 'Seth Gard', '2017-06-27', 2, 2, 0, 2, 0, '2017-07-25', 0),
(13, 'tbolig', 'Tim Bolig', '2017-07-25', 5, 1, 1, 0, 0, '2017-07-25', 1),
(14, 'tparce', 'Tyler Parce', '2017-05-22', 7, 3, 0, 3, 0, '2017-07-25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"StillAlive\",\"table\":\"Players\"},{\"db\":\"StillAlive\",\"table\":\"Characters\"},{\"db\":\"StillAlive\",\"table\":\"Events\"},{\"db\":\"StillAlive\",\"table\":\"Skills\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

-- --------------------------------------------------------

--
-- Table structure for table `PrimaryWeapons`
--

CREATE TABLE `PrimaryWeapons` (
  `primaryWeaponID` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PrimaryWeapons`
--

INSERT INTO `PrimaryWeapons` (`primaryWeaponID`, `description`) VALUES
(1, 'No Primary Weapon Registered');

-- --------------------------------------------------------

--
-- Table structure for table `SkillCategories`
--

CREATE TABLE `SkillCategories` (
  `skillCategoryID` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `SkillCategories`
--

INSERT INTO `SkillCategories` (`skillCategoryID`, `name`) VALUES
(1, 'Ranged Weapons'),
(2, 'Melee and Ranged'),
(3, 'Melee Weapons'),
(4, 'Combat Techniques'),
(5, 'Medicine and Health'),
(6, 'Luck and Skill'),
(7, 'Preperation'),
(8, 'Foraging'),
(9, 'Education'),
(10, 'Crafting and Repair'),
(11, 'Trait Advancement'),
(12, 'Free Skills'),
(13, 'Infection-Based Skills');

-- --------------------------------------------------------

--
-- Table structure for table `SkillPrerequisites`
--

CREATE TABLE `SkillPrerequisites` (
  `baseSkillID` int(11) NOT NULL,
  `prereqSkillID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `SkillPrerequisites`
--

INSERT INTO `SkillPrerequisites` (`baseSkillID`, `prereqSkillID`) VALUES
(1, 65),
(1, 76),
(2, 73),
(3, 4),
(4, 2),
(5, 88),
(6, 82),
(7, 82),
(8, 45),
(11, 10),
(12, 64),
(13, 23),
(14, 24),
(15, 82),
(17, 16),
(19, 18),
(20, 54),
(21, 33),
(26, 35),
(26, 90),
(27, 19),
(28, 30),
(29, 31),
(31, 28),
(32, 91),
(33, 69),
(34, 56),
(35, 58),
(36, 83),
(37, 36),
(38, 37),
(38, 63),
(39, 38),
(42, 86),
(43, 44),
(45, 15),
(48, 58),
(50, 46),
(50, 48),
(51, 6),
(51, 15),
(52, 53),
(53, 6),
(55, 43),
(55, 56),
(57, 35),
(58, 49),
(59, 50),
(59, 55),
(59, 57),
(60, 74),
(62, 84),
(63, 83),
(64, 19),
(65, 20),
(65, 54),
(66, 22),
(67, 24),
(68, 80),
(70, 25),
(71, 73),
(74, 34),
(76, 20),
(77, 23),
(78, 22),
(80, 42),
(81, 45),
(81, 51),
(81, 53),
(84, 71),
(85, 21),
(87, 11),
(88, 61),
(89, 63),
(90, 58),
(91, 7),
(92, 43),
(93, 36),
(94, 38),
(94, 93),
(95, 63);

-- --------------------------------------------------------

--
-- Table structure for table `Skills`
--

CREATE TABLE `Skills` (
  `skillID` int(11) NOT NULL,
  `xpCost` int(11) NOT NULL,
  `skillTypeID` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `flavor` text NOT NULL,
  `minInfect` int(11) NOT NULL,
  `skillCategoryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Skills`
--

INSERT INTO `Skills` (`skillID`, `xpCost`, `skillTypeID`, `name`, `description`, `flavor`, `minInfect`, `skillCategoryID`) VALUES
(1, 4, 2, 'Advanced Medical Research', 'Allows the player to craft known Pharmaceuticals and discover new ones. This skill allows for other plot-related research as well, but we’re not going to give anything away!', 'If a cure is ever going to be found, you’ll be the one to do it.', 0, 5),
(2, 1, 3, 'Ammunition Enthusiast', 'Allows the player to pick up spent bullet casings off of the ground and re-purpose them into usable bullets. For every ten bullet casings collected, you’ll be able to re-purpose 1 of them (the rest are wasted). Each bullet that gets re-purposed into a usable one requires 1 minute of work (role-playing). ', 'You dabble in the art of re-purposing bullets.', 0, 8),
(3, 3, 2, 'Ammunition Expert', 'Works just like Ammunition Professional except that it allows the player to re-purpose 10 bullet casings into 3 bullets instead of 2.', 'You love to re-purpose bullets.', 0, 8),
(4, 2, 2, 'Ammunition Professional', 'Works just like Ammunition Enthusiast except that it allows the player to re-purpose 10 bullet casings into 2 bullets instead of 1.', 'Re-purposing bullets is your thing.', 0, 8),
(5, 3, 1, 'Anonymous Ally', 'This skill works like Unknown Assailant except it allows 1 additional use per character (total of 3).', 'Sometimes having friends in low places has its perks.', 0, 4),
(6, 2, 3, 'Apprentice Mechanic', 'An upgrade to Tinkerer. You have the skills and knowledge to build and take apart more advanced objects.\r\nRequires a toolbox containing: A wrench, hammer, and a Crafting Skill Journal. Other tools used for role-playing are encouraged.', 'You\'ve always liked the smell of engine oil.', 0, 10),
(7, 2, 2, 'Arms Smith', 'An upgrade to Tinkerer. You now have the skills and knowledge required to create basic firearms and melee weapons.\n\nRequires a toolbox containing: A wrench, hammer, and a Crafting Skill Journal. Other tools used for role-playing are encouraged.', 'Guns are just small cannons, right? How hard could it be to make one?', 0, 10),
(8, 4, 2, 'Artisan', 'An upgrade to Journeyman. You now have the skills and knowledge to build and take apart large scale construction projects and fortifications. \r\n\r\nRequires a toolbox containing: A wrench, hammer, and a Crafting Skill Journal. Other tools used for role-playing are encouraged.', 'You\'re a crafting machine.', 0, 10),
(9, 0, 1, 'Bash', 'Allows you to break Fortification 1 objects using a melee weapon that you\'re proficient with.', 'Release your anger!', 0, 12),
(10, 1, 1, 'Break', 'If you have a coreless (Super Light) melee weapon in your possession when a single zombie grabs onto you, you can force them off of you by shouting BREAK and hitting them (lightly) with it. This will cause the zombie to let go of you and prevent that limb from becoming crippled. As a result of this, your melee weapon will become broken and unusable.\r\n\r\nThis skill does not work if multiple zombies have you in their grasp.', 'Apparently, good reaction time is essential in an apocalypse scenario. Who knew?', 0, 4),
(11, 3, 1, 'Break Away', 'An upgrade to the break skill. You may now shout BREAK AWAY and thrust your super light melee weapon upward. Any number of zombies that are grabbing onto you will be thrown to the ground and your limbs wont gain the crippled condition. Your weapon is still broken as a result of this.', 'All of those hours playing Zelda games finally pays off. Too bad your weapon\'s durability is low!', 0, 4),
(12, 4, 3, 'Cartridge Belts', 'You receive an additional 3 bullets at check in, bringing the total up to 15 bullets.', 'RAMBO!', 0, 7),
(13, 4, 1, 'Combat Aficionado', 'All COMBAT skills cost 1 less experience (minimum 1). In addition, all TALENT skills cost 1 more experience. Neither of these effects is retroactive.', 'You\'ve always lived by the Stand Your Ground law.', 0, 11),
(14, 4, 1, 'Combat Specialist', 'All COMBAT skills cost 1 less experience (minimum 1). In addition, all PROFESSION skills cost 1 more experience. Neither of these effects is retroactive.', 'No one can outrun the jack of all trades.', 0, 11),
(15, 2, 2, 'Craftsperson', 'An upgrade to tinkerer. You now have the skills and knowledge to build and take apart small-scale construction projects and fortifications.\r\n\r\nRequires a toolbox containing: A wrench, hammer, and a Crafting Skill Journal. Other tools used for role-playing are encouraged.', 'You dabble in woodworking.', 0, 10),
(16, 2, 3, 'Dead Man Standing', 'This skill gives the player a set of green beads at the beginning of the event and allows the player to pretend to be a zombie in order to avoid a combat situation. To use this skill, the player must NOT be in line of sight of any zombies that he/she wishes to fool. After checking their surroundings, the player may then take out their green beads and put them on. Upon doing so, the player needs to make zombie noises and stand as still as possible. As long as the player is standing still and making zombie noises, zombies will ignore them. However, if the player moves from the spot or stops making noises, any zombies in line of sight will instantly recognize that the player is, in fact, human. This skill can be kept up as long as necessary. Once the player begins moving again, the green beads must be removed and put away.\r\n\r\nUpon taking this skill, immediately roll an infection dice for your character and add it to your infection rating. \r\n\r\nIf your infection rating somehow drops below 75%, you don\'t lose this skill.', 'You\'re beginning to look so much like a zombie that even they can\'t tell the difference.', 75, 13),
(17, 4, 3, 'Dead Man Walking', 'An upgrade to Dead Man Standing but allows the player to walk slowly (limping is encouraged). If the player walks faster than an average zombie or stops making zombie noises, the effect is broken and zombies are free to attack.\n\nUpon taking this skill, immediately roll an infection dice for your character and add it to your infection rating. \n\nIf your infection rating somehow drops below 85%, you don\'t lose this skill.', 'Is that your flesh rotting or are you just happy to see me?', 85, 13),
(18, 1, 3, 'Deep Pockets', 'You receive an additional 3 bullets at check in, bringing the total up to 6 bullets.', 'Skinny jeans aren\'t in your wardrobe.', 0, 7),
(19, 2, 3, 'Deeper Pockets', 'You receive an additional 3 bullets at check in, bringing the total up to 9 bullets.', 'Do your pockets drag across the ground? They should.', 0, 7),
(20, 3, 2, 'Doctor', 'Allows you to treat the wounds of player bitten by zombies and hit by melee weapons. You CANNOT treat bullet wounds. Use the chart at the end of the Medical Journal to determine proper medical procedure.\r\n\r\nThis skill requires a medical kit with the following items inside: Medical wraps, surgical scissors, cloth, a small bottle of water or similar liquid [used as antiseptic or alcohol], and a Still Alive Medical Journal.', 'Bring out yer dead.', 0, 5),
(21, 3, 1, 'Double Kill', 'An upgrade to HEADSHOT. This skill allows you to use the skill 1 additional time per event, bringing the total up to 2.', 'C-C-C-COMBO!', 0, 4),
(22, 3, 1, 'Expert: Combat', 'All COMBAT skills cost 1 less experience (minimum 1). This effect is not retroactive.', 'World ending? People call you first.', 0, 11),
(23, 3, 2, 'Expert: Profession', 'All PROFESSION skills cost 1 less experience (minimum 1). This effect is not retroactive.', 'You take your jobs very seriously.', 0, 11),
(24, 3, 3, 'Expert: Talent', 'All TALENT skills cost 1 less experience (minimum 1). This effect is not retroactive.', 'Jack of all trades.', 0, 11),
(25, 2, 3, 'Fast Healing', 'The infection has taken a particularly strong hold you and it started giving you zombie-like powers. Whenever you take a non-bullet wound, whether it be a crippled limb or a chest wound, you can heal it… at the cost of potentially raising your Infection Rating. You can heal any 1 wound by sitting/laying on the ground and meditating for 5 minutes, however, doing so gives a 50% chance to gain 2 infection dice (All other infection that would normally be gained from healing the wound is ignored). You CAN meditate while Helpless in order to heal your chest wound. If you’re interrupted during your meditation, you must start the meditation over. If you have multiple wounds, you may only heal one at a time, and each wound requires a new meditation session.\r\n\r\nIf your infection rating somehow drops below 75%, you don\'t lose this skill.', 'Your flesh is beginning to repair itself... Something isn\'t right here.', 75, 13),
(26, 4, 1, 'Fortification Eradicator', 'An upgrade to WALL SMASHER. Allows you to break Fortification 3 objects using a heavy melee weapon that you\'re proficient with.', 'Hulk Smash', 0, 4),
(27, 3, 3, 'Fully Loaded', 'Allows the player to fill their designated primary weapon with bullets at check-in, free of charge.', 'Your bullets seem to appear out of nowhere.', 0, 7),
(28, 2, 3, 'Gambler\'s Eye', 'An upgrade to GAMBLER\'S LUCK. This skill further increases your odds in luck-based situations. It also allows the user an extra coin flip for the WILL TO LIVE skill (3 total flips), and allows the user to enter an extra raffle ticket in all raffles, free of charge (3 total tickets).', 'Forget the Blackjack!', 0, 6),
(29, 4, 3, 'Gambler\'s Heart', 'An upgrade to GAMBLER\'S Talent. This skill further increases your odds in luck-based situations. It also allows the user an extra coin flip for the WILL TO LIVE skill (5 total flips), and allows the user to enter an extra raffle ticket in all raffles, free of charge (5 total tickets).', 'You know what? Forget the whole thing.', 0, 6),
(30, 1, 3, 'Gambler\'s Luck', 'This skill increases your odds in luck-based situations. It also allows the user an extra coin flip for the WILL TO LIVE skill (2 total flips), and allows the user to enter an extra raffle ticket in all raffles, free of charge (2 total tickets).', 'I\'ll make my own game, with blackjack and hookers!', 0, 6),
(31, 3, 3, 'Gambler\'s Talent', 'An upgrade to GAMBLER\'S EYE. This skill further increases your odds in luck-based situations. It also allows the user an extra coin flip for the WILL TO LIVE skill (4 total flips), and allows the user to enter an extra raffle ticket in all raffles, free of charge (4 total tickets).', 'Forget the hookers.', 0, 6),
(32, 4, 2, 'Gunsmith', 'An upgrade to WEAPON SMITH. You now have the skills and knowledge to build and take apart advanced firearms and melee weapons.\r\n\r\nRequires a toolbox containing: A wrench, hammer, and a Crafting Skill Journal. Other tools used for role-playing are encouraged.', 'You\'re adept at making extremely powerful firearms.', 0, 10),
(33, 2, 1, 'Headshot', 'Allows you to take aim at a zombie and shout the word “HEADSHOT” followed by short description of what you’re shooting at (such as “blue shirted zombie”), before shooting. This is called calling your shot. If your shot hits, the zombie is instantly killed. You may use this skill 1 time per event. ', 'Critical Hit.', 0, 4),
(34, 2, 1, 'Heavy Firearm Proficiency', 'You possess the ability to handle, load, and fire any firearm with the “Heavy” classification. In addition, you are also able to use any firearm classified as “Super Heavy” as long as it’s mounted on a tripod or similar stand, you cannot load it or move it, however.\r\n\r\nIn order to fire a Heavy or Super Heavy Firearm, both hands MUST be on the weapon at all times (Except for when loading). ', 'Bring out the big guns.', 0, 1),
(35, 3, 1, 'Heavy Melee Weapon Proficiency', 'You possess the ability to wield and use “Heavy” melee weapons in combat. You must keep both hands on the weapon in order to use it. You can, however, carry it with one hand; as long as you use both hands when you need to swing the weapon.\r\n\r\nIn order to use this weapon, both hands must be holding it. ', 'Some might say you\'re compensating for something.', 0, 3),
(36, 1, 3, 'Infection Resistance 1', 'Reduces your infection dice by one step. This makes your infection dice a 10-sided dice.', 'You don\'t get sick very often.', 0, 5),
(37, 2, 3, 'Infection Resistance 2', 'Reduces your infection dice by an additional step. This makes your infection dice an 8-sided dice.', 'You consistently spend time in the cold without a coat on.', 0, 5),
(38, 3, 3, 'Infection Resistance 3', 'Reduces your infection dice by an additional step. This makes your infection dice an 6-sided dice.', 'You\'re immune to most natural sicknesses and infections.', 0, 5),
(39, 4, 3, 'Infection Resistance 4', 'Reduces your infection dice by an additional step. This makes your infection dice an 4-sided dice.', 'They should probably look at your blood when searching for the cure...', 0, 5),
(42, 2, 2, 'Instructor', 'An upgrade to the Tutor skill. Allows you to teach others, or yourself, new skills.\nYou can help instruct anyone a skill in tier 2 (2-experience) or less categories. Teaching a skill takes 10 minutes per skill tier, and teaching yourself doubles the amount of time it takes.\n\nTeaching skills requires the use of Teacher\'s Journal.', 'You like having apples on your desk.', 0, 9),
(43, 2, 2, 'Interrogator', 'An upgrade to the Investigator skill. At check in you will be given one piece of TRUE information that may or may\r\nnot be relevant to the current situation', 'You have people on the inside.', 0, 6),
(44, 1, 2, 'Investigator', 'At check in you will be given one piece of information relating to the current\r\nsituation. That information may or may not be true (it’s a rumor).', 'You know a guy...', 0, 6),
(45, 3, 2, 'Journeyman', 'An upgrade to Craftsperson. You now have the skills and knowledge to build and take apart large scale construction projects and fortifications.\r\n\r\nRequires a toolbox containing: A wrench, hammer, and a Crafting Skill Journal. Other tools used for role-playing are encouraged.', 'You smell like mahogany on any given day.', 0, 10),
(46, 1, 1, 'Light Firearm Dual-Wielding', 'You possess the ability to accurately shoot any firearm with the “Light”\r\nclassification from one hand. This allows you to wield two of them at once if you so wish. It also allows you to hold other objects while wielding the weapon (Such as flashlights or bullets). You are NOT able to wield a melee weapon along with your ranged weapon.', 'You\'re just like a gunslinging cowboy. ', 0, 1),
(47, 0, 1, 'Light Firearm Proficiency', 'You possess the ability to handle, load, and fire any firearm with the \"Light\" classification.\r\n\r\nIn order to fire a Light firearm, both hands MUST be on the weapon at all times (Except for when loading).', 'You know enough about guns to figure out which end to point at the target and that\'s all you\'ve ever really needed to get by.', 0, 12),
(48, 2, 1, 'Light Melee Weapon Dual-Wielding', 'You possess the ability to accurately wield any “Light” or “Super Light” melee\r\nweapon with one hand free. This allows you to use your free hand to hold many other objects (Such as flashlights, bullets, or other “Light” melee weapons). You are NOT able to wield a ranged weapon along with your melee weapon.', 'Did you bring a knife to a gun fight? Why not show them that you have TWO knives. I\'m sure they\'ll back off.', 0, 3),
(49, 1, 1, 'Light Melee Weapon Proficiency', 'You possess the ability to wield and use \"Light\" melee weapons in combat. You\r\ndon’t have to have both hands on it in order to swing it effectively, but your offhand MUST be empty.', 'Ever wish you could use a gun that had infinite ammo? Well this is kind of like\r\nthat… except that it doesn’t work from a range, uses no ammo whatsoever, and isn’t a gun.', 0, 3),
(50, 2, 1, 'Light Melee and Ranged Dual-Wielding', 'You possess the ability to accurately wield any “Light” or “Super Light” melee weapon with one hand and any “Light” firearm in the other and still effectively use them in combat.', 'Can\'t decide whether you should shoot or stab a zombie? Well, good news: now you don\'t have to!', 0, 2),
(51, 3, 3, 'Machinist', 'Unlocks new forms of crafting. You now have the skills and knowledge to build and take apart previously unfeasible machines.\r\n\r\nRequires a toolbox containing: A wrench, hammer, and a Crafting Skill Journal. Other tools used for role-playing are encouraged.', 'Steampunk goggles fit right in with your inventions.', 0, 10),
(52, 4, 2, 'Master Mechanic', 'An upgrade to Mechanic. You have the skills and knowledge to build and take apart more advanced objects.\r\n\r\nRequires a toolbox containing: A wrench, hammer, and a Crafting Skill Journal. Other tools used for role-playing are encouraged.', 'You bathe in engine oil.', 0, 10),
(53, 3, 2, 'Mechanic', 'An upgrade to Apprentice Mechanic. You have the skills and knowledge to build and take apart more advanced objects.\r\n\r\nRequires a toolbox containing: A wrench, hammer, and a Crafting Skill Journal. Other tools used for role-playing are encouraged.', 'You\'ve always smelled like engine oil.', 0, 10),
(54, 2, 2, 'Medic', 'This skill allows you to wrap a wound on any character. Wrapping a wound requires a wrap from a medical kit to be tied around the corresponding wound. Wrapping a wound requires 10 seconds. Wrapping a wound DOES NOT remove the crippled condition. You may also wrap your own wound, but it takes twice as long (20 seconds).\r\n\r\nThis skill requires a medical kit with the following items inside: Medical wraps, surgical scissors, cloth, a small bottle of water or similar liquid [used as antiseptic or alcohol], and a Still Alive Medical Journal.\r\n', 'What\'s better than open wounds? Medial Wraps!', 0, 5),
(55, 2, 1, 'Medium Firearm Dual-Wielding', 'You possess the ability to accurately shoot any firearm with the “Medium” classification from one hand. This allows you to wield two of them at once if you so wish. It also allows you to hold other objects while wielding the weapon (Such as flashlights or bullets).\r\n\r\nYou are NOT able to wield a melee weapon along with your ranged weapon.', 'Ever try shooting a rifle with one hand? It\'s not easy. What about two of them at once? I\'m really starting to question whether or not this is possible.', 0, 1),
(56, 1, 1, 'Medium Firearm Proficiency', 'You possess the ability to handle, load, and fire any firearm with the \"Medium\" classification.\r\n\r\nIn order to fire a Medium firearm, both hands MUST be on the weapon at all times (Except for when loading).', 'This is my rifle; this is my gun. This is for fighting; this is for fun.', 0, 1),
(57, 4, 1, 'Medium Melee Weapon Dual-Wielding', 'You possess the ability to accurately wield any \"Medium\" melee weapon with one hand free. This allows you to use your free hand to hold many other objects (Such as flashlights, bullets, or other \"Medium\" melee weapons). \r\n\r\nYou are NOT able to wield a ranged weapon along with your melee weapon.', 'Maybe you should try holding a third sword between your teeth.', 0, 3),
(58, 2, 1, 'Medium Melee Weapon Proficiency', 'You possess the ability to wield and use \"Medium\" melee weapons in combat.\r\n\r\nYou must have both hands on the melee weapon in order to swing it effectively.', 'In a world where a single gunshot can kill a person, some people prefer to stick to more primitive methods of attack.', 0, 3),
(59, 4, 1, 'Medium Melee and Ranged Dual-Wielding', 'You possess the ability to accurately wield any \"medium\" melee weapon with one hand and any \"medium\" firearm in the other and still effectively use them in combat.', 'Ever wanted to blur the lines between things you CAN do and things you SHOULD do?', 0, 2),
(60, 4, 1, 'Military Grade Firearm Proficiency', 'You possess the ability to handle, load, and fire any firearm with the \"Military Grade\" classification.\r\n\r\nIn order to fire a Medium firearm, both hands MUST be on the weapon at all times (Except for when loading).', 'War. What is it good for?', 0, 1),
(61, 1, 1, 'Mysterious Stranger', 'This skill can only be used if the user is dragged to the ground by zombies with no hope of escape. When this happens, the user can shout “I GUESS THIS IS THE END!”. Doing so will cause all zombies around the player to instantly die (getting shot by the mysterious stranger). The player must then make their way back to camp ALONE, ignoring wounds that may hinder their movement (The mysterious stranger helps the character back to camp). Upon arrival at camp, the player must collapse and be immediately taken to the medical tent. The Mysterious Stranger wraps all of the player’s wounds, so using this skill gives the user 4 crippled limbs and a chest wound to be healed (just like what would happen normally if a player was saved after being pulled to the ground), all of which are wrapped.\r\n\r\nThis skill may only be used once per character.', 'Do I know you?', 0, 4),
(62, 4, 2, 'Nathan Drake', 'An upgrade to Treasure Hunter. This skill allows its user to scavenge even the most inconspicuous junk piles for treasures.', 'You probably have some dwarf in your blood. How else would you find so much treasure?', 0, 8),
(63, 2, 3, 'Pain Tolerance', 'An upgrade to Tough Skin. This skill allows you to take an additional non-bullet wound per event without gaining the CRIPPLED condition. An extra set of blue beads will be given to you at check in.\r\n\r\nYou\'re only able to use each set of beads once per event.', 'It\'s just a flesh wound.', 0, 5),
(64, 3, 3, 'Parachute Pants', 'You receive an additional 3 bullets at check in, bringing the total up to 12 bullets.', 'Who says fashion can\'t be useful?', 0, 7),
(65, 3, 2, 'Pharmaceuticals', 'The user gains the ability to safely handle and administer pharmaceuticals (role-played as ticktacks) to themselves and other players.\r\n\r\nEach person may only take one of each type of pharmaceutical per event.', 'Medicine is rare, but that doesn\'t mean it\'s not useful!', 0, 5),
(66, 4, 2, 'Profession Aficionado', 'All PROFESSION skills cost 1 less experience (minimum 1). In addition, all TALENT skills cost 1 more experience. Neither of these effects is retroactive.', 'It\'s your JOB to keep this place safe.', 0, 11),
(67, 4, 2, 'Profession Specialist', 'All PROFESSION skills cost 1 less experience (minimum 1). In addition, all COMBAT skills cost 1 more experience. Neither of these effects is retroactive.', 'You\'re a natural born con-artist.', 0, 11),
(68, 4, 2, 'Professor', 'An upgrade to the Teacher skill. Allows you to teach others, or yourself, new skills. You can help instruct anyone a skill in tier 4 (4-experience) or less categories. Teaching a skill takes 10 minutes per skill tier, and teaching yourself doubles the amount of time it takes.\r\n\r\nTeaching skills requires the use of Teacher\'s Journal.', 'You\'re too old for this shit.', 0, 9),
(69, 1, 1, 'Ranged Tap', 'This skill gives the user the ability to tap a zombie from a distance. Unfortunately, it costs a bullet to do so (Unlike regular Tap). In order to perform a ranged tap, you have to point your gun at a HELPLESS zombie and yell “RANGED TAP” before firing. If your shot hits, the zombie is finished off.', 'Anybody can finish a zombie off from point blank. It takes some real skill to do it from a distance', 0, 4),
(70, 4, 3, 'Regeneration', 'An upgrade to Fast healing. The user now possesses the ability to heal bullet wounds as if they were regular wounds using their Fast Healing skill.\r\n\r\nIf the user\'s infection rating somehow drops below 85%, they don\'t lose this skill.', 'You can feel the infection rebuilding you... Making you stronger.', 85, 13),
(71, 2, 3, 'Reward Seeker', 'An upgrade to Scavenger. The user can now scavenge regular junk piles in search of treasure.', 'Is another man\'s treasure.', 0, 8),
(72, 2, 3, 'Scaled Skin', 'This skill works just like \"Tough Skin\" with one major difference: It works for bullets too. This skill is represented by red beads instead of blue and is ALWAYS the first set of beads to be removed when you take a wound.\r\n\r\nIf the user\'s infection rating somehow drops below 75%, they don\'t lose this skill.', 'The infection has caused your flesh to become hard and rough', 75, 13),
(73, 1, 3, 'Scavenger', 'The user can now scavenge small junk piles in search of treasure.', 'One man\'s trash...', 0, 8),
(74, 3, 1, 'Super-Heavy Firearm Proficiency', 'You possess the ability to handle, load, and fire any firearm with the \"Super-Heavy\" classification.\r\n\r\nIn order to fire a Super-Heavy firearm, both hands MUST be on the weapon at all times (Except for when loading).', 'Alright, this is just getting ridiculous.', 0, 1),
(75, 0, 1, 'Super-Light Melee Weapon Proficiency', 'You possess the ability to wield and use \"Super-Light\" melee weapons in combat. You don\'t have to have both hands on it in order to swing it effectively, but your offhand MUST be empty.\r\n\r\nYou can also use Super-Light melee weapons for the Break and Break Away skills if you have them.', 'That\'s not a knife, THAT\'S a knife.', 0, 12),
(76, 4, 2, 'Surgeon', 'An upgrade to the doctor skill. The user can now treat bullet wounds in addition to the other types of wounds. A regular bullet wound takes 5 minutes and a bullet wound to the chest takes 10 minutes.\r\n\r\nThis skill requires a medical kit with the following items inside: Medical wraps, surgical scissors, cloth, a small bottle of water or similar liquid [used as antiseptic or alcohol], an apron, a medical mask, and a Still Alive Medical Journal.', 'Scalpel!', 0, 5),
(77, 4, 3, 'Talent Aficionado', 'All TALENT skills cost 1 less experience (minimum 1). In addition, all COMBAT skills cost 1 more experience. Neither of these effects is retroactive.', 'You\'re really good at what you do.', 0, 11),
(78, 4, 3, 'Talent Specialist', 'All TALENT skills cost 1 less experience (minimum 1). In addition, all PROFESSION skills cost 1 more experience. Neither of these effects is retroactive.', 'No one can outrun the jack of all trades.', 0, 11),
(79, 0, 1, 'Tap', 'The user possesses the ability to kill any zombie or human in the HELPLESS condition by placing a gun to their head and saying \"TAP\", or by putting a melee weapon that you\'re proficient with to their throat and saying \"TAP\". Tapping DOES NOT REQUIRE YOU TO FIRE YOUR WEAPON and does not cost a bullet.', 'Double-tap.', 0, 12),
(80, 3, 2, 'Teacher', 'An upgrade to the Instructor skill. Allows you to teach others, or yourself, new skills. You can help instruct anyone a skill in tier 3 (3-experience) or less categories. Teaching a skill takes 10 minutes per skill tier, and teaching yourself doubles the amount of time it takes.\r\n\r\nTeaching skills requires the use of Teacher\'s Journal.', 'Oh captain, my captain.', 0, 9),
(81, 4, 2, 'Technician', 'An upgrade to the Machinist skill. You now have the skills and knowledge to build and take apart even more previously unfeasible machines.\r\n\r\nRequires a toolbox containing: A wrench, hammer, and a Crafting Skill Journal. Other tools used for role-playing are encouraged.', 'You\'re a mad scientist.', 0, 10),
(82, 1, 3, 'Tinkerer', 'You can now build and take apart basic structures.\r\n\r\nRequires a toolbox containing: A wrench, hammer, and a Crafting Skill Journal. Other tools used for role-playing are encouraged.', 'You liked to mess with tinker toys as a kid.', 0, 10),
(83, 1, 3, 'Tough Skin', 'This skill lets you ignore one non-bullet wound per event. A set of blue beads is given to you at check in and they are removed when you take a wound, preventing you from gaining the CRIPPLED condition.', 'You\'re probably part ogre.', 0, 10),
(84, 3, 3, 'Treasure Hunter', 'This skill allows users to scavenge large junk piles and find treasures within them.', 'You\'ve always wanted to be a pirate.', 0, 8),
(85, 4, 1, 'Triple Fatality', 'An upgrade to DOUBLE KILL. This skill allows you to use the skill HEADSHOT 1 additional time per event, bringing the total up to 3.', 'Finish Him.', 0, 4),
(86, 1, 3, 'Tutor', 'Allows you to teach others, or yourself, new skills. You can help instruct anyone a skill in tier 1 (1-experience) or less categories. Teaching a skill takes 10 minutes per skill tier, and teaching yourself doubles the amount of time it takes.\r\n\r\nTeaching skills requires the use of Teacher\'s Journal.', 'You were a substitute teacher once.', 0, 9),
(87, 4, 1, 'Unarmed Break', 'This skill functions like the skill BREAK with two major differences: You can perform it without being armed. Performing the skill STILL causes your limb to gain the crippled condition.\r\n\r\nJust like with BREAK, this skill is useless when multiple zombies are latched onto you.', 'Judo Chop!', 0, 4),
(88, 2, 1, 'Unknown Assailant', 'This skill works like Mysterious Stranger except it allows 1 additional use per character (total of 2).', 'I know I\'ve seen you before.', 0, 4),
(89, 4, 3, 'Unshakable Resolve', 'An upgrade to Pain Tolerance. This skill allows you to take an additional non-bullet wound per event without gaining the CRIPPLED condition. An extra set of blue beads will be given to you at check in (total of 3).\r\n\r\nYou\'re only able to use each set of beads once per event.', 'Did I get bitten?', 0, 5),
(90, 3, 1, 'Wall Smasher', 'An upgrade to the Bash skill. Allows you to break Fortification 2 objects using a medium or heavy melee weapon that you\'re proficient with.', 'I came in like a wrecking ball!', 0, 4),
(91, 3, 2, 'Weapon Smith', 'An upgrade to Arms Smith. You now have the skills and knowledge required to create most firearms and melee weapons.\r\n\r\nRequires a toolbox containing: A wrench, hammer, and a Crafting Skill Journal. Other tools used for role-playing are encouraged.', 'You love making weapons.', 0, 10),
(92, 3, 2, 'Web of Informants', 'An upgrade to Interrogator. At check in you will be given one piece of TRUE information that relates directly to the plot or scenarios of the event.', 'You have friends in low places.', 0, 6),
(93, 2, 3, 'Will to Live 1', 'When rolling a percentage to see if you will turn into a zombie from your infection rating, you\'re able to roll twice and take the better result.', 'You don\'t want to die.', 0, 5),
(94, 4, 3, 'Will to Live 2', ' When rolling a percentage to see if you will turn into a zombie from your infection rating, even if you’ve failed the roll twice (from using the skill Will to Live 1), you’re still able to flip a coin. If it comes up heads, you won’t turn into a zombie, if it comes up tails, you’ll turn at the beginning of the next event. Yes, this means that, even if you have a 100% infection rating, you could still survive a few events, provided you kept flipping heads. If you have any of the Gambler’s Skills, you’re able to flip the coin more than once and take the best result.\r\n', 'You\'re REALLY hard to kill.', 0, 5),
(95, 3, 3, 'Wounded Warrior', 'If one of your limbs is Crippled, you may treat it as though it weren’t crippled for the sake of aiming weapons and attacking.\r\n\r\nThis skill may only be used if you have ONE crippled limb. If you have more than one crippled limb, the skill becomes useless.', 'You\'ve been through the best of times and the worst of times.', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `SkillTypes`
--

CREATE TABLE `SkillTypes` (
  `skillTypeID` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `SkillTypes`
--

INSERT INTO `SkillTypes` (`skillTypeID`, `name`) VALUES
(1, 'Combat'),
(2, 'Profession'),
(3, 'Talent');

-- --------------------------------------------------------

--
-- Table structure for table `Tnaptyg`
--

CREATE TABLE `Tnaptyg` (
  `pID` int(11) NOT NULL,
  `playerID` int(11) NOT NULL,
  `tnapyg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Tnaptyg`
--

INSERT INTO `Tnaptyg` (`pID`, `playerID`, `tnapyg`) VALUES
(1, 1, 'GhxriEf5Xwb6NzDOYiDZkg=='),
(2, 2, 'GhxriEf5Xwb6NzDOYiDZkg=='),
(3, 3, 'GhxriEf5Xwb6NzDOYiDZkg=='),
(4, 4, 'GhxriEf5Xwb6NzDOYiDZkg=='),
(5, 5, 'GhxriEf5Xwb6NzDOYiDZkg=='),
(6, 6, 'GhxriEf5Xwb6NzDOYiDZkg=='),
(7, 7, 'GhxriEf5Xwb6NzDOYiDZkg=='),
(8, 8, 'GhxriEf5Xwb6NzDOYiDZkg=='),
(9, 9, 'GhxriEf5Xwb6NzDOYiDZkg=='),
(10, 10, 'GhxriEf5Xwb6NzDOYiDZkg=='),
(11, 11, 'GhxriEf5Xwb6NzDOYiDZkg=='),
(12, 12, 'GhxriEf5Xwb6NzDOYiDZkg=='),
(13, 13, 'GhxriEf5Xwb6NzDOYiDZkg=='),
(14, 14, 'GhxriEf5Xwb6NzDOYiDZkg==');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Characters`
--
ALTER TABLE `Characters`
  ADD PRIMARY KEY (`characterID`),
  ADD KEY `playerID in Characters` (`playerID`),
  ADD KEY `primaryWeaponID` (`primaryWeaponID`);

--
-- Indexes for table `CharacterSkills`
--
ALTER TABLE `CharacterSkills`
  ADD PRIMARY KEY (`characterID`,`skillID`),
  ADD KEY `skillID` (`skillID`);

--
-- Indexes for table `EventAttendees`
--
ALTER TABLE `EventAttendees`
  ADD PRIMARY KEY (`eventID`,`playerID`),
  ADD KEY `playerID eas` (`playerID`),
  ADD KEY `characterID eas` (`characterID`);

--
-- Indexes for table `Events`
--
ALTER TABLE `Events`
  ADD PRIMARY KEY (`eventID`);

--
-- Indexes for table `HistoricalEvents`
--
ALTER TABLE `HistoricalEvents`
  ADD PRIMARY KEY (`historyID`),
  ADD KEY `playerID hes` (`playerID`),
  ADD KEY `characterID hes` (`characterID`),
  ADD KEY `eventID hes` (`eventID`);

--
-- Indexes for table `Items`
--
ALTER TABLE `Items`
  ADD PRIMARY KEY (`itemID`),
  ADD KEY `characterID id` (`characterID`);

--
-- Indexes for table `Players`
--
ALTER TABLE `Players`
  ADD PRIMARY KEY (`playerID`);

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- Indexes for table `PrimaryWeapons`
--
ALTER TABLE `PrimaryWeapons`
  ADD PRIMARY KEY (`primaryWeaponID`);

--
-- Indexes for table `SkillCategories`
--
ALTER TABLE `SkillCategories`
  ADD PRIMARY KEY (`skillCategoryID`);

--
-- Indexes for table `SkillPrerequisites`
--
ALTER TABLE `SkillPrerequisites`
  ADD PRIMARY KEY (`baseSkillID`,`prereqSkillID`),
  ADD KEY `skillid in prereq2` (`prereqSkillID`);

--
-- Indexes for table `Skills`
--
ALTER TABLE `Skills`
  ADD PRIMARY KEY (`skillID`),
  ADD KEY `skillTypeID in SkillTable` (`skillTypeID`),
  ADD KEY `SkillCategoryID in SkillTable` (`skillCategoryID`);

--
-- Indexes for table `SkillTypes`
--
ALTER TABLE `SkillTypes`
  ADD PRIMARY KEY (`skillTypeID`);

--
-- Indexes for table `Tnaptyg`
--
ALTER TABLE `Tnaptyg`
  ADD PRIMARY KEY (`pID`),
  ADD KEY `pwtblpid` (`playerID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Characters`
--
ALTER TABLE `Characters`
  MODIFY `characterID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `Events`
--
ALTER TABLE `Events`
  MODIFY `eventID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `HistoricalEvents`
--
ALTER TABLE `HistoricalEvents`
  MODIFY `historyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `Items`
--
ALTER TABLE `Items`
  MODIFY `itemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Players`
--
ALTER TABLE `Players`
  MODIFY `playerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `PrimaryWeapons`
--
ALTER TABLE `PrimaryWeapons`
  MODIFY `primaryWeaponID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `SkillCategories`
--
ALTER TABLE `SkillCategories`
  MODIFY `skillCategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `Skills`
--
ALTER TABLE `Skills`
  MODIFY `skillID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT for table `SkillTypes`
--
ALTER TABLE `SkillTypes`
  MODIFY `skillTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Tnaptyg`
--
ALTER TABLE `Tnaptyg`
  MODIFY `pID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Characters`
--
ALTER TABLE `Characters`
  ADD CONSTRAINT `playerID in Characters` FOREIGN KEY (`playerID`) REFERENCES `Players` (`playerID`),
  ADD CONSTRAINT `primaryWeaponID` FOREIGN KEY (`primaryWeaponID`) REFERENCES `PrimaryWeapons` (`primaryWeaponID`);

--
-- Constraints for table `CharacterSkills`
--
ALTER TABLE `CharacterSkills`
  ADD CONSTRAINT `characterID` FOREIGN KEY (`characterID`) REFERENCES `Characters` (`characterID`),
  ADD CONSTRAINT `skillID` FOREIGN KEY (`skillID`) REFERENCES `Skills` (`skillID`);

--
-- Constraints for table `EventAttendees`
--
ALTER TABLE `EventAttendees`
  ADD CONSTRAINT `characterID eas` FOREIGN KEY (`characterID`) REFERENCES `Characters` (`characterID`),
  ADD CONSTRAINT `eventID eas` FOREIGN KEY (`eventID`) REFERENCES `Events` (`eventID`),
  ADD CONSTRAINT `playerID eas` FOREIGN KEY (`playerID`) REFERENCES `Players` (`playerID`);

--
-- Constraints for table `HistoricalEvents`
--
ALTER TABLE `HistoricalEvents`
  ADD CONSTRAINT `characterID hes` FOREIGN KEY (`characterID`) REFERENCES `Characters` (`characterID`),
  ADD CONSTRAINT `eventID hes` FOREIGN KEY (`eventID`) REFERENCES `Events` (`eventID`),
  ADD CONSTRAINT `playerID hes` FOREIGN KEY (`playerID`) REFERENCES `Players` (`playerID`);

--
-- Constraints for table `Items`
--
ALTER TABLE `Items`
  ADD CONSTRAINT `characterID id` FOREIGN KEY (`characterID`) REFERENCES `Characters` (`characterID`);

--
-- Constraints for table `SkillPrerequisites`
--
ALTER TABLE `SkillPrerequisites`
  ADD CONSTRAINT `skillID in prereq` FOREIGN KEY (`baseSkillID`) REFERENCES `Skills` (`skillID`),
  ADD CONSTRAINT `skillid in prereq2` FOREIGN KEY (`prereqSkillID`) REFERENCES `Skills` (`skillID`);

--
-- Constraints for table `Skills`
--
ALTER TABLE `Skills`
  ADD CONSTRAINT `SkillCategoryID in SkillTable` FOREIGN KEY (`skillCategoryID`) REFERENCES `SkillCategories` (`skillCategoryID`),
  ADD CONSTRAINT `skillTypeID in SkillTable` FOREIGN KEY (`skillTypeID`) REFERENCES `SkillTypes` (`skillTypeID`);

--
-- Constraints for table `Tnaptyg`
--
ALTER TABLE `Tnaptyg`
  ADD CONSTRAINT `pwtblpid` FOREIGN KEY (`playerID`) REFERENCES `Players` (`playerID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
