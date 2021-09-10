.class final Lcom/google/android/gms/tagmanager/zzbe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzax;


# static fields
.field private static final zza:Ljava/lang/String;


# instance fields
.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/tagmanager/zzbc;

.field private final zze:Lcom/google/android/gms/common/util/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "datalayer"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "value"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "expires"

    aput-object v2, v0, v1

    const-string v1, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' STRING NOT NULL, \'%s\' BLOB NOT NULL, \'%s\' INTEGER NOT NULL);"

    .line 1
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzbe;->zza:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/f;->d()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzfz;->zza()Lcom/google/android/gms/internal/gtm/zzfw;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/gtm/zzfw;->zza(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzc:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzbe;->zze:Lcom/google/android/gms/common/util/d;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzb:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbc;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/tagmanager/zzbc;-><init>(Lcom/google/android/gms/tagmanager/zzbe;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzd:Lcom/google/android/gms/tagmanager/zzbc;

    return-void
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/tagmanager/zzbe;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzc:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic zze()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzbe;->zza:Ljava/lang/String;

    return-object v0
.end method

.method static zzf(Lcom/google/android/gms/tagmanager/zzbe;)Ljava/util/List;
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzbe;->zze:Lcom/google/android/gms/common/util/d;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzbe;->zzk(J)V

    const-string v0, "Error opening database for loadSerialized."

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzbe;->zzi(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "key"

    const-string v3, "value"

    .line 4
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v2, "datalayer"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "ID"

    const/4 v9, 0x0

    .line 5
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 6
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/google/android/gms/tagmanager/zzbd;

    const/4 v3, 0x0

    .line 7
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/tagmanager/zzbd;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    .line 8
    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 9
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/tagmanager/zzbd;

    new-instance v3, Lcom/google/android/gms/tagmanager/zzau;

    .line 12
    iget-object v4, v2, Lcom/google/android/gms/tagmanager/zzbd;->zza:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/tagmanager/zzbd;->zzb:[B

    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 13
    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/4 v2, 0x0

    .line 14
    :try_start_3
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 15
    :try_start_4
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 16
    :goto_3
    :try_start_5
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v2, v6

    goto :goto_4

    :catch_0
    nop

    goto :goto_5

    :catch_1
    nop

    goto :goto_6

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 17
    :cond_2
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 18
    :catch_2
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catch_3
    move-object v6, v2

    :goto_5
    if-eqz v6, :cond_3

    goto :goto_3

    :catch_4
    move-object v6, v2

    :goto_6
    if-eqz v6, :cond_3

    goto :goto_3

    .line 19
    :cond_3
    :goto_7
    :try_start_8
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 20
    :catch_5
    :try_start_9
    invoke-direct {v3, v4, v2}, Lcom/google/android/gms/tagmanager/zzau;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_2

    .line 21
    :cond_4
    :try_start_a
    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzd:Lcom/google/android/gms/tagmanager/zzbc;

    .line 22
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_6

    :catch_6
    return-object v1

    :catchall_2
    move-exception v0

    .line 23
    :try_start_b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 24
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v0

    .line 25
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_c
    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzd:Lcom/google/android/gms/tagmanager/zzbc;

    .line 26
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_7

    .line 27
    :catch_7
    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method static zzh(Lcom/google/android/gms/tagmanager/zzbe;Ljava/util/List;J)V
    .locals 18

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/tagmanager/zzbe;->zze:Lcom/google/android/gms/common/util/d;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v2

    .line 3
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/tagmanager/zzbe;->zzk(J)V

    .line 4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    const-string v4, "Error opening database for getNumStoredEntries."

    .line 5
    invoke-direct {v1, v4}, Lcom/google/android/gms/tagmanager/zzbe;->zzi(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    const-string v7, "SELECT COUNT(*) from datalayer"

    .line 6
    invoke-virtual {v4, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 8
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    long-to-int v8, v7

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 9
    :goto_0
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v6, v4

    goto/16 :goto_c

    :catchall_1
    move-exception v0

    goto/16 :goto_c

    :catch_0
    move-object v4, v6

    :catch_1
    :try_start_4
    const-string v7, "Error getting numStoredEntries"

    const-string v8, "GoogleTagManager"

    .line 10
    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_2

    .line 11
    :try_start_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    const/4 v8, 0x0

    :goto_2
    add-int/lit16 v8, v8, -0x7d0

    add-int/2addr v8, v0

    if-lez v8, :cond_b

    .line 12
    new-instance v4, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "Error opening database for peekEntryIds."

    .line 14
    invoke-direct {v1, v0}, Lcom/google/android/gms/tagmanager/zzbe;->zzi(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const/4 v7, 0x1

    if-nez v9, :cond_3

    goto :goto_6

    :cond_3
    :try_start_6
    const-string v0, "ID"

    .line 15
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v11

    new-array v0, v7, [Ljava/lang/Object;

    const-string v10, "ID"

    aput-object v10, v0, v5

    const-string v10, "datalayer"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v6, "%s ASC"

    .line 16
    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 17
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    .line 18
    invoke-virtual/range {v9 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 19
    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20
    :cond_4
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-nez v0, :cond_4

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    const/4 v6, 0x0

    goto/16 :goto_8

    :catch_3
    move-exception v0

    const/4 v6, 0x0

    :goto_3
    :try_start_8
    const-string v8, "Error in peekEntries fetching entryIds: "

    .line 22
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 23
    :cond_5
    new-instance v0, Ljava/lang/String;

    .line 24
    invoke-direct {v0, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    const-string v8, "GoogleTagManager"

    .line 25
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v6, :cond_7

    .line 26
    :cond_6
    :goto_5
    :try_start_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 27
    :cond_7
    :goto_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    new-array v0, v5, [Ljava/lang/String;

    .line 28
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_b

    array-length v4, v0

    if-nez v4, :cond_8

    goto :goto_9

    :cond_8
    const-string v6, "Error opening database for deleteEntries."

    .line 29
    invoke-direct {v1, v6}, Lcom/google/android/gms/tagmanager/zzbe;->zzi(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    if-eqz v6, :cond_b

    const-string v8, "%s in (%s)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "ID"

    aput-object v10, v9, v5

    const-string v5, ","

    const-string v10, "?"

    .line 30
    invoke-static {v4, v10}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v7

    .line 31
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    const-string v5, "datalayer"

    .line 32
    invoke-virtual {v6, v5, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_9

    :catch_4
    :try_start_b
    const-string v4, "Error deleting entries "

    .line 33
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 34
    :cond_9
    new-instance v0, Ljava/lang/String;

    .line 35
    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7
    const-string v4, "GoogleTagManager"

    .line 36
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catchall_3
    move-exception v0

    :goto_8
    if-eqz v6, :cond_a

    .line 37
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 38
    :cond_a
    throw v0

    :cond_b
    :goto_9
    add-long v2, v2, p2

    const-string v0, "Error opening database for writeEntryToDatabase."

    .line 39
    invoke-direct {v1, v0}, Lcom/google/android/gms/tagmanager/zzbe;->zzi(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_b

    .line 40
    :cond_c
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/tagmanager/zzbd;

    new-instance v6, Landroid/content/ContentValues;

    .line 41
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "expires"

    .line 42
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "key"

    .line 43
    iget-object v8, v5, Lcom/google/android/gms/tagmanager/zzbd;->zza:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "value"

    .line 44
    iget-object v5, v5, Lcom/google/android/gms/tagmanager/zzbd;->zzb:[B

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v5, "datalayer"

    const/4 v7, 0x0

    .line 45
    invoke-virtual {v0, v5, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_a

    .line 46
    :cond_d
    :goto_b
    :try_start_c
    iget-object v0, v1, Lcom/google/android/gms/tagmanager/zzbe;->zzd:Lcom/google/android/gms/tagmanager/zzbc;

    .line 47
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 48
    :catch_5
    monitor-exit p0

    return-void

    :goto_c
    if-eqz v6, :cond_e

    .line 49
    :try_start_d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 50
    :cond_e
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_4
    move-exception v0

    .line 51
    :try_start_e
    iget-object v2, v1, Lcom/google/android/gms/tagmanager/zzbe;->zzd:Lcom/google/android/gms/tagmanager/zzbc;

    .line 52
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_d

    :catchall_5
    move-exception v0

    goto :goto_e

    .line 53
    :catch_6
    :goto_d
    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :goto_e
    monitor-exit p0

    goto :goto_10

    :goto_f
    throw v0

    :goto_10
    goto :goto_f
.end method

.method private final zzi(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzd:Lcom/google/android/gms/tagmanager/zzbc;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzbc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string v0, "GoogleTagManager"

    .line 2
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzk(J)V
    .locals 3

    const-string v0, "Error opening database for deleteOlderThan."

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzbe;->zzi(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "datalayer"

    const-string p2, "expires <= ?"

    invoke-virtual {v0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "GoogleTagManager"

    const-string p2, "Error deleting old entries."

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/tagmanager/zzaw;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzb:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzba;

    .line 1
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tagmanager/zzba;-><init>(Lcom/google/android/gms/tagmanager/zzbe;Lcom/google/android/gms/tagmanager/zzaw;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzc(Ljava/util/List;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/tagmanager/zzau;",
            ">;J)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tagmanager/zzau;

    new-instance v2, Lcom/google/android/gms/tagmanager/zzbd;

    .line 3
    iget-object v3, v1, Lcom/google/android/gms/tagmanager/zzau;->zza:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/tagmanager/zzau;->zzb:Ljava/lang/Object;

    .line 4
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v5, 0x0

    .line 5
    :try_start_0
    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-direct {v6, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-virtual {v6, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v5, v6

    goto :goto_1

    :catch_0
    nop

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v5, :cond_0

    .line 8
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V

    .line 9
    :cond_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 10
    :catch_1
    throw p1

    :catch_2
    move-object v6, v5

    :goto_2
    if-eqz v6, :cond_1

    .line 11
    :goto_3
    :try_start_3
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V

    .line 12
    :cond_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 13
    :catch_3
    invoke-direct {v2, v3, v5}, Lcom/google/android/gms/tagmanager/zzbd;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzb:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzaz;

    .line 14
    invoke-direct {v1, p0, v0, p2, p3}, Lcom/google/android/gms/tagmanager/zzaz;-><init>(Lcom/google/android/gms/tagmanager/zzbe;Ljava/util/List;J)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
