package com.yftech.btphone.lib.base.view;

import android.os.Bundle;
import com.yftech.btphone.lib.base.presenter.IPresenter;
import java.lang.reflect.ParameterizedType;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class MvpActivity<P extends IPresenter> extends BaseActivity implements IView {
    protected P mPresenter;

    @Override // com.yftech.btphone.lib.base.view.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.mPresenter = initPresenter();
        getLifecycle().addObserver(this.mPresenter);
        super.onCreate(bundle);
        logd("onCreate");
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        logd("onResume");
    }

    @Override // com.yftech.btphone.lib.base.view.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        logd("onDestroy");
        if (this.mPresenter != null) {
            this.mPresenter = null;
        }
        super.onDestroy();
    }

    @Override // com.yftech.btphone.lib.base.view.IView
    public P initPresenter() {
        try {
            this.mPresenter = (P) ((Class) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0]).newInstance();
            this.mPresenter.attachView(this);
            return this.mPresenter;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public P getPresenter() {
        return this.mPresenter;
    }
}
