package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import com.vungle.warren.error.VungleException;
import java.util.Arrays;

public final class ConnectionResult extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ConnectionResult> CREATOR = new j();
    public static final ConnectionResult f = new ConnectionResult(0);
    private final int b;
    private final int c;
    private final PendingIntent d;
    private final String e;

    public ConnectionResult(int i) {
        this.b = 1;
        this.c = i;
        this.d = null;
        this.e = null;
    }

    static String m0(int i) {
        if (i == 99) {
            return "UNFINISHED";
        }
        if (i == 1500) {
            return "DRIVE_EXTERNAL_STORAGE_REQUIRED";
        }
        switch (i) {
            case -1:
                return "UNKNOWN";
            case 0:
                return "SUCCESS";
            case 1:
                return "SERVICE_MISSING";
            case 2:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case 3:
                return "SERVICE_DISABLED";
            case 4:
                return "SIGN_IN_REQUIRED";
            case 5:
                return "INVALID_ACCOUNT";
            case 6:
                return "RESOLUTION_REQUIRED";
            case 7:
                return "NETWORK_ERROR";
            case 8:
                return "INTERNAL_ERROR";
            case 9:
                return "SERVICE_INVALID";
            case 10:
                return "DEVELOPER_ERROR";
            case 11:
                return "LICENSE_CHECK_FAILED";
            default:
                switch (i) {
                    case 13:
                        return "CANCELED";
                    case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                        return "TIMEOUT";
                    case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                        return "INTERRUPTED";
                    case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                        return "API_UNAVAILABLE";
                    case 17:
                        return "SIGN_IN_FAILED";
                    case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                        return "SERVICE_UPDATING";
                    case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                        return "SERVICE_MISSING_PERMISSION";
                    case 20:
                        return "RESTRICTED_PROFILE";
                    case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                        return "API_VERSION_UPDATE_REQUIRED";
                    default:
                        StringBuilder sb = new StringBuilder(31);
                        sb.append("UNKNOWN_ERROR_CODE(");
                        sb.append(i);
                        sb.append(")");
                        return sb.toString();
                }
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConnectionResult)) {
            return false;
        }
        ConnectionResult connectionResult = (ConnectionResult) obj;
        return this.c == connectionResult.c && m.a(this.d, connectionResult.d) && m.a(this.e, connectionResult.e);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.c), this.d, this.e});
    }

    public final String i0() {
        return this.e;
    }

    public final PendingIntent j0() {
        return this.d;
    }

    public final boolean k0() {
        return (this.c == 0 || this.d == null) ? false : true;
    }

    public final boolean l0() {
        return this.c == 0;
    }

    public final int o() {
        return this.c;
    }

    public final String toString() {
        m.a b2 = m.b(this);
        b2.a("statusCode", m0(this.c));
        b2.a("resolution", this.d);
        b2.a("message", this.e);
        return b2.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.k(parcel, 1, this.b);
        b.k(parcel, 2, this.c);
        b.q(parcel, 3, this.d, i, false);
        b.r(parcel, 4, this.e, false);
        b.b(parcel, a);
    }

    ConnectionResult(int i, int i2, PendingIntent pendingIntent, String str) {
        this.b = i;
        this.c = i2;
        this.d = pendingIntent;
        this.e = str;
    }

    public ConnectionResult(int i, PendingIntent pendingIntent) {
        this.b = 1;
        this.c = i;
        this.d = pendingIntent;
        this.e = null;
    }
}
