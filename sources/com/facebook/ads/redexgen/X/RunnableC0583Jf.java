package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.Jf  reason: case insensitive filesystem */
public class RunnableC0583Jf implements Runnable {
    public static byte[] A03;
    public final /* synthetic */ AnonymousClass8D A00;
    public final /* synthetic */ C0586Ji A01;
    public final /* synthetic */ String A02;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 121);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{3, 27, 5, 60, 61, 39, 32, 59, 38, 45, 89, 78, 91, 68, 89, 95, 66, 69, 76, 54, 33, 53, 49, 33, 55, 48, 27, 45, 32};
    }

    public RunnableC0583Jf(C0586Ji ji, String str, AnonymousClass8D r3) {
        this.A01 = ji;
        this.A02 = str;
        this.A00 = r3;
    }

    public final void run() {
        ArrayList arrayList;
        if (!KT.A02(this)) {
            try {
                C03238f r5 = new C03238f(A00(0, 3, 52));
                JSONObject jSONObject = new JSONObject();
                JSONArray jSONArray = new JSONArray();
                jSONObject.put(A00(3, 7, 45), jSONArray);
                jSONObject.put(A00(19, 10, 61), this.A02);
                synchronized (this.A01.A0D) {
                    arrayList = new ArrayList(this.A01.A0D);
                    this.A01.A0D.clear();
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    C0585Jh jh = (C0585Jh) it.next();
                    jSONArray.put(A00(0, 0, 60) + jh.A00 + ';' + jh.A02 + ';' + jh.A01);
                }
                r5.A05(jSONObject);
                r5.A03(1);
                this.A00.A04().A8W(A00(10, 9, 82), C03228e.A27, r5);
            } catch (JSONException unused) {
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
