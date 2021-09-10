package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.vungle.warren.error.VungleException;
import java.util.ArrayList;

public final class f implements Parcelable.Creator<WakeLockEvent> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final WakeLockEvent createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        long j = 0;
        long j2 = 0;
        long j3 = 0;
        String str = null;
        ArrayList<String> arrayList = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        float f = 0.0f;
        boolean z2 = false;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = a.t(parcel, readInt);
                    break;
                case 2:
                    j = a.v(parcel, readInt);
                    break;
                case 3:
                case 7:
                case 9:
                default:
                    a.y(parcel, readInt);
                    break;
                case 4:
                    str = a.g(parcel, readInt);
                    break;
                case 5:
                    i3 = a.t(parcel, readInt);
                    break;
                case 6:
                    arrayList = a.i(parcel, readInt);
                    break;
                case 8:
                    j2 = a.v(parcel, readInt);
                    break;
                case 10:
                    str3 = a.g(parcel, readInt);
                    break;
                case 11:
                    i2 = a.t(parcel, readInt);
                    break;
                case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                    str2 = a.g(parcel, readInt);
                    break;
                case 13:
                    str4 = a.g(parcel, readInt);
                    break;
                case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                    i4 = a.t(parcel, readInt);
                    break;
                case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                    f = a.q(parcel, readInt);
                    break;
                case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                    j3 = a.v(parcel, readInt);
                    break;
                case 17:
                    str5 = a.g(parcel, readInt);
                    break;
                case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                    z2 = a.m(parcel, readInt);
                    break;
            }
        }
        a.l(parcel, z);
        return new WakeLockEvent(i, j, i2, str, i3, arrayList, str2, j2, i4, str3, str4, f, j3, str5, z2);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ WakeLockEvent[] newArray(int i) {
        return new WakeLockEvent[i];
    }
}
