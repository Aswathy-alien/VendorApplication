/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DELETE FROM `product_category`;
INSERT INTO `product_category` (`id`, `category_name`, `category_description`) VALUES
	(2, 'Process Automation', 'Build applications and workflows rapidly, with a low-code automation platform, utilising AI.'),
	(3, 'Enterprise Architecture', 'Enterprise architecture management tool that provides functionalities and methods for enterprise analysis, design, planning, and implementation. The platform supports alignment and improvement of dependencies between business and IT as well as'),
	(4, 'Business Process Management', 'Business Process Management (BPM) tool, used for documentation, analysis, and optimization of business processes. It enables the visualization of process flows and standard operating procedures (SOPs), provides visibility into how they operate, and help'),
	(5, 'Governance', 'Governance, risk, control and compliance suite.'),
	(329, 'Alternative investments', 'Description of alternative investments'),
	(330, 'Analytics', 'Description of analytics'),
	(331, 'Audit', 'Description of audit'),
	(332, 'Automation', 'Description of automation'),
	(333, 'Back Office', 'Description of back office'),
	(334, 'Business Impact Sim.', 'Description of business impact simulation'),
	(335, 'Business Management', 'Description of business management'),
	(336, 'Capital Raising', 'Description of capital raising'),
	(337, 'Cash Management', 'Description of cash management'),
	(338, 'Compliance', 'Description of compliance'),
	(339, 'Convert spreadsheets API', 'Description of converting spreadsheets into APIs'),
	(340, 'Data Access', 'Description of data access'),
	(341, 'Data Aggregation', 'Description of data aggregation'),
	(342, 'Data Analytics', 'Description of data analytics'),
	(343, 'Data Distribution', 'Description of data distribution'),
	(344, 'Data Management', 'Description of data management'),
	(345, 'Data Mastering', 'Description of data mastering'),
	(346, 'Data Migration', 'Description of data migration'),
	(347, 'Data Preparation', 'Description of data preparation'),
	(348, 'Data Quality', 'Description of data quality'),
	(349, 'Data Sourcing', 'Description of data sourcing'),
	(350, 'Data Storage', 'Description of data storage'),
	(351, 'Financial Record Keeping', 'Description of financial record keeping'),
	(352, 'Fund Administration', 'Description of fund administration'),
	(353, 'Generative AI', 'Description of generative AI'),
	(354, 'Ideation', 'Description of ideation'),
	(355, 'Identify and Validate Data', 'Description of identifying and validating data'),
	(356, 'Integration', 'Description of integration'),
	(357, 'Investment Management', 'Description of investment management'),
	(358, 'Machine Learning', 'Description of machine learning'),
	(359, 'NLP', 'Description of natural language processing (NLP)'),
	(360, 'Performance Attribution', 'Description of performance attribution'),
	(361, 'Portfolio Management', 'Description of portfolio management'),
	(362, 'Portfolio Reporting', 'Description of portfolio reporting'),
	(363, 'Regulation', 'Description of regulation'),
	(364, 'Regulatory Reporting', 'Description of regulatory reporting'),
	(365, 'Reconciliation', 'Description of reconciliation'),
	(366, 'Risk', 'Description of risk'),
	(367, 'Risk Management', 'Description of risk management'),
	(368, 'Security', 'Description of security'),
	(369, 'Sourcing & Execution', 'Description of sourcing & execution'),
	(370, 'Transaction Reporting', 'Description of transaction reporting'),
	(371, 'Trader', 'Description of trader'),
	(372, 'User-defined Tech', 'Description of user-defined technologies'),
	(373, 'Wealth Management', 'Desc');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
