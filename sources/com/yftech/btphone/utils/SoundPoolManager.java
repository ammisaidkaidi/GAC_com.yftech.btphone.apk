package com.yftech.btphone.utils;

import android.content.Context;
import android.media.SoundPool;
import android.util.Log;
import com.yftech.btphone.R;

/* loaded from: /home/user/work/dex/classes.dex */
public class SoundPoolManager {
    private static SoundPoolManager mInstance;
    private String TAG = "SoundPoolManager";
    private SoundPool mSoundPool;
    private int mStreamId;

    public static SoundPoolManager getInstance() {
        if (mInstance == null) {
            mInstance = new SoundPoolManager();
        }
        return mInstance;
    }

    public void init(Context context) {
        this.mSoundPool = new SoundPool(1, 5, 5);
        this.mStreamId = this.mSoundPool.load(context, R.raw.adara, 1);
    }

    public void play() {
        Log.i(this.TAG, "play: ");
        this.mSoundPool.play(this.mStreamId, 1.0f, 1.0f, 1, 0, 1.0f);
    }

    public void stop() {
        this.mSoundPool.stop(this.mStreamId);
    }

    public void release() {
        SoundPool soundPool = this.mSoundPool;
        if (soundPool != null) {
            soundPool.release();
            this.mSoundPool = null;
        }
    }
}
