package org.ahocorasick.trie;

/* loaded from: /home/user/work/dex/classes.dex */
public class MatchToken extends Token {
    private Emit emit;

    @Override // org.ahocorasick.trie.Token
    public boolean isMatch() {
        return true;
    }

    public MatchToken(String str, Emit emit) {
        super(str);
        this.emit = emit;
    }

    @Override // org.ahocorasick.trie.Token
    public Emit getEmit() {
        return this.emit;
    }
}
