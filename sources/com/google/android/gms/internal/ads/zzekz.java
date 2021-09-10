package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzeko;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;

/* access modifiers changed from: package-private */
public abstract class zzekz<T extends zzeko> {
    private static final Logger logger = Logger.getLogger(zzekl.class.getName());
    private static String zziqh = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";

    zzekz() {
    }

    static <T extends zzeko> T zzc(Class<T> cls) {
        String str;
        ClassLoader classLoader = zzekz.class.getClassLoader();
        if (cls.equals(zzeko.class)) {
            str = zziqh;
        } else if (cls.getPackage().equals(zzekz.class.getPackage())) {
            str = String.format("%s.BlazeGenerated%sLoader", cls.getPackage().getName(), cls.getSimpleName());
        } else {
            throw new IllegalArgumentException(cls.getName());
        }
        try {
            try {
                return cls.cast(((zzekz) Class.forName(str, true, classLoader).getConstructor(new Class[0]).newInstance(new Object[0])).zzbih());
            } catch (NoSuchMethodException e) {
                throw new IllegalStateException(e);
            } catch (InstantiationException e2) {
                throw new IllegalStateException(e2);
            } catch (IllegalAccessException e3) {
                throw new IllegalStateException(e3);
            } catch (InvocationTargetException e4) {
                throw new IllegalStateException(e4);
            }
        } catch (ClassNotFoundException unused) {
            Iterator it = ServiceLoader.load(zzekz.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                try {
                    arrayList.add(cls.cast(((zzekz) it.next()).zzbih()));
                } catch (ServiceConfigurationError e5) {
                    Logger logger2 = logger;
                    Level level = Level.SEVERE;
                    String simpleName = cls.getSimpleName();
                    logger2.logp(level, "com.google.protobuf.GeneratedExtensionRegistryLoader", "load", simpleName.length() != 0 ? "Unable to load ".concat(simpleName) : new String("Unable to load "), (Throwable) e5);
                }
            }
            if (arrayList.size() == 1) {
                return (T) ((zzeko) arrayList.get(0));
            }
            if (arrayList.size() == 0) {
                return null;
            }
            try {
                return (T) ((zzeko) cls.getMethod("combine", Collection.class).invoke(null, arrayList));
            } catch (NoSuchMethodException e6) {
                throw new IllegalStateException(e6);
            } catch (IllegalAccessException e7) {
                throw new IllegalStateException(e7);
            } catch (InvocationTargetException e8) {
                throw new IllegalStateException(e8);
            }
        }
    }

    /* access modifiers changed from: protected */
    public abstract T zzbih();
}
