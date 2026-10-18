package com.yftech.btphone.proxy;

import android.text.TextUtils;
import android.util.Log;
import com.yftech.btphone.R;
import com.yftech.btphone.app.BluetoothApplication;
import com.yftech.btphone.bean.CallLogBean;
import com.yftech.btphone.bean.ContactBean;
import com.yftech.btphone.lib.sample.SampleDataProvider;
import com.yftech.btphone.lib.sample.SampleTimeManger;
import com.yftech.btphone.utils.CommonUtils;
import com.yftech.car.bluetooth.CarBluetoothManager;
import com.yftech.car.bluetooth.model.CallLog;
import com.yftech.car.bluetooth.model.Contacts;
import com.yftech.car.bluetooth.model.PhoneCall;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

/* loaded from: /home/user/work/dex/classes.dex */
public class DataProvider extends SampleDataProvider {
    public List<String> mLetters = new ArrayList();
    public List<ContactBean> mContactBeanList = new ArrayList();
    public List<ContactBean> mTopContactBeanList = new ArrayList();
    public List<CallLogBean> mCallLogBeanList = new ArrayList();
    private int callTimes = 1;
    private SimpleDateFormat sdf24Hour = new SimpleDateFormat("yyyy/M/d-HH:mm");

    @Override // com.yftech.btphone.lib.sample.SampleDataProvider, com.yftech.btphone.lib.listener.IDataProviderProxy
    public void initPhoneCall() {
        PhoneCall phoneCall = new PhoneCall();
        phoneCall.setDisplayName("客服");
        phoneCall.setCallNumber("10086");
        phoneCall.setCallState(4);
        this.mPhoneCalls.add(phoneCall);
        PhoneCall phoneCall2 = new PhoneCall();
        phoneCall2.setDisplayName("2222客服客服客服客服客服");
        phoneCall2.setCallNumber("100861");
        phoneCall2.setCallState(7);
        this.mPhoneCalls.add(phoneCall2);
        updatePhoneCalls(CarBluetoothManager.getInstance().getPhoneCalls());
    }

    @Override // com.yftech.btphone.lib.sample.SampleDataProvider, com.yftech.btphone.lib.listener.IDataProviderProxy
    public void updateContactsList(List<Contacts> list) {
        super.updateContactsList(list);
        synchronized (this.mContacts) {
            this.mLetters.clear();
            this.mContactBeanList.clear();
            updateContactsBeanList(this.mContacts, this.mLetters, this.mContactBeanList);
        }
    }

    @Override // com.yftech.btphone.lib.sample.SampleDataProvider, com.yftech.btphone.lib.listener.IDataProviderProxy
    public void updateCallLog(List<CallLog> list) {
        super.updateCallLog(list);
        this.mCallLogBeanList.clear();
        updateCallLogBeanList(list, this.mCallLogBeanList);
        if (!list.isEmpty() && !this.mTopContactBeanList.isEmpty()) {
            Log.d(this.TAG, "updateCallLogList, ignore");
        } else {
            this.mTopContactBeanList.clear();
            updateTopContactsBeanList(this.mContactBeanList, list, this.mTopContactBeanList);
        }
    }

    private void updateContactsBeanList(List<Contacts> list, List<String> list2, List<ContactBean> list3) {
        for (Contacts contacts : list) {
            String initAddLetter = initAddLetter(list2, contacts);
            if (!list3.isEmpty() && list3.get(list3.size() - 1).getmSerialId().equals(contacts.getSerialId())) {
                List<String> mobile = list3.get(list3.size() - 1).getMobile();
                if (mobile.size() < 5) {
                    mobile.add(contacts.getNumber());
                }
            } else {
                addContactsBean(list3, list2, contacts, initAddLetter);
            }
        }
        Log.i(this.TAG, "updateContactsBeanList end, contactBeanList.size()" + list3.size());
    }

    private void addContactsBean(List<ContactBean> list, List<String> list2, Contacts contacts, String str) {
        ContactBean contactBean = new ContactBean();
        contactBean.setPinyinName(contacts.getPinYin());
        contactBean.setUserName(contacts.getName());
        contactBean.setLetter(str);
        contactBean.setLetterIndex(list2.size() - 1);
        contactBean.setmSerialId(contacts.getSerialId());
        ArrayList arrayList = new ArrayList();
        arrayList.add(contacts.getNumber());
        contactBean.setMobile(arrayList);
        if (contacts.hasPhoto()) {
            contactBean.setPhoto(CarBluetoothManager.getInstance().getContactsPicture(contacts));
        }
        list.add(contactBean);
    }

