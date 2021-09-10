package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Message;
import android.view.MotionEvent;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.Nullable;

/* renamed from: com.facebook.ads.redexgen.X.6B  reason: invalid class name */
public final class AnonymousClass6B {
    @Nullable
    public static AnonymousClass6B A07;
    public static String[] A08;
    public static final AtomicBoolean A09 = new AtomicBoolean();
    public AnonymousClass6A A00 = new AnonymousClass6A(this, C03016z.A00().A04().getLooper());
    public AnonymousClass6K A01;
    public AnonymousClass6L A02;
    public List<AnonymousClass6O> A03;
    public final Context A04;
    public final C02715v A05;
    public final EnumC02846i A06;

    public static void A02() {
        A08 = new String[]{"lhELmGRUtbYPcwJFNCjn5HfCntRtzqQU", "Mt1hbHTlPicMeG4rtX3JBcBhsjGdj", "WXTUL6dhKmyeG13MmR9X1nSF3ta0T4v7", "pnvqG2PyjZWupJIeMnGxGNF5M9wfPV2M", "tVIu8wQwIUzvrLJUsX9QEkuDOevngDVu", "qDTAVfu3jvCTQwnOSiE3SjcB7mVx4hBM", "klm6aBATY902pfwdRKxrpHOkJcym9ne5", "D4wxrsR0ab6WquJuKpvZlDWLQMdeNXqb"};
    }

    static {
        A02();
    }

    public AnonymousClass6B(C02715v r3, Context context) {
        this.A05 = r3;
        this.A04 = context;
        this.A06 = r3.A0a();
    }

    public static synchronized AnonymousClass6B A00(Context context, C02715v r3) {
        AnonymousClass6B r0;
        synchronized (AnonymousClass6B.class) {
            if (A07 == null) {
                A07 = new AnonymousClass6B(r3, context);
            }
            r0 = A07;
        }
        return r0;
    }

    private synchronized void A03() {
        A09.set(false);
        this.A03 = new ArrayList();
        String[] strArr = A08;
        if (strArr[2].charAt(18) != strArr[4].charAt(18)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A08;
        strArr2[3] = "OJ9tJzFQNQxQ8qaEQfi4ar7y8Z5YVilt";
        strArr2[1] = "oKX4c494QlidqOlhH9QFYLNn1ihcq";
    }

    public final synchronized void A04() {
        if (this.A01 != null) {
            this.A01.A04(this.A03);
        }
        A03();
    }

    public final synchronized void A05(Map<Integer, C02776b> map, EnumC02816f r7) {
        A03();
        AnonymousClass6F r3 = new AnonymousClass6F(this.A05, map);
        for (Map.Entry<Integer, C02776b> entry : map.entrySet()) {
            C02776b value = entry.getValue();
            if (value != null) {
                if (value.A04(r7)) {
                    int intValue = entry.getKey().intValue();
                    if (intValue != 10800) {
                        switch (intValue) {
                            case 10810:
                                this.A03.add(AnonymousClass6O.A04);
                                continue;
                            case 10811:
                                this.A03.add(AnonymousClass6O.A08);
                                continue;
                            case 10812:
                                this.A03.add(AnonymousClass6O.A0A);
                                continue;
                            case 10813:
                                this.A03.add(AnonymousClass6O.A07);
                                continue;
                            case 10814:
                                this.A03.add(AnonymousClass6O.A0B);
                                continue;
                            case 10815:
                                this.A03.add(AnonymousClass6O.A0C);
                                continue;
                            case 10816:
                                this.A03.add(AnonymousClass6O.A0E);
                                continue;
                            case 10817:
                                this.A03.add(AnonymousClass6O.A09);
                                continue;
                            case 10818:
                                this.A03.add(AnonymousClass6O.A06);
                                continue;
                            case 10819:
                                this.A03.add(AnonymousClass6O.A05);
                                continue;
                            case 10820:
                                this.A03.add(AnonymousClass6O.A0D);
                                continue;
                            default:
                                continue;
                        }
                    } else {
                        this.A02 = new AnonymousClass6L(this.A04, r3, this.A06);
                        A09.set(true);
                    }
                }
            }
        }
        this.A01 = new AnonymousClass6K(this.A04, r3, this.A06);
        this.A01.A03(this.A03);
        if (!this.A00.getLooper().getThread().isAlive()) {
            this.A00 = new AnonymousClass6A(this, C03016z.A00().A04().getLooper());
        }
    }

    public final synchronized boolean A06(MotionEvent motionEvent) {
        if (!A09.get()) {
            return false;
        }
        Message message = new Message();
        message.what = AnonymousClass69.A03.ordinal();
        message.obj = motionEvent;
        this.A00.sendMessage(message);
        return true;
    }
}
