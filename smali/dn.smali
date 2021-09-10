.class public Ldn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzm;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldn;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldn;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lzm$a;Ljava/lang/String;Z)Ljava/util/TreeMap;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lzm$a;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "PhotoFileScanner"

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    sget-object v3, Lcom/camerasideas/collagemaker/appdata/b;->o:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "SupportMimeType"

    const-string v4, ""

    move-object/from16 v5, p1

    .line 2
    invoke-static {v5, v3, v4}, Lcc0;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_2

    const-string v4, ","

    .line 4
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 6
    :goto_0
    array-length v7, v3

    if-ge v4, v7, :cond_2

    .line 7
    aget-object v7, v3, v4

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 8
    aget-object v7, v3, v4

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v3, 0x0

    const-string v10, "_size >= ?"

    const/4 v4, 0x1

    new-array v11, v4, [Ljava/lang/String;

    const/16 v8, 0xa

    .line 11
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v6

    .line 12
    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v12, "_data"

    const-string v13, "date_modified"

    const-string v14, "bucket_display_name"

    const-string v15, "_size"

    const-string v16, "_id"

    const-string v17, "mime_type"

    .line 13
    filled-new-array/range {v12 .. v17}, [Ljava/lang/String;

    move-result-object v9

    .line 14
    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const-string v12, "date_modified DESC"

    .line 15
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v3, :cond_3

    .line 16
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    const-string v8, "_data"

    .line 17
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "_id"

    .line 18
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "date_modified"

    .line 19
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "bucket_display_name"

    .line 20
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    const-string v11, "mime_type"

    .line 21
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x0

    .line 22
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    .line 24
    invoke-virtual {v13}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v13

    if-eqz v13, :cond_4

    :cond_3
    move-object/from16 v17, v3

    goto/16 :goto_5

    .line 25
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v13

    add-int/2addr v13, v4

    mul-int/lit8 v13, v13, 0x64

    .line 26
    div-int/2addr v13, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sub-int v14, v13, v12

    if-lt v14, v4, :cond_5

    .line 27
    :try_start_2
    move-object/from16 v12, p2

    check-cast v12, Lwm;

    invoke-virtual {v12, v13}, Lwm;->b(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v12, v13

    .line 28
    :cond_5
    :try_start_3
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 29
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 30
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 31
    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 32
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 33
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 34
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v15, 0x3e8

    if-gt v7, v15, :cond_6

    .line 35
    :try_start_4
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v15
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v15, :cond_7

    .line 36
    :cond_6
    :try_start_5
    new-instance v15, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v17, v3

    const/4 v3, 0x0

    :try_start_6
    invoke-direct {v15, v4, v5, v3}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 37
    invoke-virtual {v15, v13, v14}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->n(J)V

    .line 38
    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->m(Ljava/lang/String;)V

    .line 39
    iget-object v3, v1, Ldn;->a:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v3, v1, Ldn;->b:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_7
    move-object/from16 v17, v3

    :goto_2
    move-object/from16 v5, p1

    move-object/from16 v3, v17

    const/4 v4, 0x1

    const/4 v6, 0x0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v17, v3

    :goto_3
    move-object/from16 v3, v17

    goto/16 :goto_b

    :catch_1
    move-exception v0

    move-object/from16 v17, v3

    :goto_4
    move-object/from16 v3, v17

    goto :goto_6

    :goto_5
    move-object/from16 v3, v17

    goto :goto_7

    :catchall_2
    move-exception v0

    goto/16 :goto_b

    :catch_2
    move-exception v0

    .line 41
    :goto_6
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 43
    :goto_7
    invoke-static {v3}, Lc2;->a(Landroid/database/Cursor;)V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    iget-object v3, v1, Ldn;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x3

    const-string v6, "MEDIA_CAMERA_PATH"

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    .line 46
    invoke-virtual {v4}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->b()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_8

    goto :goto_8

    .line 47
    :cond_8
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_a

    .line 48
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_9

    .line 49
    new-instance v9, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v9, v10, v6, v5}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_9

    :cond_9
    const/4 v10, 0x0

    .line 50
    :goto_9
    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_a
    const/4 v10, 0x0

    .line 51
    :goto_a
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    const/4 v10, 0x0

    .line 52
    invoke-static/range {p1 .. p1}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "hasGooglePhotos"

    invoke-interface {v3, v4, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "groupScan isGooglePhotosInstalled = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v2, Ljava/util/TreeMap;

    new-instance v4, Ldn$a;

    invoke-direct {v4, v1, v3}, Ldn$a;-><init>(Ldn;Z)V

    invoke-direct {v2, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 55
    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    if-eqz p4, :cond_c

    .line 56
    iget-object v0, v1, Ldn;->b:Ljava/util/List;

    new-instance v4, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v7, v6, v5}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    const/4 v5, 0x0

    invoke-interface {v0, v5, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 57
    :cond_c
    iget-object v0, v1, Ldn;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 58
    iget-object v0, v1, Ldn;->b:Ljava/util/List;

    const-string v4, "/Recent"

    invoke-virtual {v2, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    if-eqz v3, :cond_e

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "/Google Photos"

    invoke-virtual {v2, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    return-object v2

    .line 60
    :goto_b
    invoke-static {v3}, Lc2;->a(Landroid/database/Cursor;)V

    .line 61
    goto :goto_d

    :goto_c
    throw v0

    :goto_d
    goto :goto_c
.end method