    private String initAddLetter(List<String> list, Contacts contacts) {
        String valueOf = TextUtils.isEmpty(contacts.getKey()) ? "#" : String.valueOf(contacts.getKey().charAt(0));
        if (!CommonUtils.isLetterOrChinese(valueOf)) {
            contacts.setKey("#" + contacts.getKey());
            valueOf = "#";
        }
        if (list.isEmpty() || !list.get(list.size() - 1).equals(valueOf)) {
            list.add(valueOf);
        }
        return valueOf;
    }

    private void updateCallLogBeanList(List<CallLog> list, List<CallLogBean> list2) {
        Log.i(this.TAG, "蓝牙下载通话记录 = ");
        for (CallLog callLog : list) {
            if (!list2.isEmpty()) {
                CallLogBean callLogBean = list2.get(list2.size() - 1);
                String number = callLogBean.getNumber();
                callLogBean.getName();
                if (number.equals(callLog.getNumber()) && callLogBean.getCallType() == callLog.getCallType()) {
                    this.callTimes++;
                    list2.get(list2.size() - 1).setCallTimes(this.callTimes);
                } else {
                    addCallLogBean(callLog, list2);
                }
            } else {
                addCallLogBean(callLog, list2);
            }
        }
    }

    private void addCallLogBean(CallLog callLog, List<CallLogBean> list) {
        CallLogBean callLogBean = new CallLogBean();
        callLogBean.setTime(callLog.getTime());
        callLogBean.setCallType(callLog.getCallType());
        callLogBean.setDuration(callLog.getDuration());
        String name = callLog.getName();
        callLogBean.setName(name);
        String firstText = CommonUtils.getFirstText(name);
        if (!TextUtils.isEmpty(firstText)) {
            callLogBean.setLetter(firstText);
        }
        String name2 = callLog.getName();
        if (TextUtils.isEmpty(name2)) {
            name2 = CommonUtils.getNumberWithSplit(callLog.getNumber());
        }
        callLogBean.setDisplayName(name2);
        callLogBean.setNumber(callLog.getNumber());
        try {
            ContactBean findContactsBean = findContactsBean(callLogBean);
            if (findContactsBean != null) {
                callLogBean.setPhoto(findContactsBean.getPhoto());
                if (findContactsBean.getPhoto() != null) {
                    Log.i(this.TAG, "addCallLogBean: set photo####" + callLog);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.callTimes = 1;
        callLogBean.setCallTimes(this.callTimes);
        list.add(callLogBean);
    }

    private void updateTopContactsBeanList(List<ContactBean> list, List<CallLog> list2, List<ContactBean> list3) {
        String str = this.TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("updateTopContactsBeanList, callLogList:");
        sb.append(list2 == null ? "null" : Integer.valueOf(list2.size()));
        sb.append(", contactBeanList:");
        sb.append(list != null ? Integer.valueOf(list.size()) : "null");
        Log.i(str, sb.toString());
        if (list2 == null || list2.isEmpty() || list == null || list.isEmpty()) {
            return;
        }
        HashMap hashMap = new HashMap();
        initCallLogTimes(list2, hashMap);
        ArrayList arrayList = new ArrayList(hashMap.entrySet());
        arrayList.sort(new Comparator() { // from class: com.yftech.btphone.proxy.-$$Lambda$DataProvider$UsYn5JvQr06eJHxZNBgaYADu3Wc
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int compareTo;
                compareTo = ((Long) ((Map.Entry) obj2).getValue()).compareTo((Long) ((Map.Entry) obj).getValue());
                return compareTo;
            }
        });
        Log.i(this.TAG, "updateTopContactsBeanList:" + Arrays.toString(arrayList.toArray()));
        for (int i = 0; i < arrayList.size(); i++) {
            String replace = ((String) ((Map.Entry) arrayList.get(i)).getKey()).trim().replace(" ", "");
            if (list3.size() >= 5) {
                break;
            }
            boolean z = false;
            for (int i2 = 0; i2 < list.size(); i2++) {
                Iterator<String> it = list.get(i2).getMobile().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    if (replace.equals(it.next().replace(" ", ""))) {
                        list3.add(list.get(i2));
                        z = true;
                        break;
                    }
                }
                if (z) {
                    break;
                }
            }
        }
        Log.i(this.TAG, "source: updateTopContactsBeanList:" + Arrays.toString(list3.toArray()));
        this.mTopContactBeanList = (List) list3.stream().filter(distinctByKey(new Function() { // from class: com.yftech.btphone.proxy.-$$Lambda$DataProvider$l4tfyaPMZGeRti6-ntqExydIKMM
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String userName;
                userName = ((ContactBean) obj).getUserName();
                return userName;
            }
        })).collect(Collectors.toList());
        Log.i(this.TAG, "after filter: updateTopContactsBeanList:" + Arrays.toString(list3.toArray()));
    }

