package defpackage;

/* renamed from: vd  reason: default package */
public abstract class vd {
    public static final vd a = new a();
    public static final vd b = new b();
    public static final vd c = new c();
    public static final vd d = new d();

    /* renamed from: vd$a */
    class a extends vd {
        a() {
        }

        @Override // defpackage.vd
        public boolean a() {
            return true;
        }

        @Override // defpackage.vd
        public boolean b() {
            return true;
        }

        @Override // defpackage.vd
        public boolean c(com.bumptech.glide.load.a aVar) {
            return aVar == com.bumptech.glide.load.a.REMOTE;
        }

        @Override // defpackage.vd
        public boolean d(boolean z, com.bumptech.glide.load.a aVar, com.bumptech.glide.load.c cVar) {
            return (aVar == com.bumptech.glide.load.a.RESOURCE_DISK_CACHE || aVar == com.bumptech.glide.load.a.MEMORY_CACHE) ? false : true;
        }
    }

    /* renamed from: vd$b */
    class b extends vd {
        b() {
        }

        @Override // defpackage.vd
        public boolean a() {
            return false;
        }

        @Override // defpackage.vd
        public boolean b() {
            return false;
        }

        @Override // defpackage.vd
        public boolean c(com.bumptech.glide.load.a aVar) {
            return false;
        }

        @Override // defpackage.vd
        public boolean d(boolean z, com.bumptech.glide.load.a aVar, com.bumptech.glide.load.c cVar) {
            return false;
        }
    }

    /* renamed from: vd$c */
    class c extends vd {
        c() {
        }

        @Override // defpackage.vd
        public boolean a() {
            return true;
        }

        @Override // defpackage.vd
        public boolean b() {
            return false;
        }

        @Override // defpackage.vd
        public boolean c(com.bumptech.glide.load.a aVar) {
            return (aVar == com.bumptech.glide.load.a.DATA_DISK_CACHE || aVar == com.bumptech.glide.load.a.MEMORY_CACHE) ? false : true;
        }

        @Override // defpackage.vd
        public boolean d(boolean z, com.bumptech.glide.load.a aVar, com.bumptech.glide.load.c cVar) {
            return false;
        }
    }

    /* renamed from: vd$d */
    class d extends vd {
        d() {
        }

        @Override // defpackage.vd
        public boolean a() {
            return true;
        }

        @Override // defpackage.vd
        public boolean b() {
            return true;
        }

        @Override // defpackage.vd
        public boolean c(com.bumptech.glide.load.a aVar) {
            return aVar == com.bumptech.glide.load.a.REMOTE;
        }

        @Override // defpackage.vd
        public boolean d(boolean z, com.bumptech.glide.load.a aVar, com.bumptech.glide.load.c cVar) {
            return ((z && aVar == com.bumptech.glide.load.a.DATA_DISK_CACHE) || aVar == com.bumptech.glide.load.a.LOCAL) && cVar == com.bumptech.glide.load.c.TRANSFORMED;
        }
    }

    public abstract boolean a();

    public abstract boolean b();

    public abstract boolean c(com.bumptech.glide.load.a aVar);

    public abstract boolean d(boolean z, com.bumptech.glide.load.a aVar, com.bumptech.glide.load.c cVar);
}
