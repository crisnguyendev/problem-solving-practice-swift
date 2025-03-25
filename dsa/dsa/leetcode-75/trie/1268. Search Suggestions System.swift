//
//  1268. Search Suggestions System.swift
//  dsa
//
//  Created by Vu Nguyen on 3/24/25.
//

class SearchSuggestionsSystem {
    func suggestedProducts(_ products: [String], _ searchWord: String) -> [[String]] {
        let sortedProducts = products.sorted()
        let trie = Trie(sortedProducts)
        var result = [[String]]()
        var prefix = ""

        for char in searchWord {
            prefix.append(char)
            let suggestions = trie.search(prefix)
            result.append(suggestions)
        }
        return result
    }

    class TrieNode {
        var child: [Character: TrieNode] = [:]
        var suggestion: [String] = []
    }

    class Trie {
        private let root: TrieNode = .init()

        init(_ products: [String]) {
            for word in products {
                insert(word)
            }
        }

        func insert(_ word: String) {
            var current = root
            for char in word {
                if current.child[char] == nil {
                    current.child[char] = TrieNode()
                }
                current = current.child[char]!
                if current.suggestion.count < 3 {
                    current.suggestion.append(word)
                }
            }
        }

        func search(_ word: String) -> [String] {
            var current = root
            for char in word {
                guard let next = current.child[char] else {
                    return []
                }
                current = next
            }
            return current.suggestion
        }
    }
}
