.class public Ll50;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/nio/charset/Charset;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ld50;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld50<",
            "Ly50;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ld50;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld50<",
            "La50;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ln50;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[0-9]+s"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ll50;->e:Ljava/util/regex/Pattern;

    const-string v0, "UTF-8"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Ll50;->f:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ld50;Ld50;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ld50<",
            "Ly50;",
            ">;",
            "Ld50<",
            "La50;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll50;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Ll50;->b:Ld50;

    .line 4
    iput-object p3, p0, Ll50;->c:Ld50;

    .line 5
    new-instance p1, Ln50;

    invoke-direct {p1}, Ln50;-><init>()V

    iput-object p1, p0, Ll50;->d:Ln50;

    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/net/URL;
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://%s/%s/%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "firebaseinstallations.googleapis.com"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "v1"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 2
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lcom/google/firebase/installations/h;

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/google/firebase/installations/h$a;->c:Lcom/google/firebase/installations/h$a;

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/installations/h;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/h$a;)V

    throw v0
.end method

.method private static d(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    sget-object v8, Ll50;->f:Ljava/nio/charset/Charset;

    invoke-direct {v7, v0, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 5
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0xa

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v7, "Error when communicating with the Firebase Installations server API. HTTP response: [%d %s: %s]"

    new-array v8, v5, [Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v8, v3

    aput-object v0, v8, v2

    .line 7
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 9
    :catch_0
    throw p0

    .line 10
    :catch_1
    :goto_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    nop

    .line 11
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "Firebase-Installations"

    .line 12
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v5, [Ljava/lang/Object;

    aput-object p2, v0, v4

    aput-object p3, v0, v3

    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p1, ""

    goto :goto_3

    :cond_2
    const-string p2, ", "

    invoke-static {p2, p1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    aput-object p1, v0, v2

    const-string p1, "Firebase options used while communicating with Firebase server APIs: %s, %s%s"

    .line 14
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private e(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v0, 0x2710

    .line 2
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 4
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v0, "application/json"

    const-string v2, "Content-Type"

    .line 5
    invoke-virtual {p1, v2, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Accept"

    .line 6
    invoke-virtual {p1, v2, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Encoding"

    const-string v2, "gzip"

    .line 7
    invoke-virtual {p1, v0, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Cache-Control"

    const-string v2, "no-cache"

    .line 8
    invoke-virtual {p1, v0, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Ll50;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "X-Android-Package"

    invoke-virtual {p1, v2, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Ll50;->c:Ld50;

    invoke-interface {v0}, Ld50;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll50;->b:Ld50;

    invoke-interface {v0}, Ld50;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Ll50;->c:Ld50;

    .line 12
    invoke-interface {v0}, Ld50;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La50;

    const-string v2, "fire-installations-id"

    invoke-interface {v0, v2}, La50;->a(Ljava/lang/String;)La50$a;

    move-result-object v0

    .line 13
    sget-object v2, La50$a;->c:La50$a;

    if-eq v0, v2, :cond_0

    .line 14
    iget-object v2, p0, Ll50;->b:Ld50;

    .line 15
    invoke-interface {v2}, Ld50;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly50;

    invoke-interface {v2}, Ly50;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "x-firebase-client"

    .line 16
    invoke-virtual {p1, v3, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, La50$a;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "x-firebase-client-log-type"

    .line 18
    invoke-virtual {p1, v2, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "ContentValues"

    const/4 v2, 0x0

    .line 19
    :try_start_1
    iget-object v3, p0, Ll50;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/common/util/a;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_1

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get fingerprint hash for package: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ll50;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 21
    :cond_1
    invoke-static {v3, v1}, Lcom/google/android/gms/common/util/g;->b([BZ)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "No such package: "

    .line 22
    invoke-static {v3}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ll50;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string v0, "X-Android-Cert"

    .line 23
    invoke-virtual {p1, v0, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-goog-api-key"

    .line 24
    invoke-virtual {p1, v0, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 25
    :catch_1
    new-instance p1, Lcom/google/firebase/installations/h;

    sget-object p2, Lcom/google/firebase/installations/h$a;->c:Lcom/google/firebase/installations/h$a;

    const-string v0, "Firebase Installations Service is unavailable. Please try again later."

    invoke-direct {p1, v0, p2}, Lcom/google/firebase/installations/h;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/h$a;)V

    throw p1
.end method

.method static f(Ljava/lang/String;)J
    .locals 2

    .line 1
    sget-object v0, Ll50;->e:Ljava/util/regex/Pattern;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v1, "Invalid Expiration Timestamp."

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->b(ZLjava/lang/Object;)V

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0
.end method

.method private g(Ljava/net/HttpURLConnection;)Lm50;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ll50;->f:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 3
    invoke-static {}, Lo50;->a()Lo50$a;

    move-result-object v1

    .line 4
    new-instance v2, Lj50$b;

    invoke-direct {v2}, Lj50$b;-><init>()V

    .line 5
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 6
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 7
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj50$b;->f(Ljava/lang/String;)Lm50$a;

    goto :goto_0

    :cond_0
    const-string v4, "fid"

    .line 10
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 11
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj50$b;->c(Ljava/lang/String;)Lm50$a;

    goto :goto_0

    :cond_1
    const-string v4, "refreshToken"

    .line 12
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 13
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj50$b;->d(Ljava/lang/String;)Lm50$a;

    goto :goto_0

    :cond_2
    const-string v4, "authToken"

    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 15
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 16
    :goto_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 17
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "token"

    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 19
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lo50$a;->c(Ljava/lang/String;)Lo50$a;

    goto :goto_1

    :cond_3
    const-string v4, "expiresIn"

    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 21
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ll50;->f(Ljava/lang/String;)J

    move-result-wide v3

    .line 22
    invoke-virtual {v1, v3, v4}, Lo50$a;->d(J)Lo50$a;

    goto :goto_1

    .line 23
    :cond_4
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 24
    :cond_5
    invoke-virtual {v1}, Lo50$a;->a()Lo50;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj50$b;->b(Lo50;)Lm50$a;

    .line 25
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_0

    .line 26
    :cond_6
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 27
    :cond_7
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    .line 28
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    .line 29
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 30
    sget-object p1, Lm50$b;->b:Lm50$b;

    invoke-virtual {v2, p1}, Lj50$b;->e(Lm50$b;)Lm50$a;

    invoke-virtual {v2}, Lj50$b;->a()Lm50;

    move-result-object p1

    return-object p1
.end method

.method private h(Ljava/net/HttpURLConnection;)Lo50;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ll50;->f:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 3
    invoke-static {}, Lo50;->a()Lo50$a;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 5
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "token"

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo50$a;->c(Ljava/lang/String;)Lo50$a;

    goto :goto_0

    :cond_0
    const-string v3, "expiresIn"

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ll50;->f(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lo50$a;->d(J)Lo50$a;

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    .line 13
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    .line 14
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 15
    sget-object p1, Lo50$b;->b:Lo50$b;

    invoke-virtual {v1, p1}, Lo50$a;->b(Lo50$b;)Lo50$a;

    invoke-virtual {v1}, Lo50$a;->a()Lo50;

    move-result-object p1

    return-object p1
.end method

.method private i(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "fid"

    .line 2
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "appId"

    .line 3
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "authVersion"

    const-string p3, "FIS_v2"

    .line 4
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "sdkVersion"

    const-string p3, "a:16.3.5"

    .line 5
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "UTF-8"

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 7
    invoke-static {p1, p2}, Ll50;->k(Ljava/net/URLConnection;[B)V

    return-void

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private j(Ljava/net/HttpURLConnection;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "sdkVersion"

    const-string v2, "a:16.3.5"

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "installation"

    .line 4
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 6
    invoke-static {p1, v0}, Ll50;->k(Ljava/net/URLConnection;[B)V

    return-void

    :catch_0
    move-exception p1

    .line 7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static k(Ljava/net/URLConnection;[B)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 5
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 7
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 8
    :catch_1
    throw p1

    .line 9
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot send request to FIS servers. No OutputStream available."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lm50;
    .locals 10

    .line 1
    sget-object v0, Lcom/google/firebase/installations/h$a;->c:Lcom/google/firebase/installations/h$a;

    iget-object v1, p0, Ll50;->d:Ln50;

    invoke-virtual {v1}, Ln50;->a()Z

    move-result v1

    const-string v2, "Firebase Installations Service is unavailable. Please try again later."

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const-string v5, "projects/%s/installations"

    .line 2
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-direct {p0, v3}, Ll50;->c(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    const/4 v5, 0x0

    :goto_0
    if-gt v5, v1, :cond_5

    .line 4
    invoke-direct {p0, v3, p1}, Ll50;->e(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v6

    :try_start_0
    const-string v7, "POST"

    .line 5
    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v6, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    if-eqz p5, :cond_0

    const-string v7, "x-goog-fis-android-iid-migration-auth"

    .line 7
    invoke-virtual {v6, v7, p5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-direct {p0, v6, p2, p4}, Ll50;->i(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 10
    iget-object v8, p0, Ll50;->d:Ln50;

    invoke-virtual {v8, v7}, Ln50;->b(I)V

    const/16 v8, 0xc8

    if-lt v7, v8, :cond_1

    const/16 v8, 0x12c

    if-ge v7, v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_2

    .line 11
    invoke-direct {p0, v6}, Ll50;->g(Ljava/net/HttpURLConnection;)Lm50;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    .line 13
    :cond_2
    :try_start_1
    invoke-static {v6, p4, p1, p3}, Ll50;->d(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x1ad

    if-eq v7, v8, :cond_4

    const/16 v8, 0x1f4

    if-lt v7, v8, :cond_3

    const/16 v8, 0x258

    if-ge v7, v8, :cond_3

    goto :goto_2

    :cond_3
    const-string v7, "Firebase-Installations"

    const-string v8, "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase."

    .line 14
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    new-instance v7, Lj50$b;

    invoke-direct {v7}, Lj50$b;-><init>()V

    .line 16
    sget-object v8, Lm50$b;->c:Lm50$b;

    invoke-virtual {v7, v8}, Lj50$b;->e(Lm50$b;)Lm50$a;

    invoke-virtual {v7}, Lj50$b;->a()Lm50;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    .line 18
    :cond_4
    :try_start_2
    new-instance v7, Lcom/google/firebase/installations/h;

    const-string v8, "Firebase servers have received too many requests from this client in a short period of time. Please try again later."

    sget-object v9, Lcom/google/firebase/installations/h$a;->d:Lcom/google/firebase/installations/h$a;

    invoke-direct {v7, v8, v9}, Lcom/google/firebase/installations/h;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/h$a;)V

    throw v7
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 19
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 20
    throw p1

    .line 21
    :catch_0
    :goto_2
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 22
    :cond_5
    new-instance p1, Lcom/google/firebase/installations/h;

    invoke-direct {p1, v2, v0}, Lcom/google/firebase/installations/h;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/h$a;)V

    throw p1

    .line 23
    :cond_6
    new-instance p1, Lcom/google/firebase/installations/h;

    invoke-direct {p1, v2, v0}, Lcom/google/firebase/installations/h;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/h$a;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo50;
    .locals 9

    .line 1
    sget-object v0, Lcom/google/firebase/installations/h$a;->c:Lcom/google/firebase/installations/h$a;

    iget-object v1, p0, Ll50;->d:Ln50;

    invoke-virtual {v1}, Ln50;->a()Z

    move-result v1

    const-string v2, "Firebase Installations Service is unavailable. Please try again later."

    if-eqz v1, :cond_7

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v1, v3

    const/4 v4, 0x1

    aput-object p2, v1, v4

    const-string p2, "projects/%s/installations/%s/authTokens:generate"

    .line 2
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-direct {p0, p2}, Ll50;->c(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v4, :cond_6

    .line 4
    invoke-direct {p0, p2, p1}, Ll50;->e(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v5

    :try_start_0
    const-string v6, "POST"

    .line 5
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v6, "Authorization"

    .line 6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FIS_v2 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 8
    invoke-direct {p0, v5}, Ll50;->j(Ljava/net/HttpURLConnection;)V

    .line 9
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 10
    iget-object v7, p0, Ll50;->d:Ln50;

    invoke-virtual {v7, v6}, Ln50;->b(I)V

    const/16 v7, 0xc8

    if-lt v6, v7, :cond_0

    const/16 v7, 0x12c

    if-ge v6, v7, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_1

    .line 11
    invoke-direct {p0, v5}, Ll50;->h(Ljava/net/HttpURLConnection;)Lo50;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    :cond_1
    const/4 v7, 0x0

    .line 13
    :try_start_1
    invoke-static {v5, v7, p1, p3}, Ll50;->d(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x191

    if-eq v6, v7, :cond_5

    const/16 v7, 0x194

    if-ne v6, v7, :cond_2

    goto :goto_2

    :cond_2
    const/16 v7, 0x1ad

    if-eq v6, v7, :cond_4

    const/16 v7, 0x1f4

    if-lt v6, v7, :cond_3

    const/16 v7, 0x258

    if-ge v6, v7, :cond_3

    goto :goto_3

    :cond_3
    const-string v6, "Firebase-Installations"

    const-string v7, "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase."

    .line 14
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {}, Lo50;->a()Lo50$a;

    move-result-object v6

    sget-object v7, Lo50$b;->c:Lo50$b;

    invoke-virtual {v6, v7}, Lo50$a;->b(Lo50$b;)Lo50$a;

    invoke-virtual {v6}, Lo50$a;->a()Lo50;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    .line 17
    :cond_4
    :try_start_2
    new-instance v6, Lcom/google/firebase/installations/h;

    const-string v7, "Firebase servers have received too many requests from this client in a short period of time. Please try again later."

    sget-object v8, Lcom/google/firebase/installations/h$a;->d:Lcom/google/firebase/installations/h$a;

    invoke-direct {v6, v7, v8}, Lcom/google/firebase/installations/h;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/h$a;)V

    throw v6

    .line 18
    :cond_5
    :goto_2
    invoke-static {}, Lo50;->a()Lo50$a;

    move-result-object v6

    sget-object v7, Lo50$b;->d:Lo50$b;

    invoke-virtual {v6, v7}, Lo50$a;->b(Lo50$b;)Lo50$a;

    invoke-virtual {v6}, Lo50$a;->a()Lo50;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 20
    throw p1

    .line 21
    :catch_0
    :goto_3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 22
    :cond_6
    new-instance p1, Lcom/google/firebase/installations/h;

    invoke-direct {p1, v2, v0}, Lcom/google/firebase/installations/h;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/h$a;)V

    throw p1

    .line 23
    :cond_7
    new-instance p1, Lcom/google/firebase/installations/h;

    invoke-direct {p1, v2, v0}, Lcom/google/firebase/installations/h;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/h$a;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method
