INSERT INTO
    `products` (
        `id`,
        `name`,
        `type`,
        `description`,
        `cloud_type`,
        `business_areas`,
        `modules`,
        `financial_services_client_types`,
        `additional_information`,
        `is_document_attached`,
        `company_id`,
        `logo`
    )
VALUES
    (
        1,
        'ADDEPAR',
        'Wealth Management',
        'An American wealth management platform for registered investment advisors, specializing in data aggregation, analytics, and portfolio reporting.',
        'Cloud Based',
        '"Data Aggregation, Analytics, Portfolio Reporting"',
        '"Addepar"',
        '"Wealth Management, Family Offices, Broker Dealers"',
        'Addepar software facilitates both visualizing an investment portfolio\'s exposures at the individual asset class and also tabulating the portfolio\'s total value according to real time value of the assets under management., In September 2016, Salesforce.com announced their partnership with Addepar for Salesforce\'s Wave Financial Services Cloud for financial advisers, making it easier to see across asset classes and produce a single visual for their clients.',
        0,
        1,
        'media/product_logos/Addepar-Logo-Stacked-Blk_1.png'
    ),
    (
        2,
        'ADOIT',
        'Enterprise Architecture',
        'ADOIT is an enterprise architecture management tool that provides functionalities and methods for enterprise analysis, design, planning, and implementation. The platform supports alignment and improvement of dependencies between business and IT as well as',
        'Cloud Enabled',
        '"Enterprise Architecture"',
        '"Enterprise Architecture Suite"',
        'NA',
        'Gartner Magic Quadrant Leader in EA 2022, ADOIT is based on various international standards such as TOGAF, ArchiMate, ITIL, and COBIT. It is ArchiMate 3.1 and TOGAF-9 certified., ADOIT is used for the optimization of enterprise architectures. It covers a wide application field from the establishment of EA know-how, the definition and implementation of architectural principles, the establishment of business capability management, installation of compliance and IT risk management, to the integration of process management initiatives.',
        0,
        2,
        'media/product_logos/adoit.png'
    ),
    (
        3,
        'ADONIS',
        'Business Process Management',
        'a Business Process Management (BPM) tool, used for documentation, analysis, and optimization of business processes. It enables the visualization of process flows and standard operating procedures (SOPs), provides visibility into how they operate, and help',
        'Cloud Enabled',
        '"Process Automation, Business Process Management, Ideation, Audit, Compliance, Integration,"',
        '"Business Process Management"',
        '"Asset Management, Investment Banks, "',
        'ADONIS is designed as a golden source of organizations\' process data, and thus supports the end-to-end management and improvement of their business processes.[1] It is an HTML 5 web-based application, fully BPMN 2.0 compliant, and conformant with various other international standards and best practices such as BPMM, DMN and ISO 9000.',
        0,
        2,
        'media/product_logos/adonis.png'
    ),
    (
        4,
        'ADOGRC',
        'Governance',
        'Governance, risk, control and compliance suite.',
        'Cloud Enabled',
        '"Risk Management, Compliance, Security, Regulation, Audit"',
        '"Risk Management, Compliance & Policy Management, Information Security Management System, General Data Protection Regulation, Internal Revision & Audit Management"',
        '"Asset Management, Investment Banks, "',
        'N/A',
        0,
        2,
        'media/product_logos/download.png'
    ),
    (
        5,
        'Allvue',
        'Alternative investment',
        'Allvue Systems is a leading provider of investment management solutions for fund managers, investors, and administrators in the alternative investments industry',
        'Cloud Based',
        '"Capital Raising, Sourcing & Execution, Investment Management, Back Office, Investment Management"',
        '"Pipeline Management, Research Management, Trade Order Management, Compliance, Portfolio Management, Fund Performance & Portfolio Monitoring, Performance Attribution, Fund Finance, Business Intelligence, Fund Accounting, Investment Accounting, Corporate Accounting, Investor Portal, Asset Servicing, Equity Essentials, Private Equity Essentials, Venture Capital Essentials, "',
        '"Alternative Asset Managers, Fund Administrators, Retail Banking, Insurance, Family Office"',
        'N/A',
        0,
        3,
        'media/product_logos/iMUgZRFrSodkdbmRzdycXVKXmBI1625671401859_200x200.png'
    ),
    (
        6,
        'Invisage',
        'Data Transformation, Alternative Investments',
        'Enhance and transform raw data into ready-to-use products for investment and corporate users.  Uses machine learning to test various use cases, generate signals and verify the insights of the data.  Built as a sales enablement platform, AltHub supports al',
        '\'\'',
        '"Identify and validate data, Data preparation, Machine learning for data verification and signal identification, "',
        '"Invisage Platform"',
        '"Alternative Asset Managers"',
        'N/A',
        0,
        4,
        'media/product_logos/2d47403212c71b9da7ed62d3e0d7af67.webp'
    ),
    (
        7,
        'Alveo',
        'Data Management',
        'Cloud-based market data integration, reference data, analytics and Data-as-a-Service solutions for financial services.',
        'Cloud Native',
        '"Data Sourcing, Data Mastering, Data Quality, Data Access, Data Distribution, Data Analytics"',
        '"Market Data in the cloud, Data Management & Analytics, Risk Data Management, Reference Data Management, ESG Data Management, Independent Valuation, Regulatory Repoting"',
        '"Retail Banking, Asset Managers, Insurance Companies, Central Banks, Clearing Houses"',
        'N/A',
        0,
        5,
        'media/product_logos/tagline-for-website.png'
    ),
    (
        8,
        'Appian',
        'Process Automation',
        'Build applications and workflows rapidly, with a low-code automation platform, utilising AI.',
        'Cloud Native',
        '"Process Automation, "',
        '"Appian Platform"',
        '"Wealth Management, Asset Management, Retail Banking, Investment Banking"',
        'low-code application development, digital process automation (DPA), intelligent business process management systems (iBPMS), and dynamic case management (DCM).',
        0,
        6,
        'media/product_logos/download_1.png'
    ),
    (
        9,
        'CloudAttribution',
        'Performance',
        'Cloud-based performance attribution reporting system for fixed income and multi-asset portfolios.',
        'Cloud Native',
        '"Performance attribution"',
        '"Reporting and Analysis tool (Report Hub), Passive Investment Attribution tool"',
        '"Asset Management, "',
        'Strategy tagging, Transaction-based tagging, PDF reporting, Excel Reporting, APIs to pull data',
        0,
        7,
        'media/product_logos/cloudattribution_logo.jpg'
    ),
    (
        10,
        'SPARK',
        'Data Management, Data Transformation',
        'Spark is a cloud-based logic engine that converts complex business logic from Excel models into APIs.',
        'Cloud Native',
        '"Convert spreadsheets into ready-to-integrate APIs, Centralize, secure and audit business logic, Automate complex modeling, testing and business impact simulation"',
        '"SPARK"',
        '"Insurance, Retail Banking, Asset Management"',
        'Can separate data and logic, either maintain ss as input or take data from another source and then compute. Can be desk top based in ss or into another system (i.e. data from snowflake, transformed by coherent, and into PowerBI) - any changes made in spark will also feed into the excel sheet (every upload ss is stored, auditable, reviewed  -can also go back and restore a previous version), Shell is an exact replica of the excel ss - but in SPARK, multiple users on the same version of SS, permissions based access. Can then be confirmed to pull data directly from source and not ss,  data can then be published out to a warehouse/ powerbi/ another system (can also track what source was entered into that destination - either straight through or maker/checker process) 3) can create a form sheet with inputs from ss and logic and then replace ss altogether, Once in the system can track how many times a ss is accessed and used',
        0,
        8,
        'media/product_logos/64e87f38ea1140fb469b41a1_Coherent_Spark_video_-_Row_3_EA6WmFx.png'
    ),
    (
        11,
        'Du.Co',
        'Data Management',
        'No code data preparation, consolidation, reconciliation and distribution',
        'Cloud Native',
        '"Cash Management, Transaction Reporting, Regulatory Reporting"',
        '"Duco Platform, Data Prep, Data Reconciliaiton"',
        '"Investment Banking, Insurance, FinTech, "',
        'N/A',
        0,
        9,
        'media/product_logos/Duco_Logo_Stacked_blackbackground_Linkedin_wIU12i0.png'
    ),
    (
        12,
        'Dynamo',
        'Alternative Investment',
        'Alternative investments investment management platform for both GPs and LPs.',
        'Cloud Native',
        '"Alternative investments"',
        '"CRM & deal management, Investor relations, Fundraising & Marketing, Portfolio Monitoring & Valuation, Fund Accounting, Research Management, Portfolio Management, Data Automation, HoldingsInsight, Investor Portal, ESG"',
        '"Alternative Asset Managers, Asset Managers, Service Providers"',
        'N/A',
        1,
        10,
        'media/product_logos/DYNAMO.png'
    ),
    (
        13,
        'EZOPS ARO',
        'Data Transformation',
        'Low code data transformation, reconciliations, predictive analytics, anomaly detection, workflow management, IPA Bots, and reporting.',
        'Cloud Native',
        '"Data Migration, Automation, User-defined Technologies, Regulatory, Compliance, Reconciliation, Fund Administration"',
        '"Data Modeler, Data Reconciliation, Curie Prediction, Intelligent Process Automation, Insights"',
        '"Investment Banking, Asset Management, Service Proviers, Custodians, Retail Banking, Insurance, Corporate Treasury, Fund Administration, "',
        'N/A',
        1,
        11,
        'media/product_logos/EZOPS.png'
    ),
    (
        14,
        'Finbourne',
        'Data Management',
        'Offering global investment management, banking and capital markets firms an interoperable approach to data management by providing a consolidated and trusted view of your financial data across the front, middle and back office on the cloud.',
        'Cloud Native',
        '"Data storage, Financial record keeping, Portfolio Management, Data Distribution"',
        '"LUSID - Operational Data Store (ODS), LUSID - IBOR & ABOR, LUSID - Portfolio Management (PMS), Luminesce - Data Virtualisation"',
        '"Alternative Asset Managers, Asset Management, Service Providers, Retail Banking, Investment Banking"',
        'Citisoft has done a round table with Finbourne in Copenhagen and will be doing another one in London.',
        1,
        12,
        'media/product_logos/fin.png'
    ),
    (
        15,
        'Freyda',
        'Data Transformation',
        'A cloud-based solution helping financial institutions to process, interpret and analyse data from their documents. using machine learning, natural language processing and artificial intelligence to help organizations transform unstructured data from docum',
        'Cloud Native',
        '"Natural Language Processing (NLP)"',
        '"Data Extraction, Search Engine, Data Approval, Dashboard, Analytics, Data Export"',
        '"Alternative Asset Managers, Asset Management, Fund Administrators"',
        'Partnership with LemonEdge and ECI., Received backing from the Google for Startups Black Founders Fund in 2021.',
        0,
        13,
        'media/product_logos/freyda_logo.jpg'
    ),
    (
        16,
        'IBM watsonX',
        'Artificial Intelligence',
        'watsonx is an AI and data platform with a set of AI assistants designed to help scale and accelerate the impact of AI with trusted data across the business.',
        'Cloud Native',
        '"Generative AI, Machine Learning, Data Storage, Data Management, Automation"',
        '"watsonx.ai, watsonx.data, watson.governance, watsonx Orchestrate, watsonx Assistant, watsonx Code Assistant"',
        '"Investment Banking, Asset Management, Service Proviers, Custodians, Retail Banking, Insurance, Corporate Treasury, Fund Administration, "',
        'N/A',
        1,
        14,
        'media/product_logos/watsonx.png'
    ),
    (
        17,
        'Limina IMS',
        'Portfolio Management, Trading',
        'Limina IMS is a cross-asset investment management platform that includes an OMS and a real-time IBOR that provides a real-time view of data (current, forward-looking and historical).',
        'Cloud Native',
        '"Portfolio Manager, Trader, Operations, Compliance, Risk"',
        '"OMS Front Office, Investment & Portfolio Risk Management, Investment Book of Record (IBOR), Data Management"',
        '"Asset Management"',
        'Designed for institutional investment managers to fit governance processes and oversight requirements, while still reaping the benefits of true cloud., Open platform that integrates with your existing ecosystem of service providers and technologies., Founded by investment management professionals.,',
        0,
        15,
        'media/product_logos/limina_solutions_logo.jpg'
    );