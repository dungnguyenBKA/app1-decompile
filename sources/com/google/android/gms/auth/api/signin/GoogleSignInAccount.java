package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.util.d;
import com.google.android.gms.common.util.f;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class GoogleSignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new a();
    private static d o = f.d();
    private final int b;
    private String c;
    private String d;
    private String e;
    private String f;
    private Uri g;
    private String h;
    private long i;
    private String j;
    private List<Scope> k;
    private String l;
    private String m;
    private Set<Scope> n = new HashSet();

    GoogleSignInAccount(int i2, String str, String str2, String str3, String str4, Uri uri, String str5, long j2, String str6, List<Scope> list, String str7, String str8) {
        this.b = i2;
        this.c = str;
        this.d = str2;
        this.e = str3;
        this.f = str4;
        this.g = uri;
        this.h = str5;
        this.i = j2;
        this.j = str6;
        this.k = list;
        this.l = str7;
        this.m = str8;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GoogleSignInAccount)) {
            return false;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
        return googleSignInAccount.j.equals(this.j) && googleSignInAccount.o().equals(o());
    }

    public int hashCode() {
        return o().hashCode() + ic.w(this.j, 527, 31);
    }

    public Set<Scope> o() {
        HashSet hashSet = new HashSet(this.k);
        hashSet.addAll(this.n);
        return hashSet;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        int a = b.a(parcel);
        b.k(parcel, 1, this.b);
        b.r(parcel, 2, this.c, false);
        b.r(parcel, 3, this.d, false);
        b.r(parcel, 4, this.e, false);
        b.r(parcel, 5, this.f, false);
        b.q(parcel, 6, this.g, i2, false);
        b.r(parcel, 7, this.h, false);
        b.n(parcel, 8, this.i);
        b.r(parcel, 9, this.j, false);
        b.v(parcel, 10, this.k, false);
        b.r(parcel, 11, this.l, false);
        b.r(parcel, 12, this.m, false);
        b.b(parcel, a);
    }
}
