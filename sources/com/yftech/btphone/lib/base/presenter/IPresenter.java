package com.yftech.btphone.lib.base.presenter;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import com.yftech.btphone.lib.base.view.IView;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IPresenter<T extends IView> extends LifecycleObserver {
    void attachView(T t);

    void detachView();

    T getView();

    boolean isViewAttached();

    @OnLifecycleEvent(Lifecycle.Event.ON_CREATE)
    default void onCreate() {
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    default void onDestroy() {
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_PAUSE)
    default void onPause() {
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_RESUME)
    default void onResume() {
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_START)
    default void onStart() {
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    default void onStop() {
    }
}
