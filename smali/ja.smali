.class public Lja;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lia;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lja;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lja;->b:Ljava/lang/String;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lja;->c:Lia;

    goto :goto_0

    .line 5
    :cond_0
    new-instance p2, Lia;

    invoke-direct {p2, p1}, Lia;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lja;->c:Lia;

    :goto_0
    return-void
.end method

.method private a()Lcom/airbnb/lottie/m;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/m<",
            "Lcom/airbnb/lottie/e;",
            ">;"
        }
    .end annotation

    const-string v0, "Fetching "

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lja;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzb;->a(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lja;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    .line 3
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-direct {p0, v0}, Lja;->d(Ljava/net/HttpURLConnection;)Lcom/airbnb/lottie/m;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Completed fetch from network. Success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/airbnb/lottie/m;->b()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lzb;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    .line 9
    :cond_2
    :goto_1
    :try_start_1
    invoke-direct {p0, v0}, Lja;->c(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v2, Lcom/airbnb/lottie/m;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to fetch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lja;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". Failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/m;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 12
    :try_start_2
    new-instance v2, Lcom/airbnb/lottie/m;

    invoke-direct {v2, v1}, Lcom/airbnb/lottie/m;-><init>(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v2

    :goto_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/m<",
            "Lcom/airbnb/lottie/e;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lja;

    invoke-direct {v0, p0, p1, p2}, Lja;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, v0, Lja;->c:Lia;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object p2, v0, Lja;->b:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lia;->a(Ljava/lang/String;)Lj2;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object p2, p0, Lj2;->a:Ljava/lang/Object;

    check-cast p2, Lha;

    .line 5
    iget-object p0, p0, Lj2;->b:Ljava/lang/Object;

    check-cast p0, Ljava/io/InputStream;

    .line 6
    sget-object v1, Lha;->d:Lha;

    if-ne p2, v1, :cond_2

    .line 7
    new-instance p2, Ljava/util/zip/ZipInputStream;

    invoke-direct {p2, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object p0, v0, Lja;->b:Ljava/lang/String;

    invoke-static {p2, p0}, Lcom/airbnb/lottie/f;->n(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/m;

    move-result-object p0

    goto :goto_0

    .line 8
    :cond_2
    iget-object p2, v0, Lja;->b:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/airbnb/lottie/f;->f(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/m;

    move-result-object p0

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/m;->b()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/airbnb/lottie/m;->b()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/airbnb/lottie/e;

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 11
    new-instance p0, Lcom/airbnb/lottie/m;

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/m;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    const-string p0, "Animation for "

    .line 12
    invoke-static {p0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, v0, Lja;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found in cache. Fetching from network."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lzb;->a(Ljava/lang/String;)V

    .line 13
    :try_start_0
    invoke-direct {v0}, Lja;->a()Lcom/airbnb/lottie/m;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 14
    new-instance p1, Lcom/airbnb/lottie/m;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/m;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_2
    return-object p0
.end method

.method private c(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 7
    :catch_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 8
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 10
    :catch_2
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private d(Ljava/net/HttpURLConnection;)Lcom/airbnb/lottie/m;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Lcom/airbnb/lottie/m<",
            "Lcom/airbnb/lottie/e;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "application/json"

    :cond_0
    const-string v1, "application/zip"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "Handling zip response."

    .line 3
    invoke-static {v0}, Lzb;->a(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lha;->d:Lha;

    .line 5
    iget-object v2, p0, Lja;->c:Lia;

    if-nez v2, :cond_1

    .line 6
    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2, v1}, Lcom/airbnb/lottie/f;->n(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/m;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lja;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v2, v1, p1, v0}, Lia;->e(Ljava/lang/String;Ljava/io/InputStream;Lha;)Ljava/io/File;

    move-result-object p1

    .line 8
    new-instance v1, Ljava/util/zip/ZipInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object p1, p0, Lja;->b:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/airbnb/lottie/f;->n(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/m;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string v0, "Received json response."

    .line 9
    invoke-static {v0}, Lzb;->a(Ljava/lang/String;)V

    .line 10
    sget-object v0, Lha;->c:Lha;

    .line 11
    iget-object v2, p0, Lja;->c:Lia;

    if-nez v2, :cond_3

    .line 12
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/airbnb/lottie/f;->f(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/m;

    move-result-object p1

    goto :goto_0

    .line 13
    :cond_3
    iget-object v1, p0, Lja;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v2, v1, p1, v0}, Lia;->e(Ljava/lang/String;Ljava/io/InputStream;Lha;)Ljava/io/File;

    move-result-object p1

    .line 14
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object p1, p0, Lja;->b:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/airbnb/lottie/f;->f(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/m;

    move-result-object p1

    .line 15
    :goto_0
    iget-object v1, p0, Lja;->c:Lia;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/airbnb/lottie/m;->b()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 16
    iget-object v1, p0, Lja;->c:Lia;

    iget-object v2, p0, Lja;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lia;->d(Ljava/lang/String;Lha;)V

    :cond_4
    return-object p1
.end method
