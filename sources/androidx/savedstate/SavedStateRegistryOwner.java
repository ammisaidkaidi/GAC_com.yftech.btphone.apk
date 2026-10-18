package androidx.savedstate;

import androidx.lifecycle.LifecycleOwner;

/* loaded from: /home/user/work/dex/classes.dex */
public interface SavedStateRegistryOwner extends LifecycleOwner {
    SavedStateRegistry getSavedStateRegistry();
}
