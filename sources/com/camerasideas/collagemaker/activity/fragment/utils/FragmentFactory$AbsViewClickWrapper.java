package com.camerasideas.collagemaker.activity.fragment.utils;

import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;

public abstract class FragmentFactory$AbsViewClickWrapper implements Parcelable {
    private static final Bundle b = new Bundle();

    public View.OnClickListener a() {
        return null;
    }

    public DialogInterface.OnCancelListener b() {
        return null;
    }

    public DialogInterface.OnDismissListener c() {
        return null;
    }

    public String d(String str) {
        return b.getString(str);
    }

    public int describeContents() {
        return 0;
    }

    public View.OnClickListener e() {
        return null;
    }

    public void f(String str, String str2) {
        b.putString(str, str2);
    }

    public void writeToParcel(Parcel parcel, int i) {
    }
}
