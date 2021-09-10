.class public Lsq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "gc1000"

    const-string v1, "powervr sgx 544mp"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lsq;->a:Ljava/util/List;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    const/16 v2, 0x7530

    .line 3
    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 4
    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const-string v2, "GET"

    .line 5
    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    const-string v3, "image url"

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xc8

    if-ne v2, p0, :cond_9

    .line 8
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-nez p0, :cond_1

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 10
    :cond_1
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x2000

    :try_start_2
    new-array v2, v2, [B

    .line 12
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x0

    .line 13
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 15
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 16
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 17
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object p1

    :goto_2
    move-object v0, v1

    goto/16 :goto_b

    :catch_1
    move-exception v2

    goto :goto_3

    :catch_2
    move-exception v2

    goto :goto_6

    :catchall_0
    move-exception p1

    goto/16 :goto_b

    :catch_3
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    goto :goto_6

    :catchall_1
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    goto :goto_b

    :catch_5
    move-exception p0

    move-object v2, p0

    move-object p0, v0

    move-object v1, p0

    :goto_3
    if-eqz v1, :cond_3

    .line 19
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catch_6
    move-exception v3

    .line 20
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 21
    :cond_3
    :goto_4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 22
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 23
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_5

    .line 24
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_5
    if-eqz p0, :cond_9

    .line 25
    :goto_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    goto :goto_a

    :catch_7
    move-exception p0

    move-object v2, p0

    move-object p0, v0

    move-object v1, p0

    :goto_6
    if-eqz v1, :cond_6

    .line 26
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_7

    :catch_8
    move-exception v3

    .line 27
    :try_start_8
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 28
    :cond_6
    :goto_7
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 29
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 30
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Error;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v1, :cond_8

    .line 31
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_8

    :catch_9
    move-exception p0

    goto :goto_9

    :cond_8
    :goto_8
    if-eqz p0, :cond_9

    goto :goto_5

    .line 32
    :goto_9
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_a
    return-object v0

    :catchall_2
    move-exception p1

    goto :goto_2

    :goto_b
    if-eqz v0, :cond_a

    .line 33
    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_c

    :catch_a
    move-exception p0

    goto :goto_d

    :cond_a
    :goto_c
    if-eqz p0, :cond_b

    .line 34
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_e

    .line 35
    :goto_d
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 36
    :cond_b
    :goto_e
    goto :goto_10

    :goto_f
    throw p1

    :goto_10
    goto :goto_f
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "cloudsetting"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "imageFilterBlackList"

    const/4 v2, 0x0

    .line 2
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v0, ""

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroidx/core/app/b;->u(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    .line 5
    invoke-static {p0}, Lc2;->t(Ljava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "FilterUtils"

    const-string v0, "In BlackList"

    .line 6
    invoke-static {p0, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v1

    .line 8
    :cond_2
    :goto_0
    sget-object p0, Lcom/camerasideas/collagemaker/filter/a;->b:Ljava/util/List;

    invoke-static {p0}, Lc2;->s(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "cloudsetting"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "imageFilterWhiteList"

    const/4 v2, 0x0

    .line 2
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v0, ""

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroidx/core/app/b;->u(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    .line 5
    invoke-static {p0}, Lc2;->t(Ljava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "FilterUtils"

    const-string v0, "In WhiteList"

    .line 6
    invoke-static {p0, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v1

    .line 8
    :cond_2
    :goto_0
    sget-object p0, Lcom/camerasideas/collagemaker/filter/a;->a:Ljava/util/List;

    invoke-static {p0}, Lc2;->s(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static d(Lorg/json/JSONArray;Landroid/content/Context;)V
    .locals 19

    move-object/from16 v1, p0

    const-string v2, "/"

    const-string v3, "0123456789abcdef"

    const-string v4, "MD5"

    const-string v5, "app_cover"

    const-string v6, "app_icon"

    const-string v7, ""

    if-eqz v1, :cond_e

    .line 1
    :try_start_0
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    const/4 v10, 0x0

    .line 2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v10, v0, :cond_d

    .line 3
    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 4
    invoke-virtual {v11, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 5
    invoke-virtual {v11, v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v0, "package"

    .line 6
    invoke-virtual {v11, v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6

    .line 7
    :try_start_1
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v0, :cond_5

    .line 8
    :try_start_2
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 9
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v9, v9

    const/4 v1, 0x0

    invoke-virtual {v0, v15, v1, v9}, Ljava/security/MessageDigest;->update([BII)V

    .line 10
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    if-nez v0, :cond_0

    :goto_1
    move-object v0, v7

    goto :goto_3

    .line 11
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v9, v0

    mul-int/lit8 v9, v9, 0x2

    invoke-direct {v1, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v9, 0x0

    .line 12
    :goto_2
    array-length v15, v0

    if-ge v9, v15, :cond_1

    .line 13
    aget-byte v15, v0, v9

    shr-int/lit8 v17, v15, 0x4

    move-object/from16 v18, v0

    and-int/lit8 v0, v17, 0xf

    .line 14
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 v0, v15, 0xf

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v18

    goto :goto_2

    .line 15
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_0
    move-exception v0

    .line 16
    :try_start_3
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    .line 17
    :goto_3
    new-instance v1, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcc0;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 19
    invoke-static {v12, v1}, Lsq;->a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_4

    :cond_2
    const/4 v0, 0x0

    :goto_4
    move v9, v0

    goto :goto_5

    :cond_3
    const/4 v9, 0x1

    :goto_5
    if-eqz v9, :cond_4

    .line 20
    :try_start_4
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    move v1, v9

    goto :goto_7

    :cond_4
    :goto_6
    move v1, v9

    goto :goto_8

    :cond_5
    const/4 v1, 0x0

    goto :goto_8

    :catch_2
    move-exception v0

    const/4 v1, 0x0

    .line 21
    :goto_7
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_6

    .line 22
    :goto_8
    :try_start_6
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    if-nez v0, :cond_a

    .line 23
    :try_start_7
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 24
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    array-length v12, v12

    const/4 v14, 0x0

    invoke-virtual {v0, v9, v14, v12}, Ljava/security/MessageDigest;->update([BII)V

    .line 25
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    if-nez v0, :cond_6

    :goto_9
    move-object v0, v7

    goto :goto_b

    .line 26
    :cond_6
    new-instance v9, Ljava/lang/StringBuffer;

    array-length v12, v0

    mul-int/lit8 v12, v12, 0x2

    invoke-direct {v9, v12}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v12, 0x0

    .line 27
    :goto_a
    array-length v15, v0

    if-ge v12, v15, :cond_7

    .line 28
    aget-byte v15, v0, v12

    shr-int/lit8 v16, v15, 0x4

    and-int/lit8 v14, v16, 0xf

    .line 29
    invoke-virtual {v3, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 v14, v15, 0xf

    invoke-virtual {v3, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v12, v12, 0x1

    const/4 v14, 0x0

    goto :goto_a

    .line 30
    :cond_7
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_b

    :catch_3
    move-exception v0

    .line 31
    :try_start_8
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_9

    .line 32
    :goto_b
    new-instance v9, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcc0;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 34
    invoke-static {v13, v9}, Lsq;->a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    if-eqz v0, :cond_8

    goto :goto_c

    :cond_8
    const/4 v15, 0x0

    goto :goto_d

    :cond_9
    :goto_c
    const/4 v15, 0x1

    :goto_d
    if-eqz v15, :cond_b

    .line 35
    :try_start_9
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_f

    :catch_4
    move-exception v0

    goto :goto_e

    :cond_a
    const/4 v15, 0x0

    goto :goto_f

    :catch_5
    move-exception v0

    const/4 v15, 0x0

    .line 36
    :goto_e
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_f
    if-eqz v1, :cond_c

    if-eqz v15, :cond_c

    .line 37
    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_c
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 38
    :cond_d
    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lcc0;->A(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_10

    :catch_6
    move-exception v0

    .line 39
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_e
    :goto_10
    return-void
.end method
