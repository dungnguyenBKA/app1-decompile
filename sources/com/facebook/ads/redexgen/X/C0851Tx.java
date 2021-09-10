package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import com.facebook.ads.internal.api.BuildConfigApi;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.Tx  reason: case insensitive filesystem */
public final class C0851Tx implements AnonymousClass5T {
    public static byte[] A03;
    public static String[] A04;
    public Set<AnonymousClass5W> A00 = new HashSet();
    public final AbstractC0762Qj A01;
    public final List<AnonymousClass5V> A02 = new ArrayList();

    static {
        A03();
        A02();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 107);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A03 = new byte[]{-72, -72, -67, 11, -46, -72, -67, 11, 41, 59, 59, 45, 60, 59};
    }

    public static void A03() {
        A04 = new String[]{"Yyt8Jrp", "FvQHlihhdkZe9tXm7YLHdG4gIBqm", "h7ITXytSbKbsxwMfZDKdUPEvMsTrizAq", "0TuNzKSIMRKA8K3EzRQL94hbriXTa7QT", "ySuQOOQJHVodSpCznPaDLfXVVxuxvbGA", "XYB8XYCfCTfWBGtKG07Wi1HuHmIQx2qC", "71D0xe3tljOi7f3b0iOVOXaXnoSWhNo4", "dwdYeokke3ChTNA3vTF4hdqHGwVronGN"};
    }

    public C0851Tx(AbstractC0774Qv qv) {
        this.A01 = qv.A4O(EnumC0763Qk.A0B);
        this.A01.A3J(new C0850Tw(this));
        A04();
    }

    /* JADX INFO: Multiple debug info for r0v4 com.facebook.ads.redexgen.X.Ty: [D('assetJson' org.json.JSONObject), D('asset' com.facebook.ads.redexgen.X.5W)] */
    @Nullable
    public static Set<AnonymousClass5W> A01(JSONObject jSONObject) {
        C0852Ty A002;
        HashSet hashSet = new HashSet();
        JSONArray optJSONArray = jSONObject.optJSONArray(A00(8, 6, 93));
        if (optJSONArray == null) {
            return null;
        }
        for (int i = 0; i < optJSONArray.length(); i++) {
            JSONObject assetJson = optJSONArray.optJSONObject(i);
            if (assetJson == null || (A002 = C0852Ty.A00(assetJson)) == null) {
                return null;
            }
            hashSet.add(A002);
            if (A04[1].length() != 21) {
                String[] strArr = A04;
                strArr[6] = "2zeGpFgTpOohtr7xv9EhLTO87hKhrQIZ";
                strArr[3] = "Z45Lb0RXWpRaUi2IX7mXCACeVe5qt7dU";
            } else {
                throw new RuntimeException();
            }
        }
        return hashSet;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private synchronized void A04() {
        if (!this.A01.A89()) {
            BuildConfigApi.isDebug();
            return;
        }
        Set<AnonymousClass5W> A012 = A01(this.A01.A6B());
        if (!this.A00.equals(A012) && A012 != null) {
            this.A00 = A012;
            for (AnonymousClass5V listener : this.A02) {
                listener.A3U();
            }
        }
        if (BuildConfigApi.isDebug()) {
            for (AnonymousClass5W r5 : this.A00) {
                String.format(Locale.US, A00(0, 8, 45), r5.A7Q(), r5.getUrl());
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass5T
    public final void A3H(AnonymousClass5V r2) {
        this.A02.add(r2);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass5T
    public final synchronized Set<AnonymousClass5W> A5c() {
        return new HashSet(this.A00);
    }
}
