package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: com.facebook.ads.redexgen.X.7D  reason: invalid class name */
public final class AnonymousClass7D {
    public static AnonymousClass00 A0A;
    public static byte[] A0B;
    public static String[] A0C;
    public static final String A0D = AnonymousClass7D.class.getSimpleName();
    public static final Map<String, AnonymousClass06> A0E = Collections.synchronizedMap(new HashMap());
    public long A00;
    public JJ A01;
    public final Handler A02;
    public final AnonymousClass7E A03;
    public final AnonymousClass8D A04;
    public final List<Callable<Boolean>> A05;
    public final List<Callable<Boolean>> A06;
    public final Map<String, Bitmap> A07 = Collections.synchronizedMap(new HashMap());
    public final boolean A08;
    public final boolean A09;

    public static String A08(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 10);
        }
        return new String(copyOfRange);
    }

    public static void A0D() {
        A0B = new byte[]{-70, -66, -64, -63, -71, -21, -22, -63, 126, 122, 126, -85, -126, Byte.MAX_VALUE, -84, 123, 109, -102, -100, 110, -102, 105, 96, 126, Byte.MIN_VALUE, -123, -126, 61, -112, -111, 126, -113, -111, -126, -127, 75, -119, -89, -87, -82, -81, -76, -83, 102, -87, -75, -77, -74, -78, -85, -70, -85, -113, -83, -81, -76, -75, -70, -77, 108, -78, -83, -75, -72, -79, -80, Byte.MAX_VALUE, -99, -97, -92, -91, -86, -93, 92, -81, -80, -99, -82, -80, -95, -96, 106, 106, 106, 102, -103, -124, -122, -111, -107, -118, -112, -113, 65, -104, -119, -118, -115, -122, 65, -122, -103, -122, -124, -106, -107, -118, -113, -120, 65, -124, -126, -124, -119, -122, 65, -123, -112, -104, -113, -115, -112, -126, -123, -108, 79, -86, -88, -86, -81, -84, -118, -74, -76, -73, -77, -84, -69, -80, -74, -75, -113, -74, -74, -78, -79, -81, -79, -74, -77, -108, -81, -73, -70, -61, -64, -77, -106, -67, -67, -71, 122, -115, 122, 120, -118, -119, 122, -113, -110, -124, -121, -24, -21, -35, -32, -37, -16, -27, -23, -31, -37, -23, -17, -20, -31, -24, -16};
    }

    public static void A0E() {
        A0C = new String[]{"8gkZjHnxCvZyg7TzwjjGeSdvls9L7Gam", "fcbSC3ja3K2jNylkxCBC51G6bXitMdQ0", "2foOCT", "ocB0m3", "KfMQJM794wt5IuG", "feDb68pnVWWOEqV45c", "KnEa0S3Tnigt4irEXno07XBXpnYxFsFq", "aK1UKkDbG3zR1xh0x3umKxUvmkPLseuR"};
    }

    static {
        A0E();
        A0D();
    }

    public AnonymousClass7D(AnonymousClass8D r3) {
        this.A04 = r3;
        this.A02 = new Handler(Looper.getMainLooper());
        this.A03 = AnonymousClass7E.A06(r3.A00());
        this.A05 = new ArrayList();
        this.A06 = new ArrayList();
        this.A08 = J4.A1i(r3);
        this.A09 = J4.A1s(r3, C0751Py.A04());
    }

    public static synchronized AnonymousClass00 A03(XK xk) {
        AnonymousClass00 r0;
        synchronized (AnonymousClass7D.class) {
            if (A0A == null) {
                A0A = AnonymousClass01.A00(xk, new AnonymousClass07().A00(J4.A04(xk)).A02(xk.A03().A7x()).A01(-1).A03(J4.A0j(xk)).A04(J4.A1q(xk)).A05(), A05(xk));
            }
            r0 = A0A;
        }
        return r0;
    }

    public static AnonymousClass06 A04(AnonymousClass8D r2, String str) {
        AnonymousClass06 r1 = A0E.get(str);
        if (!AnonymousClass7G.A06(r2) || r1 == null) {
            return new AnonymousClass06(str);
        }
        return new AnonymousClass06(r1);
    }

    public static AnonymousClass0L A05(XK xk) {
        return new XG(xk);
    }

    public static AtomicBoolean A0B(ArrayList<Callable<Boolean>> arrayList) {
        ArrayList<Future> arrayList2 = new ArrayList(arrayList.size());
        Iterator<Callable<Boolean>> it = arrayList.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            String[] strArr = A0C;
            if (strArr[3].length() != strArr[2].length()) {
                throw new RuntimeException();
            }
            A0C[5] = "";
            if (hasNext) {
                arrayList2.add(ExecutorC0637Lm.A02().submit(it.next()));
            } else {
                AtomicBoolean atomicBoolean = new AtomicBoolean(true);
                try {
                    for (Future future : arrayList2) {
                        atomicBoolean.set(atomicBoolean.get() && ((Boolean) future.get()).booleanValue());
                    }
                } catch (InterruptedException | ExecutionException e) {
                    Log.e(A0D, A08(84, 42, 23), e);
                    atomicBoolean.set(false);
                }
                return atomicBoolean;
            }
        }
    }

    /* access modifiers changed from: private */
    public void A0G(JI ji) {
        if (this.A01 != null) {
            HashMap hashMap = new HashMap();
            hashMap.put(A08(172, 12, 114), LZ.A04(this.A00));
            this.A01.A03(ji, hashMap);
        }
    }

    @Nullable
    public final Bitmap A0I(String str) {
        return this.A07.get(str);
    }

    @Nullable
    public final Bitmap A0J(String str, int i, int i2) {
        if (!this.A08) {
            return this.A03.A0E(this.A04, str, i, i2, A08(168, 4, 25));
        }
        AnonymousClass06 A042 = A04(this.A04, str);
        A042.A03 = A08(184, 4, FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION);
        A042.A01 = i2;
        A042.A00 = i;
        return A03(this.A04.A00()).ADJ(A042, true).A00();
    }

    @Nullable
    public final File A0K(String str) {
        AnonymousClass06 A042 = A04(this.A04, str);
        A042.A03 = A08(184, 4, FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION);
        return A03(this.A04.A00()).ADK(A042);
    }

    @Nullable
    public final File A0L(String str) {
        if (this.A08) {
            return A0K(str);
        }
        return this.A03.A0F(str);
    }

    public final String A0M(String str) {
        if (this.A08) {
            return A0N(str);
        }
        return this.A03.A0G(str);
    }

    public final String A0N(String cachedUrl) {
        AnonymousClass06 A042 = A04(this.A04, cachedUrl);
        A042.A03 = A08(184, 4, FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION);
        String ADM = A03(this.A04.A00()).ADM(A042);
        return ADM != null ? ADM : cachedUrl;
    }

    public final String A0O(String str) {
        if (this.A09) {
            return str;
        }
        return A0N(str);
    }

    public final void A0P() {
        C0601Jz.A05(A08(126, 19, 61), A08(36, 16, 60), A08(16, 6, 44));
    }

    public final void A0Q() {
        C0601Jz.A05(A08(145, 16, 68), A08(52, 14, 66), A08(0, 8, 127));
    }

    public final void A0R() {
        this.A07.clear();
    }

    public final void A0S(@Nullable AnonymousClass75 r11, AnonymousClass76 r12) {
        C0601Jz.A05(A08(161, 7, 11), A08(66, 18, 50), A08(8, 8, 64));
        this.A00 = System.currentTimeMillis();
        AnonymousClass7G.A02(this.A04, r12, AnonymousClass7G.A07, A08(22, 14, 19), -1);
        ExecutorC0637Lm.A03().execute(new XF(this, new ArrayList(this.A05), r11, r12, new ArrayList(this.A06)));
        this.A05.clear();
        this.A06.clear();
    }

    public final void A0T(AnonymousClass7A r3) {
        AnonymousClass7B r1 = new AnonymousClass7B(this, r3);
        if (!r3.A02) {
            this.A05.add(r1);
        } else {
            this.A06.add(r1);
        }
    }

    public final void A0U(AnonymousClass7A r2) {
        r2.A02 = true;
        A0T(r2);
    }

    public final void A0V(AnonymousClass7C r3) {
        this.A05.add(new AnonymousClass79(this, r3));
    }

    public final void A0W(AnonymousClass7C r3) {
        r3.A05 = true;
        this.A06.add(new AnonymousClass79(this, r3));
    }

    public final void A0X(AnonymousClass7C r3) {
        r3.A05 = true;
        if (this.A09) {
            this.A06.add(new AnonymousClass78(this, r3));
        } else {
            this.A06.add(new AnonymousClass79(this, r3));
        }
    }

    public final void A0Y(AnonymousClass7C r3) {
        if (this.A09) {
            this.A05.add(new AnonymousClass78(this, r3));
        } else {
            this.A05.add(new AnonymousClass79(this, r3));
        }
    }

    public final void A0Z(JJ jj) {
        this.A01 = jj;
    }
}
