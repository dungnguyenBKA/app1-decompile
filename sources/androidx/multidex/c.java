package androidx.multidex;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import androidx.multidex.a;
import com.google.ads.ADRequestList;
import com.vungle.warren.model.VisionDataDBAdapter;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.CRC32;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

/* access modifiers changed from: package-private */
public final class c implements Closeable {
    private final File b;
    private final long c;
    private final File d;
    private final RandomAccessFile e;
    private final FileChannel f;
    private final FileLock g;

    /* access modifiers changed from: private */
    public static class a extends File {
        public long b = -1;

        public a(File file, String str) {
            super(file, str);
        }
    }

    c(File file, File file2) {
        StringBuilder q = ic.q("MultiDexExtractor(");
        q.append(file.getPath());
        q.append(", ");
        q.append(file2.getPath());
        q.append(")");
        Log.i("MultiDex", q.toString());
        this.b = file;
        this.d = file2;
        this.c = S(file);
        File file3 = new File(file2, "MultiDex.lock");
        RandomAccessFile randomAccessFile = new RandomAccessFile(file3, "rw");
        this.e = randomAccessFile;
        try {
            FileChannel channel = randomAccessFile.getChannel();
            this.f = channel;
            try {
                Log.i("MultiDex", "Blocking on lock " + file3.getPath());
                this.g = channel.lock();
                Log.i("MultiDex", file3.getPath() + " locked");
            } catch (IOException | Error | RuntimeException e2) {
                j(this.f);
                throw e2;
            }
        } catch (IOException | Error | RuntimeException e3) {
            j(this.e);
            throw e3;
        }
    }

    private static long L(File file) {
        long lastModified = file.lastModified();
        return lastModified == -1 ? lastModified - 1 : lastModified;
    }

