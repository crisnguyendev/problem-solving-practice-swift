//
//  208. Implement Trie (Prefix Tree).swift
//  dsa
//
//  Created by Vu Nguyen on 3/24/25.
//

class Trie {
    class TrieNode {
        var child: [Character: TrieNode] = [:]
        var isWord: Bool = false
    }

    private let root: TrieNode

    init() {
        root = TrieNode()
    }

    func insert(_ word: String) {
        var node: TrieNode = root
        for char in word {
            if node.child[char] == nil {
                node.child[char] = TrieNode()
            }
            node = node.child[char]!
        }
        node.isWord = true
    }

    func search(_ word: String) -> Bool {
        var node = root
        for char in word {
            guard let nextNode = node.child[char] else {
                return false
            }
            node = nextNode
        }
        return node.isWord
    }

    func startsWith(_ prefix: String) -> Bool {
        var node = root
        for char in prefix {
            guard let nextNode = node.child[char] else {
                return false
            }
            node = nextNode
        }
        return true
    }
}

/**
 * Your Trie object will be instantiated and called as such:
 * let obj = Trie()
 * obj.insert(word)
 * let ret_2: Bool = obj.search(word)
 * let ret_3: Bool = obj.startsWith(prefix)
 */
