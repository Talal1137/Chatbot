from aiml import Kernel
from glob import glob
from family_network import graph, fetch_facts_and_rules, create_nodes, create_relations


k = Kernel()

import os
aiml_directory = 'aiml'

aiml_pattern = os.path.join(aiml_directory, '*.aiml')

aiml_files = glob(aiml_pattern)

for file_path in aiml_files:
    k.learn(file_path)

def reset_variable():
    k.setPredicate("relation", "")
    k.setPredicate("person", "")
    k.setPredicate("answer", "")

def get_variables():
    relation = k.getPredicate("relation")
    person = k.getPredicate("person")
    answer = k.getPredicate("answer")

    My_Dict = {
        "relation": relation,
        "person": person,
        "answer": answer
    }
    create_nodes_relations(My_Dict)

def create_nodes_relations(My_Dict):
    non_empty_keys = [key for key, value in My_Dict.items() if value]

    if "relation" in non_empty_keys and "person" in non_empty_keys:
        relation = My_Dict["relation"]
        person = My_Dict["person"]
        query = f"{relation.upper()}({person}, X)"
        result = kb.query(pl.Expr(query))
        if result and result[0]['X']:
            k.setPredicate("answer", answer)

file_path = "prolog_02.pl"

while True:
    print("\n")
    user_input = str(input("user:- "))
    if user_input.lower() == "exit":
        break
    response = k.respond(user_input)
    get_variables()
    print("bot:- ", response)