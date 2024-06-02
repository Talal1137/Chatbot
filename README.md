# Chatbot
Family Network Chatbot:
This project implements a chatbot that interacts with a family network knowledge base. The knowledge base is built using AIML for natural language processing and Prolog for defining family relations and rules. The chatbot allows users to query information about family relationships.
Functionalities:
->Learn about family relations (e.g., parent-child, sibling).
->Query information about specific individuals in the family network.
->Add new facts and rules to the family knowledge base.
Components:
AIML: Handles natural language processing for user interactions.
Prolog: Defines facts and rules for family relationships.

The functions used in the project and their corresponding Python files:

fetch_facts_and_rules(file_path): Retrieves facts and rules from a Prolog file.
File: family_network.py

create_nodes(facts): Creates nodes in the Neo4j graph based on the provided facts.
File: family_network.py

create_relations(rules): Creates relationships in the Neo4j graph based on the provided rules.
File: family_network.py

reset_variable(): Resets AIML predicates.
File: main.py

get_variables(): Retrieves AIML predicates and creates nodes and relations based on them.
File: main.py

create_nodes_relations(My_Dict): Creates nodes and relations in Neo4j based on AIML predicates.
File: main.py
