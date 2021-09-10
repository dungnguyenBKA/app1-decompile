package defpackage;

import defpackage.ds;

/* access modifiers changed from: package-private */
/* renamed from: ks  reason: default package */
public final class ks extends ds {
    private final Integer a;
    private final String b;
    private final String c;
    private final String d;
    private final String e;
    private final String f;
    private final String g;
    private final String h;
    private final String i;
    private final String j;
    private final String k;
    private final String l;

    /* access modifiers changed from: package-private */
    /* renamed from: ks$b */
    public static final class b extends ds.a {
        private Integer a;
        private String b;
        private String c;
        private String d;
        private String e;
        private String f;
        private String g;
        private String h;
        private String i;
        private String j;
        private String k;
        private String l;

        b() {
        }

        @Override // defpackage.ds.a
        public ds a() {
            return new ks(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, null);
        }

        @Override // defpackage.ds.a
        public ds.a b(String str) {
            this.l = str;
            return this;
        }

        @Override // defpackage.ds.a
        public ds.a c(String str) {
            this.j = str;
            return this;
        }

        @Override // defpackage.ds.a
        public ds.a d(String str) {
            this.d = str;
            return this;
        }

        @Override // defpackage.ds.a
        public ds.a e(String str) {
            this.h = str;
            return this;
        }

        @Override // defpackage.ds.a
        public ds.a f(String str) {
            this.c = str;
            return this;
        }

        @Override // defpackage.ds.a
        public ds.a g(String str) {
            this.i = str;
            return this;
        }

        @Override // defpackage.ds.a
        public ds.a h(String str) {
            this.g = str;
            return this;
        }

        @Override // defpackage.ds.a
        public ds.a i(String str) {
            this.k = str;
            return this;
        }

        @Override // defpackage.ds.a
        public ds.a j(String str) {
            this.b = str;
            return this;
        }

        @Override // defpackage.ds.a
        public ds.a k(String str) {
            this.f = str;
            return this;
        }

        @Override // defpackage.ds.a
        public ds.a l(String str) {
            this.e = str;
            return this;
        }

        @Override // defpackage.ds.a
        public ds.a m(Integer num) {
            this.a = num;
            return this;
        }
    }

    ks(Integer num, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, a aVar) {
        this.a = num;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = str5;
        this.g = str6;
        this.h = str7;
        this.i = str8;
        this.j = str9;
        this.k = str10;
        this.l = str11;
    }

    @Override // defpackage.ds
    public String b() {
        return this.l;
    }

    @Override // defpackage.ds
    public String c() {
        return this.j;
    }

    @Override // defpackage.ds
    public String d() {
        return this.d;
    }

    @Override // defpackage.ds
    public String e() {
        return this.h;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ds)) {
            return false;
        }
        ds dsVar = (ds) obj;
        Integer num = this.a;
        if (num != null ? num.equals(dsVar.m()) : dsVar.m() == null) {
            String str = this.b;
            if (str != null ? str.equals(dsVar.j()) : dsVar.j() == null) {
                String str2 = this.c;
                if (str2 != null ? str2.equals(dsVar.f()) : dsVar.f() == null) {
                    String str3 = this.d;
                    if (str3 != null ? str3.equals(dsVar.d()) : dsVar.d() == null) {
                        String str4 = this.e;
                        if (str4 != null ? str4.equals(dsVar.l()) : dsVar.l() == null) {
                            String str5 = this.f;
                            if (str5 != null ? str5.equals(dsVar.k()) : dsVar.k() == null) {
                                String str6 = this.g;
                                if (str6 != null ? str6.equals(dsVar.h()) : dsVar.h() == null) {
                                    String str7 = this.h;
                                    if (str7 != null ? str7.equals(dsVar.e()) : dsVar.e() == null) {
                                        String str8 = this.i;
                                        if (str8 != null ? str8.equals(dsVar.g()) : dsVar.g() == null) {
                                            String str9 = this.j;
                                            if (str9 != null ? str9.equals(dsVar.c()) : dsVar.c() == null) {
                                                String str10 = this.k;
                                                if (str10 != null ? str10.equals(dsVar.i()) : dsVar.i() == null) {
                                                    String str11 = this.l;
                                                    if (str11 == null) {
                                                        if (dsVar.b() == null) {
                                                            return true;
                                                        }
                                                    } else if (str11.equals(dsVar.b())) {
                                                        return true;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // defpackage.ds
    public String f() {
        return this.c;
    }

    @Override // defpackage.ds
    public String g() {
        return this.i;
    }

    @Override // defpackage.ds
    public String h() {
        return this.g;
    }

    public int hashCode() {
        Integer num = this.a;
        int i2 = 0;
        int hashCode = ((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003;
        String str = this.b;
        int hashCode2 = (hashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.c;
        int hashCode3 = (hashCode2 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.d;
        int hashCode4 = (hashCode3 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        String str4 = this.e;
        int hashCode5 = (hashCode4 ^ (str4 == null ? 0 : str4.hashCode())) * 1000003;
        String str5 = this.f;
        int hashCode6 = (hashCode5 ^ (str5 == null ? 0 : str5.hashCode())) * 1000003;
        String str6 = this.g;
        int hashCode7 = (hashCode6 ^ (str6 == null ? 0 : str6.hashCode())) * 1000003;
        String str7 = this.h;
        int hashCode8 = (hashCode7 ^ (str7 == null ? 0 : str7.hashCode())) * 1000003;
        String str8 = this.i;
        int hashCode9 = (hashCode8 ^ (str8 == null ? 0 : str8.hashCode())) * 1000003;
        String str9 = this.j;
        int hashCode10 = (hashCode9 ^ (str9 == null ? 0 : str9.hashCode())) * 1000003;
        String str10 = this.k;
        int hashCode11 = (hashCode10 ^ (str10 == null ? 0 : str10.hashCode())) * 1000003;
        String str11 = this.l;
        if (str11 != null) {
            i2 = str11.hashCode();
        }
        return hashCode11 ^ i2;
    }

    @Override // defpackage.ds
    public String i() {
        return this.k;
    }

    @Override // defpackage.ds
    public String j() {
        return this.b;
    }

    @Override // defpackage.ds
    public String k() {
        return this.f;
    }

    @Override // defpackage.ds
    public String l() {
        return this.e;
    }

    @Override // defpackage.ds
    public Integer m() {
        return this.a;
    }

    public String toString() {
        StringBuilder q = ic.q("AndroidClientInfo{sdkVersion=");
        q.append(this.a);
        q.append(", model=");
        q.append(this.b);
        q.append(", hardware=");
        q.append(this.c);
        q.append(", device=");
        q.append(this.d);
        q.append(", product=");
        q.append(this.e);
        q.append(", osBuild=");
        q.append(this.f);
        q.append(", manufacturer=");
        q.append(this.g);
        q.append(", fingerprint=");
        q.append(this.h);
        q.append(", locale=");
        q.append(this.i);
        q.append(", country=");
        q.append(this.j);
        q.append(", mccMnc=");
        q.append(this.k);
        q.append(", applicationBuild=");
        return ic.l(q, this.l, "}");
    }
}
