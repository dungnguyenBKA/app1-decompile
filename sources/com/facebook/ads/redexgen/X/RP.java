package com.facebook.ads.redexgen.X;

import java.io.File;

public final class RP implements AnonymousClass03<File> {
    @Override // com.facebook.ads.redexgen.X.AnonymousClass03
    public final AnonymousClass02<File> A3E(File file, AnonymousClass0L r5) {
        if (file.exists()) {
            return new AnonymousClass02<>(true, file);
        }
        return new AnonymousClass02<>(false, null);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass03
    public final void A4C(File file, AnonymousClass0L r2) {
    }
}
