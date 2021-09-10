package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.j;
import androidx.appcompat.widget.i0;
import androidx.appcompat.widget.o;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: p  reason: default package */
public class p extends MenuInflater {
    static final Class<?>[] e;
    static final Class<?>[] f;
    final Object[] a;
    final Object[] b;
    Context c;
    private Object d;

    /* access modifiers changed from: private */
    /* renamed from: p$a */
    public static class a implements MenuItem.OnMenuItemClickListener {
        private static final Class<?>[] c = {MenuItem.class};
        private Object a;
        private Method b;

        public a(Object obj, String str) {
            this.a = obj;
            Class<?> cls = obj.getClass();
            try {
                this.b = cls.getMethod(str, c);
            } catch (Exception e) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e);
                throw inflateException;
            }
        }

        public boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.b.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.b.invoke(this.a, menuItem)).booleanValue();
                }
                this.b.invoke(this.a, menuItem);
                return true;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: p$b */
    public class b {
        o2 A;
        private CharSequence B;
        private CharSequence C;
        private ColorStateList D = null;
        private PorterDuff.Mode E = null;
        private Menu a;
        private int b;
        private int c;
        private int d;
        private int e;
        private boolean f;
        private boolean g;
        private boolean h;
        private int i;
        private int j;
        private CharSequence k;
        private CharSequence l;
        private int m;
        private char n;
        private int o;
        private char p;
        private int q;
        private int r;
        private boolean s;
        private boolean t;
        private boolean u;
        private int v;
        private int w;
        private String x;
        private String y;
        private String z;

        public b(Menu menu) {
            this.a = menu;
            this.b = 0;
            this.c = 0;
            this.d = 0;
            this.e = 0;
            this.f = true;
            this.g = true;
        }

        private <T> T d(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, p.this.c.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return (T) constructor.newInstance(objArr);
            } catch (Exception e2) {
                Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e2);
                return null;
            }
        }

        private void h(MenuItem menuItem) {
            boolean z2 = false;
            menuItem.setChecked(this.s).setVisible(this.t).setEnabled(this.u).setCheckable(this.r >= 1).setTitleCondensed(this.l).setIcon(this.m);
            int i2 = this.v;
            if (i2 >= 0) {
                menuItem.setShowAsAction(i2);
            }
            if (this.z != null) {
                if (!p.this.c.isRestricted()) {
                    menuItem.setOnMenuItemClickListener(new a(p.this.b(), this.z));
                } else {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
            }
            boolean z3 = menuItem instanceof i;
            if (z3) {
                i iVar = (i) menuItem;
            }
            if (this.r >= 2) {
                if (z3) {
                    ((i) menuItem).r(true);
                } else if (menuItem instanceof j) {
                    ((j) menuItem).h(true);
                }
            }
            String str = this.x;
            if (str != null) {
                menuItem.setActionView((View) d(str, p.e, p.this.a));
                z2 = true;
            }
            int i3 = this.w;
            if (i3 > 0) {
                if (!z2) {
                    menuItem.setActionView(i3);
                } else {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                }
            }
            o2 o2Var = this.A;
            if (o2Var != null) {
                if (menuItem instanceof v1) {
                    ((v1) menuItem).a(o2Var);
                } else {
                    Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
                }
            }
            CharSequence charSequence = this.B;
            boolean z4 = menuItem instanceof v1;
            if (z4) {
                ((v1) menuItem).setContentDescription(charSequence);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setContentDescription(charSequence);
            }
            CharSequence charSequence2 = this.C;
            if (z4) {
                ((v1) menuItem).setTooltipText(charSequence2);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setTooltipText(charSequence2);
            }
            char c2 = this.n;
            int i4 = this.o;
            if (z4) {
                ((v1) menuItem).setAlphabeticShortcut(c2, i4);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setAlphabeticShortcut(c2, i4);
            }
            char c3 = this.p;
            int i5 = this.q;
            if (z4) {
                ((v1) menuItem).setNumericShortcut(c3, i5);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setNumericShortcut(c3, i5);
            }
            PorterDuff.Mode mode = this.E;
            if (mode != null) {
                if (z4) {
                    ((v1) menuItem).setIconTintMode(mode);
                } else if (Build.VERSION.SDK_INT >= 26) {
                    menuItem.setIconTintMode(mode);
                }
            }
            ColorStateList colorStateList = this.D;
            if (colorStateList == null) {
                return;
            }
            if (z4) {
                ((v1) menuItem).setIconTintList(colorStateList);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setIconTintList(colorStateList);
            }
        }

        public void a() {
            this.h = true;
            h(this.a.add(this.b, this.i, this.j, this.k));
        }

        public SubMenu b() {
            this.h = true;
            SubMenu addSubMenu = this.a.addSubMenu(this.b, this.i, this.j, this.k);
            h(addSubMenu.getItem());
            return addSubMenu;
        }

        public boolean c() {
            return this.h;
        }

        public void e(AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = p.this.c.obtainStyledAttributes(attributeSet, R$styleable.q);
            this.b = obtainStyledAttributes.getResourceId(1, 0);
            this.c = obtainStyledAttributes.getInt(3, 0);
            this.d = obtainStyledAttributes.getInt(4, 0);
            this.e = obtainStyledAttributes.getInt(5, 0);
            this.f = obtainStyledAttributes.getBoolean(2, true);
            this.g = obtainStyledAttributes.getBoolean(0, true);
            obtainStyledAttributes.recycle();
        }

        public void f(AttributeSet attributeSet) {
            char c2;
            char c3;
            i0 t2 = i0.t(p.this.c, attributeSet, R$styleable.r);
            this.i = t2.n(2, 0);
            this.j = (t2.k(5, this.c) & -65536) | (t2.k(6, this.d) & 65535);
            this.k = t2.p(7);
            this.l = t2.p(8);
            this.m = t2.n(0, 0);
            String o2 = t2.o(9);
            if (o2 == null) {
                c2 = 0;
            } else {
                c2 = o2.charAt(0);
            }
            this.n = c2;
            this.o = t2.k(16, 4096);
            String o3 = t2.o(10);
            if (o3 == null) {
                c3 = 0;
            } else {
                c3 = o3.charAt(0);
            }
            this.p = c3;
            this.q = t2.k(20, 4096);
            if (t2.r(11)) {
                this.r = t2.a(11, false) ? 1 : 0;
            } else {
                this.r = this.e;
            }
            this.s = t2.a(3, false);
            this.t = t2.a(4, this.f);
            boolean z2 = true;
            this.u = t2.a(1, this.g);
            this.v = t2.k(21, -1);
            this.z = t2.o(12);
            this.w = t2.n(13, 0);
            this.x = t2.o(15);
            String o4 = t2.o(14);
            this.y = o4;
            if (o4 == null) {
                z2 = false;
            }
            if (z2 && this.w == 0 && this.x == null) {
                this.A = (o2) d(o4, p.f, p.this.b);
            } else {
                if (z2) {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
                this.A = null;
            }
            this.B = t2.p(17);
            this.C = t2.p(22);
            if (t2.r(19)) {
                this.E = o.d(t2.k(19, -1), this.E);
            } else {
                this.E = null;
            }
            if (t2.r(18)) {
                this.D = t2.c(18);
            } else {
                this.D = null;
            }
            t2.v();
            this.h = false;
        }

        public void g() {
            this.b = 0;
            this.c = 0;
            this.d = 0;
            this.e = 0;
            this.f = true;
            this.g = true;
        }
    }

    static {
        Class<?>[] clsArr = {Context.class};
        e = clsArr;
        f = clsArr;
    }

    public p(Context context) {
        super(context);
        this.c = context;
        Object[] objArr = {context};
        this.a = objArr;
        this.b = objArr;
    }

    private Object a(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? a(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    private void c(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) {
        b bVar = new b(menu);
        int eventType = xmlPullParser.getEventType();
        while (true) {
            if (eventType != 2) {
                eventType = xmlPullParser.next();
                if (eventType == 1) {
                    break;
                }
            } else {
                String name = xmlPullParser.getName();
                if (name.equals("menu")) {
                    eventType = xmlPullParser.next();
                } else {
                    throw new RuntimeException(ic.i("Expecting menu, got ", name));
                }
            }
        }
        boolean z = false;
        boolean z2 = false;
        String str = null;
        while (!z) {
            if (eventType != 1) {
                if (eventType != 2) {
                    if (eventType == 3) {
                        String name2 = xmlPullParser.getName();
                        if (z2 && name2.equals(str)) {
                            str = null;
                            z2 = false;
                        } else if (name2.equals("group")) {
                            bVar.g();
                        } else if (name2.equals("item")) {
                            if (!bVar.c()) {
                                o2 o2Var = bVar.A;
                                if (o2Var == null || !o2Var.a()) {
                                    bVar.a();
                                } else {
                                    bVar.b();
                                }
                            }
                        } else if (name2.equals("menu")) {
                            z = true;
                        }
                    }
                } else if (!z2) {
                    String name3 = xmlPullParser.getName();
                    if (name3.equals("group")) {
                        bVar.e(attributeSet);
                    } else if (name3.equals("item")) {
                        bVar.f(attributeSet);
                    } else if (name3.equals("menu")) {
                        c(xmlPullParser, attributeSet, bVar.b());
                    } else {
                        z2 = true;
                        str = name3;
                    }
                }
                eventType = xmlPullParser.next();
            } else {
                throw new RuntimeException("Unexpected end of document");
            }
        }
    }

    /* access modifiers changed from: package-private */
    public Object b() {
        if (this.d == null) {
            this.d = a(this.c);
        }
        return this.d;
    }

    public void inflate(int i, Menu menu) {
        if (!(menu instanceof u1)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        try {
            xmlResourceParser = this.c.getResources().getLayout(i);
            c(xmlResourceParser, Xml.asAttributeSet(xmlResourceParser), menu);
            xmlResourceParser.close();
        } catch (XmlPullParserException e2) {
            throw new InflateException("Error inflating menu XML", e2);
        } catch (IOException e3) {
            throw new InflateException("Error inflating menu XML", e3);
        } catch (Throwable th) {
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }
}
