package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.facebook.ads.AdError;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;

@KeepName
public final class DataHolder extends AbstractSafeParcelable implements Closeable {
    public static final Parcelable.Creator<DataHolder> CREATOR = new b();
    private final int b;
    private final String[] c;
    private Bundle d;
    private final CursorWindow[] e;
    private final int f;
    private final Bundle g;
    private int[] h;
    private boolean i = false;
    private boolean j = true;

    static {
        Objects.requireNonNull(new String[0], "null reference");
        new ArrayList();
        new HashMap();
    }

    DataHolder(int i2, String[] strArr, CursorWindow[] cursorWindowArr, int i3, Bundle bundle) {
        this.b = i2;
        this.c = strArr;
        this.e = cursorWindowArr;
        this.f = i3;
        this.g = bundle;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            if (!this.i) {
                this.i = true;
                int i2 = 0;
                while (true) {
                    CursorWindow[] cursorWindowArr = this.e;
                    if (i2 >= cursorWindowArr.length) {
                        break;
                    }
                    cursorWindowArr[i2].close();
                    i2++;
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // java.lang.Object
    public final void finalize() {
        boolean z;
        try {
            if (this.j && this.e.length > 0) {
                synchronized (this) {
                    z = this.i;
                }
                if (!z) {
                    close();
                    String obj = toString();
                    StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 178);
                    sb.append("Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: ");
                    sb.append(obj);
                    sb.append(")");
                    Log.e("DataBuffer", sb.toString());
                }
            }
        } finally {
            super.finalize();
        }
    }

    public final void o() {
        this.d = new Bundle();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            String[] strArr = this.c;
            if (i3 >= strArr.length) {
                break;
            }
            this.d.putInt(strArr[i3], i3);
            i3++;
        }
        this.h = new int[this.e.length];
        int i4 = 0;
        while (true) {
            CursorWindow[] cursorWindowArr = this.e;
            if (i2 < cursorWindowArr.length) {
                this.h[i2] = i4;
                i4 += this.e[i2].getNumRows() - (i4 - cursorWindowArr[i2].getStartPosition());
                i2++;
            } else {
                return;
            }
        }
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a = b.a(parcel);
        b.s(parcel, 1, this.c, false);
        b.u(parcel, 2, this.e, i2, false);
        b.k(parcel, 3, this.f);
        b.e(parcel, 4, this.g, false);
        b.k(parcel, AdError.NETWORK_ERROR_CODE, this.b);
        b.b(parcel, a);
        if ((i2 & 1) != 0) {
            close();
        }
    }
}
