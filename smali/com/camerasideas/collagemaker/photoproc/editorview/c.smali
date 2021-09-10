.class public Lcom/camerasideas/collagemaker/photoproc/editorview/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/collagemaker/photoproc/editorview/c$a;
    }
.end annotation


# static fields
.field public static final a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/camerasideas/collagemaker/photoproc/editorview/c;->b:Ljava/util/concurrent/ExecutorService;

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 3
    new-instance v0, Lcom/camerasideas/collagemaker/photoproc/editorview/c$a;

    invoke-direct {v0, v1}, Lcom/camerasideas/collagemaker/photoproc/editorview/c$a;-><init>(I)V

    sput-object v0, Lcom/camerasideas/collagemaker/photoproc/editorview/c;->a:Landroid/util/LruCache;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    sget-object v0, Lcom/camerasideas/collagemaker/photoproc/editorview/c;->a:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 2
    invoke-static {v0}, Lwq;->o(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    .line 5
    invoke-static {v0, v1, p0}, Lic;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    .line 6
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_5

    .line 8
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int p0, v3

    new-array v3, p0, [B

    .line 9
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    invoke-virtual {v4, v3, v0, p0}, Ljava/io/InputStream;->read([BII)I

    .line 11
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    move-object v4, v1

    .line 14
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v4, :cond_3

    goto :goto_2

    :catch_4
    move-exception p0

    move-object v4, v1

    .line 15
    :goto_1
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_3

    .line 16
    :goto_2
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_5

    :catch_5
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object v1, v4

    :goto_3
    if-eqz v1, :cond_2

    .line 18
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_4

    :catch_6
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 20
    :cond_2
    :goto_4
    throw p0

    :cond_3
    :goto_5
    move-object v3, v1

    :goto_6
    if-eqz v3, :cond_4

    .line 21
    array-length p0, v3

    invoke-static {v3, v0, p0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 22
    invoke-static {p0}, Lwq;->o(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object p0

    :cond_4
    return-object v1
.end method

.method public static final b(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/camerasideas/collagemaker/photoproc/editorview/c;->a:Landroid/util/LruCache;

    invoke-virtual {v0, p0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/camerasideas/collagemaker/photoproc/editorview/c;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/camerasideas/collagemaker/photoproc/editorview/a;

    invoke-direct {v1, p1, p0}, Lcom/camerasideas/collagemaker/photoproc/editorview/a;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
