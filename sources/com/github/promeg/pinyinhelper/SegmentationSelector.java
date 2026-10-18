package com.github.promeg.pinyinhelper;

import java.util.Collection;
import java.util.List;
import org.ahocorasick.trie.Emit;

/* loaded from: /home/user/work/dex/classes.dex */
interface SegmentationSelector {
    List<Emit> select(Collection<Emit> collection);
}
