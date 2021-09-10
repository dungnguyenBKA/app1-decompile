package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class GoogleSignInOptions extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR = new b();
    public static final Scope k = new Scope("profile");
    public static final Scope l = new Scope("openid");
    public static final Scope m;
    public static final Scope n = new Scope("https://www.googleapis.com/auth/games");
    private final int b;
    private final ArrayList<Scope> c;
    private Account d;
    private boolean e;
    private final boolean f;
    private final boolean g;
    private String h;
    private String i;
    private ArrayList<GoogleSignInOptionsExtensionParcelable> j;

    public static final class a {
        private Set<Scope> a = new HashSet();
        private Map<Integer, GoogleSignInOptionsExtensionParcelable> b = new HashMap();

        public final GoogleSignInOptions a() {
            if (this.a.contains(GoogleSignInOptions.n)) {
                Set<Scope> set = this.a;
                Scope scope = GoogleSignInOptions.m;
                if (set.contains(scope)) {
                    this.a.remove(scope);
                }
            }
            return new GoogleSignInOptions(new ArrayList(this.a), null, false, false, false, null, null, this.b);
        }

        public final a b() {
            this.a.add(GoogleSignInOptions.l);
            return this;
        }

        public final a c() {
            this.a.add(GoogleSignInOptions.k);
            return this;
        }

        public final a d(Scope scope, Scope... scopeArr) {
            this.a.add(scope);
            this.a.addAll(Arrays.asList(scopeArr));
            return this;
        }
    }

    static {
        new Scope("email");
        Scope scope = new Scope("https://www.googleapis.com/auth/games_lite");
        m = scope;
        a b2 = new a().b();
        b2.c();
        b2.a();
        a aVar = new a();
        aVar.d(scope, new Scope[0]);
        aVar.a();
    }

    private GoogleSignInOptions(int i2, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map<Integer, GoogleSignInOptionsExtensionParcelable> map) {
        this.b = i2;
        this.c = arrayList;
        this.d = account;
        this.e = z;
        this.f = z2;
        this.g = z3;
        this.h = str;
        this.i = str2;
        this.j = new ArrayList<>(map.values());
    }

    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0043, code lost:
        if (r1.equals(r4.d) != false) goto L_0x0045;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x005e, code lost:
        if (r3.h.equals(r4.h) != false) goto L_0x0060;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r4) {
        /*
        // Method dump skipped, instructions count: 117
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.signin.GoogleSignInOptions.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        ArrayList arrayList = new ArrayList();
        ArrayList<Scope> arrayList2 = this.c;
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            Scope scope = arrayList2.get(i2);
            i2++;
            arrayList.add(scope.o());
        }
        Collections.sort(arrayList);
        com.google.android.gms.auth.api.signin.internal.a aVar = new com.google.android.gms.auth.api.signin.internal.a();
        aVar.a(arrayList);
        aVar.a(this.d);
        aVar.a(this.h);
        aVar.c(this.g);
        aVar.c(this.e);
        aVar.c(this.f);
        return aVar.b();
    }

    public ArrayList<Scope> o() {
        return new ArrayList<>(this.c);
    }

    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = b.a(parcel);
        b.k(parcel, 1, this.b);
        b.v(parcel, 2, o(), false);
        b.q(parcel, 3, this.d, i2, false);
        b.c(parcel, 4, this.e);
        b.c(parcel, 5, this.f);
        b.c(parcel, 6, this.g);
        b.r(parcel, 7, this.h, false);
        b.r(parcel, 8, this.i, false);
        b.v(parcel, 9, this.j, false);
        b.b(parcel, a2);
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    GoogleSignInOptions(int r11, java.util.ArrayList<com.google.android.gms.common.api.Scope> r12, android.accounts.Account r13, boolean r14, boolean r15, boolean r16, java.lang.String r17, java.lang.String r18, java.util.ArrayList<com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable> r19) {
        /*
            r10 = this;
            java.util.HashMap r9 = new java.util.HashMap
            r9.<init>()
            if (r19 != 0) goto L_0x0008
            goto L_0x0024
        L_0x0008:
            java.util.Iterator r0 = r19.iterator()
        L_0x000c:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L_0x0024
            java.lang.Object r1 = r0.next()
            com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable r1 = (com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable) r1
            int r2 = r1.o()
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r9.put(r2, r1)
            goto L_0x000c
        L_0x0024:
            r0 = r10
            r1 = r11
            r2 = r12
            r3 = r13
            r4 = r14
            r5 = r15
            r6 = r16
            r7 = r17
            r8 = r18
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.signin.GoogleSignInOptions.<init>(int, java.util.ArrayList, android.accounts.Account, boolean, boolean, boolean, java.lang.String, java.lang.String, java.util.ArrayList):void");
    }

    /* synthetic */ GoogleSignInOptions(ArrayList arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map map) {
        this(3, arrayList, (Account) null, z, z2, z3, (String) null, (String) null, map);
    }
}