    private static <T> Predicate<T> distinctByKey(final Function<? super T, ?> function) {
        final ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        return new Predicate() { // from class: com.yftech.btphone.proxy.-$$Lambda$DataProvider$Djr4BxSfbkv8QcPvlZqihiWNbLk
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return DataProvider.lambda$distinctByKey$1(concurrentHashMap, function, obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean lambda$distinctByKey$1(Map map, Function function, Object obj) {
        return map.putIfAbsent(function.apply(obj), Boolean.TRUE) == null;
    }

    private void initCallLogTimes(List<CallLog> list, Map<String, Long> map) {
        long pow = (long) Math.pow(10.0d, String.valueOf(list.get(0).getTime()).length());
        int min = Math.min(list.size(), 100);
        for (int i = 0; i < min; i++) {
            CallLog callLog = list.get(i);
            if (!TextUtils.isEmpty(callLog.getName()) && callLog.getCallType() != 3) {
                if (map.containsKey(callLog.getNumber())) {
                    map.put(callLog.getNumber(), Long.valueOf(map.get(callLog.getNumber()).longValue() + pow));
                    Log.i("initCallLogTimes", "callLog:" + callLog);
                } else {
                    map.put(callLog.getNumber(), Long.valueOf(callLog.getTime() + pow));
                }
            }
        }
    }

    public String formatData(long j) {
        String str;
        BluetoothApplication bluetoothApplication;
        int i;
        Date date = new Date(j);
        this.sdf24Hour.setTimeZone(TimeZone.getDefault());
        String[] split = this.sdf24Hour.format(date).split("-");
        if (this.sdf24Hour.format(new Date(System.currentTimeMillis())).split("-")[0].equals(split[0])) {
            if (SampleTimeManger.getInstance().is24HourFormat(BluetoothApplication.getInstance())) {
                str = "";
            } else {
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(date);
                if (calendar.get(9) == 0) {
                    bluetoothApplication = BluetoothApplication.getInstance();
                    i = R.string.am;
                } else {
                    bluetoothApplication = BluetoothApplication.getInstance();
                    i = R.string.pm;
                }
                str = bluetoothApplication.getString(i);
            }
            return str + split[1];
        }
        if (CommonUtils.isYesterday(date)) {
            return BluetoothApplication.getInstance().getString(R.string.name_yes);
        }
        if (split[0].startsWith(String.valueOf(CommonUtils.getYear())) && CommonUtils.isWeekday(date)) {
            return CommonUtils.getWeekDay(date);
        }
        return split[0];
    }

    public ContactBean findContacts(PhoneCall phoneCall) {
        if (phoneCall == null) {
            return null;
        }
        String displayName = phoneCall.getDisplayName();
        String callNumber = phoneCall.getCallNumber();
        if (displayName == null) {
            displayName = "";
        }
        for (ContactBean contactBean : this.mContactBeanList) {
            String userName = contactBean.getUserName();
            List<String> mobile = contactBean.getMobile();
            if (userName == null) {
                userName = "";
            }
            Iterator<String> it = mobile.iterator();
            while (it.hasNext()) {
                if (callNumber.equals(it.next()) && displayName.equals(userName)) {
                    return contactBean;
                }
            }
        }
        return null;
    }

    public ContactBean findContactsBean(Contacts contacts) {
        ContactBean contactBean = null;
        if (contacts == null) {
            return null;
        }
        synchronized (this.mContactBeanList) {
            Iterator<ContactBean> it = this.mContactBeanList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                ContactBean next = it.next();
                if (next.getmSerialId().equals(contacts.getSerialId())) {
                    contactBean = next;
                    break;
                }
            }
        }
        return contactBean;
    }

    public ContactBean findContactsBean(CallLogBean callLogBean) {
        if (callLogBean == null) {
            return null;
        }
        synchronized (this.mContactBeanList) {
            for (ContactBean contactBean : this.mContactBeanList) {
                Iterator<String> it = contactBean.getMobile().iterator();
                while (it.hasNext()) {
                    if (it.next().equals(callLogBean.getNumber())) {
                        return contactBean;
                    }
                }
            }
            return null;
        }
    }

    public void updateSimpleDateFormat(boolean z) {
        if (z) {
            this.sdf24Hour = new SimpleDateFormat("yyyy/M/d-HH:mm");
        } else {
            this.sdf24Hour = new SimpleDateFormat("yyyy/M/d-hh:mm");
        }
    }

    public boolean isCallActive() {
        if (this.mPhoneCalls.size() <= 0) {
            return false;
        }
        Iterator<PhoneCall> it = this.mPhoneCalls.iterator();
        while (it.hasNext()) {
            if (it.next().getCallState() == 4) {
                Log.d(this.TAG, "isCallActive: true!");
                return true;
            }
        }
        return false;
    }
}
