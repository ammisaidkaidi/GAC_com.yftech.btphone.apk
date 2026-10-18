package com.yftech.btphone.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class SearchListBean implements Parcelable {
    public static final Parcelable.Creator<SearchListBean> CREATOR = new Parcelable.Creator<SearchListBean>() { // from class: com.yftech.btphone.bean.SearchListBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SearchListBean createFromParcel(Parcel parcel) {
            return new SearchListBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SearchListBean[] newArray(int i) {
            return new SearchListBean[i];
        }
    };
    private List<ContactBean> contactBeanList;
    private List<ContactBean> topContactBeanList;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<ContactBean> getContactBeanList() {
        return this.contactBeanList;
    }

    public void setContactBeanList(List<ContactBean> list) {
        this.contactBeanList = list;
    }

    public List<ContactBean> getTopContactBeanList() {
        return this.topContactBeanList;
    }

    public void setTopContactBeanList(List<ContactBean> list) {
        this.topContactBeanList = list;
    }

    public SearchListBean(List<ContactBean> list, List<ContactBean> list2) {
        this.contactBeanList = list;
        this.topContactBeanList = list2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.contactBeanList);
        parcel.writeTypedList(this.topContactBeanList);
    }

    public void readFromParcel(Parcel parcel) {
        this.contactBeanList = parcel.createTypedArrayList(ContactBean.CREATOR);
        this.topContactBeanList = parcel.createTypedArrayList(ContactBean.CREATOR);
    }

    protected SearchListBean(Parcel parcel) {
        this.contactBeanList = parcel.createTypedArrayList(ContactBean.CREATOR);
        this.topContactBeanList = parcel.createTypedArrayList(ContactBean.CREATOR);
    }
}
