package com.yftech.btphone.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes.dex */
public class CallLogBean implements Parcelable {
    public static final Parcelable.Creator<CallLogBean> CREATOR = new Parcelable.Creator<CallLogBean>() { // from class: com.yftech.btphone.bean.CallLogBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CallLogBean createFromParcel(Parcel parcel) {
            return new CallLogBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CallLogBean[] newArray(int i) {
            return new CallLogBean[i];
        }
    };
    private int callTimes;
    private String displayName;
    private String letter;
    private int mCallType;
    private long mDuration;
    private byte[] mPhoto;
    private String name;
    private String number;
    private long time;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getCallType() {
        return this.mCallType;
    }

    public void setCallType(int i) {
        this.mCallType = i;
    }

    public long getDuration() {
        return this.mDuration;
    }

    public void setDuration(long j) {
        this.mDuration = j;
    }

    public String getName() {
        String str = this.name;
        return str != null ? str : "";
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getNumber() {
        return this.number;
    }

    public void setNumber(String str) {
        this.number = str;
    }

    public long getTime() {
        return this.time;
    }

    public void setTime(long j) {
        this.time = j;
    }

    public int getCallTimes() {
        return this.callTimes;
    }

    public void setCallTimes(int i) {
        this.callTimes = i;
    }

    public String getLetter() {
        return this.letter;
    }

    public void setLetter(String str) {
        this.letter = str;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public void setDisplayName(String str) {
        this.displayName = str;
    }

    public byte[] getPhoto() {
        return this.mPhoto;
    }

    public void setPhoto(byte[] bArr) {
        this.mPhoto = bArr;
    }

    public String toString() {
        return "CallLogBean{name='" + this.name + "', number='" + this.number + "', time=" + this.time + ", callTimes=" + this.callTimes + ", mCallType=" + this.mCallType + ", mDuration=" + this.mDuration + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.name);
        parcel.writeString(this.number);
        parcel.writeLong(this.time);
        parcel.writeInt(this.callTimes);
        parcel.writeInt(this.mCallType);
        parcel.writeLong(this.mDuration);
    }

    public void readFromParcel(Parcel parcel) {
        this.name = parcel.readString();
        this.number = parcel.readString();
        this.time = parcel.readLong();
        this.callTimes = parcel.readInt();
        this.mCallType = parcel.readInt();
        this.mDuration = parcel.readLong();
    }

    public CallLogBean() {
    }

    protected CallLogBean(Parcel parcel) {
        this.name = parcel.readString();
        this.number = parcel.readString();
        this.time = parcel.readLong();
        this.callTimes = parcel.readInt();
        this.mCallType = parcel.readInt();
        this.mDuration = parcel.readLong();
    }
}
