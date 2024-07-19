from collections import defaultdict

class Controller:
    def __init__(self) -> None:
        self.example_struct = {
            'Laenor Velaryon & Rhaenyra Targaryen': {'Joffrey Targaryen': None, 'Jacaerys Targaryen': None, 'Lucerys Targaryen': None},
            'Rhaenyra Targaryen & Daemon Targaryen': { 
                                                      'Aegon III Targaryen & Daenaera Velaryon' : {'Daeron I Targaryen': None, 'Baelor Targaryen': None, 'Daena Targaryen': None, 'Rhaena Targaryen': None, 'Elaena Targaryen': None}, 
                                                      'Viserys II Targaryen & Larra Rogare': None
                                                      }
        }

    def _merge_children(self, tree):
        combined_tree = defaultdict(dict)
        child_to_parents = defaultdict(list)

        # Primeiro, percorrer o dicionário original para mapear filhos aos pais
        for parent, children in tree.items():
            for child, grandchildren in children.items():
                combined_tree[child].update(grandchildren or {})
                child_to_parents[child].append(parent)
        
        # Reconstituir a árvore combinada, sem repetir filhos
        result_tree = {}
        for parent, children in tree.items():
            merged_children = {}
            for child in children:
                if len(child_to_parents[child]) > 1:
                    if child_to_parents[child][0] == parent:
                        merged_children[child] = combined_tree[child]
                else:
                    merged_children[child] = combined_tree[child]
            result_tree[parent] = merged_children
        return result_tree

    def genTree(self):
        self.example_struct = self._merge_children(self.example_struct)
        return self.example_struct
    
    def cards(self):
        pass

    def loading(self):
        pass
