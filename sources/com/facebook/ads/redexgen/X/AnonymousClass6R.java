package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import java.util.List;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.6R  reason: invalid class name */
public abstract class AnonymousClass6R {
    public static String[] A02;
    public final Context A00;
    public final C02715v A01;

    static {
        A01();
    }

    public static void A01() {
        A02 = new String[]{"HSkcF60AiAyYJizD2I8vIjqhfibhLk4F", "vdkNajAjw36u5RvY9xFki59AuKhwr3og", "", "sseZ8EdYk7i", "1PxOfa9BsFlCUZKt15VhEMgvVyvUPrjN", "QpqokUuVk7nKJb7TmK", "vU9iDbhGXBQk4voVJMEMlbxkWIFvNann", "KoP5O6PQnxDmDbSqeBv0xhaZ"};
    }

    public AnonymousClass6R(Context context, C02715v r2) {
        this.A00 = context;
        this.A01 = r2;
    }

    private int A00(C02715v r3, C02776b r4) {
        if (r3.A0e(r4.A00()) != null) {
            return r3.A0e(r4.A00()).intValue();
        }
        if (r4.A03().contains(EnumC02846i.A0B)) {
            return r3.A0S();
        }
        if (r4.A03().contains(EnumC02846i.A08)) {
            return r3.A0R();
        }
        return r3.A0V();
    }

    /* JADX INFO: Multiple debug info for r0v10 com.facebook.ads.redexgen.X.6e: [D('signalList' java.util.List<com.facebook.ads.internal.botdetection.signals.model.BDSignal>), D('signalExecutor' com.facebook.ads.redexgen.X.6e)] */
    @SuppressLint({"CatchGeneralException"})
    public final synchronized void A02(EnumC02816f r9, List<C02776b> list) {
        AbstractC02956t r5;
        AbstractC02956t r1;
        Map<Integer, AnonymousClass60<AbstractC02956t>> A03 = C02826g.A01().A03();
        for (C02776b r6 : list) {
            AbstractC02806e signalExecutor = r6.A02(r9);
            if (signalExecutor != null) {
                try {
                    r5 = signalExecutor.A5F();
                } catch (Throwable th) {
                    r5 = AnonymousClass72.A04(this.A00.getPackageName(), th);
                }
                if (!(r5 == null || r5.A08() == null)) {
                    if (!r6.A03().contains(EnumC02846i.A0B) || !A03.containsKey(Integer.valueOf(r6.A00()))) {
                        AnonymousClass60<AbstractC02956t> r3 = new AnonymousClass60<>(A00(this.A01, r6));
                        r3.A05(r5);
                        C02826g.A01().A04(r6.A00(), r3, r5.A06());
                    } else {
                        AnonymousClass60<AbstractC02956t> r32 = A03.get(Integer.valueOf(r6.A00()));
                        if (r32 != null) {
                            r1 = r32.A03();
                        } else {
                            r1 = null;
                        }
                        if (r32 == null) {
                            r32 = new AnonymousClass60<>(A00(this.A01, r6));
                        }
                        if (r1 == null || !r5.A0C(r1, r6.A03())) {
                            r32.A05(r5);
                            C02826g.A01().A04(r6.A00(), r32, r5.A06());
                        }
                    }
                }
            }
        }
        String[] strArr = A02;
        if (strArr[0].charAt(9) != strArr[1].charAt(9)) {
            String[] strArr2 = A02;
            strArr2[5] = "mCdjiAVU6tB7YULC7P";
            strArr2[2] = "";
            return;
        }
        throw new RuntimeException();
    }
}