    /* JADX INFO: finally extract failed */
    private static long S(File file) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, ADRequestList.ORDER_R);
        try {
            d a2 = a.C0016a.a(randomAccessFile);
            CRC32 crc32 = new CRC32();
            long j = a2.b;
            randomAccessFile.seek(a2.a);
            byte[] bArr = new byte[16384];
            int read = randomAccessFile.read(bArr, 0, (int) Math.min((long) PlaybackStateCompat.ACTION_PREPARE, j));
            while (true) {
                if (read == -1) {
                    break;
                }
                crc32.update(bArr, 0, read);
                j -= (long) read;
                if (j == 0) {
                    break;
                }
                read = randomAccessFile.read(bArr, 0, (int) Math.min((long) PlaybackStateCompat.ACTION_PREPARE, j));
            }
            long value = crc32.getValue();
            randomAccessFile.close();
            return value == -1 ? value - 1 : value;
        } catch (Throwable th) {
            randomAccessFile.close();
            throw th;
        }
    }

    private List<a> b0(Context context, String str) {
        Log.i("MultiDex", "loading existing secondary dex files");
        String str2 = this.b.getName() + ".classes";
        SharedPreferences sharedPreferences = context.getSharedPreferences("multidex.version", 4);
        int i = sharedPreferences.getInt(str + "dex.number", 1);
        ArrayList arrayList = new ArrayList(i + -1);
        int i2 = 2;
        while (i2 <= i) {
            a aVar = new a(this.d, str2 + i2 + ".zip");
            if (aVar.isFile()) {
                aVar.b = S(aVar);
                long j = sharedPreferences.getLong(str + "dex.crc." + i2, -1);
                long j2 = sharedPreferences.getLong(str + "dex.time." + i2, -1);
                long lastModified = aVar.lastModified();
                if (j2 == lastModified && j == aVar.b) {
                    arrayList.add(aVar);
                    i2++;
                    sharedPreferences = sharedPreferences;
                    str2 = str2;
                } else {
                    throw new IOException("Invalid extracted dex: " + aVar + " (key \"" + str + "\"), expected modification time: " + j2 + ", modification time: " + lastModified + ", expected crc: " + j + ", file crc: " + aVar.b);
                }
            } else {
                StringBuilder q = ic.q("Missing extracted secondary dex file '");
                q.append(aVar.getPath());
                q.append("'");
                throw new IOException(q.toString());
            }
        }
        return arrayList;
    }

    private List<a> i0() {
        String str = this.b.getName() + ".classes";
        File[] listFiles = this.d.listFiles(new b(this));
        if (listFiles == null) {
            StringBuilder q = ic.q("Failed to list secondary dex dir content (");
            q.append(this.d.getPath());
            q.append(").");
            Log.w("MultiDex", q.toString());
        } else {
            for (File file : listFiles) {
                StringBuilder q2 = ic.q("Trying to delete old file ");
                q2.append(file.getPath());
                q2.append(" of size ");
                q2.append(file.length());
                Log.i("MultiDex", q2.toString());
                if (!file.delete()) {
                    StringBuilder q3 = ic.q("Failed to delete old file ");
                    q3.append(file.getPath());
                    Log.w("MultiDex", q3.toString());
                } else {
                    StringBuilder q4 = ic.q("Deleted old file ");
                    q4.append(file.getPath());
                    Log.i("MultiDex", q4.toString());
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        ZipFile zipFile = new ZipFile(this.b);
        int i = 2;
        try {
            ZipEntry entry = zipFile.getEntry("classes2.dex");
            while (entry != null) {
                a aVar = new a(this.d, str + i + ".zip");
                arrayList.add(aVar);
                Log.i("MultiDex", "Extraction is needed for file " + aVar);
                int i2 = 0;
                boolean z = false;
                while (i2 < 3 && !z) {
                    i2++;
                    o(zipFile, entry, aVar, str);
                    try {
                        aVar.b = S(aVar);
                        z = true;
                    } catch (IOException e2) {
                        Log.w("MultiDex", "Failed to read crc from " + aVar.getAbsolutePath(), e2);
                        z = false;
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("Extraction ");
                    sb.append(z ? "succeeded" : "failed");
                    sb.append(" '");
                    sb.append(aVar.getAbsolutePath());
                    sb.append("': length ");
                    sb.append(aVar.length());
                    sb.append(" - crc: ");
                    sb.append(aVar.b);
                    Log.i("MultiDex", sb.toString());
                    if (!z) {
                        aVar.delete();
                        if (aVar.exists()) {
                            Log.w("MultiDex", "Failed to delete corrupted secondary dex '" + aVar.getPath() + "'");
                        }
                    }
                }
                if (z) {
                    i++;
                    entry = zipFile.getEntry("classes" + i + ".dex");
                } else {
                    throw new IOException("Could not create zip file " + aVar.getAbsolutePath() + " for secondary dex (" + i + ")");
                }
            }
            return arrayList;
        } finally {
            try {
                zipFile.close();
            } catch (IOException e3) {
                Log.w("MultiDex", "Failed to close resource", e3);
            }
        }
    }

    private static void j(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e2) {
            Log.w("MultiDex", "Failed to close resource", e2);
        }
    }

    private static void j0(Context context, String str, long j, long j2, List<a> list) {
        SharedPreferences.Editor edit = context.getSharedPreferences("multidex.version", 4).edit();
        edit.putLong(str + VisionDataDBAdapter.VisionDataColumns.COLUMN_TIMESTAMP, j);
        edit.putLong(ic.l(new StringBuilder(), str, "crc"), j2);
        edit.putInt(str + "dex.number", list.size() + 1);
        int i = 2;
        for (a aVar : list) {
            edit.putLong(str + "dex.crc." + i, aVar.b);
            edit.putLong(str + "dex.time." + i, aVar.lastModified());
            i++;
        }
        edit.commit();
    }

    /* JADX INFO: finally extract failed */
    private static void o(ZipFile zipFile, ZipEntry zipEntry, File file, String str) {
        InputStream inputStream = zipFile.getInputStream(zipEntry);
        File createTempFile = File.createTempFile(ic.i("tmp-", str), ".zip", file.getParentFile());
        StringBuilder q = ic.q("Extracting ");
        q.append(createTempFile.getPath());
        Log.i("MultiDex", q.toString());
        try {
            ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(createTempFile)));
            try {
                ZipEntry zipEntry2 = new ZipEntry("classes.dex");
                zipEntry2.setTime(zipEntry.getTime());
                zipOutputStream.putNextEntry(zipEntry2);
                byte[] bArr = new byte[16384];
                for (int read = inputStream.read(bArr); read != -1; read = inputStream.read(bArr)) {
                    zipOutputStream.write(bArr, 0, read);
                }
                zipOutputStream.closeEntry();
                zipOutputStream.close();
                if (createTempFile.setReadOnly()) {
                    Log.i("MultiDex", "Renaming to " + file.getPath());
                    if (!createTempFile.renameTo(file)) {
                        throw new IOException("Failed to rename \"" + createTempFile.getAbsolutePath() + "\" to \"" + file.getAbsolutePath() + "\"");
                    }
                    return;
                }
                throw new IOException("Failed to mark readonly \"" + createTempFile.getAbsolutePath() + "\" (tmp of \"" + file.getAbsolutePath() + "\")");
            } catch (Throwable th) {
                zipOutputStream.close();
                throw th;
            }
        } finally {
            j(inputStream);
            createTempFile.delete();
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x007e A[SYNTHETIC, Splitter:B:10:0x007e] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.List<? extends java.io.File> V(android.content.Context r13, java.lang.String r14, boolean r15) {
        /*
        // Method dump skipped, instructions count: 222
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.multidex.c.V(android.content.Context, java.lang.String, boolean):java.util.List");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.g.release();
        this.f.close();
        this.e.close();
    }
}
