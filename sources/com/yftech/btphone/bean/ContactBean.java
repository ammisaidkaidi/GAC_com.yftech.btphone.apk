package com.yftech.btphone.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.yftech.btphone.utils.CommonUtils;
import java.util.List;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes.dex */
public class ContactBean implements Parcelable {
    public static final Parcelable.Creator<ContactBean> CREATOR = new Parcelable.Creator<ContactBean>() { // from class: com.yftech.btphone.bean.ContactBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ContactBean createFromParcel(Parcel parcel) {
            return new ContactBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ContactBean[] newArray(int i) {
            return new ContactBean[i];
        }
    };
    private String letter;
    private int letterIndex;
    private byte[] mPhoto;
    private String mSerialId;
    private List<String> mobile;
    private String pinyinName;
    private String userName;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getPinyinName() {
        return this.pinyinName;
    }

    public void setPinyinName(String str) {
        this.pinyinName = str;
    }

    public int getLetterIndex() {
        return this.letterIndex;
    }

    public void setLetterIndex(int i) {
        this.letterIndex = i;
    }

    public String getUserName() {
        String str = this.userName;
        return str != null ? str.trim() : "";
    }

    public void setUserName(String str) {
        this.userName = str;
    }

    public List<String> getMobile() {
        return this.mobile;
    }

    public void setMobile(List<String> list) {
        this.mobile = list;
    }

    public String getmSerialId() {
        return this.mSerialId;
    }

    public void setmSerialId(String str) {
        this.mSerialId = str;
    }

    public String getLetter() {
        return CommonUtils.isLetterOrChinese(this.letter) ? this.letter : "#";
    }

    public void setLetter(String str) {
        this.letter = str;
    }

    public byte[] getPhoto() {
        return this.mPhoto;
    }

    public void setPhoto(byte[] bArr) {
        this.mPhoto = bArr;
    }

    public String toString() {
        return "ContactBean{userName='" + this.userName + "', mobile=" + this.mobile + ", mSerialId='" + this.mSerialId + "', letter='" + this.letter + "', letterIndex=" + this.letterIndex + ", pinyinName='" + this.pinyinName + "'}";
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ContactBean contactBean = (ContactBean) obj;
        return this.letterIndex == contactBean.letterIndex && Objects.equals(this.userName, contactBean.userName) && Objects.equals(this.mobile, contactBean.mobile) && Objects.equals(this.mSerialId, contactBean.mSerialId) && Objects.equals(this.letter, contactBean.letter) && Objects.equals(this.pinyinName, contactBean.pinyinName);
    }

    public int hashCode() {
        return Objects.hash(this.userName, this.mobile, this.mSerialId, this.letter, Integer.valueOf(this.letterIndex), this.pinyinName);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.userName);
        parcel.writeStringList(this.mobile);
        parcel.writeString(this.mSerialId);
        parcel.writeString(this.letter);
        parcel.writeInt(this.letterIndex);
        parcel.writeString(this.pinyinName);
        parcel.writeByteArray(this.mPhoto);
    }

    public void readFromParcel(Parcel parcel) {
        this.userName = parcel.readString();
        this.mobile = parcel.createStringArrayList();
        this.mSerialId = parcel.readString();
        this.letter = parcel.readString();
        this.letterIndex = parcel.readInt();
        this.pinyinName = parcel.readString();
    }

    public ContactBean() {
    }

    protected ContactBean(Parcel parcel) {
        this.userName = parcel.readString();
        this.mobile = parcel.createStringArrayList();
        this.mSerialId = parcel.readString();
        this.letter = parcel.readString();
        this.letterIndex = parcel.readInt();
        this.pinyinName = parcel.readString();
    }
}
