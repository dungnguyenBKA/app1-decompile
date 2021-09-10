package defpackage;

import com.vungle.warren.model.ReportDBAdapter;
import defpackage.i20;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.http.protocol.HTTP;

/* renamed from: b30  reason: default package */
public class b30 {
    private static final Charset g = Charset.forName(HTTP.UTF_8);
    private static final int h = 15;
    private static final r20 i = new r20();
    private static final Comparator<? super File> j = z20.a();
    private static final FilenameFilter k = a30.a();
    public static final /* synthetic */ int l = 0;
    private final AtomicInteger a = new AtomicInteger(0);
    private final File b;
    private final File c;
    private final File d;
    private final File e;
    private final l30 f;

    public b30(File file, l30 l30) {
        File file2 = new File(file, "report-persistence");
        this.b = new File(file2, "sessions");
        this.c = new File(file2, "priority-reports");
        this.d = new File(file2, "reports");
        this.e = new File(file2, "native-reports");
        this.f = l30;
    }

    static int a(File file, File file2) {
        String name = file.getName();
        int i2 = h;
        return name.substring(0, i2).compareTo(file2.getName().substring(0, i2));
    }

    private static List<File> b(List<File>... listArr) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        for (List<File> list : listArr) {
            i2 += list.size();
        }
        arrayList.ensureCapacity(i2);
        for (List<File> list2 : listArr) {
            arrayList.addAll(list2);
        }
        return arrayList;
    }

    private static List<File> g(File file) {
        return i(file, null);
    }

    private List<File> h() {
        List[] listArr = {b(g(this.c), g(this.e)), g(this.d)};
        for (int i2 = 0; i2 < 2; i2++) {
            Collections.sort(listArr[i2], j);
        }
        return b(listArr);
    }

    private static List<File> i(File file, FileFilter fileFilter) {
        if (!file.isDirectory()) {
            return Collections.emptyList();
        }
        File[] listFiles = fileFilter == null ? file.listFiles() : file.listFiles(fileFilter);
        return listFiles != null ? Arrays.asList(listFiles) : Collections.emptyList();
    }

    private static List<File> j(File file, FilenameFilter filenameFilter) {
        if (!file.isDirectory()) {
            return Collections.emptyList();
        }
        File[] listFiles = filenameFilter == null ? file.listFiles() : file.listFiles(filenameFilter);
        return listFiles != null ? Arrays.asList(listFiles) : Collections.emptyList();
    }

    private File k(String str) {
        return new File(this.b, str);
    }

    private static File r(File file) {
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        throw new IOException("Could not create directory " + file);
    }

    private static String s(File file) {
        byte[] bArr = new byte[8192];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        FileInputStream fileInputStream = new FileInputStream(file);
        while (true) {
            try {
                int read = fileInputStream.read(bArr);
                if (read > 0) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    String str = new String(byteArrayOutputStream.toByteArray(), g);
                    fileInputStream.close();
                    return str;
                }
            } catch (Throwable unused) {
            }
        }
        throw th;
    }

    private static void t(File file) {
        if (file != null) {
            if (file.isDirectory()) {
                for (File file2 : file.listFiles()) {
                    t(file2);
                }
            }
            file.delete();
        }
    }

    private static void u(File file, String str) {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), g);
        try {
            outputStreamWriter.write(str);
            outputStreamWriter.close();
            return;
        } catch (Throwable unused) {
        }
        throw th;
    }

    public void c() {
        Iterator it = ((ArrayList) h()).iterator();
        while (it.hasNext()) {
            ((File) it.next()).delete();
        }
    }

    public void d(String str) {
        FilenameFilter a2 = v20.a(str);
        Iterator it = ((ArrayList) b(j(this.c, a2), j(this.e, a2), j(this.d, a2))).iterator();
        while (it.hasNext()) {
            ((File) it.next()).delete();
        }
    }

    public void e(String str, long j2) {
        boolean z;
        List<File> i2 = i(this.b, w20.a(str));
        Collections.sort(i2, j);
        if (i2.size() > 8) {
            for (File file : i2.subList(8, i2.size())) {
                t(file);
            }
            i2 = i2.subList(0, 8);
        }
        for (File file2 : i2) {
            az f2 = az.f();
            StringBuilder q = ic.q("Finalizing report for session ");
            q.append(file2.getName());
            f2.h(q.toString());
            List<File> j3 = j(file2, k);
            if (j3.isEmpty()) {
                az f3 = az.f();
                StringBuilder q2 = ic.q("Session ");
                q2.append(file2.getName());
                q2.append(" has no events.");
                f3.h(q2.toString());
            } else {
                Collections.sort(j3);
                ArrayList arrayList = new ArrayList();
                Iterator<File> it = j3.iterator();
                while (true) {
                    z = false;
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        File next = it.next();
                        try {
                            arrayList.add(i.e(s(next)));
                            if (!z) {
                                String name = next.getName();
                                if (!(name.startsWith("event") && name.endsWith("_"))) {
                                }
                            }
                            z = true;
                        } catch (IOException e2) {
                            az f4 = az.f();
                            f4.j("Could not add event to report for " + next, e2);
                        }
                    }
                }
                if (arrayList.isEmpty()) {
                    az f5 = az.f();
                    StringBuilder q3 = ic.q("Could not parse event files for session ");
                    q3.append(file2.getName());
                    f5.i(q3.toString());
                } else {
                    String str2 = null;
                    File file3 = new File(file2, "user");
                    if (file3.isFile()) {
                        try {
                            str2 = s(file3);
                        } catch (IOException e3) {
                            az f6 = az.f();
                            StringBuilder q4 = ic.q("Could not read user ID file in ");
                            q4.append(file2.getName());
                            f6.j(q4.toString(), e3);
                        }
                    }
                    File file4 = new File(file2, ReportDBAdapter.ReportColumns.TABLE_NAME);
                    File file5 = z ? this.c : this.d;
                    try {
                        r20 r20 = i;
                        i20 l2 = r20.l(s(file4)).n(j2, z, str2).l(j20.a(arrayList));
                        i20.d j4 = l2.j();
                        if (j4 != null) {
                            r(file5);
                            u(new File(file5, j4.h()), r20.m(l2));
                        }
                    } catch (IOException e4) {
                        az f7 = az.f();
                        f7.j("Could not synthesize final report file for " + file4, e4);
                    }
                }
            }
            t(file2);
        }
        Objects.requireNonNull(((k30) this.f).l().b());
        ArrayList arrayList2 = (ArrayList) h();
        int size = arrayList2.size();
        if (size > 4) {
            for (File file6 : arrayList2.subList(4, size)) {
                file6.delete();
            }
        }
    }

    public void f(String str, i20.c cVar) {
        File file = new File(k(str), ReportDBAdapter.ReportColumns.TABLE_NAME);
        File file2 = this.e;
        try {
            r20 r20 = i;
            i20 m = r20.l(s(file)).m(cVar);
            r(file2);
            u(new File(file2, str), r20.m(m));
        } catch (IOException e2) {
            az f2 = az.f();
            f2.j("Could not synthesize final native report file for " + file, e2);
        }
    }

    public boolean l() {
        return !((ArrayList) h()).isEmpty();
    }

    public List<String> m() {
        List<File> g2 = g(this.b);
        Collections.sort(g2, j);
        ArrayList arrayList = new ArrayList();
        for (File file : g2) {
            arrayList.add(file.getName());
        }
        return arrayList;
    }

    public List<l00> n() {
        List<File> h2 = h();
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(((ArrayList) h2).size());
        Iterator it = ((ArrayList) h()).iterator();
        while (it.hasNext()) {
            File file = (File) it.next();
            try {
                arrayList.add(l00.a(i.l(s(file)), file.getName()));
            } catch (IOException e2) {
                az f2 = az.f();
                f2.j("Could not load report file " + file + "; deleting", e2);
                file.delete();
            }
        }
        return arrayList;
    }

    public void o(i20.d.AbstractC0101d dVar, String str, boolean z) {
        int i2 = ((k30) this.f).l().b().a;
        File k2 = k(str);
        try {
            u(new File(k2, ic.j("event", String.format(Locale.US, "%010d", Integer.valueOf(this.a.getAndIncrement())), z ? "_" : "")), i.f(dVar));
        } catch (IOException e2) {
            az.f().j("Could not persist event for session " + str, e2);
        }
        List<File> j2 = j(k2, x20.a());
        Collections.sort(j2, y20.a());
        int size = j2.size();
        for (File file : j2) {
            if (size > i2) {
                t(file);
                size--;
            } else {
                return;
            }
        }
    }

    public void p(i20 i20) {
        i20.d j2 = i20.j();
        if (j2 == null) {
            az.f().b("Could not get session for report");
            return;
        }
        String h2 = j2.h();
        try {
            File k2 = k(h2);
            r(k2);
            u(new File(k2, ReportDBAdapter.ReportColumns.TABLE_NAME), i.m(i20));
        } catch (IOException e2) {
            az f2 = az.f();
            f2.c("Could not persist report for session " + h2, e2);
        }
    }

    public void q(String str, String str2) {
        try {
            u(new File(k(str2), "user"), str);
        } catch (IOException e2) {
            az f2 = az.f();
            f2.j("Could not persist user ID for session " + str2, e2);
        }
    }
}
