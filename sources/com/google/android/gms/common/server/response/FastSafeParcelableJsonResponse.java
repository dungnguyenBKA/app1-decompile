package com.google.android.gms.common.server.response;

import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;

public abstract class FastSafeParcelableJsonResponse extends FastJsonResponse implements SafeParcelable {
    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public Object c(String str) {
        return null;
    }

    public final int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public boolean e(String str) {
        return false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!getClass().isInstance(obj)) {
            return false;
        }
        FastJsonResponse fastJsonResponse = (FastJsonResponse) obj;
        for (FastJsonResponse.Field<?, ?> field : a().values()) {
            if (d(field)) {
                if (!fastJsonResponse.d(field) || !b(field).equals(fastJsonResponse.b(field))) {
                    return false;
                }
            } else if (fastJsonResponse.d(field)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int i = 0;
        for (FastJsonResponse.Field<?, ?> field : a().values()) {
            if (d(field)) {
                i = b(field).hashCode() + (i * 31);
            }
        }
        return i;
    }
}
