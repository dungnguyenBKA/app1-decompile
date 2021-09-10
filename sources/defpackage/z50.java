package defpackage;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* access modifiers changed from: package-private */
/* renamed from: z50  reason: default package */
public final class z50 extends z60<Date> {
    private final Class<? extends Date> a;
    private final List<DateFormat> b;

    public z50(Class<? extends Date> cls, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        this.b = arrayList;
        d(cls);
        this.a = cls;
        Locale locale = Locale.US;
        arrayList.add(DateFormat.getDateTimeInstance(i, i2, locale));
        if (!Locale.getDefault().equals(locale)) {
            arrayList.add(DateFormat.getDateTimeInstance(i, i2));
        }
        if (s70.b()) {
            arrayList.add(x70.a(i, i2));
        }
    }

    private static Class<? extends Date> d(Class<? extends Date> cls) {
        if (cls == Date.class || cls == java.sql.Date.class || cls == Timestamp.class) {
            return cls;
        }
        throw new IllegalArgumentException("Date type must be one of " + Date.class + ", " + Timestamp.class + ", or " + java.sql.Date.class + " but was " + cls);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // defpackage.z60
    public Date b(a90 a90) {
        Date date;
        Object date2;
        if (a90.x0() == b90.NULL) {
            a90.t0();
            return null;
        }
        String v0 = a90.v0();
        synchronized (this.b) {
            Iterator<DateFormat> it = this.b.iterator();
            while (true) {
                if (it.hasNext()) {
                    try {
                        date = it.next().parse(v0);
                        break;
                    } catch (ParseException unused) {
                    }
                } else {
                    try {
                        date = v80.b(v0, new ParsePosition(0));
                        break;
                    } catch (ParseException e) {
                        throw new x60(v0, e);
                    }
                }
            }
        }
        Class<? extends Date> cls = this.a;
        if (cls == Date.class) {
            return date;
        }
        if (cls == Timestamp.class) {
            date2 = new Timestamp(date.getTime());
        } else if (cls == java.sql.Date.class) {
            date2 = new java.sql.Date(date.getTime());
        } else {
            throw new AssertionError();
        }
        return date2;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
    @Override // defpackage.z60
    public void c(c90 c90, Date date) {
        Date date2 = date;
        if (date2 == null) {
            c90.n0();
            return;
        }
        synchronized (this.b) {
            c90.z0(this.b.get(0).format(date2));
        }
    }

    public String toString() {
        DateFormat dateFormat = this.b.get(0);
        if (dateFormat instanceof SimpleDateFormat) {
            StringBuilder q = ic.q("DefaultDateTypeAdapter(");
            q.append(((SimpleDateFormat) dateFormat).toPattern());
            q.append(')');
            return q.toString();
        }
        StringBuilder q2 = ic.q("DefaultDateTypeAdapter(");
        q2.append(dateFormat.getClass().getSimpleName());
        q2.append(')');
        return q2.toString();
    }
}
