.class final Lcom/google/android/datatransport/cct/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/backends/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/cct/d$a;,
        Lcom/google/android/datatransport/cct/d$b;
    }
.end annotation


# instance fields
.field private final a:Ld40;

.field private final b:Landroid/net/ConnectivityManager;

.field private final c:Landroid/content/Context;

.field final d:Ljava/net/URL;

.field private final e:Lmv;

.field private final f:Lmv;

.field private final g:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lmv;Lmv;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lrs;->b()Ld40;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/datatransport/cct/d;->a:Ld40;

    .line 3
    iput-object p1, p0, Lcom/google/android/datatransport/cct/d;->c:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/google/android/datatransport/cct/d;->b:Landroid/net/ConnectivityManager;

    .line 5
    sget-object p1, Lcom/google/android/datatransport/cct/a;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/datatransport/cct/d;->d(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/cct/d;->d:Ljava/net/URL;

    .line 6
    iput-object p3, p0, Lcom/google/android/datatransport/cct/d;->e:Lmv;

    .line 7
    iput-object p2, p0, Lcom/google/android/datatransport/cct/d;->f:Lmv;

    const p1, 0x9c40

    .line 8
    iput p1, p0, Lcom/google/android/datatransport/cct/d;->g:I

    return-void
.end method

.method static c(Lcom/google/android/datatransport/cct/d;Lcom/google/android/datatransport/cct/d$a;)Lcom/google/android/datatransport/cct/d$b;
    .locals 12

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Lcom/google/android/datatransport/cct/d$a;->a:Ljava/net/URL;

    const-string v1, "CctTransportBackend"

    const-string v2, "Making request to: %s"

    invoke-static {v1, v2, v0}, Lst;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p1, Lcom/google/android/datatransport/cct/d$a;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v2, 0x7530

    .line 4
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 5
    iget v2, p0, Lcom/google/android/datatransport/cct/d;->g:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v4, "POST"

    .line 8
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "2.3.3"

    aput-object v4, v2, v3

    const-string v3, "datatransport/%s android/"

    .line 9
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "User-Agent"

    .line 10
    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Encoding"

    const-string v3, "gzip"

    .line 11
    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Content-Type"

    const-string v5, "application/json"

    .line 12
    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Accept-Encoding"

    .line 13
    invoke-virtual {v0, v5, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v5, p1, Lcom/google/android/datatransport/cct/d$a;->c:Ljava/lang/String;

    if-eqz v5, :cond_0

    const-string v6, "X-Goog-Api-Key"

    .line 15
    invoke-virtual {v0, v6, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    .line 16
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Le40; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :try_start_1
    new-instance v9, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v9, v8}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 18
    :try_start_2
    iget-object p0, p0, Lcom/google/android/datatransport/cct/d;->a:Ld40;

    iget-object p1, p1, Lcom/google/android/datatransport/cct/d$a;->b:Lrs;

    new-instance v10, Ljava/io/BufferedWriter;

    new-instance v11, Ljava/io/OutputStreamWriter;

    invoke-direct {v11, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-interface {p0, p1, v10}, Ld40;->a(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 19
    :try_start_3
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-eqz v8, :cond_1

    :try_start_4
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Le40; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 20
    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Status Code: "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lst;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content-Type: "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lst;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Encoding: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lst;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x12e

    if-eq p0, p1, :cond_9

    const/16 p1, 0x12d

    if-eq p0, p1, :cond_9

    const/16 p1, 0x133

    if-ne p0, p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 p1, 0xc8

    if-eq p0, p1, :cond_3

    .line 24
    new-instance p1, Lcom/google/android/datatransport/cct/d$b;

    invoke-direct {p1, p0, v7, v5, v6}, Lcom/google/android/datatransport/cct/d$b;-><init>(ILjava/net/URL;J)V

    goto/16 :goto_4

    .line 25
    :cond_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 26
    :try_start_5
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 28
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :cond_4
    move-object v0, p1

    .line 29
    :goto_0
    :try_start_6
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 30
    invoke-static {v1}, Lvs;->a(Ljava/io/Reader;)Lvs;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lvs;->b()J

    move-result-wide v1

    .line 32
    new-instance v3, Lcom/google/android/datatransport/cct/d$b;

    invoke-direct {v3, p0, v7, v1, v2}, Lcom/google/android/datatransport/cct/d$b;-><init>(ILjava/net/URL;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_5

    .line 33
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_6
    move-object p1, v3

    goto :goto_4

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_7

    .line 34
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    :cond_7
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p0

    if-eqz p1, :cond_8

    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    :cond_8
    throw p0

    :cond_9
    :goto_1
    const-string p1, "Location"

    .line 35
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 36
    new-instance v0, Lcom/google/android/datatransport/cct/d$b;

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1, v5, v6}, Lcom/google/android/datatransport/cct/d$b;-><init>(ILjava/net/URL;J)V

    move-object p1, v0

    goto :goto_4

    :catchall_4
    move-exception p0

    .line 37
    :try_start_b
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    :try_start_c
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    move-exception p0

    if-eqz v8, :cond_a

    :try_start_d
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :catchall_7
    :cond_a
    :try_start_e
    throw p0
    :try_end_e
    .catch Ljava/net/ConnectException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_e} :catch_2
    .catch Le40; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_2
    const-string p1, "Couldn\'t encode request, returning with 400"

    .line 38
    invoke-static {v1, p1, p0}, Lst;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    new-instance p1, Lcom/google/android/datatransport/cct/d$b;

    const/16 p0, 0x190

    invoke-direct {p1, p0, v7, v5, v6}, Lcom/google/android/datatransport/cct/d$b;-><init>(ILjava/net/URL;J)V

    goto :goto_4

    :catch_2
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    :goto_3
    const-string p1, "Couldn\'t open connection, returning with 500"

    .line 40
    invoke-static {v1, p1, p0}, Lst;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    new-instance p1, Lcom/google/android/datatransport/cct/d$b;

    const/16 p0, 0x1f4

    invoke-direct {p1, p0, v7, v5, v6}, Lcom/google/android/datatransport/cct/d$b;-><init>(ILjava/net/URL;J)V

    :goto_4
    return-object p1
.end method

.method private static d(Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid url: "

    invoke-static {v2, p0}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a(Lcom/google/android/datatransport/runtime/backends/f;)Lcom/google/android/datatransport/runtime/backends/g;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/f;->b()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Let;

    .line 3
    invoke-virtual {v2}, Let;->j()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "CctTransportBackend"

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Let;

    .line 12
    invoke-static {}, Lus;->a()Lus$a;

    move-result-object v5

    sget-object v6, Lxs;->b:Lxs;

    .line 13
    invoke-virtual {v5, v6}, Lus$a;->f(Lxs;)Lus$a;

    iget-object v6, p0, Lcom/google/android/datatransport/cct/d;->f:Lmv;

    .line 14
    invoke-interface {v6}, Lmv;->a()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lus$a;->g(J)Lus$a;

    iget-object v6, p0, Lcom/google/android/datatransport/cct/d;->e:Lmv;

    .line 15
    invoke-interface {v6}, Lmv;->a()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lus$a;->h(J)Lus$a;

    .line 16
    invoke-static {}, Lss;->a()Lss$a;

    move-result-object v6

    sget-object v7, Lss$b;->c:Lss$b;

    .line 17
    invoke-virtual {v6, v7}, Lss$a;->c(Lss$b;)Lss$a;

    .line 18
    invoke-static {}, Lds;->a()Lds$a;

    move-result-object v7

    const-string v8, "sdk-version"

    .line 19
    invoke-virtual {v4, v8}, Let;->g(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lds$a;->m(Ljava/lang/Integer;)Lds$a;

    const-string v8, "model"

    .line 20
    invoke-virtual {v4, v8}, Let;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lds$a;->j(Ljava/lang/String;)Lds$a;

    const-string v8, "hardware"

    .line 21
    invoke-virtual {v4, v8}, Let;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lds$a;->f(Ljava/lang/String;)Lds$a;

    const-string v8, "device"

    .line 22
    invoke-virtual {v4, v8}, Let;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lds$a;->d(Ljava/lang/String;)Lds$a;

    const-string v8, "product"

    .line 23
    invoke-virtual {v4, v8}, Let;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lds$a;->l(Ljava/lang/String;)Lds$a;

    const-string v8, "os-uild"

    .line 24
    invoke-virtual {v4, v8}, Let;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lds$a;->k(Ljava/lang/String;)Lds$a;

    const-string v8, "manufacturer"

    .line 25
    invoke-virtual {v4, v8}, Let;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lds$a;->h(Ljava/lang/String;)Lds$a;

    const-string v8, "fingerprint"

    .line 26
    invoke-virtual {v4, v8}, Let;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lds$a;->e(Ljava/lang/String;)Lds$a;

    const-string v8, "country"

    .line 27
    invoke-virtual {v4, v8}, Let;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lds$a;->c(Ljava/lang/String;)Lds$a;

    const-string v8, "locale"

    .line 28
    invoke-virtual {v4, v8}, Let;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lds$a;->g(Ljava/lang/String;)Lds$a;

    const-string v8, "mcc_mnc"

    .line 29
    invoke-virtual {v4, v8}, Let;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lds$a;->i(Ljava/lang/String;)Lds$a;

    const-string v8, "application_build"

    .line 30
    invoke-virtual {v4, v8}, Let;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lds$a;->b(Ljava/lang/String;)Lds$a;

    .line 31
    invoke-virtual {v7}, Lds$a;->a()Lds;

    move-result-object v4

    .line 32
    invoke-virtual {v6, v4}, Lss$a;->b(Lds;)Lss$a;

    .line 33
    invoke-virtual {v6}, Lss$a;->a()Lss;

    move-result-object v4

    .line 34
    invoke-virtual {v5, v4}, Lus$a;->b(Lss;)Lus$a;

    .line 35
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lus$a;->i(I)Lus$a;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 36
    :catch_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lus$a;->j(Ljava/lang/String;)Lus$a;

    .line 37
    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Let;

    .line 39
    invoke-virtual {v6}, Let;->e()Ldt;

    move-result-object v7

    .line 40
    invoke-virtual {v7}, Ldt;->b()Lwr;

    move-result-object v8

    const-string v9, "proto"

    .line 41
    invoke-static {v9}, Lwr;->b(Ljava/lang/String;)Lwr;

    move-result-object v9

    invoke-virtual {v8, v9}, Lwr;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 42
    invoke-virtual {v7}, Ldt;->a()[B

    move-result-object v7

    invoke-static {v7}, Lts;->i([B)Lts$a;

    move-result-object v7

    goto :goto_4

    :cond_2
    const-string v9, "json"

    .line 43
    invoke-static {v9}, Lwr;->b(Ljava/lang/String;)Lwr;

    move-result-object v9

    invoke-virtual {v8, v9}, Lwr;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 44
    new-instance v8, Ljava/lang/String;

    .line 45
    invoke-virtual {v7}, Ldt;->a()[B

    move-result-object v7

    const-string v9, "UTF-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v8}, Lts;->h(Ljava/lang/String;)Lts$a;

    move-result-object v7

    .line 46
    :goto_4
    invoke-virtual {v6}, Let;->f()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lts$a;->c(J)Lts$a;

    .line 47
    invoke-virtual {v6}, Let;->k()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lts$a;->d(J)Lts$a;

    const-string v8, "tz-offset"

    .line 48
    invoke-virtual {v6, v8}, Let;->h(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lts$a;->f(J)Lts$a;

    .line 49
    invoke-static {}, Lws;->a()Lws$a;

    move-result-object v8

    const-string v9, "net-type"

    .line 50
    invoke-virtual {v6, v9}, Let;->g(Ljava/lang/String;)I

    move-result v9

    .line 51
    invoke-static {v9}, Lws$c;->a(I)Lws$c;

    move-result-object v9

    .line 52
    invoke-virtual {v8, v9}, Lws$a;->c(Lws$c;)Lws$a;

    const-string v9, "mobile-subtype"

    .line 53
    invoke-virtual {v6, v9}, Let;->g(Ljava/lang/String;)I

    move-result v9

    .line 54
    invoke-static {v9}, Lws$b;->a(I)Lws$b;

    move-result-object v9

    .line 55
    invoke-virtual {v8, v9}, Lws$a;->b(Lws$b;)Lws$a;

    .line 56
    invoke-virtual {v8}, Lws$a;->a()Lws;

    move-result-object v8

    .line 57
    invoke-virtual {v7, v8}, Lts$a;->e(Lws;)Lts$a;

    .line 58
    invoke-virtual {v6}, Let;->d()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 59
    invoke-virtual {v6}, Let;->d()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Lts$a;->b(Ljava/lang/Integer;)Lts$a;

    .line 60
    :cond_3
    invoke-virtual {v7}, Lts$a;->a()Lts;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_4
    const-string v6, "Received event of unsupported encoding %s. Skipping..."

    .line 61
    invoke-static {v3, v6, v8}, Lst;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 62
    :cond_5
    invoke-virtual {v5, v4}, Lus$a;->c(Ljava/util/List;)Lus$a;

    .line 63
    invoke-virtual {v5}, Lus$a;->a()Lus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 64
    :cond_6
    invoke-static {v1}, Lrs;->a(Ljava/util/List;)Lrs;

    move-result-object v0

    const/4 v1, 0x0

    .line 65
    iget-object v2, p0, Lcom/google/android/datatransport/cct/d;->d:Ljava/net/URL;

    .line 66
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/f;->c()[B

    move-result-object v4

    if-eqz v4, :cond_8

    .line 67
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/f;->c()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/datatransport/cct/a;->a([B)Lcom/google/android/datatransport/cct/a;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a;->b()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 69
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 70
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 71
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/datatransport/cct/d;->d(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 72
    :catch_1
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/g;->a()Lcom/google/android/datatransport/runtime/backends/g;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_5
    const/4 p1, 0x5

    .line 73
    :try_start_2
    new-instance v4, Lcom/google/android/datatransport/cct/d$a;

    invoke-direct {v4, v2, v0, v1}, Lcom/google/android/datatransport/cct/d$a;-><init>(Ljava/net/URL;Lrs;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/datatransport/cct/b;->b(Lcom/google/android/datatransport/cct/d;)Ltt;

    move-result-object v0

    invoke-static {}, Lcom/google/android/datatransport/cct/c;->a()Lut;

    move-result-object v1

    const/4 v2, 0x1

    .line 74
    :cond_9
    move-object v5, v0

    check-cast v5, Lcom/google/android/datatransport/cct/b;

    invoke-virtual {v5, v4}, Lcom/google/android/datatransport/cct/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 75
    move-object v6, v1

    check-cast v6, Lcom/google/android/datatransport/cct/c;

    invoke-virtual {v6, v4, v5}, Lcom/google/android/datatransport/cct/c;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_a

    add-int/lit8 p1, p1, -0x1

    if-ge p1, v2, :cond_9

    .line 76
    :cond_a
    check-cast v5, Lcom/google/android/datatransport/cct/d$b;

    .line 77
    iget p1, v5, Lcom/google/android/datatransport/cct/d$b;->a:I

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_b

    .line 78
    iget-wide v0, v5, Lcom/google/android/datatransport/cct/d$b;->c:J

    invoke-static {v0, v1}, Lcom/google/android/datatransport/runtime/backends/g;->d(J)Lcom/google/android/datatransport/runtime/backends/g;

    move-result-object p1

    return-object p1

    :cond_b
    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_d

    const/16 v0, 0x194

    if-ne p1, v0, :cond_c

    goto :goto_6

    .line 79
    :cond_c
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/g;->a()Lcom/google/android/datatransport/runtime/backends/g;

    move-result-object p1

    return-object p1

    .line 80
    :cond_d
    :goto_6
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/g;->e()Lcom/google/android/datatransport/runtime/backends/g;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    const-string v0, "Could not make request to the backend"

    .line 81
    invoke-static {v3, v0, p1}, Lst;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/g;->e()Lcom/google/android/datatransport/runtime/backends/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Let;)Let;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/d;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Let;->l()Let$a;

    move-result-object p1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "sdk-version"

    .line 3
    invoke-virtual {p1, v2, v1}, Let$a;->a(Ljava/lang/String;I)Let$a;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "model"

    .line 4
    invoke-virtual {p1, v2, v1}, Let$a;->c(Ljava/lang/String;Ljava/lang/String;)Let$a;

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v2, "hardware"

    .line 5
    invoke-virtual {p1, v2, v1}, Let$a;->c(Ljava/lang/String;Ljava/lang/String;)Let$a;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "device"

    .line 6
    invoke-virtual {p1, v2, v1}, Let$a;->c(Ljava/lang/String;Ljava/lang/String;)Let$a;

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "product"

    .line 7
    invoke-virtual {p1, v2, v1}, Let$a;->c(Ljava/lang/String;Ljava/lang/String;)Let$a;

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v2, "os-uild"

    .line 8
    invoke-virtual {p1, v2, v1}, Let$a;->c(Ljava/lang/String;Ljava/lang/String;)Let$a;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "manufacturer"

    .line 9
    invoke-virtual {p1, v2, v1}, Let$a;->c(Ljava/lang/String;Ljava/lang/String;)Let$a;

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "fingerprint"

    .line 10
    invoke-virtual {p1, v2, v1}, Let$a;->c(Ljava/lang/String;Ljava/lang/String;)Let$a;

    .line 11
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 12
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 13
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    const-string v3, "tz-offset"

    .line 14
    invoke-virtual {p1, v3, v1, v2}, Let$a;->b(Ljava/lang/String;J)Let$a;

    if-nez v0, :cond_0

    .line 15
    sget-object v1, Lws$c;->u:Lws$c;

    invoke-virtual {v1}, Lws$c;->b()I

    move-result v1

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    :goto_0
    const-string v2, "net-type"

    .line 17
    invoke-virtual {p1, v2, v1}, Let$a;->a(Ljava/lang/String;I)Let$a;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez v0, :cond_1

    .line 18
    sget-object v0, Lws$b;->c:Lws$b;

    invoke-virtual {v0}, Lws$b;->b()I

    move-result v0

    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 20
    sget-object v0, Lws$b;->w:Lws$b;

    invoke-virtual {v0}, Lws$b;->b()I

    move-result v0

    goto :goto_1

    .line 21
    :cond_2
    invoke-static {v0}, Lws$b;->a(I)Lws$b;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const-string v3, "mobile-subtype"

    .line 22
    invoke-virtual {p1, v3, v0}, Let$a;->a(Ljava/lang/String;I)Let$a;

    .line 23
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v3, "country"

    invoke-virtual {p1, v3, v0}, Let$a;->c(Ljava/lang/String;Ljava/lang/String;)Let$a;

    .line 24
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "locale"

    invoke-virtual {p1, v3, v0}, Let$a;->c(Ljava/lang/String;Ljava/lang/String;)Let$a;

    iget-object v0, p0, Lcom/google/android/datatransport/cct/d;->c:Landroid/content/Context;

    const-string v3, "phone"

    .line 25
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 26
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mcc_mnc"

    invoke-virtual {p1, v3, v0}, Let$a;->c(Ljava/lang/String;Ljava/lang/String;)Let$a;

    iget-object v0, p0, Lcom/google/android/datatransport/cct/d;->c:Landroid/content/Context;

    .line 27
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "CctTransportBackend"

    const-string v3, "Unable to find version code for package"

    .line 29
    invoke-static {v1, v3, v0}, Lst;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application_build"

    .line 31
    invoke-virtual {p1, v1, v0}, Let$a;->c(Ljava/lang/String;Ljava/lang/String;)Let$a;

    .line 32
    invoke-virtual {p1}, Let$a;->d()Let;

    move-result-object p1

    return-object p1
.end method
