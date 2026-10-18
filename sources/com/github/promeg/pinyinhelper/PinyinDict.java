package com.github.promeg.pinyinhelper;

import java.util.Set;

/* loaded from: /home/user/work/dex/classes.dex */
public interface PinyinDict {
    String[] toPinyin(String str);

    Set<String> words();
}
