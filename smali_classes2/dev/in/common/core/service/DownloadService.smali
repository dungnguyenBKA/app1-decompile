.class public Ldev/in/common/core/service/DownloadService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Ldev/in/common/core/service/DownloadService$a;

    invoke-direct {v0, p0}, Ldev/in/common/core/service/DownloadService$a;-><init>(Ldev/in/common/core/service/DownloadService;)V

    iput-object v0, p0, Ldev/in/common/core/service/DownloadService;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Ldev/in/common/core/service/DownloadService;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/in/common/core/service/DownloadService;->b:Landroid/os/Handler;

    return-object p0
.end method

.method static b(Ldev/in/common/core/service/DownloadService;Landroid/content/Context;)V
    .locals 14

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "app_icon"

    const-string v1, ""

    .line 2
    :try_start_0
    invoke-static {p1}, Lcc0;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "exitadCode"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 3
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 4
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 6
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 7
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 8
    :try_start_1
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v8, "MD5"

    .line 9
    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .line 10
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    invoke-virtual {v8, v9, v4, v10}, Ljava/security/MessageDigest;->update([BII)V

    .line 11
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    if-nez v8, :cond_0

    goto :goto_2

    .line 12
    :cond_0
    new-instance v9, Ljava/lang/StringBuffer;

    array-length v10, v8

    mul-int/lit8 v10, v10, 0x2

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v10, 0x0

    .line 13
    :goto_1
    array-length v11, v8

    if-ge v10, v11, :cond_1

    .line 14
    aget-byte v11, v8, v10

    shr-int/lit8 v12, v11, 0x4

    and-int/lit8 v12, v12, 0xf

    const-string v13, "0123456789abcdef"

    .line 15
    invoke-virtual {v13, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 v11, v11, 0xf

    invoke-virtual {v13, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_0
    move-exception v8

    .line 17
    :try_start_3
    invoke-virtual {v8}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_2
    move-object v8, v1

    .line 18
    :goto_3
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcc0;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 20
    invoke-direct {p0, v7, v9}, Ldev/in/common/core/service/DownloadService;->e(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    goto :goto_4

    :cond_2
    const/4 v7, 0x0

    goto :goto_5

    :cond_3
    :goto_4
    const/4 v7, 0x1

    :goto_5
    if-eqz v7, :cond_4

    .line 21
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_1
    move-exception v6

    .line 23
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 24
    :cond_5
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcc0;->z(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :catch_2
    move-exception p0

    .line 25
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_6
    :goto_7
    return-void
.end method

.method static c(Ldev/in/common/core/service/DownloadService;Landroid/content/Context;)V
    .locals 19

    move-object/from16 v1, p0

    .line 1
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "/"

    const-string v3, "0123456789abcdef"

    const-string v4, "MD5"

    const-string v5, "app_cover"

    const-string v6, "app_icon"

    const-string v7, ""

    .line 2
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcc0;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 3
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 4
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    .line 5
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v10, v0, :cond_c

    .line 6
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 7
    invoke-virtual {v11, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 8
    invoke-virtual {v11, v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v0, "package"

    .line 9
    invoke-virtual {v11, v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_8

    .line 10
    :try_start_1
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-nez v0, :cond_4

    .line 11
    :try_start_2
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 12
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v9, v9
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v16, v8

    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {v0, v15, v8, v9}, Ljava/security/MessageDigest;->update([BII)V

    .line 13
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 14
    :cond_0
    new-instance v8, Ljava/lang/StringBuffer;

    array-length v9, v0

    mul-int/lit8 v9, v9, 0x2

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v9, 0x0

    .line 15
    :goto_1
    array-length v15, v0

    if-ge v9, v15, :cond_1

    .line 16
    aget-byte v15, v0, v9

    shr-int/lit8 v17, v15, 0x4

    move-object/from16 v18, v0

    and-int/lit8 v0, v17, 0xf

    .line 17
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 v0, v15, 0xf

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v18

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v16, v8

    .line 19
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_3
    move-object v0, v7

    .line 20
    :goto_4
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcc0;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 22
    invoke-direct {v1, v12, v8}, Ldev/in/common/core/service/DownloadService;->e(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_5

    :cond_2
    const/4 v0, 0x0

    goto :goto_6

    :cond_3
    :goto_5
    const/4 v0, 0x1

    :goto_6
    if-eqz v0, :cond_5

    .line 23
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    :cond_4
    move-object/from16 v16, v8

    goto :goto_8

    :catch_3
    move-exception v0

    move-object/from16 v16, v8

    .line 24
    :goto_7
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_8

    .line 25
    :cond_5
    :goto_8
    :try_start_6
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    if-nez v0, :cond_a

    .line 26
    :try_start_7
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 27
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v9, v9
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    const/4 v12, 0x0

    :try_start_8
    invoke-virtual {v0, v8, v12, v9}, Ljava/security/MessageDigest;->update([BII)V

    .line 28
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_b

    .line 29
    :cond_6
    new-instance v8, Ljava/lang/StringBuffer;

    array-length v9, v0

    mul-int/lit8 v9, v9, 0x2

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v9, 0x0

    .line 30
    :goto_9
    array-length v14, v0

    if-ge v9, v14, :cond_7

    .line 31
    aget-byte v14, v0, v9

    shr-int/lit8 v15, v14, 0x4

    and-int/lit8 v15, v15, 0xf

    .line 32
    invoke-virtual {v3, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 v14, v14, 0xf

    invoke-virtual {v3, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 33
    :cond_7
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_c

    :catch_4
    move-exception v0

    goto :goto_a

    :catch_5
    move-exception v0

    const/4 v12, 0x0

    .line 34
    :goto_a
    :try_start_9
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_b
    move-object v0, v7

    .line 35
    :goto_c
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcc0;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 37
    invoke-direct {v1, v13, v8}, Ldev/in/common/core/service/DownloadService;->e(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    goto :goto_d

    :cond_8
    const/4 v15, 0x0

    goto :goto_e

    :cond_9
    :goto_d
    const/4 v15, 0x1

    :goto_e
    if-eqz v15, :cond_b

    .line 38
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_10

    :catch_6
    move-exception v0

    goto :goto_f

    :cond_a
    const/4 v12, 0x0

    goto :goto_10

    :catch_7
    move-exception v0

    const/4 v12, 0x0

    .line 39
    :goto_f
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_10
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v8, v16

    goto/16 :goto_0

    :cond_c
    move-object/from16 v16, v8

    .line 40
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lcc0;->A(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_11

    :catch_8
    move-exception v0

    .line 41
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_d
    :goto_11
    return-void
.end method

.method static d(Ldev/in/common/core/service/DownloadService;Landroid/content/Context;)V
    .locals 17

    .line 1
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bg_img"

    const-string v2, "self_spread"

    const-string v3, ""

    .line 2
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcc0;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 4
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 6
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 8
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 9
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 10
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    if-ge v10, v0, :cond_5

    .line 11
    :try_start_1
    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 12
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v0, "MD5"

    .line 13
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 14
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    array-length v14, v14

    invoke-virtual {v0, v13, v9, v14}, Ljava/security/MessageDigest;->update([BII)V

    .line 15
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 16
    :cond_0
    new-instance v13, Ljava/lang/StringBuffer;

    array-length v14, v0

    mul-int/lit8 v14, v14, 0x2

    invoke-direct {v13, v14}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v14, 0x0

    .line 17
    :goto_2
    array-length v15, v0

    if-ge v14, v15, :cond_1

    .line 18
    aget-byte v15, v0, v14

    shr-int/lit8 v16, v15, 0x4

    and-int/lit8 v9, v16, 0xf

    move-object/from16 v16, v0

    const-string v0, "0123456789abcdef"

    .line 19
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 v9, v15, 0xf

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v16

    const/4 v9, 0x0

    goto :goto_2

    .line 20
    :cond_1
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_0
    move-exception v0

    .line 21
    :try_start_3
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_3
    move-object v0, v3

    .line 22
    :goto_4
    new-instance v9, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcc0;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v0, :cond_3

    move-object/from16 v13, p0

    .line 24
    :try_start_4
    invoke-direct {v13, v12, v9}, Ldev/in/common/core/service/DownloadService;->e(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_5

    :cond_2
    const/4 v0, 0x0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_7

    :cond_3
    move-object/from16 v13, p0

    :goto_5
    const/4 v0, 0x1

    :goto_6
    if-eqz v0, :cond_4

    .line 25
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    :cond_4
    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v13, p0

    .line 27
    :goto_7
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_5
    move-object/from16 v13, p0

    .line 28
    invoke-virtual {v4, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 29
    :cond_6
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static/range {p1 .. p1}, Lcc0;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    .line 31
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7
    :goto_9
    return-void
.end method

.method private e(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    const/16 v2, 0x7530

    .line 3
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 4
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v2, "GET"

    .line 5
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const-string v3, "image url"

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xc8

    if-ne v2, p1, :cond_9

    .line 8
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    .line 9
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 10
    :cond_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x2000

    :try_start_2
    new-array v2, v2, [B

    .line 12
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

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
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 16
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 17
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object p2

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
    move-exception p2

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
    move-exception p1

    move-object p2, p1

    move-object p1, v0

    goto :goto_b

    :catch_5
    move-exception p1

    move-object v2, p1

    move-object p1, v0

    move-object v1, p1

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
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 22
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

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
    if-eqz p1, :cond_9

    .line 25
    :goto_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    goto :goto_a

    :catch_7
    move-exception p1

    move-object v2, p1

    move-object p1, v0

    move-object v1, p1

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
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 29
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

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
    move-exception p1

    goto :goto_9

    :cond_8
    :goto_8
    if-eqz p1, :cond_9

    goto :goto_5

    .line 32
    :goto_9
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_a
    return-object v0

    :catchall_2
    move-exception p2

    goto :goto_2

    :goto_b
    if-eqz v0, :cond_a

    .line 33
    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_c

    :catch_a
    move-exception p1

    goto :goto_d

    :cond_a
    :goto_c
    if-eqz p1, :cond_b

    .line 34
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_e

    .line 35
    :goto_d
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 36
    :cond_b
    :goto_e
    goto :goto_10

    :goto_f
    throw p2

    :goto_10
    goto :goto_f
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string v0, "checkUpdate"

    const-string v1, "start....."

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ldev/in/common/core/service/a;

    invoke-direct {v1, p0, p0}, Ldev/in/common/core/service/a;-><init>(Ldev/in/common/core/service/DownloadService;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    .line 6
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    throw p1
.end method
