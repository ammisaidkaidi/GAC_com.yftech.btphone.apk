package com.yftech.btphone.lib.base.presenter;

import android.util.Log;
import com.yftech.btphone.lib.base.view.IView;
import com.yftech.btphone.lib.rx.CompositeDisposableMgr;
import java.lang.ref.WeakReference;

/* loaded from: /home/user/work/dex/classes.dex */
public class BasePresenter<V extends IView> implements IPresenter<V> {
    protected String TAG;
    protected CompositeDisposableMgr mCompositeDisposableMgr;
    protected V mV;
    protected WeakReference<V> viewReference;

    public BasePresenter() {
        this.TAG = "";
        this.TAG = getClass().getSimpleName();
    }

    @Override // com.yftech.btphone.lib.base.presenter.IPresenter
    public void attachView(V v) {
        log("attachView");
        this.mV = v;
    }

    @Override // com.yftech.btphone.lib.base.presenter.IPresenter
    public boolean isViewAttached() {
        return this.mV != null;
    }

    @Override // com.yftech.btphone.lib.base.presenter.IPresenter
    public V getView() {
        if (isViewAttached()) {
            return this.mV;
        }
        throw new RuntimeException(" View is not attached to Presenter ");
    }

    @Override // com.yftech.btphone.lib.base.presenter.IPresenter
    public void detachView() {
        log("detachView");
        WeakReference<V> weakReference = this.viewReference;
        if (weakReference != null) {
            weakReference.clear();
            this.viewReference = null;
        }
        this.mV = null;
        CompositeDisposableMgr compositeDisposableMgr = this.mCompositeDisposableMgr;
        if (compositeDisposableMgr != null) {
            compositeDisposableMgr.release();
        }
        this.mCompositeDisposableMgr = null;
    }

    @Override // com.yftech.btphone.lib.base.presenter.IPresenter
    public void onCreate() {
        log("onCreate:" + this);
    }

    @Override // com.yftech.btphone.lib.base.presenter.IPresenter
    public void onResume() {
        log("onResume");
    }

    @Override // com.yftech.btphone.lib.base.presenter.IPresenter
    public void onDestroy() {
        log("onDestroy");
        detachView();
    }

    public CompositeDisposableMgr getCompositeDisposableMgr() {
        return this.mCompositeDisposableMgr;
    }

    protected void log(String str) {
        Log.d(getClass().getSimpleName(), str);
    }

    protected void loge(String str) {
        Log.e(getClass().getSimpleName(), str);
    }
}
