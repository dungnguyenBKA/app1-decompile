package com.facebook.ads.redexgen.X;

import android.os.AsyncTask;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.ads.internal.util.common.Preconditions;
import java.util.Arrays;
import java.util.UUID;

/* renamed from: com.facebook.ads.redexgen.X.9L  reason: invalid class name */
public class AnonymousClass9L extends AsyncTask<Void, Void, String> {
    public static byte[] A05;
    public static String[] A06;
    @Nullable
    public C03479e A00;
    public final AnonymousClass8D A01;
    public final AnonymousClass9H<String> A02;
    public final AnonymousClass9V<J9> A03;
    public final J9 A04;

    static {
        A03();
        A02();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 55);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A05 = new byte[]{26, 40, 31, 31, 2, 31, 77, 0, 8, 30, 30, 12, 10, 8, 77, 14, 12, 3, 3, 2, 25, 77, 15, 8, 77, 3, 24, 1, 1, 13, 46, 38, 38, 40, 47, 38, 97, 36, 55, 36, 47, 53, 123, 97, 9, 30, 24, 20, 9, 31, 36, 31, 26, 15, 26, 25, 26, 8, 30};
    }

    public static void A03() {
        A06 = new String[]{"eZRg0", "9V6E8W", "xj5QhV", "OA95VIvTvwhgOpg1JzD5APn5ld4Fxl09", "KVXKxw3vFVm2nsonOqXLQ2M9", "1wiEXg5TWKy6aTJl", "hr3sX5JQ1zlqribj", "Vt9t5ut5ZgjhHbMTByjzA5y3IT5Rov5"};
    }

    public AnonymousClass9L(J9 j9, AnonymousClass9H<String> r2, AnonymousClass9V<J9> r3, AnonymousClass8D r4) {
        this.A04 = j9;
        this.A03 = r3;
        this.A02 = r2;
        this.A01 = r4;
    }

    @Nullable
    private final String A01(Void... voidArr) {
        if (KT.A02(this)) {
            return null;
        }
        String str = null;
        try {
            str = UUID.randomUUID().toString();
            this.A01.A04().A7n(this.A04.A07().toString());
            if (TextUtils.isEmpty(this.A04.A09())) {
                return null;
            }
            if (BuildConfigApi.isDebug()) {
                String str2 = A00(29, 15, 118) + this.A04.A07().toString() + A00(0, 1, 13) + this.A04.A0A().toString();
            }
            this.A03.AEE(Y0.A07(str, this.A04));
            return str;
        } catch (C03479e e) {
            this.A00 = e;
            this.A01.A04().A8V(A00(44, 15, 76), C03228e.A23, new C03238f(e));
        } catch (Throwable th) {
            KT.A00(th, this);
            return null;
        }
    }

    private final void A04(String str) {
        if (!KT.A02(this)) {
            try {
                if (this.A00 == null) {
                    this.A02.A03(str);
                } else {
                    this.A02.A02(0, (String) Preconditions.checkNotNull(this.A00.getMessage(), A00(1, 28, 90)));
                }
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object[]] */
    @Override // android.os.AsyncTask
    @Nullable
    public final /* bridge */ /* synthetic */ String doInBackground(Void[] voidArr) {
        if (KT.A02(this)) {
            return null;
        }
        try {
            return A01(voidArr);
        } catch (Throwable th) {
            KT.A00(th, this);
            if (A06[7].length() != 31) {
                throw new RuntimeException();
            }
            A06[1] = "V";
            return null;
        }
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(String str) {
        if (!KT.A02(this)) {
            try {
                A04(str);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
