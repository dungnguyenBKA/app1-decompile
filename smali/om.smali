.class public Lom;
.super Lpm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lom$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpm<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private k:Lom$a;

.field private l:Ljava/lang/String;

.field private m:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lom$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lpm;-><init>(Ljava/lang/String;Lpm$b;)V

    .line 2
    iput-object p2, p0, Lom;->l:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lom;->k:Lom$a;

    return-void
.end method

.method private d(JLjava/io/InputStream;)Ljava/lang/String;
    .locals 16

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v0, p3

    const-string v4, "file download incomplete.[size != length]"

    const-string v5, "Download"

    if-eqz v0, :cond_9

    const/high16 v6, 0x42c60000    # 99.0f

    .line 1
    iget v7, v1, Lom;->m:I

    int-to-float v8, v7

    sub-float/2addr v6, v8

    int-to-float v7, v7

    const/16 v8, 0x1000

    new-array v8, v8, [B

    .line 2
    new-instance v9, Ljava/io/File;

    iget-object v10, v1, Lom;->l:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    .line 4
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "mkdir failed."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const-wide/16 v11, 0x0

    .line 6
    :try_start_0
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide v14, v11

    .line 7
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {v0, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-ltz v9, :cond_5

    .line 8
    iget-object v10, v1, Lpm;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_4

    .line 9
    :try_start_2
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    nop

    :goto_2
    cmp-long v0, v2, v11

    if-lez v0, :cond_3

    cmp-long v0, v14, v2

    if-eqz v0, :cond_3

    .line 10
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lom;->l:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    const/4 v10, 0x0

    return-object v10

    :cond_4
    const/4 v10, 0x0

    .line 12
    :try_start_3
    invoke-virtual {v13, v8, v10, v9}, Ljava/io/FileOutputStream;->write([BII)V

    cmp-long v10, v2, v11

    if-lez v10, :cond_2

    int-to-long v11, v9

    add-long/2addr v14, v11

    int-to-float v9, v9

    mul-float v9, v9, v6

    long-to-float v10, v2

    div-float/2addr v9, v10

    add-float/2addr v7, v9

    float-to-int v9, v7

    .line 13
    invoke-direct {v1, v9}, Lom;->e(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/16 v11, 0x0

    goto :goto_1

    .line 14
    :cond_5
    :try_start_4
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-lez v0, :cond_6

    cmp-long v0, v14, v2

    if-eqz v0, :cond_6

    .line 15
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lom;->l:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 17
    :cond_6
    iget-object v0, v1, Lom;->l:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v0

    move-object v10, v13

    goto :goto_3

    :catchall_1
    move-exception v0

    const/4 v10, 0x0

    const-wide/16 v14, 0x0

    :goto_3
    if-eqz v10, :cond_7

    .line 18
    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_7
    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-lez v8, :cond_8

    cmp-long v6, v14, v2

    if-eqz v6, :cond_8

    .line 19
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lom;->l:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 21
    :cond_8
    throw v0

    .line 22
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v2, "inputStream is null."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private e(I)V
    .locals 1

    .line 1
    iget v0, p0, Lom;->m:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Lom;->m:I

    .line 3
    iget-object v0, p0, Lom;->k:Lom$a;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lom$a;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lom;->e(I)V

    return-void
.end method

.method protected b()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lom;->e(I)V

    return-void
.end method

.method protected c(Ljava/net/HttpURLConnection;)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    .line 2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lom;->d(JLjava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lom;->d(JLjava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
