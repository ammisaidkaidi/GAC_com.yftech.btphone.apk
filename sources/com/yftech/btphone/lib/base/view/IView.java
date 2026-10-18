package com.yftech.btphone.lib.base.view;

import com.yftech.btphone.lib.base.presenter.IPresenter;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IView<P extends IPresenter> {
    P initPresenter();
}
