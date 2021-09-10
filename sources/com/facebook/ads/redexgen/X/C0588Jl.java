package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.facebook.ads.AdError;
import com.facebook.ads.internal.protocol.AdErrorType;

/* renamed from: com.facebook.ads.redexgen.X.Jl  reason: case insensitive filesystem */
public final class C0588Jl {
    public final AdErrorType A00;
    public final String A01;

    public C0588Jl(int i, String str) {
        this(AdErrorType.adErrorTypeFromCode(i), str);
    }

    public C0588Jl(AdErrorType adErrorType, @Nullable String str) {
        str = TextUtils.isEmpty(str) ? adErrorType.getDefaultErrorMessage() : str;
        this.A00 = adErrorType;
        this.A01 = str;
    }

    public static AdError A00(C0588Jl jl) {
        if (jl.A04().isPublicError()) {
            return new AdError(jl.A04().getErrorCode(), jl.A05());
        }
        return new AdError(AdErrorType.UNKNOWN_ERROR.getErrorCode(), AdErrorType.UNKNOWN_ERROR.getDefaultErrorMessage());
    }

    public static C0588Jl A01(AdErrorType adErrorType) {
        return new C0588Jl(adErrorType, (String) null);
    }

    public static C0588Jl A02(AdErrorType adErrorType, @Nullable String str) {
        return new C0588Jl(adErrorType, str);
    }

    public static C0588Jl A03(C0589Jm jm) {
        return new C0588Jl(jm.A00(), jm.A01());
    }

    public final AdErrorType A04() {
        return this.A00;
    }

    public final String A05() {
        return this.A01;
    }
}
