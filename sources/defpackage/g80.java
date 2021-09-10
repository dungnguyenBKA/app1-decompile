package defpackage;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* renamed from: g80  reason: default package */
public final class g80 extends z60<Date> {
    public static final a70 b = new a();
    private final List<DateFormat> a;

    /* renamed from: g80$a */
    class a implements a70 {
        a() {
        }

        @Override // defpackage.a70
        public <T> z60<T> a(j60 j60, z80<T> z80) {
            if (z80.getRawType() == Date.class) {
                return new g80();
            }
            return null;
        }
    }

    public g80() {
        ArrayList arrayList = new ArrayList();
        this.a = arrayList;
        Locale locale = Locale.US;
        arrayList.add(DateFormat.getDateTimeInstance(2, 2, locale));
        if (!Locale.getDefault().equals(locale)) {
            arrayList.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (s70.b()) {
            arrayList.add(x70.a(2, 2));
        }
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // defpackage.z60
    public Date b(a90 a90) {
        if (a90.x0() == b90.NULL) {
            a90.t0();
            return null;
        }
        String v0 = a90.v0();
        synchronized (this) {
            for (DateFormat dateFormat : this.a) {
                try {
                    return dateFormat.parse(v0);
                } catch (ParseException unused) {
                }
            }
            try {
                return v80.b(v0, new ParsePosition(0));
            } catch (ParseException e) {
                throw new x60(v0, e);
            }
        }
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
    @Override // defpackage.z60
    public void c(c90 c90, Date date) {
        Date date2 = date;
        synchronized (this) {
            if (date2 == null) {
                c90.n0();
            } else {
                c90.z0(this.a.get(0).format(date2));
            }
        }
    }
}
