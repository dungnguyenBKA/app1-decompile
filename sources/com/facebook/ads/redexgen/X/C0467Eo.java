package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.Eo  reason: case insensitive filesystem */
public class C0467Eo extends TU {
    public static String[] A00;

    static {
        A00();
    }

    public static void A00() {
        A00 = new String[]{"ebBTtcDfrXbt7XUNv2xXXzukgR", "AfSrg72OINfokWlk8lEehE43rER54C5K", "DLWRAT6zkYb5ZQ4lVerhsjeXnJdmq546", "HcA6UXt4lgXnqoCqWVxSHZRcl", "xLJGdEWbtHtgosfXVcR1IwW", "KlZdBiYd7CYsgOQcQxjIKqODuE8wujbn", "gwTEk6Fa0GjLNEZ2sqovA8E7SRT86ppt", "mobLesdsIst7Z6gfBQK3QOgi9WAmLStS"};
    }

    public C0467Eo(AnonymousClass50 r2) {
        super(r2, null);
    }

    public /* synthetic */ C0467Eo(AnonymousClass50 r1, C02474w r2) {
        this(r1);
    }

    @Override // com.facebook.ads.redexgen.X.TU, com.facebook.ads.redexgen.X.M9
    public final void A3t(String rewardedVideoError) {
        if (this.A00.get() != null) {
            AnonymousClass50 r3 = this.A00.get();
            if (A00[1].charAt(12) != 'k') {
                throw new RuntimeException();
            }
            A00[0] = "wcnlDkVPCotGmNFV8gEH10X6";
            r3.A0E(rewardedVideoError);
            String A02 = PR.A08.A02();
            String A022 = PR.A09.A02();
            if (rewardedVideoError.equals(A02)) {
                this.A00.get().finish(11);
            } else if (rewardedVideoError.equals(A022)) {
                this.A00.get().finish(12);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.TU, com.facebook.ads.redexgen.X.M9
    public final void A3u(String str, AnonymousClass9E r2) {
        super.A3u(str, r2);
    }
}
