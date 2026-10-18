package com.yftech.btphone.lib.base.view;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.appcompat.app.AppCompatActivity;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import com.yftech.btphone.lib.base.fragment.BaseFragment;
import com.yftech.btphone.lib.utils.AppManager;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class BaseActivity extends AppCompatActivity {
    protected String TAG = "";
    protected ArrayList<OnActivityListener> mListeners = new ArrayList<>();
    protected Unbinder unBinder;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnActivityListener {
        void onFragmentSwitch(BaseFragment baseFragment);
    }

    protected abstract int getViewLayout();

    protected abstract void initView(Bundle bundle, Intent intent);

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.TAG = getClass().getSimpleName();
        getWindow().getDecorView().setSystemUiVisibility(1024);
        requestWindowFeature(1);
        supportRequestWindowFeature(1);
        setContentView(getViewLayout());
        this.unBinder = ButterKnife.bind(this);
        AppManager.getAppManager().addActivity(this);
        initView(bundle, getIntent());
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        Unbinder unbinder = this.unBinder;
        if (unbinder != null) {
            unbinder.unbind();
            this.unBinder = null;
        }
        this.mListeners.clear();
        AppManager.getAppManager().removeActivity(this);
        super.onDestroy();
    }

    public void addOnPhoneActivityListener(OnActivityListener onActivityListener) {
        this.mListeners.add(onActivityListener);
    }

    public void removeOnPhoneActivityListener(OnActivityListener onActivityListener) {
        this.mListeners.remove(onActivityListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void logd(String str) {
        Log.d(getClass().getSimpleName(), str);
    }

    protected void loge(String str) {
        Log.e(getClass().getSimpleName(), str);
    }
}
