package butterknife;

import android.view.View;

/* loaded from: /home/user/work/dex/classes.dex */
public interface Action<T extends View> {
    void apply(T t, int i);
}
