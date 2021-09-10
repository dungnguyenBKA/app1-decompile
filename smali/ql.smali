.class public Lql;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lql$a;
    }
.end annotation


# static fields
.field private static final g:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field private a:Lnl;

.field private b:Lc0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc0<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lql$a;

.field private final d:Ljava/lang/Object;

.field private e:Z

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lql;->g:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method private constructor <init>(Lql$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lql;->d:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lql;->e:Z

    .line 4
    iput-object p1, p0, Lql;->c:Lql$a;

    .line 5
    iget-boolean p1, p1, Lql$a;->f:Z

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 7
    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lql;->f:Ljava/util/Set;

    .line 8
    new-instance p1, Lpl;

    iget-object v0, p0, Lql;->c:Lql$a;

    iget v0, v0, Lql$a;->a:I

    invoke-direct {p1, p0, v0}, Lpl;-><init>(Lql;I)V

    iput-object p1, p0, Lql;->b:Lc0;

    :cond_0
    return-void
.end method

.method static synthetic a(Lql;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lql;->f:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic b()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .line 1
    sget-object v0, Lql;->g:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public static j(Landroid/content/Context;)Ljava/io/File;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    const-string v0, "/cache/"

    const-string v1, "/Android/data/"

    .line 1
    :try_start_0
    const-class v2, Landroid/content/Context;

    const-string v3, "getExternalCacheDir"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :cond_0
    return-object v2

    :catch_0
    move-exception v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :cond_1
    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static k(Lql$a;)Lql;
    .locals 1

    .line 1
    new-instance v0, Lql;

    invoke-direct {v0, p0}, Lql;-><init>(Lql$a;)V

    return-object v0
.end method

.method public static l(Ljava/io/File;)J
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    const-wide/16 v0, 0x0

    .line 1
    :try_start_0
    const-class v2, Ljava/io/File;

    const-string v3, "getUsableSpace"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-wide v0

    .line 3
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v3, p0

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    int-to-long v0, p0

    mul-long v3, v3, v0

    return-wide v3

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return-wide v0

    :catch_1
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-wide v0
.end method

.method public static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "MD5"

    .line 1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 3
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 5
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 6
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/16 v4, 0x30

    .line 8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 11
    :catch_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public c(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 4

    if-eqz p1, :cond_7

    .line 1
    :try_start_0
    iget-object v0, p0, Lql;->b:Lc0;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lc0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    const-class v0, Ltl;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p2

    check-cast v0, Ltl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltl;->a(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lql;->b:Lc0;

    invoke-virtual {v0, p1, p2}, Lc0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    iget-boolean v0, p0, Lql;->e:Z

    if-eqz v0, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lql;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 7
    :try_start_1
    iget-object v1, p0, Lql;->a:Lnl;

    if-eqz v1, :cond_6

    .line 8
    invoke-static {p1}, Lql;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    .line 9
    :try_start_2
    iget-object v2, p0, Lql;->a:Lnl;

    invoke-virtual {v2, p1}, Lnl;->q0(Ljava/lang/String;)Lnl$d;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 10
    iget-object v2, p0, Lql;->a:Lnl;

    invoke-virtual {v2, p1}, Lnl;->p0(Ljava/lang/String;)Lnl$b;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p1, v3}, Lnl$b;->e(I)Ljava/io/OutputStream;

    move-result-object v1

    .line 12
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    iget-object v2, p0, Lql;->c:Lql$a;

    iget-object v3, v2, Lql$a;->d:Landroid/graphics/Bitmap$CompressFormat;

    iget v2, v2, Lql$a;->e:I

    invoke-virtual {p2, v3, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 13
    invoke-virtual {p1}, Lnl$b;->d()V

    .line 14
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {v2, v3}, Lnl$d;->j(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_0
    if-eqz v1, :cond_6

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_3
    const-string p2, "ImageCache"

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addBitmapToCache - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_6

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "ImageCache"

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addBitmapToCache - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_6

    .line 18
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :goto_2
    if-eqz v1, :cond_5

    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 19
    :catch_2
    :cond_5
    :try_start_6
    throw p1

    .line 20
    :catch_3
    :cond_6
    :goto_3
    monitor-exit v0

    goto :goto_4

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_4
    return-void
.end method

.method public d()V
    .locals 6

    .line 1
    iget-object v0, p0, Lql;->b:Lc0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc0;->evictAll()V

    .line 3
    :cond_0
    iget-object v0, p0, Lql;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 4
    :try_start_0
    iput-boolean v1, p0, Lql;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 5
    :try_start_1
    iget-object v2, p0, Lql;->a:Lnl;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lnl;->r0()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    iget-object v2, p0, Lql;->a:Lnl;

    invoke-virtual {v2}, Lnl;->m0()V

    const/4 v2, 0x0

    .line 7
    iput-object v2, p0, Lql;->a:Lnl;

    .line 8
    invoke-virtual {p0}, Lql;->n()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :cond_1
    :goto_0
    :try_start_2
    iput-boolean v1, p0, Lql;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    .line 10
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "ImageCache"

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearCache - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 12
    :goto_1
    :try_start_4
    monitor-exit v0

    return-void

    .line 13
    :goto_2
    iput-boolean v1, p0, Lql;->e:Z

    .line 14
    throw v2

    :catchall_1
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method public e()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lql;->b:Lc0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc0;->evictAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lql;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lql;->a:Lnl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3
    :try_start_1
    invoke-virtual {v1}, Lnl;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "ImageCache"

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flush - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public g(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    invoke-static {p1}, Lql;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-boolean v0, p0, Lql;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object v0, p0, Lql;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lql;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_1

    .line 5
    :try_start_1
    iget-object v2, p0, Lql;->d:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 6
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, p0, Lql;->a:Lnl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_6

    .line 8
    :try_start_3
    invoke-virtual {v2, p1}, Lnl;->q0(Ljava/lang/String;)Lnl$d;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    .line 9
    invoke-virtual {p1, v2}, Lnl$d;->j(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_2

    .line 10
    :try_start_4
    move-object v2, p1

    check-cast v2, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const v3, 0x7fffffff

    .line 11
    :try_start_5
    invoke-static {v2, v3, v3, p0}, Lrl;->p(Ljava/io/FileDescriptor;IILql;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_6
    const-string v3, "ImageCache"

    const-string v4, "decode Sampled Bitmap From File Descriptor Occur Exception"

    .line 12
    invoke-static {v3, v4, v2}, Lem;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const-string v3, "ImageCache"

    const-string v4, "decode Sampled Bitmap From File Descriptor Occur OOM"

    .line 14
    invoke-static {v3, v4, v2}, Lem;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_4

    :cond_2
    :goto_1
    move-object v6, v1

    move-object v1, p1

    move-object p1, v6

    goto :goto_2

    :cond_3
    move-object p1, v1

    :goto_2
    if-eqz v1, :cond_4

    .line 15
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    :catch_4
    move-exception v1

    .line 16
    :try_start_8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_4
    :goto_3
    move-object v1, p1

    goto :goto_7

    :catchall_0
    move-exception p1

    move-object v6, v1

    move-object v1, p1

    move-object p1, v6

    goto :goto_5

    :catch_5
    move-exception v2

    move-object p1, v1

    :goto_4
    :try_start_9
    const-string v3, "ImageCache"

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBitmapFromDiskCache - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz p1, :cond_6

    .line 18
    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_7

    :catch_6
    move-exception p1

    .line 19
    :try_start_b
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_7

    :catchall_1
    move-exception v1

    :goto_5
    if-eqz p1, :cond_5

    .line 20
    :try_start_c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_6

    :catch_7
    move-exception p1

    .line 21
    :try_start_d
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 22
    :cond_5
    :goto_6
    throw v1

    .line 23
    :cond_6
    :goto_7
    monitor-exit v0

    return-object v1

    :catchall_2
    move-exception p1

    .line 24
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method

.method public h(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lql;->b:Lc0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lc0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected i(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    iget-object v0, p0, Lql;->f:Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2
    iget-object v0, p0, Lql;->f:Ljava/util/Set;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lql;->f:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5

    .line 6
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 7
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v4, v5

    .line 8
    iget v6, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v6, v5

    mul-int v6, v6, v4

    .line 9
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    .line 10
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x4

    goto :goto_2

    .line 11
    :cond_1
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v4, v5, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne v4, v5, :cond_3

    :goto_1
    const/4 v4, 0x2

    goto :goto_2

    .line 13
    :cond_3
    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    :goto_2
    mul-int v6, v6, v4

    .line 14
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v4

    if-gt v6, v4, :cond_4

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_0

    .line 15
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    move-object v1, v3

    goto :goto_4

    .line 16
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 17
    :cond_6
    :goto_4
    monitor-exit v0

    goto :goto_5

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_7
    :goto_5
    return-object v1
.end method

.method public n()V
    .locals 8

    .line 1
    iget-object v0, p0, Lql;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lql;->a:Lnl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lnl;->r0()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3
    :cond_0
    iget-object v1, p0, Lql;->c:Lql$a;

    iget-object v2, v1, Lql$a;->c:Ljava/io/File;

    .line 4
    iget-boolean v1, v1, Lql$a;->g:Z

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 7
    :cond_1
    invoke-static {v2}, Lql;->l(Ljava/io/File;)J

    move-result-wide v3

    iget-object v1, p0, Lql;->c:Lql$a;

    iget v1, v1, Lql$a;->b:I

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-lez v1, :cond_3

    .line 8
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/data"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-static {v2}, Lql;->l(Ljava/io/File;)J

    move-result-wide v3

    const-wide/32 v5, 0x1400000

    cmp-long v1, v3, v5

    if-gez v1, :cond_2

    .line 10
    iget-object v1, p0, Lql;->c:Lql$a;

    const/high16 v3, 0x500000

    iput v3, v1, Lql$a;->b:I

    .line 11
    :cond_2
    invoke-static {}, Lol;->b()Lol;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    iget-object v2, p0, Lql;->c:Lql$a;

    iget v2, v2, Lql$a;->b:I

    int-to-long v6, v2

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lol;->a(Ljava/lang/String;IIJ)Lnl;

    move-result-object v1

    iput-object v1, p0, Lql;->a:Lnl;

    goto :goto_0

    :cond_3
    const-string v1, "ImageCache"

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disk cache will not initialize, disk space is not enought, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    .line 13
    invoke-static {v3, v1, v2}, Lem;->o(ILjava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Lql;->e:Z

    .line 15
    iget-object v1, p0, Lql;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 16
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
