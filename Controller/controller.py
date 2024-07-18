from collections import defaultdict

class Controller:
    def __init__(self) -> None:
        self.example_struct = {
            'Laenor Velaryon': {'Joffrey': None, 'Jacaerys': None, 'Lucerys': None},
            'Raenyra Targaryen': {'Joffrey': None, 'Jacaerys': None, 'Lucerys': None, 'Aegon III': {'Daeron I': None, 'Baelor': None, 'Daena': None, 'Rhaena': None, 'Elaena': None}, 'Viserys II': None},
            'Daemon Targaryen': {'Aegon III': {'Daeron I': None, 'Baelor': None, 'Daena': None, 'Rhaena': None, 'Elaena': None}, 'Viserys II': None}
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
