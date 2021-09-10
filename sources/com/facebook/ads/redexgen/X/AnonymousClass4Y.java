package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.4Y  reason: invalid class name */
public final class AnonymousClass4Y extends G7 implements G6 {
    public static byte[] A01;
    public boolean A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 58);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{70, 113, 106, 96, 104, 97, 36, 106, 107, 112, 36, 118, 97, 101, 96, 125};
    }

    public final synchronized void A07() {
        this.A00 = true;
    }

    public final synchronized boolean A08(AtomicReference<JSONObject> atomicReference, AtomicReference<JSONObject> atomicReference2) {
        if (!A89()) {
            throw new IllegalStateException(A00(0, 16, 62));
        } else if (!this.A00) {
            atomicReference2.set(A6W());
            return false;
        } else {
            atomicReference.set(A6B());
            atomicReference2.set(A6W());
            this.A00 = false;
            return true;
        }
    }
}
