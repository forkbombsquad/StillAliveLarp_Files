-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 09, 2018 at 04:43 PM
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
-- Table structure for table `Awards`
--

CREATE TABLE `Awards` (
  `awardID` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Awards`
--

INSERT INTO `Awards` (`awardID`, `name`, `description`) VALUES
(1, 'Outstanding Role-Playing Award', 'This award is given to the player who role-plays the best over the course of an entire event. The player who receives this award also receives 10 bullets.'),
(2, 'Most Valued Player', 'This award is given to the player that the Still Alive Staff think is most deserving. It is only given out once per season.');

-- --------------------------------------------------------

--
-- Table structure for table `AwardWinners`
--

CREATE TABLE `AwardWinners` (
  `eventID` int(11) NOT NULL,
  `playerID` int(11) NOT NULL,
  `awardID` int(11) NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `AwardWinners`
--

INSERT INTO `AwardWinners` (`eventID`, `playerID`, `awardID`, `notes`) VALUES
(3, 7, 2, 'Congratulations to Jeff for all of his hard work in the 2017 season!'),
(5, 3, 1, 'Excellent job posing as the temporary Commander for the first time! excited to see more!');

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
(1, 1, 'Ziya (Zi) Helvar', '2017-07-19', 1, NULL, 9, 4, 1, 0, 1, 8, 0, 1, 0, 0, 'My name is Ziya Helvar, but you can call me Zi. I guess I should start from the beginning. I lived alone in an apartment near the bookstore I worked at in Brooklyn. At first the stories about the infection were sparse, but given that Brooklyn is in one of the most densely populated areas in America, the infection spread quickly. As soon as I realized this, I began my preparations to get out of the city. When I was ready, I got on my bike and barely spared a glance back. All my friends had either refused to leave their homes, or had already been infected. So I headed for a new life in the Midwest because the east and west coasts were chock full of cities, and there would be no way to tame the infection in those areas. \n\nLife had been lonely for the past three years. For the most part I travelled alone; scavenging what I could from abandoned stores and homes, or living off the land I travel across. Once in awhile I would run into another group of survivors and stay with them for a few days. One of the few times that I stuck with a group for over a week, I heard constant talk about a camp for survivors up in Wisconsin that they were thinking about heading for. I didn\'t trust them enough to go with, but I took some time to think it over and figured it wouldn\'t hurt to take a look for myself.\n\n', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 3, 'Aria Sinclair', '2017-05-22', 1, NULL, 14, 7, 1, 18, 1, 10, 0, 0, 0, 0, 'After the plague hit I left my job as an educator to be closer to my family, up North. However, by the time I got to Wisconsin, my hometown was already condemned. My mother and father died from the disease and I haven’t heard from my sister even years before the break out. I presume that she died just like our parents. The hardest part was losing Rex, my dog. Once he was no longer in the picture I ran. For a few years I ran all day and bunkered down for the dreadful nights. Until just over a year ago I stumbled upon a few people running, just as I had been. They told me of a camp, not too far from where we were, that they were heading to. I decided that day that I was sick of running and it was time to start fighting. It was a struggle to fit into Camp Still Alive. Everybody had well established place in the group and I was the newcomer just trying to fit in. It got easier as the month went on, I was able to use my teaching ability to help others learn new skills. I may not be good at everything, but I am careful and observant. If you give me a little time, I can teach you just about anything about everything. BIO: Before the world went to shit, I was happy. I was a part of a typical nuclear family, had a momma that nagged me to much and a dadda that gave me anything I wanted. My sister and I’s relationship was complicated at best, but so is everyone else&#39;s. I was happy working my 7-3 job at the university and coming home to Rex, my pup, every day. It was a normal life, a boring life, but I was happy.Then the proverbial foot dropped. They say it started in the hospitals as a fever or whatever. I honestly wouldn’t give a crap how it started. I just wished the government gave a shit. They didn’t do much to stop the spread. I would have nuked the whole fucking town, but no that was inhumane. Well please tell me, how losing your entire family and your barely old enough pup to this sick plague humane? It’s not, but the government could care less, they&#39;re only worried about saving their own damn asses. That’s why we started our own government. It’s not much of a government and at a moments notice we would probably all abandon each other to save our own asses, but we follow the rules for now. The sergeant gives us orders and we chip in our share of the labor. It’s more of a mutual agreement then anything, but it works. My mother was the first to go when the plague hit our home town. I remember talking to her over the phone, before the cell towers fell. She wouldn’t let me come see her. It was to dangerous. “Just survive” were the last words I heard from my mother before she was taken away from us. Just survive. That is what I have been doing for the last five years. I have survived through a lot of shit. A lot of betrayals and backstabs, a lot of death. Momma if you are watching me I want you to know that I am surviving. For you I will always survive. And to think I use to be happy.\n\n', 0, 0, 0, 0, 0, 2, 1, 1, 7, 4, 0),
(5, 4, 'Morgan Goodwin', '2017-05-30', 0, '2017-05-30', 8, 4, 1, 0, 1, 3, 0, 0, 0, 0, '-None Given-', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 5, 'Jack Lanser', '2017-05-01', 1, NULL, 29, 0, 0, 0, 1, 0, 0, 0, 0, 0, '-None Given-', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 6, 'Scooter', '2017-05-30', 0, '2017-07-25', 15, 0, 0, 0, 1, 0, 0, 0, 0, 0, '-None Given-', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 7, 'Jay (Trout) Flyer', '2017-05-18', 1, NULL, 11, 6, 1, 18, 1, 41, 3, 2, 0, 0, 'Life’s always a struggle, no matter what. Whether born in a mansion or a gutter, every man and woman is going to face challenges in their lives. You can rise to meet them, or you can be crushed by reality. Such was the life of Jay. Born into an upper middle class household, he learned all the life lessons in the comfort of financial stability. He could fish and hunt with his father whenever the urge across, and came home to a loving homemaker of a mother. He learned how to be a responsible, loyal, and brave all without responsibility, challenge or fears. Is life was one big hypothetical that he felt ready to tackle. In school he excelled without being challenged, and thought himself god’s gift to the world. When it was time for him to find a career he chose medicine, still clinging to the belief of doing the chivalrous thing and helping others as well as himself. That was when life got real however. Three years at med-school in Chicago and life was not what he expected it to be. Twice mugged, twice failed, and a mediocre understanding of medical ethics had kicked young Mr. Flyer square in the teeth without the courtesy of a painkiller. A CNN report would change everything for him though. The outbreak had started. As panic spread through the windy city, now was finally his time to shine. In a campus surrounded by pricks with a silver spoon shoved you know where, Jay finally had a shot. In the first year following the outbreak, the now self-appointed Dr. Flyer, treated more patients than any physician would in a lifetime. Sure, not all procedures were successful, most happened to be on the students who so proudly boasted about their families estates or perfect GPA’s, but hey where else are you gonna go when the world is falling apart. Finally as the cities survivor population dwindled, Jay decided it was time to move north. On the cold shores of Lake Superior, he knew he could isolate himself and survive for as long as need be. For a nearly a year he worked his way north slowly. Living in broken down cars, survivor camps and boarded up shops he trekked northward until meeting a group of survivors near the shores of Lake Delton. Commander Davis and his men were eager to add another medic, and hell, there were waterslides nearby. That is how Jay “Trout” Flyer came to be the youngest head of Medicine in Chicago history and a pretty damn fine medic and zombie slayer.\n\n', 0, 0, 0, 0, 0, 1, 1, 1, 2, 0, 0),
(9, 8, 'Richard Gantz', '2017-05-19', 1, NULL, 21, 0, 0, 0, 1, 8, 8, 0, 11, 75, '**See &#39;The Story&#39; section of the Still Alive Handbook to see the backstory of Richard Gantz and Commander Davis.**', 0, 0, 0, 10, 11, 0, 0, 0, 0, 0, 0),
(10, 9, 'Commander Davis', '2017-05-01', 1, NULL, 22, 6, 0, 6, 1, 50, 40, 10, 20, 20, '**See &#39;The Story&#39; section of the Still Alive Handbook to see the backstory of Richard Gantz and Commander Davis.**', 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0),
(11, 10, 'Ray Lanmen', '2017-07-18', 0, '2017-07-25', 9, 4, 1, 0, 1, 0, 0, 1, 0, 0, 'Ray Lanmen had always been lost in life. His dreams and goals never clear, and his choices even less so. After trying a year of college he dropped out, hoping to find some path that worked for him. He only returned to a town of chaos. If he wasn\'t lost enough before, he now couldn\'t even recognize his own home town as torn bodies grazed across the streets, attempting to eat anything the moved. He luckily found his way home, but his moving vehicle attracted those living corpses home with him. After several attempts to get inside the locked house, Ray\'s brother, Max, saw him through some nailed up boards in a window. His brother opened up the garage just enough for Ray to slide under, but unfortunately the flesh hungry mob starting forcing themselves under as well. Ray quickly ran inside and tried to warn his brother as his parents ran to the door in the garage trying to hold it closed. They yelled at Ray and Max to make a break through the window leading to the back porch, but as Ray and Max were climbing through the window, the horde broke down the door and Ray watched in the window as groups of these monsters leaped upon his parents, tearing their flesh away and eating them alive. Max quickly pulled Ray through the window and they ran off the back porch, trying to make barely any noise. They ran for what felt like hours, hoping to find something that wasn\'t undead. They finally stumbled across Camp Still Alive and found faces of fighters and other scared people, but most importantly, a new home. At Camp Still Alive, Ray does what he can to keep his brother safe and to help out this new community, but slowly insanity has been eating away at him for the sight of his parents death is torturing him, and he knows he\'s the one at fault for their horrid end.\n\n', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 11, 'Jada Jones', '2017-05-30', 1, NULL, 12, 8, 1, 26, 1, 34, 0, 3, 0, 0, 'Age: 25Hometown: Riley, WisconsinPrevious occupation: Animal caretaker (non-medical)Characteristics: outdoorsy type, cautious, loves animalsI was living in a small town on the outside of Madison when all hell broke loose. I&#39;ve lost everyone - my friends, family… my older sister, my dad.  I never knew my mom.  She and dad split when I was young.  She traveled down south and I hadn’t seen her since. I guess it&#39;s for the best- it&#39;s one less person to lose. I used to spend my days at a pet daycare that I worked at.  One of the worst parts was when the daycare got infected.  All those poor animals.. gone.  I&#39;m still not quite sure how I got away without a scratch. For the past couple years, I’ve been scavenging from town to town, making my way away from the major city, where zombies were living in abundance.  Then I caught wind of a survivor camp in the area. That&#39;s when I made my way to find Camp Davis.  It’s a relief to have found a group to survive with, rather than continue fending on my own in the lonely wasteland.\n\n', 9, 2, 2, 0, 0, 1, 4, 0, 7, 5, 5),
(13, 12, 'Zache Clark', '2017-06-27', 1, NULL, 9, 5, 1, 7, 1, 34, 2, 4, 0, 0, '-None Given-', 0, 0, 0, 0, 0, 1, 0, 1, 5, 2, 0),
(14, 14, 'Tyler ', '2017-05-22', 0, '2017-05-30', 9, 4, 1, 0, 1, 0, 0, 0, 0, 0, 'Two years… two years I was on the road before stepping foot into camp. Before then I was held up in a small town that managed to hold off those damn things for a year; but like the rest of the cities, it was eventually overrun. My family, my friends, everything I have ever known was taken from me by the dead. But that doesn’t matter now. \nI’ve learned to scavenge for myself. I try to avoid as much conflict as possible with potential threats, but will fight when it is necessary. I am quiet and reserved as a result. I’ve gotten used to life on the road; never sticking with any single group for very long. It’s better that way, so I can’t get too attached. \nI’m fairly new here in camp. There’s food, water, and a safe place to sleep; just what I need. Life as a drifter really takes its toll on a guy. I feel like I haven’t gotten a good night sleep in years. The people here were kind enough to take me in when I happen upon the camp, a rarity in these times. Life here might be different: perhaps my days on the road are over?\n\n', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 14, 'James (Jimmy) Moore', '2017-06-27', 0, '2017-07-25', 10, 5, 1, 0, 1, 0, 0, 0, 0, 0, 'It feels like I’ve been wandering for ages, god knows how long it’s been since I’ve had a good night sleep. I’m relieved that someone finally found me and took me in. Somewhat of a coward, I avoid conflict at all cost. I’m quick on my feet and very good at hiding, it’s how I’ve gotten this far, I suppose. \nI come from a very well-off family, so I had a lot to get used to when the dead ravaged my home town three years ago. Camp Davis is a sight for sore eyes (nothing compared to my old home), but I’ll be safe here I guess…\nI am on a mission to find my family and friends. The last that I have heard from them was months ago, back before we were separated on a scavenging mission gone wrong. We were on our way a base up north. Rumor had it this military base had a cure to this disease and a safe place to stay! If there is any hope of seeing them again, I must reach the base.\nI am not above lying to get what I want, stealing what I need to live, and throwing others under the bus to survive. I’ll play nice with others when I need to, but watch out, or you’ll get a knife in your back.\n\n', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 52, 'William Andriel', '2018-05-19', 1, NULL, 4, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Coming back from boot camp, I heard word about how bad things had gotten in the world, but it was worse than I ever could’ve expected. I decided that a small, fortified camp, not far from my hometown, was a perfect place to lay low for a while. I figured that the commander there could probably use an extra set of hands, anyway–especially ones with a military background.\n\n', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33, 53, 'Max Lithedo', '2018-05-19', 1, NULL, 4, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Brother of recently deceased Ray Lanmen, I survived as a slave to the vicious Jaguar camp for almost 3 years. I made an escape after a majority of my captors went off to attack a rival camp. After escaping I wandered for weeks until I came across camp still alive. After hearing the news that Ray had been here, my hopes were quickly dashed when I received the news of his death. My new goal is to survive here as long as I can.\n\n', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(35, 56, 'Jake Creed', '2018-05-22', 1, NULL, 8, 3, 1, 11, 1, 15, 0, 3, 0, 0, 'I grew up on a farm in Minnesota. Living an almost entirely isolated life, I hadn&#39;t really noticed the apocalypse until my generator ran out of fuel. Searching for fuel, I realized the had ended and that I need to seek out a safe place to live. I tried to head as far away from big cities as possible and stumbled upon Sargent Gantz while roaming through the woods.\n\n', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1),
(36, 10, 'Trent Falus', '2018-06-02', 1, NULL, 4, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Trent just came back from boot camp with a release as a field engineer, but didn&#39;t know he wouldn&#39;t be using his talents to serve his country rather than completely save it from a zombie outbreak. In his hometown he found a camp working together to survive the outbreak. With few options, Trent headed there in hopes of finding anyone still alive.\n\n', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(37, 59, 'Kegan Wolfire Nogard', '2018-06-05', 1, NULL, 5, 0, 1, 0, 1, 0, 0, 0, 0, 0, '-None Given-', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38, 6, 'Tanner Cage (Paladin)', '2018-06-06', 1, NULL, 4, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Tanner Cage was a simple man before the infection. He lived in Washington DC and had a job as a police officer. After the world ended he did his best to stay alive going from settlement to settlement. This led him to the Knights of The Coffin. The Knights of The Coffin  are a religious organization dedicated to the preservation of humanity. They trained Tanner in both the ideology of the Knights, as well as the martial art of salesmanship. Tanner excelled in both of these quickly earning the rank of paladin. Apon achieving this rank The Knights gave Tanner a Quest. He is to spread the word of the Knights across what used to be the United States. So he set off, traveling to settlement after settlement voicing the gospel of the Knights and recruiting all who&#39;d join.\n\n', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(39, 64, 'Jonny Test', '2018-06-11', 1, NULL, 7, 7, 1, 0, 1, 0, 0, 0, 0, 0, 'test', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40, 75, 'Sir Riki Diki Dutch', '2018-06-16', 1, NULL, 5, 0, 1, 0, 1, 0, 0, 0, 0, 0, 'he comes from the land of tikis and he was touched on the ikis by the zombikis so now he goes around collecting unborn babies.\n\n', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(41, 88, 'Aurender Mayendrel', '2018-07-01', 1, NULL, 4, 0, 0, 0, 1, 0, 0, 0, 0, 0, '-None Given-', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

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
(4, 7, '2018-06-02'),
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
(4, 83, '2018-06-02'),
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
(8, 65, '2018-06-17'),
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
(9, 43, '2018-05-19'),
(9, 44, '2018-05-19'),
(9, 47, '2018-05-12'),
(9, 49, '2018-05-12'),
(9, 54, '2018-05-12'),
(9, 56, '2018-05-12'),
(9, 58, '2018-05-12'),
(9, 60, '2018-06-04'),
(9, 62, '2018-05-12'),
(9, 71, '2018-05-12'),
(9, 73, '2018-05-12'),
(9, 74, '2018-06-04'),
(9, 75, '2018-05-12'),
(9, 79, '2018-05-12'),
(9, 83, '2018-05-12'),
(9, 84, '2018-05-12'),
(9, 92, '2018-05-19'),
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
(10, 29, '2018-05-16'),
(10, 30, '2018-05-13'),
(10, 31, '2018-05-14'),
(10, 33, '2018-05-13'),
(10, 34, '2018-05-12'),
(10, 35, '2018-05-13'),
(10, 36, '2018-05-22'),
(10, 43, '2018-06-02'),
(10, 44, '2018-06-02'),
(10, 46, '2018-05-13'),
(10, 47, '2018-05-12'),
(10, 48, '2018-05-14'),
(10, 49, '2018-05-12'),
(10, 50, '2018-05-15'),
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
(10, 83, '2018-05-17'),
(10, 86, '2018-05-13'),
(10, 88, '2018-05-12'),
(10, 92, '2018-06-02'),
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
(13, 49, '2018-06-02'),
(13, 56, '2018-05-12'),
(13, 58, '2018-06-02'),
(13, 73, '2018-05-12'),
(13, 75, '2018-05-12'),
(13, 79, '2018-05-12'),
(32, 9, '2018-05-19'),
(32, 47, '2018-05-19'),
(32, 75, '2018-05-19'),
(32, 79, '2018-05-19'),
(33, 9, '2018-05-19'),
(33, 47, '2018-05-19'),
(33, 75, '2018-05-19'),
(33, 79, '2018-05-19'),
(35, 2, '2018-05-22'),
(35, 9, '2018-05-22'),
(35, 10, '2018-05-22'),
(35, 18, '2018-05-22'),
(35, 36, '2018-07-07'),
(35, 44, '2018-07-07'),
(35, 46, '2018-06-07'),
(35, 47, '2018-05-22'),
(35, 56, '2018-07-05'),
(35, 73, '2018-05-22'),
(35, 75, '2018-05-22'),
(35, 79, '2018-05-22'),
(35, 82, '2018-07-06'),
(35, 83, '2018-05-22'),
(36, 2, '2018-06-02'),
(36, 4, '2018-06-02'),
(36, 9, '2018-06-02'),
(36, 47, '2018-06-02'),
(36, 73, '2018-06-02'),
(36, 75, '2018-06-02'),
(36, 79, '2018-06-02'),
(36, 82, '2018-06-02'),
(37, 9, '2018-06-05'),
(37, 47, '2018-06-05'),
(37, 73, '2018-06-05'),
(37, 75, '2018-06-05'),
(37, 79, '2018-06-05'),
(38, 9, '2018-06-06'),
(38, 22, '2018-06-07'),
(38, 35, '2018-06-07'),
(38, 36, '2018-06-07'),
(38, 37, '2018-06-07'),
(38, 47, '2018-06-06'),
(38, 49, '2018-06-07'),
(38, 58, '2018-06-07'),
(38, 63, '2018-06-07'),
(38, 75, '2018-06-06'),
(38, 78, '2018-06-07'),
(38, 79, '2018-06-06'),
(38, 83, '2018-06-07'),
(39, 9, '2018-06-11'),
(39, 24, '2018-06-11'),
(39, 30, '2018-06-11'),
(39, 47, '2018-06-11'),
(39, 67, '2018-06-11'),
(39, 75, '2018-06-11'),
(39, 79, '2018-06-11'),
(40, 9, '2018-06-16'),
(40, 10, '2018-06-16'),
(40, 47, '2018-06-16'),
(40, 75, '2018-06-16'),
(40, 79, '2018-06-16'),
(41, 9, '2018-07-01'),
(41, 47, '2018-07-01'),
(41, 75, '2018-07-01'),
(41, 79, '2018-07-01');

-- --------------------------------------------------------

--
-- Table structure for table `CraftableObjectMaterials`
--

CREATE TABLE `CraftableObjectMaterials` (
  `objectID` int(11) NOT NULL,
  `materialID` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `CraftableObjectMaterials`
--

INSERT INTO `CraftableObjectMaterials` (`objectID`, `materialID`, `amount`) VALUES
(8, 1, 1),
(8, 2, 1),
(9, 5, 1),
(10, 13, 1),
(11, 1, 1),
(12, 12, 1),
(12, 14, 10),
(13, 11, 1),
(15, 3, 1),
(16, 9, 1),
(17, 4, 1),
(19, 10, 1),
(20, 7, 1),
(30, 6, 1),
(31, 8, 1),
(33, 15, 1),
(34, 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `CraftableObjectRequiredSkills`
--

CREATE TABLE `CraftableObjectRequiredSkills` (
  `objectID` int(11) NOT NULL,
  `skillID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `CraftableObjectRequiredSkills`
--

INSERT INTO `CraftableObjectRequiredSkills` (`objectID`, `skillID`) VALUES
(1, 51),
(3, 6),
(4, 53),
(5, 52),
(6, 82),
(7, 8),
(8, 82),
(9, 91),
(10, 51),
(11, 82),
(12, 91),
(13, 91),
(14, 8),
(15, 7),
(16, 7),
(17, 91),
(18, 53),
(19, 91),
(20, 32),
(20, 51),
(21, 52),
(22, 81),
(23, 81),
(24, 81),
(25, 45),
(26, 51),
(27, 51),
(28, 6),
(29, 51),
(30, 32),
(31, 7),
(32, 15),
(33, 45),
(34, 8);

-- --------------------------------------------------------

--
-- Table structure for table `CraftableObjects`
--

CREATE TABLE `CraftableObjects` (
  `objectID` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `clothAmount` int(11) NOT NULL,
  `metalAmount` int(11) NOT NULL,
  `woodAmount` int(11) NOT NULL,
  `stoneAmount` int(11) NOT NULL,
  `techPartsAmount` int(11) NOT NULL,
  `mechPartsAmount` int(11) NOT NULL,
  `buildTimeMinutes` decimal(10,0) NOT NULL,
  `fortificationLevel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `CraftableObjects`
--

INSERT INTO `CraftableObjects` (`objectID`, `name`, `description`, `clothAmount`, `metalAmount`, `woodAmount`, `stoneAmount`, `techPartsAmount`, `mechPartsAmount`, `buildTimeMinutes`, `fortificationLevel`) VALUES
(1, 'AM Radio Transmitter', 'Used to transmit radio messages over short distances (Allows the use of short range radio communication for story, as well as the use of personal radios or walkie-talkies on channels 2-4).', 0, 4, 0, 0, 4, 6, '20', 0),
(3, 'Small Engine', 'Used for some tech projects that require a small amount of power or moving parts.', 0, 8, 0, 2, 0, 2, '6', 0),
(4, 'Medium Engine', 'Used for some tech projects that require a moderate amount of power or moving parts.', 0, 12, 0, 6, 2, 6, '12', 0),
(5, 'Large Engine', 'Used for some tech projects that require a large amount of power or moving parts.', 0, 16, 0, 10, 4, 12, '18', 0),
(6, 'Cloth Barricade', 'A very lightly fortified wall up to 5\' tall, 5\' wide, and 2\" thick.', 10, 0, 4, 0, 0, 4, '2', 1),
(7, 'Concrete Barricade', 'An extremely strong concrete fortification up to 5\' tall, 5\' wide, and 2\" thick.', 0, 2, 0, 12, 0, 8, '24', 3),
(8, 'Gun Light', 'A blacklight flashlight fastened onto a gun so you don\'t have to hold it.', 1, 0, 0, 0, 0, 1, '2', 0),
(9, 'Heavy Firearm', 'Any firearm classified as Heavy.', 1, 6, 4, 0, 2, 4, '18', 0),
(10, 'Radio (Walkie Talkie)', 'A radio used for communication. A radio transmitter must be built at camp to allow for different channels of communications. By default, only channel 2 may be used.', 0, 0, 0, 0, 2, 2, '6', 0),
(11, 'Flashlight (Blacklight)', 'A flashlight that uses UV light to ensure zombies can\'t see it.', 0, 1, 0, 0, 1, 1, '2', 0),
(12, 'Grenade', 'A grenade that holds 10 Nerf Rival bullets as shrapnel.', 0, 6, 0, 4, 2, 2, '8', 0),
(13, 'Heavy Melee Weapon', 'Any melee weapon classified as Heavy', 0, 8, 2, 2, 0, 2, '18', 0),
(14, 'Heavy Metal Barricade', 'A strong metal fortification up to 5\' tall, 5\' wide, and 2\" thick.', 0, 16, 0, 4, 0, 8, '18', 3),
(15, 'Light Firearm', 'Any firearm classified as Light.', 1, 2, 1, 0, 0, 1, '6', 0),
(16, 'Light Melee Weapon', 'Any melee weapon classified as Light', 0, 1, 2, 0, 0, 0, '6', 0),
(17, 'Medium Firearm', 'Any firearm classified as Medium', 1, 4, 2, 0, 1, 2, '12', 0),
(18, 'Medium Generator', 'A generator that produces a moderate amount of power.', 0, 8, 2, 4, 2, 8, '12', 0),
(19, 'Medium Melee Weapon', 'Any melee weapon classified as Medium.', 0, 2, 2, 1, 0, 1, '12', 0),
(20, 'Military Grade Firearm', 'Any firearm classified as Military Grade', 1, 8, 8, 0, 10, 16, '30', 0),
(21, 'Large Generator', 'A generator that produces a large amount of power.', 0, 16, 4, 10, 6, 10, '18', 0),
(22, 'Large Radio Antenna', 'Used to receive radio messages over extreme distances (Allows the camp to receive of extreme range radio transmissions for story).', 0, 16, 0, 0, 16, 16, '30', 0),
(23, 'Large FM Radio Transmitter', 'Used to transmit radio messages over extreme distances (Allows the use of extreme range radio communication for story, as well as the use of personal radios or walkie-talkies on all channels, besides channel 1).', 0, 16, 8, 0, 16, 16, '30', 0),
(24, 'Large Solar Panel', 'Provides a large amount of power during daylight hours, without fuel.', 0, 8, 0, 4, 8, 4, '24', 0),
(25, 'Light Metal Barricade', 'A basic metal fortification up to 5\' tall, 5\' wide, and 2\" thick.', 0, 12, 0, 0, 0, 4, '12', 0),
(26, 'Small Radio Antenna', 'Used to receive radio messages over long distances (Allows the camp to receive of long range radio transmissions for story).', 0, 4, 0, 0, 4, 4, '12', 0),
(27, 'Small FM Radio Transmitter', 'Used to transmit radio messages over long distances (Allows the use of long range radio communication for story, as well as the use of personal radios or walkie-talkies on channels 2-6).', 0, 8, 0, 0, 10, 12, '20', 0),
(28, 'Small Generator', 'A generator that produces a small amount of power.', 0, 4, 1, 0, 1, 4, '6', 0),
(29, 'Small Solar Panel', 'Produces a small amount of power during daylight hours, without fuel.', 0, 4, 0, 4, 4, 4, '12', 0),
(30, 'Super Heavy Firearm', 'Any firearm classified as Super Heavy', 1, 10, 8, 0, 4, 10, '24', 1),
(31, 'Super Light Melee Weapon', 'Any melee weapon classified as Super Light', 0, 1, 1, 0, 0, 0, '2', 0),
(32, 'Wooden Barricade', 'A basic wooden fortification up to 5\' tall, 5\' wide, and 2\" thick.', 0, 0, 12, 0, 0, 4, '8', 2),
(33, 'Workbench', 'When used while performing any of the crafting skills, all crafting times are cut in half (rounded up to the nearest minute). This MAY NOT be used in conjunction with a Workstation.', 2, 12, 12, 12, 2, 4, '30', 0),
(34, 'Workstation', 'When used while performing any of the crafting skills, all crafting material costs are cut in half (rounded up). This MAY NOT be used in conjunction with a Workbench.', 24, 36, 30, 18, 6, 12, '60', 0);

-- --------------------------------------------------------

--
-- Table structure for table `CraftableObjectsAsMaterials`
--

CREATE TABLE `CraftableObjectsAsMaterials` (
  `objectToBeCrafted` int(11) NOT NULL,
  `objectMaterial` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `CraftableObjectsAsMaterials`
--

INSERT INTO `CraftableObjectsAsMaterials` (`objectToBeCrafted`, `objectMaterial`, `amount`) VALUES
(1, 3, 1),
(22, 4, 1),
(23, 5, 1),
(23, 22, 1),
(26, 3, 1),
(27, 4, 1),
(27, 26, 1);

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
(3, 7, 8, '16:00:00'),
(3, 8, 9, '16:00:00'),
(3, 9, 10, '16:00:00'),
(3, 10, 11, '16:00:00'),
(3, 11, 12, '16:00:00'),
(3, 12, 13, '16:00:00'),
(3, 13, NULL, '16:00:00'),
(3, 14, 15, '16:00:00'),
(4, 3, 4, '15:35:23'),
(4, 5, 6, '15:36:47'),
(4, 6, NULL, '15:39:22'),
(4, 8, 9, '15:33:26'),
(4, 9, 10, '15:32:25'),
(4, 10, NULL, '16:35:34'),
(4, 12, 13, '16:33:05'),
(4, 13, NULL, '16:14:07'),
(4, 51, NULL, '16:15:58'),
(4, 52, NULL, '16:33:29'),
(4, 53, NULL, '16:36:55'),
(5, 3, 4, '18:55:54'),
(5, 6, NULL, '17:03:54'),
(5, 7, 8, '18:45:50'),
(5, 8, 9, '17:21:57'),
(5, 9, 10, '17:01:33'),
(5, 11, 12, '18:40:40'),
(5, 12, 13, '18:58:33'),
(5, 13, NULL, '17:50:45'),
(5, 56, NULL, '17:53:59');

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
(4, '2018-05-20', '2018-05-20', '10:43:00', '11:47:39', 0, 'Practice and Refresher Event', 'Version 1.2 was released. We want a practice event to get everyone acquainted to the new rules, show the new players how to play, and get everyone stoked for this season of Still Alive!'),
(5, '2018-06-02', '2018-06-03', '16:59:41', '00:11:27', 0, 'A Shift in Command', 'With the beginning of Summer finally upon us, Commander Davis and Sargent Gantz are preparing for their cross-country trip; a new commander will need to be chosen to take over during their absence. Meanwhile, the zombies have been more active than ever and the symbols in blood are becoming more frequent too...'),
(7, '2018-06-27', '2018-06-27', '16:44:14', '16:44:55', 0, 'An Unexpected Return', '6 Weeks have passed since the Commander and Sargent left the camp. The temporary Commander, Aria, will soon have to designate who she will choose to be her temporary Sargent... but that');

-- --------------------------------------------------------

--
-- Table structure for table `HandbookEntry`
--

CREATE TABLE `HandbookEntry` (
  `handbookID` int(11) NOT NULL,
  `sectionTitle` text NOT NULL,
  `subSectionTitle` text NOT NULL,
  `subSubSectionTitle` text NOT NULL,
  `content` text NOT NULL,
  `dateModified` date NOT NULL,
  `version` text NOT NULL,
  `contentOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `HandbookEntry`
--

INSERT INTO `HandbookEntry` (`handbookID`, `sectionTitle`, `subSectionTitle`, `subSubSectionTitle`, `content`, `dateModified`, `version`, `contentOrder`) VALUES
(1, 'The Basics', 'Introduction and Gameplay Requirements', 'General', 'Let me just start out by saying: Thank you for taking an interest in STILL ALIVE! This idea has been in the works for quite some time and we (The Game Runners) are extremely happy to finally see it becoming what it was always meant to. We started this project in late 2014 and have been building on it ever since. We began beta-testing in 2016 and released the beginnings of our story upon the world in the summer of 2017.\r\n\r\nFor those who are uninformed, Still Alive is a Live Action Role-Playing (LARP) game, set in a post-apocalyptic world. Your mission, should you choose to accept it, is to survive all of the challenges of a zombie apocalypse alongside all of the other survivors at the base camp (Aptly named: Still Alive). You\'ll face hardships, tough moral decisions, hordes of zombies, and more!', '2018-06-11', '1.2', 0),
(2, 'The Basics', 'Introduction and Gameplay Requirements', 'Restrictions', 'Our game is for mature players only and thus players are required to be 18 years of age or older. With parental consent, players may be as young as 16 so long as they follow ALL of the rules for Minors (listed below). Anyone under the age of 16 will not be allowed to play - no exceptions.\r\n\r\nRULES FOR PLAYERS UNDER THE AGE OF 18:\r\n\r\n    1. A parent or guardian of the minor intending to play must either:\r\n        i. Be present during the initial sign up of the player and sign the release of liability along with the minor. (This process must be completed every year)\r\n        ii. Get a copy of the release of liability from one of the game runners and sign it with the minor intending to play in the presence of a notary (having it notarized afterward).\r\n\r\n    2. The parent or guardian Must be made aware that this LARP is intended for mature players and that (fake) blood, gore, and foul language are commonplace.\r\n\r\n    3. Minors are NOT allowed to drive themselves to or from Still Alive events and must ride with either: their parent/guardian, a member of the Still Alive Staff, or an active member of Still Alive in “good standing” (explained below).\r\n\r\n    4. All minors MUST be a direct relative (sibling or child) to an active member of Still Alive that is in “good standing” (explained below). 5. Minors may only participate during the summer months of Still Alive (June, July, and August), no exceptions. \r\n\r\n\r\n\r\nAn active member of Still Alive in good standing is defined by the characteristics below:\r\n    - The player has attended at least 1 event. \r\n    - The player has attended at least 1 of the last 2 events.\r\n    - The player is not in debt to Still Alive (i.e. owes money or property). \r\n    - All members of the Still Alive staff consider the player to be trustworthy.', '2018-06-11', '1.2', 1),
(3, 'The Basics', 'The Story', 'The Story', '“Four years. It’s been four years since the damned infection started. Where did it start? I still have no idea. I don’t think anyone does, but the origin never really mattered anyway. It was the big cities that fell first. They had lots of people all cooped up in small areas—they were doomed before it even began. It’d always go the same way too: you’d be watching T.V. and then a banner would cross the bottom of the screen: ‘Major Hospital Quarantined Due to Outbreak of Strange Cannibalistic Disease.’, then a few days later you’d hear somethin’ about the city being called a ‘Dead Zone’.  They always thought they were gonna cure it too. Every fucking hospital that took one o’ them monsters in ended up closing its doors for good within a couple days-and dooming the rest of the city soon after. Then you’d start hearin’ reports of governments ‘cross the world invokin’ Martial Law on their remaining cities. It didn’t do no good, though. By the time cities actually enforced the new order, the infection had already crept its way inside the walls.  People didn’t know much about the infection in those days—Hell, they still don’t know much—but back then, they all thought that nothing bad would ever happen to them… and they were all wrong. Within about a year, most o’ the rest of the cities and towns fell an’ all that was left was a few small villages, isolated from the rest of the world. It wouldn’t be long ‘till those fell too. I still remember the day I left our little town. It was raining when we got the news ‘bout a town not ten miles from us that had suddenly lost radio communications. I knew somethin’ bad was comin’, so a few buddies an’ me packed up our guns and headed out. We figured that if we went far from town and built a camp, it’d be years before the infection would reach us, and by then we hoped we’d be ready. So just over two years ago, we set out and built the camp you’re standin’ in right now. Camp Still Alive. Not a bad name, if I do say so myself. I suppose you’re wonderin’ who I am and whether you’ll be safe here or not, huh? Well, to answer the first question: I’m The Commander. I left my first name behind with my old life, but you can refer to me as Commander Davis, Commander, or just Davis if you feel bold enough. The second question, however, is a little tougher to answer. Nowhere is safe. People haven’t been safe in three years, so don’t kid yourself… But, if you’re looking for the safest spot within a hundred miles, then look no further than my camp. As long as you’re not stupid, we’ll all live a lot longer. So, without further ado: Welcome to Still Alive!”', '2018-06-11', '1.2', 2),
(4, 'The Basics', 'Getting Started', 'Basic Rules', 'Still Alive was created with the idea that it should be easy to learn. We at the Still Alive team believe simplicity can work beautifully if done right. When we set out designing the system, our number one goal was to make it easy to implement and simple to play, and we believe we’ve achieved just that: a simple, yet diverse experience for any character type. It should also be noted that Still Alive is a constantly evolving game. We’re always looking for ways to tweak it in order to make the entire experience easier for everyone.\r\n\r\nThe first and most important rule in Still Alive is about safety. Shooting and/or hitting any person’s head or face is strictly off limits. Any headshots are considered missed shots and anyone purposely aiming at heads after being warned will be asked to leave without a refund. If you wish to shoot someone in the head for story reasons, it must be roleplayed out [see the Gun Combat section for more information]. On the subject of headshots, we don’t require eye protection, but we do highly recommend it. Take it from us, a nerf dart to the eye hurts a lot and could do some serious damage. Now that we’ve got safety down, we can get into the fun stuff!\r\n\r\nStill Alive uses an experience-based skill tree that will allow you to expand what your character is able to do through the skill choices you make along the way (This is explained in detail in the Character Creation, Skills, and Experience section).\r\n\r\nIn order to join Still Alive, you’ll have to create a character that fits into the world we’ve created (Read THE STORY section if you need a refresher). These characters are entirely fictitious and you can be as creative as you wish with them (please be reasonable, though). If you write a well-constructed backstory about your character and how they ended up at Camp Still Alive, then get it to us (the Game Runners) at least one week before your first event, we’ll award you 1 extra starting experience for your character’s creation (This extra experience will only be awarded to the backstories that we deem good enough. As long as you put some effort into it, this shouldn’t be a problem). If you need help with your backstory, don’t be afraid to contact one of us at the Still Alive team. We can give you more information about the world and what’s been going on in it since the outbreak.\r\n\r\nYou are only allowed to have one character at a time and the only way to get a new one is for your current character to die (Although, a well-placed bullet to the head will easily do the trick). If you wish to take a break from playing a character, you could always try being an NPC for an event (See the Character Creation, Skills, and Experience section below for more information on how to NPC for an event). More information on creating a new character after one has died can be found in the Death and New Characters section. Someday this rule about having a single character may change, but as of now we like it when people invest all of their time into one character. It often makes the world feel more alive.', '2018-06-11', '1.2', 3),
(5, 'The Basics', 'Getting Started', 'Character Creation, Skills, and Experience', 'The Skill Tree is a branching chart used to keep track of what abilities your character currently possesses. Before planning out your skills, make sure that the version of the Skill Tree you’re using is the same version as the rulebook. To learn new skills, you’ll have to spend your hard-earned experience points. Each event you attend will award you 1 experience. You’ll earn 2 experience, if you decide not to play your character and instead play as a zombie or an NPC [Non-Player Character] for the duration of an event (These arrangements should be made at least three days before the event with one of the Game Runners as it will give us more time to plan a meaningful role for you to play (Keep in mind that if we have too many NPC characters or Zombies, your request may be denied).\r\n\r\nNot accounting for any bonus experience earned though backstory or other special awards, each new character begins with 3 experience and one free skill in the “1 Experience” tier of the Skill Tree at no cost.\r\n\r\nDiversification is usually key in this game; if you put all of your eggs in one basket, you might end up dead. Sometimes it’s better to wait on buying a new tier 3 or 4 skill in favor of getting yourself another tier 1 skill. However, skills in higher tiers can be invaluable in some situations. Use good judgement, it’s kept you alive this long!\r\n\r\nThere are special infection-dependent skills inside the skill tree. If your character’s infection rating reaches 75% or higher, you have the ability to take skills that are normally restricted to zombies. Many of the zombie skills offer powerful abilities, but they come at a cost: Each zombie skill your character takes will cause them to make an infection roll and add the result to their total infection score, the moment that they take the skill. It should be noted that zombie skills don’t require teaching, and instead require the person taking the skill to spend the normal teaching time meditating and “practicing” their new ability. For more information on how to gain skills once your character is created, see the Learning New Skills section.', '2018-06-11', '1.2', 4),
(6, 'The Basics', 'Getting Started', 'Staying In Character', 'We, at the Still Alive Team, are trying to create a post-apocalyptic scenario for everyone to enjoy, an it’s because of this that we have rules about staying in character.\r\n\r\nWhile suspending disbelief can be hard when dealing with some game mechanics, we’re trying to keep the level of immersion as high as reasonably possible.\r\n\r\nPlayers should always be in Character while the game in running unless a Game Runner calls a time out. If you need to come out of character for any reason (such as to talk to a Game Runner or to make an important phone call), please pull one of us (A Game Runner) aside and let us know, then leave the active play area before breaking character. This just means that you should distance yourself from all other players for the duration of your character-break. Following this rule will do wonders for keeping an immersive atmosphere for Still Alive, and we thank you for your compliance.', '2018-06-11', '1.2', 5),
(7, 'The Basics', 'Getting Started', 'Costumes/Outfits and Accessories', 'Any clothing style is allowed for Still Alive, however, close-toed shoes are required. It’s also important to remember that, in the Still Alive Universe, the apocalypse began over 4 years ago, so showing up in ratty or dirty clothing is expected. Few, if any, characters will have access to cleaning appliances so any clothes that were cleaned had to have been cleaned by hand. This means that your character probably won’t show up in clean clothes for most events (Unless there was a very good reason to do so).\r\n\r\nYou may build a specific costume for your character, and you’re encouraged to do so, but it isn’t necessary. As long as you look the part, your outfit won’t be turned down (If you have any off-the-wall ideas about your costume, make sure you contact a Game Runner about it and we’ll approve/disapprove it before the next event).\r\n\r\nAs far as accessories go, you’re open to bring anything you like. Cell Phones are allowed; however, all cell-towers have been either shut-down or quarantined. This means that you can use your phone as a calculator, timekeeper, or note taking device, but you may not call, message, or otherwise contact anyone with it (A Still Alive mobile app is in the works. Using this app while in game is both allowed and encouraged). If you’re using your phone in game, we just ask that there are no disruptions and no distractions, allowing for higher immersion.\r\n\r\nIt should be noted that once your infection rating reaches 25%, and every 25% thereafter (50%, 75%, and 100%), we’ll begin adding some makeup to your character at check in to illustrate how the infection is corrupting your body.', '2018-06-11', '1.2', 6),
(8, 'The Basics', 'Combat', 'General', 'First of all, a disclaimer: Still Alive is an unforgiving game and combat can be costly, especially when dealing with another human. Choose your battles wisely, your character may not come out alive if you don’t.', '2018-06-11', '1.2', 7),
(9, 'The Basics', 'Combat', 'Gun Combat', 'Guns are simultaneously the most useful and most deadly weapons available to you. While the perfect shot can knock a zombie to the ground, a stray bullet could kill your companion.\r\n\r\nGetting shot is no laughing matter. A gunshot to a limb isn’t life-threatening, but it does make that limb CRIPPLED until someone with the Surgeon skill operates on the wound. You can learn more about the CRIPPLED state in either the Glossary of Terms section, or the Wounds and Infection section and you can learn more about treating wounds in the Wounds and Infection section as well. Multiple gunshots to the same limb do no additional damage beyond crippling it.\r\n\r\nGetting shot in the chest is life-threatening, however. A single bullet to the chest puts your character in the HELPLESS state (see the Glossary of Terms section for more information about what this means for your character). After taking a bullet to the chest, a player with the Surgeon skill will have to operate for a large amount of time before the bullet can be removed. If you’re in the HELPLESS state and you take another bullet to the chest, your character dies. Humans can also be TAPPED, just like zombies (see the Glossary of Terms section for more information).\r\n\r\nShooting zombies works just like shooting people. Shoot their limbs to CRIPPLE them and shoot them in the chest to make them HELPLESS. Different from humans, however, zombies will not die unless TAPPED. They also have regenerative powers; if left HELPLESS long enough, their wounds will heal, so TAP them quickly!\r\n\r\nIt’s worth noting that all types of bullets do the same amount of damage; you’re just more likely to feel larger bullet, and accustrike bullets are more accurate than normal bullets.\r\n\r\nThere are, however, special rules about rockets: If a rocket hits you directly, your character takes the brunt of the force and is killed instantly with no hope of recovery. The same goes for if a rocket were to hit a zombie. However, if a rocket hits the ground, instead of hitting someone directly, the explosion causes everyone within 10 feet of where the rocket lands to drop into the HELPLESS state with a chest wound.', '2018-06-11', '1.2', 8),
(10, 'The Basics', 'Combat', 'Melee Combat', 'Melee combat can be tricky in a world where everyone has guns, however, it does have its merits. Although incredibly useful if you’ve run out of bullets, melee weapons are very dangerous to use. In order to swing a melee weapon effectively, you must ensure that your wrist passes behind the “plane” of your body during your back-swing. This ensures that melee attacks cannot be “spammed”. Still Alive is STRICTLY a medium contact LARP (i.e. your hits should cause pain, but they should be hard enough to feel through multiple layers of clothing).\r\n\r\nIt’s important to note that you must have both hands on your weapon in order for your swings to count (Unless you possess the proper dual-wielding skill). The only exception to this rule is with Light and Super Light weapons; you may swing them one-handed as long as your offhand is empty (unless you can dual-wield them of course).\r\n\r\nMelee weapons wound enemies just like guns do, with two differences: first, is that someone with the Doctor is required to heal melee wounds, instead of the surgeon skill; and second, is that one melee attack to the chest will make someone HELPLESS, but two won’t kill them. You can still TAP with a melee weapon, though; you just can’t kill someone without TAPPING them.', '2018-06-11', '1.2', 9),
(11, 'The Basics', 'Combat', 'Fighting Zombies', 'You’ll be fighting zombies much more often than you’ll be fighting humans; that isn’t to say that you won’t come across the occasional hostile survivor or something worse, just that zombies will probably be your number one concern most of the time. Fortunately, fighting them is easy: just take them out before they reach you. If a zombie reaches you before you deter it, it’ll grab onto one of your limbs (signifying that it’s biting you).\r\n\r\nIf you’ve been grabbed do not figh t it . You will be held in place (you’re not allowed to move) unless the zombie that’s “biting” you is removed. There are only two ways to get a zombie that’s “biting” you to let go: 1) someone else either shoots or hits them off of you, or 2) you possess any one of the following skills: Break, Break Away, or Unarmed Break. You cannot shoot or hit a zombie that’s “biting” you (the zombie is thrashing around and the pain is throwing off your accuracy). The limb that the zombie has grabbed onto is considered CRIPPLED and will stay that way after the zombie has let go (unless you use the Break or Break Away skills). While being grabbed, all other standard rules apply: (i.e. if one of your arms is grabbed, you can only use your weapons if you possess the correct dual-wielding skills). If you’ve been grabbed, screaming is always a good option.\r\n\r\nIf you’re being held in place by a zombie and there’s no one around to help you (or if your help runs away), the zombie will begin to slowly lower you to the ground. Once you reach the ground, you’d better scream like crazy because you have 120 seconds before you’re eaten alive and your character is dead. Multiple zombies do not speed up this process. If your character is saved before your 120 seconds are up, all four of your limbs gain the CRIPPLED condition and you’re given a chest wound, putting you in the HELPLESS condition. You’ll have to be “carried” (this can be role-played) back to a doctor for treatment.', '2018-06-11', '1.2', 10),
(12, 'The Basics', 'Wounds and Infection', 'General', 'Wounds come from three different sources: melee weapons, guns, and zombie bites. Melee and gun wounds won’t cause a player to become more infected unless the player comes to see the Doctor or Surgeon without getting their wound wrapped first by someone with the Medic skill. Zombie bites, however, are a different matter. They’re extremely infectious and will increase your infection rating (percentage of how infected you are) just by receiving them; but , coming to the Doctor or Surgeon with an unwrapped zombie wound will cause you to receive triple the normal infection amount.\n\nYour Infection Rating will increase slowly over your character’s lifetime. Despite extensive medical research, there isn’t currently a way to lower your infection rating, so right now the best medicine is prevention.\n\nEach character starts at 0% infection and will gain a small amount each time an infected wound of theirs is treated. This small amount is determined by a dice roll. To start out, every character rolls a 12-sided dice and the result is added to their Infection Rating.\n\nA character can become more resistant to the infection, however. The Infection Resistance skills (1-4) reduce the number of sides on the dice that’s rolled down to 10, 8, 6, and 4 respectively.\n\nWhenever your Infection Rating passes a milestone (25%, 50%, and 75%), during checkout that night, a percentage will be rolled. If the number rolled is less than your current Infection Rating, you character gives in to the infection in their body and they become a zombie. This kills your character. There are also ways to make your body more resistant to this as well: The Will to Live skills increase your changes of survival immensely. Will to Live 1 allows the player to reroll their percentage if they fail the first time. Will to Live 2 is probably one of the best skills in the game. If a player fails both their normal roll AND their Will to Live 1 roll, they can flip a coin. If the result is heads, they survive. If the result is tails, they die. If your character possesses a Gambler’s skill (Gambler’s Luck, Gambler’s Eye, Gambler’s Talent, or Gambler’s Heart) you’re allowed another coin flip for each Gambler’s skill you possess! This means that if you have all 4 Gambler’s skills, you’d get to flip the coin 5 times, and if any of them are heads, you survive!\n\nAfter you surpass 75% infection, a new percentage will be rolled at the end \nof each event! If your infection Rating gets that high, make sure you take the skills necessary to survive!\n\nAlthough there is no current way to reduce the infection’s grasp on you, the potential to develop a pharmaceutical that could do that is very real. Any person with the Advanced Medical Research skill can attempt to research new medicines that could make living at camp a much more survivable task or create already existing pharmaceuticals.\n\nOn the subject of pharmaceuticals, the list of discovered Pharmaceuticals is can be found below:\n    - Adreaniline - Allows the user to ignore all melee and zombie wounds for one full combat scenario. This does not apply to wounds gained from being dragged to the ground by zombies or to wounds gained from bullets or rockets. - Average cost: 20 - Represented by: Orange TicTacs.\n\nYou may take each type of pharmaceutical once per event, and only someone possessing the Pharmaceuticals skill can administer them to players.', '2018-06-11', '1.2', 11),
(13, 'The Basics', 'Downtime', 'General', 'Life at Camp Still Alive isn’t always jam-packed with zombie attacks. Sometimes you’ll have downtime and what you do with it could make all the difference. Sometimes you could be sent off on missions by The Commander, but other times you might just be guarding the camp from possible zombie attacks or enjoying a few hours of peace. If you have any skills in the Tinkerer branch of the skill tree, you could try crafting something (check out the Crafting Section for more information). If you’re at a loss and can’t possibly find something to do, you could always ask around Camp Still Alive is a work in progress, there’s always something you can help with.', '2018-06-11', '1.2', 12),
(14, 'The Basics', 'Death and New Characters', 'General', 'When you character inevitably dies, you’ll have to make a new one. Fortunately, not all is lost; upon creation of a new character, you’ll receive 50% of your spent experience and all of your saved experience back, to spend on new skills, plus the normal character starting experience and you’ll always get your free tier 1 skill (You may only receive a maximum amount of experience equal to the total possible amount of experience earned by a living character, based on the total number of events you’ve attended). This way your time investment isn’t totally lost. If your character was particularly popular in Camp Still Alive, special funeral preparations may be made in their honor giving the player special awards (Up to the game-runner’s discretion).', '2018-06-11', '1.2', 13),
(15, 'Crafting', 'Crafting Rules', 'General', 'Crafting objects is a very important skill to have. In order to start crafting you must possess one of the many crafting skills available to you (Check out the Tinkerer skill and any of the other that branch off from it). Once you possess the required skill, you can begin crafting!\r\n\r\nCrafting objects requires a crafting kit or toolbox. Inside must be a wrench and a hammer (Other tools used for role-playing are encouraged). Crafting also requires a flat, sturdy surface to work on (When no table is available, the ground works just fine).\r\n\r\nTo start crafting, you must first let a Game Runner know. Then you’ll need to make sure you have ALL of the required materials in your possession before you begin crafting the object. The object will be awarded to you after the build time is up or after special instructions are completed, whichever comes first. Listed below is a chart that outlines possible craft-able objects, their build times, and which skills are required to create them [See the Specific Object Creation section for more information].\r\n\r\nThere are 6 basic materials that are required for crafting: cloth, wood, metal, stone, machinery parts, and technology parts. Cloth, wood, metal, and stone are scrapped pieces of the material that can be built into whatever you can imagine. Machinery Parts are items such as screws, nails, bolts, tubes, joints, and pulleys. These are used to make low-level tech objects. Technology Parts are things like circuit boards, wiring, magnets, screens, and lasers. These are used to make high-tech objects. Occasionally crafting requires an object that isn’t one of the 6 basic materials. They’re usually self-explanatory. Ask a Game Runner if you have questions.\r\n\r\nIf you have an idea for an item that you’d like to be able to craft but you don’t see it on the crafting list (see Specific Object Creation section), let a Game Runner know. We’ll see if we can get it added to the list by the next update!', '2018-06-11', '1.2', 14),
(16, 'Crafting', 'Object Repair', 'General', 'Object repair requires a crafting kit or toolbox with a hammer and a wrench (Other role-playing tools are encouraged). Sometimes you’ll be able to repair objects to make them useful again. This will be indicated by a card sitting on or near the object. On the card, it will state which level of crafting skill you need, how long it will take, and what materials are required to finish the job. Sometimes repairing objects can be very beneficial to the community as a whole, and sometimes it just leads to an object that you can sell for a large number of bullets (See the Currency and Bartering section).', '2018-06-11', '1.2', 15),
(17, 'Crafting', 'Destroying Objects', 'General', 'From character creation possess the skill necessary to destroy lightly fortified objects (fortification level 1) but it requires a melee weapon (See the Bash skill for more information). In order to damage more fortified objects (fortification levels 2 and 3) you’ll need the skills Wall Smasher and Fortification Eradicator, respectively. On any object that you can destroy, you’ll find a card that says the fortification level and amount of time it will take to break through. (A game runner will keep track of how much time has passed, so make sure you let one know when you’d like to begin breaking it). Sometimes objects are large enough that breaking them down with two or more people reduces the amount of time it takes to destroy them. If this is the case, it will be stated on the card. Each person involved in the break must possess the necessary skills to break it, in order for them to count as helping.', '2018-06-11', '1.2', 16),
(18, 'Crafting', 'Scrapping Objects', 'General', 'Object scrapping requires a crafting kit or toolbox with a hammer and a wrench (Other roleplaying tools are encouraged). Scrapping an object also requires a flat, study surface to work on. If no table is available, the ground works just fine. Scrapping an object is the act of taking apart an object that that’s listed on the Specific Object Creation chart in order to gain some of its component parts back. In order to scrap an object, you’ll need to have the necessary skills required to craft it in the first place. Scrapping the object takes half its build time and yields half of its crafting materials back (rounded up). To start scrapping, you need to let a game runner know so that they can begin timers and gather related information.', '2018-06-11', '1.2', 17),
(20, 'Currency and Bartering', 'Basics', 'General', 'The primary currency in the Still Alive Camp is bullets. They’re the only thing that has really retained its value since the start of the apocalypse. While in the camp, NPC traders may come and go, selling or buying various wares. You’re free to trade with them as you please. Make sure you check in often, because new traders may have rare or limited-time items! While we do allow real money to be used in game to be spent on things such as raffle tickets, flashlights, and food, you will NEVER be able to buy bullets or in-game materials.', '2018-06-11', '1.2', 19),
(21, 'Currency and Bartering', 'Basics', 'Exchange Rates', 'If you’d like to buy basic materials or different types of bullets, the exchange rates are below. The equations work in both directions, so don’t worry about losing bullets when exchanging back and forth (Keep in mind, bartering with other players is allowed, the prices below are just what the normal market value is):\r\n\r\nBULLETS\r\n2 Regular = 1 Accustrike\r\n3 Regular = 1 Megadart\r\n5 Regular = 1 Military Grade\r\n10 Regular = 1 Rocket\r\n\r\nMATERIALS\r\n1 Regular = 1 Cloth\r\n2 Regular = 1 Wood\r\n2 Regular = 1 Mech Part\r\n3 Regular = 1 Metal\r\n3 Regular = 1 Stone\r\n3 Regular = 1 Tech Part\r\n\r\nPHARMACEUTICALS\r\n20 Regular = 1 Adreaniline', '2018-06-11', '1.2', 20),
(22, 'Scavenging', 'Basics', 'General', 'Scavenging is an extremely useful skill to have in your arsenal. Being good at scavenging means that, when you find a pile of junk, you may be able to get something useful out of it. On some piles of junk, you may find small cards that state scavenge time and which skill is required to scavenge it (See Scavenger, Reward Seeker, Treasure Hunter, and Nathan Drake skills). If you meet the prerequisite and spend the time to scavenge the junk, you’ll receive the reward on the card when you bring it back to camp.\r\n\r\nThere’s a subset of the Scavenger skill that allows a person to pick up ammunition off of the ground and recycle it back into usable bullets (See the Ammunition Enthusiast, Ammunition Professional, and Ammunition Expert skills). In order to use these skills, you must have a bag or pouch dedicated solely to Ammunition Recovery because these bullets need to be kept separate. Once you find a safe place, you can begin re-purposing the dead rounds into live ones (a game runner must be present for you to use this ability). You need to spend 1 minute per live round that you will receive back role-playing repacking the bullets. Once you’ve done that, the live rounds are yours to keep and the dead ones go to a game runner. Any remainder bullets will stay in your pouch for later collection. It’s worth noting that bullets of different types do not stack together and are considered in their own pools of 10.', '2018-06-11', '1.2', 21),
(23, 'Knowledge Cards', 'Basics', 'General', 'Sometimes, instead of seeing a destruction or scavenge card, you’ll see a card with KNOWLEDGE written at the top. This card will state a particular skill and a little bit of story. If you possess the mentioned skill, you’ll be able to read the back of the card and reap the rewards. Knowledge Cards give some extremely good rewards in some cases. If you find one and you’re unable to solve it yourself, be careful who you tell about it. You don’t want to lose out on particularly good treasure.', '2018-06-11', '1.2', 22),
(24, 'Learning New Skills', 'Basics', 'General', 'After you choose your initial skills and play a meet or two, you’ll inevitably want to learn to do more skills, but it’s not as easy as simply taking them in the skills tree! In order to learn a new skill, you must spend the experience on it and then train with someone who already has that skill or has the appropriate tier of the Tutor tree (See Tutor, Instructor, Teacher, and Professor skills). For example, let’s say you wanted to learn the skill Doctor. First thing you’d have to do is purchase the skill at check-in. Once you’ve done that, in order to actually use the skill, you’d have to either: find someone who already has the doctor skill and train with them or find someone with the Teacher skill (See Tutor and related skills). The reason you’d have to find someone with the Teacher skill, specifically, is because Doctor is a tier-3 (costs 3 experience) skill; and Teacher is the 3rd tier version of the Tutor skill.\n\nOnce you’ve found someone who can train you, approach a Game Runner and let them know you’d like to begin training. The Game Runner will then give instructions to the players on how to go about their training. Each tier skill requires 10 more minutes of training than the last. (I.e. Tier-1 requires 10 minutes, Tier-2 requires 20 minutes, and so on). Once your training session is complete, your character will be able to use their newly learned skill and possibly even teach others the skill (Side note- if you possess the correct tier of Tutor skill, you’re able to teach yourself new skills, but it takes twice the amount of time).', '2018-06-11', '1.2', 23),
(25, 'Gun Classification', 'Basics', 'General', 'Determining your firearm’s classification is easy! It can be done using the point system below. A notable exception to this rule is the Nerf Rival series – All Rivals are considered Military Grade. (If you’re unsure, ask a game runner).\r\n\r\nCLASSIFICATION STEPS:\r\n\r\n    1) Start with 0 points and add:\r\n        - 3 points if your gun is fully automatic.\r\n        - 3 points if your gun can shoot rockets.\r\n        - 2 points if your gun is semi-automatic\r\n        - 1 point if your gun shoots megadarts.\r\n        - 1 point for EACH clip your gun holds.\r\n        - 1 point if your gun doesn\'t have a clip but holds more than 5 bullets.\r\n\r\nCLASSIFICATION:\r\n0 Points = Light Firearm\r\n1 Point = Medium Firearm\r\n2 Points = Heavy Firearm\r\n3 or More Points = Super Heavy Firearm', '2018-06-11', '1.2', 24),
(26, 'Dictated Terms', 'Basics', 'General', 'Dictated Terms are phrases that must be shouted in order to activate the skill associated with them. A compiled list of those terms and the skills associated with them can be found below:\r\n\r\nBreak - Break, Unarmed Break\r\nBreak Away - Break Away\r\nI Guess This is The End - Mysterious Stranger, Unknown Assailant, and Anonymous Ally\r\nRanged Tap - Ranged Tap\r\nTap - Tap', '2018-06-11', '1.2', 25),
(27, 'Glossary of Terms', 'Basics', 'General', 'CRIPPLED: A condition given to limbs that have wounds on them. This condition can only be removed by players possessing the Doctor or Surgeon skills. Limbs with this condition are allowed basic functions (i.e. arms can carry objects and legs can walk with a limp) but any strenuous movement is impossible (i.e. arms cannot swing weapons or aim firearms and legs cannot run, sprint, or jump). The skill Wounded Warrior allows the user to continue to use their crippled limb like normal (as if it wasn’t crippled) as long as they only have one crippled limb.\r\n\r\nDESTROY: A description found on cards attached to objects that can be damaged. Associated with the skills Bash, Wall Smasher, and Fortification Eradicator. See the Destroying Objects section for more information.\r\n\r\nHELPLESS: A condition given to characters (and zombies) when they take a wound to the chest. Anyone with this condition must fall to the ground and hold their chest (to prevent themselves from bleeding out). Anyone with the Helpless condition can be TAPPED (see the TAP skill). If you possess the helpless condition, your character cannot move unless they’re “carried” (role-play it out) by another character. Wrapping the wound won’t allow the character to move, but it’s still a good idea.\r\n\r\nKNOWLEDGE: A description found on cards attached to objects signifying a skill check is in order. For more information, see the Knowledge Cards section.\r\n\r\nLIGHT (WEAPON): Light is a category of both melee weapons and firearms. The proficiency (See PROFICIENCY) to wield a firearm with the Light classification is given to anyone who joins the Still Alive Camp, while the proficiency to wield Light-classified melee weapons requires the skill Light Melee Weapon Proficiency. Melee weapons classified as Light are 20” or shorter. The weapon must also be approved and classified by a Game Runner before it can be used. This way if the weapon has some sort of imbalance, it can be classified correctly. Firearms classified as Light can be found in the Gun Classification section of this book.\r\n\r\nMEDIUM (WEAPON): Medium is a category of both melee weapons and firearms. The proficiency (See PROFICIENCY) to wield a firearm with the Medium classification requires the skill Medium Firearm Proficiency and to wield Medium-classified melee weapons requires the skill Medium Melee Weapon Proficiency. Melee weapons classified as MEDIUM are 40” or shorter and greater than 20”. The weapon must also be approved and classified by a Game Runner before it can be used. This way if the weapon has some sort of imbalance, it can be classified correctly. Firearms classified as Medium can be found in the Gun Classification section.\r\n\r\nMILITARY GRADE (WEAPON): Military Grade is a category of firearm. The proficiency (See PROFICIENCY) to wield a firearm with the Military Grade classification requires the skill Military Grade Firearm Proficiency. Firearms classified as Military Grade can be found in the Gun Classification section.\r\n\r\nPROFICIENCY: Being proficient with a weapon means you have the ability to use it. For melee weapons this means you can wield and attack with the weapon using both hands. If you don’t possess the skill to dual-wield and you swing a weapon with one hand, the attack will be null and void. Both hands must be in contact with the weapon at all times if you’re using it. You may, however, carry it with one hand as long as you use two hands when you decide to fight with it. The same idea applies to firearms. If you only have proficiency with the firearm but do not possess the skill to dual wield that classification of firearm, then you MUST fire it with both hands. If you do not fire it with both hands, your gun misfires and you lose the bullet. This rule is very important to the balance of the game and thus will be enforced heavily. Proficiency with a firearm allows you to load, aim, and fire any firearm within that classification. This means that if you aren’t proficient with a classification of firearm, you can’t help someone else with theirs (except for simply giving it to them).\r\n\r\nSCAVENGE: A description found on cards signifying that you could possibly scrap the object for parts. See the Scavenging section for more information.\r\n\r\nSUPER HEAVY (WEAPON): Super Heavy is a category of firearm. The proficiency (See PROFICIENCY) to wield a firearm with the Super Heavy classification requires the skill Super Heavy Firearm Proficiency. Firearms classified as Super Heavy can be found in the Gun Classification section of this book.\r\n\r\nSUPER LIGHT (WEAPON): Super Light is a category of melee weapons. The proficiency (See PROFICIENCY) to wield a melee with the Super Light classification is granted to every player on creation. Melee weapons classified as Super Light must be coreless weapons (they need to be safe to be thrown or stabbed into someone). The weapon must also be approved and classified by a Game Runner before it can be used. This way if the weapon has some sort of imbalance, it can be classified correctly. Super Light weapons are also the only\r\n weapons allowed to be used for the Break and Break Away skills (although using them causes the weapon to break).', '2018-06-11', '1.2', 26);

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
(35, 14, 15, NULL, 'Character Died', 'This character died due to an unfortunate tapping. He was killed by friendly fire during a firefight with a rival camp.', '2017-07-25'),
(71, 3, NULL, NULL, 'she missclicked a skill', ':(', '2018-05-19'),
(72, 50, NULL, NULL, 'Player Created', 'On this date, the player&#39;s profile was created.', '2018-05-19'),
(73, 51, NULL, NULL, 'Player Created', 'On this date, the player&#39;s profile was created.', '2018-05-19'),
(74, 52, NULL, NULL, 'Player Created', 'On this date, the player&#39;s profile was created.', '2018-05-19'),
(75, 53, NULL, NULL, 'Player Created', 'On this date, the player&#39;s profile was created.', '2018-05-19'),
(76, 52, 32, NULL, 'Character Created', 'The character was created on this date', '2018-05-19'),
(77, 53, 33, NULL, 'Character Created', 'The character was created on this date', '2018-05-19'),
(81, 56, NULL, NULL, 'Player Created', 'On this date, the player&#39;s profile was created.', '2018-05-22'),
(82, 56, 35, NULL, 'Character Created', 'The character was created on this date', '2018-05-22'),
(83, 57, NULL, NULL, 'Player Created', 'On this date, the player&#39;s profile was created.', '2018-05-23'),
(84, 58, NULL, NULL, 'Player Created', 'On this date, the player&#39;s profile was created.', '2018-05-31'),
(85, 10, 36, NULL, 'Character Created', 'The character was created on this date', '2018-06-02'),
(86, 9, NULL, NULL, 'added xp', 'just cuz', '2018-06-02'),
(87, 11, NULL, NULL, 'raffle win', 'she won the raffle', '2018-06-03'),
(88, 6, NULL, NULL, 'played as moderator', 'checked in as npc, but moderators only get 1 xp.', '2018-06-03'),
(89, 56, NULL, NULL, 'Helping with extra duties', 'Thanks', '2018-06-03'),
(90, 59, NULL, NULL, 'Player Created', 'On this date, the player&#39;s profile was created.', '2018-06-05'),
(92, 59, 37, NULL, 'Character Created', 'The character was created on this date', '2018-06-05'),
(93, 6, 38, NULL, 'Character Created', 'The character was created on this date', '2018-06-06'),
(94, 6, NULL, NULL, 'spent xp but didnt subtract', 'yeah', '2018-06-07'),
(95, 60, NULL, NULL, 'Player Created', 'On this date, the player&#39;s profile was created.', '2018-06-08'),
(105, 64, NULL, NULL, 'Player Created', 'On this date, the player&#39;s profile was created.', '2018-06-11'),
(106, 64, 39, NULL, 'Character Created', 'The character was created on this date', '2018-06-11'),
(107, 56, NULL, NULL, 'Short June Event', 'Short June Event. Chose xp over $5 off.', '2018-06-14'),
(108, 11, NULL, NULL, 'Short June Event', 'Short June Event. Chose xp over $5 off.', '2018-06-14'),
(109, 7, NULL, NULL, 'Short June Event', 'Short June Event. Chose xp over $5 off.', '2018-06-14'),
(110, 12, NULL, NULL, 'Short June Event', 'Short June Event. Chose xp over $5 off.', '2018-06-14'),
(111, 13, NULL, NULL, 'Short June Event', 'Short June Event. Chose xp over $5 off.', '2018-06-14'),
(112, 65, NULL, NULL, 'Player Created', 'On this date, the player&#39;s profile was created.', '2018-06-15'),
(122, 9, NULL, NULL, 'Just an updater', 'jf', '2018-06-16'),
(123, 13, NULL, NULL, 'Incorrect xp', 'He had too much xp. -3', '2018-06-16'),
(124, 75, NULL, NULL, 'Player Created', 'On this date, the player&#39;s profile was created.', '2018-06-16'),
(125, 75, 40, NULL, 'Character Created', 'The character was created on this date', '2018-06-16'),
(126, 3, NULL, NULL, 'Short June Event', 'Chose xp over $5 off.', '2018-06-22'),
(127, 7, NULL, NULL, 'Won MVP 2017', 'Congratulations to Jeff for his excellent work.', '2018-06-22'),
(140, 88, NULL, NULL, 'Player Created', 'On this date, the player&#39;s profile was created.', '2018-07-01'),
(141, 88, 41, NULL, 'Character Created', 'The character was created on this date', '2018-07-01'),
(142, NULL, NULL, NULL, 'Create Account Login', 'The create account password was sucessfully typed in.', '2018-07-08'),
(143, NULL, NULL, NULL, 'Create Account Login', 'The create account password was sucessfully typed in.', '2018-07-08');

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
(6, 13, 'Blacklight', 'A Blacklight Flashlight purchased from the in-game shop.', '2017-06-27'),
(7, 9, 'A large sack of poop', 'It smells', '2018-06-15'),
(8, 10, 'Bandolier', 'A bandolier for holding regular bullets.', '2018-06-28');

-- --------------------------------------------------------

--
-- Table structure for table `Materials`
--

CREATE TABLE `Materials` (
  `materialID` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Materials`
--

INSERT INTO `Materials` (`materialID`, `name`, `description`) VALUES
(1, 'Blacklight Flashlight', 'A blacklight flashlight owned by a player (not rented from Still Alive)'),
(2, 'Firearm (Any)', 'A firearm of any size category owned by a player (not rented from Still Alive).'),
(3, 'Light Firearm', 'A light firearm owned by a player (not rented from Still Alive).'),
(4, 'Medium Firearm', 'A medium firearm owned by a player (not rented from Still Alive).'),
(5, 'Heavy Firearm', 'A heavy firearm owned by a player (not rented from Still Alive).'),
(6, 'Super Heavy Firearm', 'A super heavy firearm owned by a player (not rented from Still Alive).'),
(7, 'Military Grade Firearm', 'A military grade firearm owned by a player (not rented from Still Alive).'),
(8, 'Super Light Melee Weapon', 'A super light melee weapon owned by a player (not rented from Still Alive).'),
(9, 'Light Melee Weapon', 'A light melee weapon owned by a player (not rented from Still Alive).'),
(10, 'Medium Melee Weapon', 'A medium melee weapon owned by a player (not rented from Still Alive).'),
(11, 'Heavy Melee Weapon', 'A heavy melee weapon owned by a player (not rented from Still Alive).'),
(12, 'Grenade', 'An approved Nerf Grenade owned by a player (not rented from Still Alive).'),
(13, 'Radio (Walkie Talkie)', 'A walkie talkie owned by a player (not rented from Still Alive).'),
(14, 'Military Grade Ammunition', 'Nerf Rival (or compatible) round bullets that are attached to a character.'),
(15, 'Flat Surface', 'A hard, flat surface (such as a table) owned by a player (not rented or borrowed from Still Alive). The surface may be portable, but must be large enough to do basic craftsmanship on.');

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
(3, 'bnovy', 'Brianna Novy', '2017-05-22', 4, 5, 0, 5, 0, '2018-06-02', 0),
(4, 'dglesne', 'Daniel Glesne', '2017-05-30', 4, 1, 0, 1, 0, '2017-05-30', 1),
(5, 'enovy', 'Ethan Novy', '2017-05-01', 12, 4, 0, 4, 0, '2018-05-19', 0),
(6, 'jbeardsley', 'Jacob Beardsley', '2017-05-30', 1, 5, 2, 3, 0, '2018-06-02', 0),
(7, 'jenglert', 'Jeff Englert', '2017-05-18', 3, 4, 1, 3, 0, '2018-06-02', 0),
(8, 'knovy', 'Kevin Novy', '2017-05-19', 6, 5, 0, 5, 0, '2018-06-02', 0),
(9, 'rcraker', 'Rydge Craker', '2017-04-30', 16, 6, 0, 6, 0, '2018-06-02', 0),
(10, 'rlane', 'Ryan Lane', '2017-07-18', 0, 2, 1, 1, 0, '2018-05-19', 0),
(11, 'shartzell', 'Sarah Hartzell', '2017-05-30', 4, 4, 1, 3, 0, '2018-06-03', 0),
(12, 'sgard', 'Seth Gard', '2017-06-27', 2, 4, 0, 4, 0, '2018-06-02', 0),
(13, 'tbollig', 'Tim Bolig', '2017-07-25', 6, 3, 3, 0, 0, '2018-06-02', 0),
(14, 'tparce', 'Tyler Parce', '2017-05-22', 7, 3, 0, 3, 0, '2017-07-25', 0),
(50, 'szautke', 'Sarah Zautke', '2018-05-19', 9, 0, 0, 0, 0, '2018-05-19', 0),
(51, 'srose', 'Sheila Rose', '2018-05-19', 1, 1, 1, 0, 0, '2018-05-19', 0),
(52, 'jbeder', 'Jared Beder', '2018-05-19', 5, 1, 1, 0, 0, '2018-05-19', 1),
(53, 'mlane', 'Matt Lane', '2018-05-19', 5, 1, 1, 0, 0, '2018-05-19', 1),
(56, 'lfriedl', 'Luke Friedl', '2018-05-22', 0, 1, 1, 0, 0, '2018-06-02', 0),
(57, 'dschluter', 'Dale Schluter', '2018-05-23', 0, 0, 0, 0, 0, NULL, 0),
(58, 'gcedarblade', 'Greg Cedarblade ', '2018-05-31', 0, 0, 0, 0, 0, NULL, 0),
(59, 'jthompson', 'John Thompson', '2018-06-05', 3, 0, 0, 0, 0, NULL, 0),
(60, 'gsmalley', 'Gavin Smalley', '2018-06-08', 0, 0, 0, 0, 0, NULL, 0),
(64, 'jtest', 'Jonny Test', '2018-06-11', 3, 3, 3, 0, 0, '2018-06-11', 0),
(65, 'ckantner', 'Colin Kantner ', '2018-06-15', 0, 0, 0, 0, 0, NULL, 0),
(75, 'nknight', 'Nik knight', '2018-06-16', 4, 0, 0, 0, 0, NULL, 0),
(88, 'lstorm1', 'Logan Storm', '2018-07-01', 3, 0, 0, 0, 0, NULL, 1);

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
('root', '[{\"db\":\"StillAlive\",\"table\":\"CraftableObjects\"},{\"db\":\"StillAlive\",\"table\":\"CraftableObjectMaterials\"},{\"db\":\"StillAlive\",\"table\":\"CraftableObjectRequiredSkills\"},{\"db\":\"StillAlive\",\"table\":\"Materials\"},{\"db\":\"StillAlive\",\"table\":\"Skills\"},{\"db\":\"StillAlive\",\"table\":\"SkillCategories\"},{\"db\":\"StillAlive\",\"table\":\"CraftableObjectsAsMaterials\"},{\"db\":\"StillAlive\",\"table\":\"Characters\"},{\"db\":\"StillAlive\",\"table\":\"Players\"},{\"db\":\"StillAlive\",\"table\":\"EventAttendees\"}]'),
('stillaliveuseraccount', '[{\"db\":\"StillAlive\",\"table\":\"HistoricalEvents\"},{\"db\":\"StillAlive\",\"table\":\"HandbookEntry\"},{\"db\":\"StillAlive\",\"table\":\"SkillPrerequisites\"},{\"db\":\"StillAlive\",\"table\":\"Skills\"},{\"db\":\"StillAlive\",\"table\":\"Characters\"},{\"db\":\"StillAlive\",\"table\":\"Players\"},{\"db\":\"StillAlive\",\"table\":\"CharacterSkills\"},{\"db\":\"StillAlive\",\"table\":\"Tnaptyg\"},{\"db\":\"StillAlive\",\"table\":\"Awards\"},{\"db\":\"StillAlive\",\"table\":\"AwardWinners\"}]');

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

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('stillaliveuseraccount', 'StillAlive', 'CharacterSkills', '{\"sorted_col\":\"`characterID`  DESC\"}', '2018-07-08 19:29:25'),
('stillaliveuseraccount', 'StillAlive', 'HandbookEntry', '{\"sorted_col\":\"`HandbookEntry`.`handbookID` ASC\"}', '2018-07-09 00:57:42'),
('stillaliveuseraccount', 'StillAlive', 'HistoricalEvents', '{\"sorted_col\":\"`HistoricalEvents`.`date`  DESC\"}', '2018-07-08 21:25:04'),
('stillaliveuseraccount', 'StillAlive', 'Players', '{\"sorted_col\":\"`playerID`  DESC\"}', '2018-07-07 23:13:10'),
('stillaliveuseraccount', 'StillAlive', 'Tnaptyg', '{\"sorted_col\":\"`Tnaptyg`.`playerID`  DESC\"}', '2018-06-29 12:10:13');

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

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-05-17 01:30:12', '{\"collation_connection\":\"utf8mb4_unicode_ci\"}');

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
(55, 46),
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
(43, 2, 2, 'Interrogator', 'An upgrade to the Investigator skill. At check in you will be given one piece of TRUE information that may or may\nnot be relevant to the current situation', 'You have people on the inside.', 0, 6),
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
(83, 1, 3, 'Tough Skin', 'This skill lets you ignore one non-bullet wound per event. A set of blue beads is given to you at check in and they are removed when you take a wound, preventing you from gaining the CRIPPLED condition.', 'You\'re probably part ogre.', 0, 5),
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
(3, 3, ' iMO/LfADCuGQ/pf2NYSYA=='),
(4, 4, 'GhxriEf5Xwb6NzDOYiDZkg=='),
(5, 5, 'Neu p28wBsCG/Xz1Gc1x A=='),
(6, 6, 'VJ rVcMqRTumDivF3lscKA=='),
(7, 7, 'vUsN45ypc/CllA kf3PvjA=='),
(8, 8, 'OehnYCipSyTnprDpBV68ZA=='),
(9, 9, 'B7JbClEcNXMQ2hAMO4t7gA=='),
(10, 10, '401S6p Kr23RkVqKG7yPHg=='),
(11, 11, '8Mx7Q1 SLUYuFQ4tz88KRg=='),
(12, 12, '5rvl0LFxb7aIf0yV/w2wXw=='),
(13, 13, '18TpctXx7xHtPOlG04SifQ=='),
(14, 14, 'GhxriEf5Xwb6NzDOYiDZkg=='),
(22, 50, 'WHiYU1ms7Ba9Tzm0fTs4FA=='),
(23, 51, 'y6bOe1Sq4nXreLI5/mVCFQ=='),
(24, 52, 'pFHR8o11L/mABo q8TJyLg=='),
(25, 53, 'SFTTLZDH0O9cKy6pWeVPoA=='),
(28, 56, 'n9DYY/bYsgW qqd4404WOQ=='),
(29, 57, '5hTgOyaJ960DTVQpdmmrNA=='),
(30, 58, '6ZnUIEYpPKS9YMc/tDILLg=='),
(31, 59, 'QtSbiFBg0wEJ8iCvAZkZaw=='),
(32, 60, 'WGRWxUICVgJtaYPsggf oQ=='),
(42, 64, 'rCsNEdG2CHsnoZuD2GiX0w=='),
(43, 65, 'ij/lIxv fd4Bm9qFL 5xJw=='),
(53, 75, '0ZJGlY81X8rg31hcibe Jw=='),
(66, 88, 'Tb9XR6Dt2JbNjyDXtjQqIA==');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Awards`
--
ALTER TABLE `Awards`
  ADD PRIMARY KEY (`awardID`);

--
-- Indexes for table `AwardWinners`
--
ALTER TABLE `AwardWinners`
  ADD PRIMARY KEY (`eventID`,`playerID`,`awardID`),
  ADD KEY `aidinaw` (`awardID`),
  ADD KEY `pidinaw` (`playerID`);

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
-- Indexes for table `CraftableObjectMaterials`
--
ALTER TABLE `CraftableObjectMaterials`
  ADD PRIMARY KEY (`objectID`,`materialID`),
  ADD KEY `mfdmamfdsa` (`materialID`);

--
-- Indexes for table `CraftableObjectRequiredSkills`
--
ALTER TABLE `CraftableObjectRequiredSkills`
  ADD PRIMARY KEY (`objectID`,`skillID`),
  ADD KEY `skidinojfd` (`skillID`);

--
-- Indexes for table `CraftableObjects`
--
ALTER TABLE `CraftableObjects`
  ADD PRIMARY KEY (`objectID`);

--
-- Indexes for table `CraftableObjectsAsMaterials`
--
ALTER TABLE `CraftableObjectsAsMaterials`
  ADD PRIMARY KEY (`objectToBeCrafted`,`objectMaterial`),
  ADD KEY `ominobject` (`objectMaterial`);

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
-- Indexes for table `HandbookEntry`
--
ALTER TABLE `HandbookEntry`
  ADD PRIMARY KEY (`handbookID`);

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
-- Indexes for table `Materials`
--
ALTER TABLE `Materials`
  ADD PRIMARY KEY (`materialID`);

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
-- AUTO_INCREMENT for table `Awards`
--
ALTER TABLE `Awards`
  MODIFY `awardID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Characters`
--
ALTER TABLE `Characters`
  MODIFY `characterID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `CraftableObjects`
--
ALTER TABLE `CraftableObjects`
  MODIFY `objectID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `Events`
--
ALTER TABLE `Events`
  MODIFY `eventID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `HandbookEntry`
--
ALTER TABLE `HandbookEntry`
  MODIFY `handbookID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `HistoricalEvents`
--
ALTER TABLE `HistoricalEvents`
  MODIFY `historyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT for table `Items`
--
ALTER TABLE `Items`
  MODIFY `itemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Materials`
--
ALTER TABLE `Materials`
  MODIFY `materialID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `Players`
--
ALTER TABLE `Players`
  MODIFY `playerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
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
  MODIFY `pID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `AwardWinners`
--
ALTER TABLE `AwardWinners`
  ADD CONSTRAINT `aidinaw` FOREIGN KEY (`awardID`) REFERENCES `Awards` (`awardID`),
  ADD CONSTRAINT `eidinaw` FOREIGN KEY (`eventID`) REFERENCES `Events` (`eventID`),
  ADD CONSTRAINT `pidinaw` FOREIGN KEY (`playerID`) REFERENCES `Players` (`playerID`);

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
-- Constraints for table `CraftableObjectMaterials`
--
ALTER TABLE `CraftableObjectMaterials`
  ADD CONSTRAINT `adkfjfkjdfd` FOREIGN KEY (`objectID`) REFERENCES `CraftableObjects` (`objectID`),
  ADD CONSTRAINT `mfdmamfdsa` FOREIGN KEY (`materialID`) REFERENCES `Materials` (`materialID`);

--
-- Constraints for table `CraftableObjectRequiredSkills`
--
ALTER TABLE `CraftableObjectRequiredSkills`
  ADD CONSTRAINT `oidinnojfds` FOREIGN KEY (`objectID`) REFERENCES `CraftableObjects` (`objectID`),
  ADD CONSTRAINT `skidinojfd` FOREIGN KEY (`skillID`) REFERENCES `Skills` (`skillID`);

--
-- Constraints for table `CraftableObjectsAsMaterials`
--
ALTER TABLE `CraftableObjectsAsMaterials`
  ADD CONSTRAINT `ominobject` FOREIGN KEY (`objectMaterial`) REFERENCES `CraftableObjects` (`objectID`),
  ADD CONSTRAINT `otbcinobject` FOREIGN KEY (`objectToBeCrafted`) REFERENCES `CraftableObjects` (`objectID`);

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
