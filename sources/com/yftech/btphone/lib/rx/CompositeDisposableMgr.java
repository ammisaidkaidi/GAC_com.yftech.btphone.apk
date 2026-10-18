package com.yftech.btphone.lib.rx;

import android.view.View;
import com.jakewharton.rxbinding4.view.RxView;
import com.yftech.btphone.lib.rx.CompositeDisposableMgr;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;

/* loaded from: /home/user/work/dex/classes.dex */
public class CompositeDisposableMgr {
    private CompositeDisposable compositeDisposable;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface Callback {
        default void onCallback() {
        }

        default void start() {
        }
    }

    public void addSubscribeMainStart(long j, Callback callback) {
    }

    public void release() {
        CompositeDisposable compositeDisposable = this.compositeDisposable;
        if (compositeDisposable != null) {
            compositeDisposable.clear();
        }
        this.compositeDisposable = null;
    }

    public Disposable getPeriodlDisposable(long j, final Callback callback) {
        Disposable subscribe = Observable.interval(j, TimeUnit.MILLISECONDS).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.yftech.btphone.lib.rx.-$$Lambda$CompositeDisposableMgr$A8-nL0uTojXaMmDlKV1X7HQGPY4
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                CompositeDisposableMgr.lambda$getPeriodlDisposable$0(CompositeDisposableMgr.Callback.this, (Long) obj);
            }
        });
        addRxBindingSubscribe(subscribe);
        return subscribe;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$getPeriodlDisposable$0(Callback callback, Long l) throws Throwable {
        if (callback != null) {
            callback.onCallback();
        }
    }

    public void subscribeEvent(final Callback callback) {
        addRxBindingSubscribe(RxBus.getDefault().toFlowable(EventBean.class).subscribe(new Consumer() { // from class: com.yftech.btphone.lib.rx.-$$Lambda$CompositeDisposableMgr$hNyP7qXnSyu5_JfWIpsuzr7GLbw
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                CompositeDisposableMgr.lambda$subscribeEvent$1(CompositeDisposableMgr.Callback.this, (CompositeDisposableMgr.EventBean) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$subscribeEvent$1(Callback callback, EventBean eventBean) throws Throwable {
        eventBean.getType();
        if (callback != null) {
            callback.onCallback();
        }
    }

    public void addSubscribeViewClickSpaceTime(View view, long j, final Callback callback) {
        addRxBindingSubscribe(RxView.clicks(view).throttleFirst(j, TimeUnit.MILLISECONDS).subscribe(new Consumer() { // from class: com.yftech.btphone.lib.rx.-$$Lambda$CompositeDisposableMgr$BimrDLDQyn7fXkQrfsTf0tPFaM8
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                CompositeDisposableMgr.lambda$addSubscribeViewClickSpaceTime$2(CompositeDisposableMgr.Callback.this, (Unit) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$addSubscribeViewClickSpaceTime$2(Callback callback, Unit unit) throws Throwable {
        if (callback != null) {
            callback.start();
        }
    }

    public void addSubscribeDelayStart(long j, final Callback callback) {
        addRxBindingSubscribe(Observable.timer(j, TimeUnit.MILLISECONDS).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.yftech.btphone.lib.rx.-$$Lambda$CompositeDisposableMgr$HdxGapPSSO0WyGAkM5hh-uDP4sg
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                CompositeDisposableMgr.lambda$addSubscribeDelayStart$3(CompositeDisposableMgr.Callback.this, (Long) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$addSubscribeDelayStart$3(Callback callback, Long l) throws Throwable {
        if (callback != null) {
            callback.start();
        }
    }

    public void addRxBindingSubscribe(Disposable disposable) {
        addSubscribe(disposable);
    }

    public void removeRxBindingSubscribe(Disposable disposable) {
        if (disposable == null) {
            return;
        }
        if (this.compositeDisposable == null) {
            this.compositeDisposable = new CompositeDisposable();
        }
        this.compositeDisposable.remove(disposable);
        disposable.dispose();
    }

    protected void addSubscribe(Disposable disposable) {
        if (this.compositeDisposable == null) {
            this.compositeDisposable = new CompositeDisposable();
        }
        this.compositeDisposable.add(disposable);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class EventBean<T> {
        private Object mObject;
        private T t;
        private int type;

        public int getType() {
            return this.type;
        }

        public void setType(int i) {
            this.type = i;
        }

        public T getT() {
            return this.t;
        }

        public void setT(T t) {
            this.t = t;
        }

        public Object getObject() {
            return this.mObject;
        }

        public void setObject(Object obj) {
            this.mObject = obj;
        }

        public EventBean() {
        }

        public EventBean(int i, T t) {
            this.type = i;
            this.t = t;
        }
    }
}
