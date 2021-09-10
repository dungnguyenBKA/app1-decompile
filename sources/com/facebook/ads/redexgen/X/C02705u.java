package com.facebook.ads.redexgen.X;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import javax.annotation.Nullable;

/* renamed from: com.facebook.ads.redexgen.X.5u  reason: invalid class name and case insensitive filesystem */
public class C02705u {
    public double A00;
    public float A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public long A07;
    public long A08;
    public long A09;
    public AnonymousClass64 A0A;
    public AnonymousClass65 A0B;
    public AnonymousClass66 A0C;
    public EnumC02846i A0D;
    public AbstractC02966u A0E;
    public AbstractC02976v A0F;
    public Class A0G;
    @Nullable
    public String A0H;
    @Nullable
    public String A0I;
    public String A0J;
    public HashMap<Integer, Integer> A0K;
    public Map<Integer, String> A0L;
    public ScheduledExecutorService A0M;
    public boolean A0N;

    public final C02705u A00(double d) {
        this.A00 = d;
        return this;
    }

    public final C02705u A01(float f) {
        this.A01 = f;
        return this;
    }

    public final C02705u A02(int i) {
        this.A02 = i;
        return this;
    }

    public final C02705u A03(int i) {
        this.A03 = i;
        return this;
    }

    public final C02705u A04(int i) {
        this.A04 = i;
        return this;
    }

    public final C02705u A05(int i) {
        this.A05 = i;
        return this;
    }

    public final C02705u A06(int i) {
        this.A06 = i;
        return this;
    }

    public final C02705u A07(long j) {
        this.A07 = j;
        return this;
    }

    public final C02705u A08(long j) {
        this.A08 = j;
        return this;
    }

    public final C02705u A09(AnonymousClass64 r1) {
        this.A0A = r1;
        return this;
    }

    public final C02705u A0A(AnonymousClass65 r1) {
        this.A0B = r1;
        return this;
    }

    public final C02705u A0B(AnonymousClass66 r1) {
        this.A0C = r1;
        return this;
    }

    public final C02705u A0C(EnumC02846i r1) {
        this.A0D = r1;
        return this;
    }

    public final C02705u A0D(Class cls) {
        this.A0G = cls;
        return this;
    }

    public final C02705u A0E(@Nullable String str) {
        this.A0I = str;
        return this;
    }

    public final C02705u A0F(String str) {
        this.A0J = str;
        return this;
    }

    public final C02705u A0G(HashMap<Integer, Integer> circularBufferLengthMap) {
        this.A0K = circularBufferLengthMap;
        return this;
    }

    public final C02705u A0H(Map map) {
        this.A0L = map;
        return this;
    }

    public final C02705u A0I(boolean z) {
        this.A0N = z;
        return this;
    }

    public final C02715v A0J() {
        C02715v r2 = new C02715v();
        r2.A0J = this.A0N;
        r2.A02 = this.A04;
        r2.A0G = this.A0K;
        r2.A01 = this.A03;
        r2.A00 = this.A02;
        r2.A04 = this.A06;
        r2.A0F = this.A0J;
        r2.A07 = this.A0B;
        r2.A06 = this.A0A;
        double unused = C02715v.A0K = this.A00;
        r2.A09 = this.A0D;
        r2.A0H = this.A0L;
        r2.A03 = this.A05;
        r2.A0C = this.A0G;
        r2.A08 = this.A0C;
        float unused2 = C02715v.A0L = this.A01;
        long unused3 = C02715v.A0N = this.A08;
        long unused4 = C02715v.A0M = this.A07;
        r2.A05 = this.A09;
        r2.A0B = this.A0F;
        r2.A0A = this.A0E;
        r2.A0I = this.A0M;
        r2.A0D = this.A0H;
        r2.A0E = this.A0I;
        return r2;
    }
}
