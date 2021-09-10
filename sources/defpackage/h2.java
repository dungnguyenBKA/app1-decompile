package defpackage;

import com.vungle.warren.error.VungleException;

/* renamed from: h2  reason: default package */
public final class h2 {
    public static final g2 a;
    public static final g2 b;

    /* renamed from: h2$a */
    private static class a implements b {
        static final a a = new a();

        private a() {
        }

        @Override // defpackage.h2.b
        public int a(CharSequence charSequence, int i, int i2) {
            int i3 = i2 + i;
            int i4 = 2;
            while (i < i3 && i4 == 2) {
                byte directionality = Character.getDirectionality(charSequence.charAt(i));
                g2 g2Var = h2.a;
                if (directionality != 0) {
                    if (!(directionality == 1 || directionality == 2)) {
                        switch (directionality) {
                            case VungleException.SERVER_RETRY_ERROR:
                            case VungleException.ALREADY_PLAYING_ANOTHER_AD:
                                break;
                            case VungleException.NO_SPACE_TO_INIT:
                            case 17:
                                break;
                            default:
                                i4 = 2;
                                break;
                        }
                        i++;
                    }
                    i4 = 0;
                    i++;
                }
                i4 = 1;
                i++;
            }
            return i4;
        }
    }

    /* renamed from: h2$b */
    private interface b {
        int a(CharSequence charSequence, int i, int i2);
    }

    /* renamed from: h2$c */
    private static abstract class c implements g2 {
        private final b a;

        c(b bVar) {
            this.a = bVar;
        }

        @Override // defpackage.g2
        public boolean a(CharSequence charSequence, int i, int i2) {
            if (i < 0 || i2 < 0 || charSequence.length() - i2 < i) {
                throw new IllegalArgumentException();
            }
            b bVar = this.a;
            if (bVar == null) {
                return b();
            }
            int a2 = bVar.a(charSequence, i, i2);
            if (a2 == 0) {
                return true;
            }
            if (a2 != 1) {
                return b();
            }
            return false;
        }

        /* access modifiers changed from: protected */
        public abstract boolean b();
    }

    /* renamed from: h2$d */
    private static class d extends c {
        private final boolean b;

        d(b bVar, boolean z) {
            super(bVar);
            this.b = z;
        }

        /* access modifiers changed from: protected */
        @Override // defpackage.h2.c
        public boolean b() {
            return this.b;
        }
    }

    static {
        a aVar = a.a;
        a = new d(aVar, false);
        b = new d(aVar, true);
    }
}
