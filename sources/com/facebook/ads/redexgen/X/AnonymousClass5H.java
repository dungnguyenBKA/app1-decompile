package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.5H  reason: invalid class name */
public class AnonymousClass5H extends AsyncTask<AnonymousClass5J, Void, Drawable> {
    public static byte[] A03;
    public static String[] A04;
    public final AnonymousClass5I A00;
    public final XJ A01;
    public final boolean A02;

    static {
        A03();
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 118);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A03 = new byte[]{59, 57, 50, 57, 46, 53, 63};
    }

    public static void A03() {
        A04 = new String[]{"1BJo9noXfKND6AuvSNdcB1V3GCwIAiOG", "Zj7TA2K", "dGMOiNue98uIHvh7voSV0LAZFWXYzfEv", "CcnxrNYo5kyWzKS3XGCDqe4PQiCtH", "knheqnusZFI0swerek9wKwEDBcdWqhKt", "XjDOSOe9Ixcmw73z7hfuGI1aFjWKj", "M2ugdIZCKbhB2vBaVocVLhBvD0BsDTY5", "metH7Y2aXkNKgtpuuGKiPWqQd6SU"};
    }

    public AnonymousClass5H(XJ xj, AnonymousClass5I r2, boolean z) {
        this.A01 = xj;
        this.A00 = r2;
        this.A02 = z;
    }

    public /* synthetic */ AnonymousClass5H(XJ xj, AnonymousClass5I r2, boolean z, C0843Tp tp) {
        this(xj, r2, z);
    }

    @SuppressLint({"CatchGeneralException"})
    private final Drawable A00(AnonymousClass5J... r10) {
        Bitmap A0J;
        if (!KT.A02(this) && r10 != null) {
            try {
                if (r10.length >= 1) {
                    String str = r10[0].A01;
                    String str2 = r10[0].A00;
                    try {
                        A0J = new AnonymousClass7D(this.A01).A0J(str, -1, -1);
                    } catch (Throwable th) {
                        this.A01.A04().A8V(A01(0, 7, 42), C03228e.A1E, new C03238f(th));
                    }
                    if (A0J != null) {
                        return C1143cD.A05(this.A01, A0J, this.A02, str2);
                    }
                    return null;
                }
            } catch (Throwable th2) {
                KT.A00(th2, this);
                return null;
            }
        }
        return null;
    }

    private final void A04(Drawable drawable) {
        if (!KT.A02(this)) {
            try {
                this.A00.AAK(drawable);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object[]] */
    @Override // android.os.AsyncTask
    @SuppressLint({"CatchGeneralException"})
    public final /* bridge */ /* synthetic */ Drawable doInBackground(AnonymousClass5J[] r4) {
        if (KT.A02(this)) {
            return null;
        }
        try {
            return A00(r4);
        } catch (Throwable th) {
            KT.A00(th, this);
            return null;
        }
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(Drawable drawable) {
        if (!KT.A02(this)) {
            try {
                A04(drawable);
            } catch (Throwable th) {
                KT.A00(th, this);
                String[] strArr = A04;
                if (strArr[0].charAt(5) != strArr[4].charAt(5)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A04;
                strArr2[1] = "H4qVqfS";
                strArr2[7] = "3NPSPTmKkS9byZNXvPXu57LevjUG";
            }
        }
    }
}
