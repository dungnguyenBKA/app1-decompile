package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzhe;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;

/* access modifiers changed from: package-private */
public abstract class zzhm<T extends zzhe> {
    private static final Logger zza = Logger.getLogger(zzgz.class.getName());
    private static final String zzb = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";

    zzhm() {
    }

    static <T extends zzhe> T zzb(Class<T> cls) {
        String str;
        String str2;
        ClassLoader classLoader = zzhm.class.getClassLoader();
        if (cls.equals(zzhe.class)) {
            str = zzb;
        } else if (cls.getPackage().equals(zzhm.class.getPackage())) {
            str = String.format("%s.BlazeGenerated%sLoader", cls.getPackage().getName(), cls.getSimpleName());
        } else {
            throw new IllegalArgumentException(cls.getName());
        }
        try {
            try {
                return cls.cast(((zzhm) Class.forName(str, true, classLoader).getConstructor(new Class[0]).newInstance(new Object[0])).zza());
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
            Iterator it = ServiceLoader.load(zzhm.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                try {
                    arrayList.add(cls.cast(((zzhm) it.next()).zza()));
                } catch (ServiceConfigurationError e5) {
                    Logger logger = zza;
                    Level level = Level.SEVERE;
                    String simpleName = cls.getSimpleName();
                    if (simpleName.length() != 0) {
                        str2 = "Unable to load ".concat(simpleName);
                    } else {
                        str2 = new String("Unable to load ");
                    }
                    logger.logp(level, "com.google.protobuf.GeneratedExtensionRegistryLoader", "load", str2, (Throwable) e5);
                }
            }
            if (arrayList.size() == 1) {
                return (T) ((zzhe) arrayList.get(0));
            }
            if (arrayList.size() == 0) {
                return null;
            }
            try {
                return (T) ((zzhe) cls.getMethod("combine", Collection.class).invoke(null, arrayList));
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
    public abstract T zza();
}
