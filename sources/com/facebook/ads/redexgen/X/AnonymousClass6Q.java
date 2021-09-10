package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import java.util.List;
import java.util.Map;
import javax.annotation.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.6Q  reason: invalid class name */
public final class AnonymousClass6Q {
    public static final String A08 = AnonymousClass6Q.class.getSimpleName();
    public final int A00;
    public final Context A01;
    public final C02715v A02;
    public final AnonymousClass6C A03 = new AnonymousClass6C();
    public final UA A04;
    public final UB A05;
    public final UC A06;
    public final C02996x A07;

    public AnonymousClass6Q(Context context, C02715v r5) {
        AnonymousClass6T r2 = new AnonymousClass6T(context, new AnonymousClass6U(new AnonymousClass6W(context, r5)), r5);
        this.A01 = context;
        this.A05 = r2.A0B();
        this.A06 = r2.A0C();
        this.A04 = r2.A0A();
        this.A00 = r2.A09();
        this.A02 = r5;
        this.A03.A01(this.A04);
        this.A07 = r2.A0D();
        this.A07.A03();
    }

    /* JADX INFO: Multiple debug info for r0v7 java.util.List<com.facebook.ads.redexgen.X.6t>: [D('jsonArray' org.json.JSONArray), D('key' java.lang.Integer)] */
    @SuppressLint({"BadMethodUse-android.util.Log.e", "CatchGeneralException"})
    public static JSONObject A00() {
        JSONObject jsonSignalObject = new JSONObject();
        Map<Integer, AnonymousClass60<AbstractC02956t>> A032 = C02826g.A01().A03();
        if (A032 == null || A032.isEmpty()) {
            return jsonSignalObject;
        }
        try {
            for (Integer num : A032.keySet()) {
                List<AbstractC02956t> A042 = A032.get(num).A04();
                JSONArray jSONArray = new JSONArray();
                for (AbstractC02956t r1 : A042) {
                    jSONArray.put(r1.A0A(true));
                }
                jsonSignalObject.put(num.toString(), jSONArray);
            }
        } catch (Throwable th) {
            AnonymousClass67.A04(th);
        }
        return jsonSignalObject;
    }

    @SuppressLint({"BadMethodUse-java.lang.System.currentTimeMillis"})
    private void A01(String str, EnumC02816f r14, EnumC02856j r15) {
        AnonymousClass65 A0Y = this.A02.A0Y();
        if (A0Y != null) {
            A0Y.A8n(AnonymousClass72.A05(), str, this.A00, r14.A03(), (int) (System.currentTimeMillis() / 1000), A00(), r15);
        }
        AnonymousClass72.A0C(this.A02, AnonymousClass62.A07.A02(), str);
    }

    public final void A02() {
        this.A03.A00();
    }

    public final void A03(EnumC02816f r3) {
        this.A04.A04(r3, this.A01);
    }

    public final void A04(EnumC02836h r2, EnumC02816f r3, @Nullable String str) {
        A05(r2, r3, str, EnumC02856j.A04);
    }

    public final void A05(EnumC02836h r2, EnumC02816f r3, @Nullable String str, EnumC02856j r5) {
        this.A05.A05(r3);
        if (r2 == EnumC02836h.A02) {
            this.A06.A04(r3);
            if (str != null) {
                A01(str, r3, r5);
            }
        }
    }

    public final boolean A06() {
        List<C02776b> A032 = this.A05.A03();
        return A032 != null && !A032.isEmpty();
    }
}
