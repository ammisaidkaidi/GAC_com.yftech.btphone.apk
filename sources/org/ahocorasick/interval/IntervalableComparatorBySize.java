package org.ahocorasick.interval;

import java.util.Comparator;

/* loaded from: /home/user/work/dex/classes.dex */
public class IntervalableComparatorBySize implements Comparator<Intervalable> {
    @Override // java.util.Comparator
    public int compare(Intervalable intervalable, Intervalable intervalable2) {
        int size = intervalable2.size() - intervalable.size();
        return size == 0 ? intervalable.getStart() - intervalable2.getStart() : size;
    }
}
