package com.yftech.btphone.lib.utils;

import android.app.Activity;
import android.util.Log;
import java.util.Deque;
import java.util.LinkedList;

/* loaded from: /home/user/work/dex/classes.dex */
public class AppManager {
    private static AppManager instance;
    private String TAG = "AppManager";
    private Deque<Activity> activityStack = new LinkedList();

    private AppManager() {
    }

    public static AppManager getAppManager() {
        if (instance == null) {
            instance = new AppManager();
        }
        return instance;
    }

    public Activity getActivity(Class<?> cls) {
        Deque<Activity> deque = this.activityStack;
        if (deque == null) {
            return null;
        }
        for (Activity activity : deque) {
            if (activity.getClass().equals(cls)) {
                return activity;
            }
        }
        return null;
    }

    public Activity getActivity(String str) {
        Deque<Activity> deque = this.activityStack;
        if (deque == null) {
            return null;
        }
        for (Activity activity : deque) {
            if (activity.getClass().getName().equals(str)) {
                return activity;
            }
        }
        return null;
    }

    public void returnToActivity(Class<?> cls) {
        while (!this.activityStack.isEmpty() && this.activityStack.peek().getClass() != cls) {
            finishActivity(this.activityStack.peek());
        }
    }

    public void addActivity(Activity activity) {
        this.activityStack.add(activity);
    }

    public Activity currentActivity() {
        if (this.activityStack.isEmpty()) {
            return null;
        }
        return this.activityStack.getLast();
    }

    public void finishActivity() {
        finishActivity(this.activityStack.getLast());
    }

    public void finishActivity(Activity activity) {
        if (activity == null || !this.activityStack.contains(activity)) {
            return;
        }
        this.activityStack.remove(activity);
        activity.finish();
        Log.d(this.TAG, "finishActivity: " + activity);
    }

    public void removeActivity(Activity activity) {
        if (activity != null) {
            this.activityStack.remove(activity);
        }
    }

    public void finishActivity(Class<?> cls) {
        for (Activity activity : this.activityStack) {
            if (activity.getClass().equals(cls)) {
                finishActivity(activity);
                return;
            }
        }
        Log.d(this.TAG, "finishActivity: find none");
    }

    public void finishAllActivity() {
        while (!this.activityStack.isEmpty()) {
            finishActivity(this.activityStack.getFirst());
        }
    }
}
