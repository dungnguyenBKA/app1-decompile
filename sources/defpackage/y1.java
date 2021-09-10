package defpackage;

import java.util.HashSet;
import java.util.Locale;

/* access modifiers changed from: package-private */
/* renamed from: y1  reason: default package */
public final class y1 implements z1 {
    private static final Locale[] b = new Locale[0];
    private final Locale[] a;

    static {
        new Locale("en", "XA");
        new Locale("ar", "XB");
        int i = x1.b;
        String[] split = "en-Latn".split("-", -1);
        if (split.length > 2) {
            new Locale(split[0], split[1], split[2]);
        } else if (split.length > 1) {
            new Locale(split[0], split[1]);
        } else if (split.length == 1) {
            new Locale(split[0]);
        } else {
            throw new IllegalArgumentException("Can not parse language tag: [en-Latn]");
        }
    }

    y1(Locale... localeArr) {
        if (localeArr.length == 0) {
            this.a = b;
            return;
        }
        Locale[] localeArr2 = new Locale[localeArr.length];
        HashSet hashSet = new HashSet();
        for (int i = 0; i < localeArr.length; i++) {
            Locale locale = localeArr[i];
            if (locale == null) {
                throw new NullPointerException("list[" + i + "] is null");
            } else if (!hashSet.contains(locale)) {
                Locale locale2 = (Locale) locale.clone();
                localeArr2[i] = locale2;
                locale2.getLanguage();
                String country = locale2.getCountry();
                if (country != null && !country.isEmpty()) {
                    locale2.getCountry();
                }
                int length = localeArr.length - 1;
                hashSet.add(locale2);
            } else {
                throw new IllegalArgumentException("list[" + i + "] is a repetition");
            }
        }
        this.a = localeArr2;
    }

    @Override // defpackage.z1
    public Object a() {
        return null;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof y1)) {
            return false;
        }
        Locale[] localeArr = ((y1) obj).a;
        if (this.a.length != localeArr.length) {
            return false;
        }
        int i = 0;
        while (true) {
            Locale[] localeArr2 = this.a;
            if (i >= localeArr2.length) {
                return true;
            }
            if (!localeArr2[i].equals(localeArr[i])) {
                return false;
            }
            i++;
        }
    }

    @Override // defpackage.z1
    public Locale get(int i) {
        if (i >= 0) {
            Locale[] localeArr = this.a;
            if (i < localeArr.length) {
                return localeArr[i];
            }
        }
        return null;
    }

    public int hashCode() {
        int i = 1;
        int i2 = 0;
        while (true) {
            Locale[] localeArr = this.a;
            if (i2 >= localeArr.length) {
                return i;
            }
            i = (i * 31) + localeArr[i2].hashCode();
            i2++;
        }
    }

    @Override // defpackage.z1
    public boolean isEmpty() {
        return this.a.length == 0;
    }

    public String toString() {
        StringBuilder q = ic.q("[");
        int i = 0;
        while (true) {
            Locale[] localeArr = this.a;
            if (i < localeArr.length) {
                q.append(localeArr[i]);
                if (i < this.a.length - 1) {
                    q.append(',');
                }
                i++;
            } else {
                q.append("]");
                return q.toString();
            }
        }
    }
}
