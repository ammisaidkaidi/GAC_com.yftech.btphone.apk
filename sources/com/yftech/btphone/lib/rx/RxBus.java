package com.yftech.btphone.lib.rx;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.processors.FlowableProcessor;
import io.reactivex.rxjava3.processors.PublishProcessor;

/* loaded from: /home/user/work/dex/classes.dex */
public class RxBus {
    private final FlowableProcessor<Object> bus;

    private RxBus() {
        this.bus = PublishProcessor.create().toSerialized();
    }

    public static RxBus getDefault() {
        return RxBusHolder.INSTANCE;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class RxBusHolder {
        private static final RxBus INSTANCE = new RxBus();

        private RxBusHolder() {
        }
    }

    public void post(Object obj) {
        this.bus.onNext(obj);
    }

    public <T> Flowable<T> toFlowable(Class<T> cls) {
        return (Flowable<T>) this.bus.ofType(cls);
    }
}
