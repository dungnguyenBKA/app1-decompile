package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.SystemClock;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.6x  reason: invalid class name and case insensitive filesystem */
public final class C02996x {
    public int A00;
    public final Context A01;
    public final C02715v A02;
    public final AbstractC02966u A03;
    public final AbstractC02976v A04;
    public final Set<C02776b> A05 = new HashSet();

    public C02996x(Context context, C02715v r3) {
        this.A02 = r3;
        this.A01 = context;
        this.A04 = r3.A0c();
        this.A03 = r3.A0b();
    }

    @Nullable
    private C02936r A00() {
        String packageName;
        if (this.A02.A0a() == EnumC02846i.A0G) {
            return null;
        }
        Context context = this.A01;
        if (context == null) {
            packageName = "";
        } else {
            packageName = context.getPackageName();
        }
        return new C02936r(packageName);
    }

    @SuppressLint({"CatchGeneralException"})
    private void A01(long j) {
        AbstractC02956t signalValueTypeDef;
        try {
            JSONObject jSONObject = new JSONObject();
            for (C02776b r6 : this.A05) {
                AbstractC02806e A012 = r6.A01();
                if (A012 == null) {
                    signalValueTypeDef = new X4(SystemClock.elapsedRealtime(), A00(), new C02926q(EnumC02916p.A04));
                } else {
                    try {
                        signalValueTypeDef = A012.A5F();
                    } catch (Throwable th) {
                        signalValueTypeDef = AnonymousClass72.A04(this.A01.getPackageName(), th);
                    }
                }
                jSONObject.put(Integer.toString(r6.A00()), signalValueTypeDef.A0A(false));
            }
            throw null;
        } catch (Throwable t) {
            AnonymousClass67.A04(t);
        }
    }

    @SuppressLint({"CatchGeneralException"})
    private void A02(long j) {
        try {
            this.A02.A0j().schedule(new RunnableC02986w(this), j, TimeUnit.MILLISECONDS);
        } catch (Throwable th) {
            AnonymousClass67.A04(th);
        }
    }

    @SuppressLint({"BadMethodUse-java.lang.System.currentTimeMillis"})
    public final void A03() {
        if (this.A02.A0W() > 0) {
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - this.A04.getLastPeriodicCollectionTimeMs() >= this.A02.A0W()) {
                A01(currentTimeMillis);
                A02(this.A02.A0W());
                return;
            }
            A02(Math.abs(currentTimeMillis - (this.A04.getLastPeriodicCollectionTimeMs() + this.A02.A0W())));
        }
    }

    public final void A04(int i) {
        this.A00 = i;
    }

    public final void A05(C02776b r2) {
        this.A05.add(r2);
    }
}
