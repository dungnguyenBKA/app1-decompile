.class public Lhc0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "loc"

    const-string v1, "tzo"

    const-string v2, "lan"

    const-string v3, "suc"

    const-string v4, "ron"

    const-string v5, "ven"

    const-string v6, "pve"

    const-string v7, "apm"

    const-string v8, "density"

    const-string v9, "manu"

    const-string v10, "extends"

    .line 2
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhc0;->a:[Ljava/lang/String;

    const-string v0, "app_name"

    .line 3
    iput-object v0, p0, Lhc0;->c:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lhc0;->b:Landroid/content/Context;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lhc0;->c:Ljava/lang/String;

    return-void
.end method

.method private a(ILjava/lang/String;I)Ljava/lang/String;
    .locals 9

    const-string v0, ""

    const-string v1, "+"

    const-string v2, "-"

    .line 1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v4, p0, Lhc0;->b:Landroid/content/Context;

    .line 3
    invoke-static {v4}, Lcc0;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "request_version"

    const/4 v6, 0x2

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 4
    :try_start_0
    iget-object v5, p0, Lhc0;->a:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v7, "Z"

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v5, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v1, "n"

    .line 8
    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "p"

    .line 10
    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 11
    :cond_1
    :goto_0
    iget-object v1, p0, Lhc0;->a:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    iget-object v1, p0, Lhc0;->a:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    iget-object v1, p0, Lhc0;->a:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14
    iget-object p1, p0, Lhc0;->a:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object p1, p1, v1

    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    iget-object p1, p0, Lhc0;->a:[Ljava/lang/String;

    const/4 p2, 0x5

    aget-object p1, p1, p2

    invoke-virtual {v3, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 16
    iget-object p1, p0, Lhc0;->a:[Ljava/lang/String;

    const/4 p2, 0x6

    aget-object p1, p1, p2

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 17
    iget-object p1, p0, Lhc0;->a:[Ljava/lang/String;

    const/4 p2, 0x7

    aget-object p1, p1, p2

    iget-object p2, p0, Lhc0;->c:Ljava/lang/String;

    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    iget-object p1, p0, Lhc0;->a:[Ljava/lang/String;

    const/16 p2, 0x8

    aget-object p1, p1, p2

    iget-object p2, p0, Lhc0;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    float-to-double p2, p2

    invoke-virtual {v3, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    if-ne v4, v2, :cond_2

    .line 19
    iget-object p1, p0, Lhc0;->a:[Ljava/lang/String;

    const/16 p2, 0x9

    aget-object p1, p1, p2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    iget-object p1, p0, Lhc0;->a:[Ljava/lang/String;

    const/16 p2, 0xa

    aget-object p1, p1, p2

    iget-object p2, p0, Lhc0;->b:Landroid/content/Context;

    .line 21
    invoke-static {p2}, Lcc0;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string p3, "extends_request_data"

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 22
    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 24
    :cond_2
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 25
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 26
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "version="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, "&data="

    .line 27
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 10

    const-string v0, ""

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lhc0;->b:Landroid/content/Context;

    .line 2
    invoke-static {v3}, Lcc0;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "server_url"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x1

    .line 5
    :try_start_1
    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 6
    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    const/16 v3, 0x2710

    .line 7
    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 8
    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const-string v3, "POST"

    .line 9
    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v3, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    .line 10
    invoke-virtual {v2, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Charset"

    const-string v4, "utf-8"

    .line 11
    invoke-virtual {v2, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v3, p0, Lhc0;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "X"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 14
    iget-object v4, p0, Lhc0;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lhc0;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 15
    invoke-direct {p0, v6, v3, v4}, Lhc0;->a(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 16
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write([B)V

    .line 18
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v3

    const/16 v5, 0xc8

    if-ne v5, v3, :cond_1

    .line 19
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v1, 0x2000

    :try_start_3
    new-array v1, v1, [C

    .line 20
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 21
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 22
    invoke-virtual {v5, v1, v6, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    sget-boolean v1, Lcom/zjsoft/baseadlib/b;->a:Z

    if-eqz v1, :cond_2

    const-string v1, "result"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catch_0
    move-exception v1

    goto/16 :goto_5

    :catch_1
    move-exception v1

    goto/16 :goto_6

    :cond_1
    move-object v3, v1

    :cond_2
    :goto_1
    move-object v1, v4

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v1

    goto/16 :goto_8

    :catch_2
    move-exception v3

    move-object v9, v3

    move-object v3, v1

    move-object v1, v9

    goto :goto_5

    :catch_3
    move-exception v3

    move-object v9, v3

    move-object v3, v1

    move-object v1, v9

    goto/16 :goto_6

    :cond_3
    move-object v3, v1

    :goto_2
    if-eqz v1, :cond_4

    .line 26
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 27
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_4

    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    .line 28
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 29
    :cond_5
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_7

    .line 30
    :goto_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v3, v1

    goto :goto_9

    :catch_5
    move-exception v3

    move-object v4, v1

    move-object v1, v3

    move-object v3, v4

    goto :goto_5

    :catch_6
    move-exception v3

    move-object v4, v1

    move-object v1, v3

    move-object v3, v4

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v2, v1

    move-object v3, v2

    goto :goto_9

    :catch_7
    move-exception v2

    move-object v3, v1

    move-object v4, v3

    move-object v1, v2

    move-object v2, v4

    .line 31
    :goto_5
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v4, :cond_6

    .line 32
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 33
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_6
    if-eqz v3, :cond_7

    .line 34
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    :cond_7
    if-eqz v2, :cond_a

    .line 35
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_7

    :catch_8
    move-exception v2

    move-object v3, v1

    move-object v4, v3

    move-object v1, v2

    move-object v2, v4

    .line 36
    :goto_6
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v4, :cond_8

    .line 37
    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 38
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_8
    if-eqz v3, :cond_9

    .line 39
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    :cond_9
    if-eqz v2, :cond_a

    .line 40
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_a
    :goto_7
    return-object v0

    :catchall_3
    move-exception v0

    :goto_8
    move-object v1, v4

    :goto_9
    if-eqz v1, :cond_b

    .line 41
    :try_start_9
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 42
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_a

    :catch_9
    move-exception v1

    goto :goto_b

    :cond_b
    :goto_a
    if-eqz v3, :cond_c

    .line 43
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    :cond_c
    if-eqz v2, :cond_d

    .line 44
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_c

    .line 45
    :goto_b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 46
    :cond_d
    :goto_c
    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d
.end method
