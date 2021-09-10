package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import java.util.UUID;

public interface CB {
    byte[] executeKeyRequest(UUID uuid, C2 c2, @Nullable String str) throws Exception;

    byte[] executeProvisionRequest(UUID uuid, C6 c6) throws Exception;
}
