package androidx.appcompat.app;

import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.LongSparseArray;
import java.lang.reflect.Field;
import java.util.Map;

/* access modifiers changed from: package-private */
public class p {
    private static Field a;
    private static boolean b;
    private static Class<?> c;
    private static boolean d;
    private static Field e;
    private static boolean f;
    private static Field g;
    private static boolean h;

    static void a(Resources resources) {
        Object obj;
        int i = Build.VERSION.SDK_INT;
        if (i < 28) {
            Map map = null;
            r3 = null;
            r3 = null;
            Object obj2 = null;
            Object obj3 = null;
            if (i >= 24) {
                if (!h) {
                    try {
                        Field declaredField = Resources.class.getDeclaredField("mResourcesImpl");
                        g = declaredField;
                        declaredField.setAccessible(true);
                    } catch (NoSuchFieldException e2) {
                        Log.e("ResourcesFlusher", "Could not retrieve Resources#mResourcesImpl field", e2);
                    }
                    h = true;
                }
                Field field = g;
                if (field != null) {
                    try {
                        obj = field.get(resources);
                    } catch (IllegalAccessException e3) {
                        Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mResourcesImpl", e3);
                        obj = null;
                    }
                    if (obj != null) {
                        if (!b) {
                            try {
                                Field declaredField2 = obj.getClass().getDeclaredField("mDrawableCache");
                                a = declaredField2;
                                declaredField2.setAccessible(true);
                            } catch (NoSuchFieldException e4) {
                                Log.e("ResourcesFlusher", "Could not retrieve ResourcesImpl#mDrawableCache field", e4);
                            }
                            b = true;
                        }
                        Field field2 = a;
                        if (field2 != null) {
                            try {
                                obj2 = field2.get(obj);
                            } catch (IllegalAccessException e5) {
                                Log.e("ResourcesFlusher", "Could not retrieve value from ResourcesImpl#mDrawableCache", e5);
                            }
                        }
                        if (obj2 != null) {
                            b(obj2);
                        }
                    }
                }
            } else if (i >= 23) {
                if (!b) {
                    try {
                        Field declaredField3 = Resources.class.getDeclaredField("mDrawableCache");
                        a = declaredField3;
                        declaredField3.setAccessible(true);
                    } catch (NoSuchFieldException e6) {
                        Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e6);
                    }
                    b = true;
                }
                Field field3 = a;
                if (field3 != null) {
                    try {
                        obj3 = field3.get(resources);
                    } catch (IllegalAccessException e7) {
                        Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e7);
                    }
                }
                if (obj3 != null) {
                    b(obj3);
                }
            } else if (i >= 21) {
                if (!b) {
                    try {
                        Field declaredField4 = Resources.class.getDeclaredField("mDrawableCache");
                        a = declaredField4;
                        declaredField4.setAccessible(true);
                    } catch (NoSuchFieldException e8) {
                        Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e8);
                    }
                    b = true;
                }
                Field field4 = a;
                if (field4 != null) {
                    try {
                        map = (Map) field4.get(resources);
                    } catch (IllegalAccessException e9) {
                        Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e9);
                    }
                    if (map != null) {
                        map.clear();
                    }
                }
            }
        }
    }

    private static void b(Object obj) {
        if (!d) {
            try {
                c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e2) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e2);
            }
            d = true;
        }
        Class<?> cls = c;
        if (cls != null) {
            if (!f) {
                try {
                    Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                    e = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e3) {
                    Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e3);
                }
                f = true;
            }
            Field field = e;
            if (field != null) {
                LongSparseArray longSparseArray = null;
                try {
                    longSparseArray = (LongSparseArray) field.get(obj);
                } catch (IllegalAccessException e4) {
                    Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e4);
                }
                if (longSparseArray != null) {
                    longSparseArray.clear();
                }
            }
        }
    }
}
