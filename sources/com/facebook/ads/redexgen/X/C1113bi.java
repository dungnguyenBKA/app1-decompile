package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.bi  reason: case insensitive filesystem */
public final class C1113bi implements ID {
    public static String[] A05;
    public long A00;
    public long A01;
    public AL A02 = AL.A04;
    public boolean A03;
    public final I0 A04;

    static {
        A00();
    }

    public static void A00() {
        A05 = new String[]{"JbcDsPAiqgb9rsViVRKehTXv1iFS9Alt", "AfEyeuF2jCfkWNmIQlP22Iq9vQ5XDBZo", "cIPTiq2qkEqnYzKxb3sH3HOJO6VigB4N", "bIuwftDwBGArWYVN2grLSP1kPnHfbgfq", "1GGMxn0jatOJtlepcpEnLiyqpa0L6Zpp", "dBndgbsmlMbgteIClih73P1Nf1skDdlq", "kMZcBPwOEd1j6nxu2sFbdi5kLjNzhQnH", "M7tzCbQcNsxxyZ9EacAqZIMXmH340eiG"};
    }

    public C1113bi(I0 i0) {
        this.A04 = i0;
    }

    public final void A01() {
        if (!this.A03) {
            this.A00 = this.A04.A56();
            this.A03 = true;
        }
    }

    public final void A02() {
        if (this.A03) {
            long A73 = A73();
            if (A05[0].charAt(9) != 'F') {
                A05[0] = "yV0nDN2yEP24GlsqsYFBRUnmoDIsFkRQ";
                A03(A73);
                this.A03 = false;
                return;
            }
            throw new RuntimeException();
        }
    }

    public final void A03(long j) {
        this.A01 = j;
        if (this.A03) {
            this.A00 = this.A04.A56();
        }
    }

    @Override // com.facebook.ads.redexgen.X.ID
    public final AL A70() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.ID
    public final long A73() {
        long elapsedSinceBaseMs = this.A01;
        if (!this.A03) {
            return elapsedSinceBaseMs;
        }
        long A56 = this.A04.A56();
        if (A05[0].charAt(9) != 'F') {
            A05[1] = "ixlqsHFDPmeKY4bwdkSegalU4BLtdIOn";
            long j = A56 - this.A00;
            if (this.A02.A01 != 1.0f) {
                return elapsedSinceBaseMs + this.A02.A00(j);
            }
            long A002 = C03639u.A00(j);
            if (A05[3].charAt(4) != 'j') {
                A05[0] = "AIwpqv7aDt0R5Z0o8sSBDj22LkfdUh0v";
                return elapsedSinceBaseMs + A002;
            }
            A05[0] = "vgrMGSSY4L8ja71DPmzZRGyrcWnnIJj3";
            return elapsedSinceBaseMs + A002;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.ID
    public final AL ADq(AL al) {
        if (this.A03) {
            A03(A73());
        }
        this.A02 = al;
        return al;
    }
}
