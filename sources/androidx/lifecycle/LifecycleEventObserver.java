package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;

/* loaded from: /home/user/work/dex/classes.dex */
public interface LifecycleEventObserver extends LifecycleObserver {
    void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event);
}
