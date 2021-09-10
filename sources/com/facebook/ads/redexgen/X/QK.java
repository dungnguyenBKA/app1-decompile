package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import java.util.Map;

public interface QK {
    @Nullable
    @Deprecated
    QJ ACP(String str, Map<String, String> map);

    @Nullable
    @Deprecated
    QJ ACQ(String str, byte[] bArr);

    void ACR(String str, byte[] bArr, QL ql);
}
