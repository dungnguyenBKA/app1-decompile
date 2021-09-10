.class final Lcom/google/android/gms/measurement/internal/t9;
.super Lcom/google/android/gms/measurement/internal/s8;
.source "SourceFile"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/measurement/internal/o9;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/Long;

.field private h:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/b9;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/s8;-><init>(Lcom/google/android/gms/measurement/internal/b9;)V

    return-void
.end method

.method private final m(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/o9;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t9;->f:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t9;->f:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/o9;

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/o9;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/t9;->d:Ljava/lang/String;

    .line 3
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/o9;-><init>(Lcom/google/android/gms/measurement/internal/t9;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/t9;->f:Ljava/util/Map;

    .line 4
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private final n(II)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t9;->f:Ljava/util/Map;

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/o9;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/o9;->c(Lcom/google/android/gms/measurement/internal/o9;)Ljava/util/BitSet;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected final k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final l(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;
    .locals 63
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzdb;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzdu;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzcx;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p0

    const-string v10, "current_results"

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/n;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/n;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/common/internal/n;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iput-object v0, v9, Lcom/google/android/gms/measurement/internal/t9;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    .line 4
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v9, Lcom/google/android/gms/measurement/internal/t9;->e:Ljava/util/Set;

    .line 5
    new-instance v0, Lx;

    invoke-direct {v0}, Lx;-><init>()V

    iput-object v0, v9, Lcom/google/android/gms/measurement/internal/t9;->f:Ljava/util/Map;

    move-object/from16 v0, p4

    iput-object v0, v9, Lcom/google/android/gms/measurement/internal/t9;->g:Ljava/lang/Long;

    move-object/from16 v0, p5

    iput-object v0, v9, Lcom/google/android/gms/measurement/internal/t9;->h:Ljava/lang/Long;

    .line 6
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzdb;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdb;->zzd()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_s"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlo;->zzb()Z

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    iget-object v2, v9, Lcom/google/android/gms/measurement/internal/t9;->d:Ljava/lang/String;

    .line 10
    sget-object v3, Lcom/google/android/gms/measurement/internal/v2;->b0:Lcom/google/android/gms/measurement/internal/u2;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v13

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlo;->zzb()Z

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    iget-object v2, v9, Lcom/google/android/gms/measurement/internal/t9;->d:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/measurement/internal/v2;->a0:Lcom/google/android/gms/measurement/internal/u2;

    .line 13
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v14

    if-eqz v1, :cond_2

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/b9;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b9;->X()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v2

    iget-object v3, v9, Lcom/google/android/gms/measurement/internal/t9;->d:Ljava/lang/String;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s8;->i()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    .line 16
    invoke-static {v3}, Lcom/google/android/gms/common/internal/n;->e(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroid/content/ContentValues;

    .line 17
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 18
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "current_session_count"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 19
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->M()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    new-array v5, v12, [Ljava/lang/String;

    aput-object v3, v5, v11

    const-string v6, "events"

    const-string v7, "app_id = ?"

    .line 20
    invoke-virtual {v4, v6, v0, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 21
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v2

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/i3;->w(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Error resetting session-scoped event counts. appId"

    .line 24
    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const-string v15, "Failed to merge filter. appId"

    const-string v8, "Database error querying filters. appId"

    const-string v7, "data"

    const-string v6, "audience_id"

    if-eqz v14, :cond_8

    if-eqz v13, :cond_8

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/b9;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b9;->X()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v2

    iget-object v3, v9, Lcom/google/android/gms/measurement/internal/t9;->d:Ljava/lang/String;

    .line 27
    invoke-static {v3}, Lcom/google/android/gms/common/internal/n;->e(Ljava/lang/String;)Ljava/lang/String;

    new-instance v4, Lx;

    .line 28
    invoke-direct {v4}, Lx;-><init>()V

    .line 29
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->M()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    :try_start_1
    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v18

    new-array v0, v12, [Ljava/lang/String;

    aput-object v3, v0, v11

    const-string v17, "event_filters"

    const-string v19, "app_id=?"

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v0

    .line 30
    invoke-virtual/range {v16 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 32
    :goto_2
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbw;->zzn()Lcom/google/android/gms/internal/measurement/zzbv;

    move-result-object v12

    invoke-static {v12, v0}, Lcom/google/android/gms/measurement/internal/d9;->H(Lcom/google/android/gms/internal/measurement/zziw;[B)Lcom/google/android/gms/internal/measurement/zziw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbw;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 34
    :try_start_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw;->zzg()Z

    move-result v12

    if-nez v12, :cond_3

    goto :goto_4

    .line 35
    :cond_3
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 36
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Le0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    if-nez v16, :cond_4

    new-instance v11, Ljava/util/ArrayList;

    .line 37
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-virtual {v4, v12, v11}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    move-object/from16 v11, v16

    .line 39
    :goto_3
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catch_1
    move-exception v0

    .line 40
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 41
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v11

    .line 42
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v11

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/i3;->w(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 43
    invoke-virtual {v11, v15, v12, v0}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    :goto_4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_5

    .line 45
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-object v11, v4

    goto :goto_9

    :cond_5
    const/4 v11, 0x0

    const/4 v12, 0x1

    goto :goto_2

    .line 46
    :cond_6
    :try_start_5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 47
    :goto_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    const/4 v5, 0x0

    goto :goto_7

    :catch_3
    move-exception v0

    const/4 v5, 0x0

    .line 48
    :goto_6
    :try_start_6
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 49
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v2

    .line 50
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v2

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/i3;->w(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 51
    invoke-virtual {v2, v8, v3, v0}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v5, :cond_8

    goto :goto_5

    :goto_7
    if-eqz v5, :cond_7

    .line 53
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 54
    :cond_7
    throw v0

    :cond_8
    :goto_8
    move-object v11, v0

    .line 55
    :goto_9
    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/b9;

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b9;->X()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v2

    iget-object v3, v9, Lcom/google/android/gms/measurement/internal/t9;->d:Ljava/lang/String;

    .line 57
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s8;->i()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    .line 58
    invoke-static {v3}, Lcom/google/android/gms/common/internal/n;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->M()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    :try_start_7
    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v18

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const-string v17, "audience_filter_values"

    const-string v19, "app_id=?"

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v0

    .line 60
    invoke-virtual/range {v16 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 61
    :try_start_8
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_9

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    .line 63
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-object v12, v0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto/16 :goto_e

    .line 64
    :cond_9
    :try_start_9
    new-instance v5, Lx;

    .line 65
    invoke-direct {v5}, Lx;-><init>()V

    :goto_a
    const/4 v12, 0x0

    .line 66
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/4 v12, 0x1

    .line 67
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 68
    :try_start_a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdq;->zzk()Lcom/google/android/gms/internal/measurement/zzdp;

    move-result-object v12

    invoke-static {v12, v0}, Lcom/google/android/gms/measurement/internal/d9;->H(Lcom/google/android/gms/internal/measurement/zziw;[B)Lcom/google/android/gms/internal/measurement/zziw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzdp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzdq;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 69
    :try_start_b
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12, v0}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto :goto_b

    :catch_4
    move-exception v0

    .line 70
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 71
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v12

    .line 72
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v12

    move-object/from16 v17, v5

    const-string v5, "Failed to merge filter results. appId, audienceId, error"
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    move-object/from16 v18, v6

    :try_start_c
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/i3;->w(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    move-object/from16 v19, v7

    .line 73
    :try_start_d
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 74
    invoke-virtual {v12, v5, v6, v7, v0}, Lcom/google/android/gms/measurement/internal/g3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    :goto_b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    if-nez v0, :cond_a

    .line 76
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-object/from16 v12, v17

    goto :goto_e

    :cond_a
    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto :goto_a

    :catch_5
    move-exception v0

    goto :goto_d

    :catch_6
    move-exception v0

    goto :goto_c

    :catch_7
    move-exception v0

    move-object/from16 v18, v6

    :goto_c
    move-object/from16 v19, v7

    goto :goto_d

    :catchall_2
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_4b

    :catch_8
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    const/4 v4, 0x0

    .line 77
    :goto_d
    :try_start_e
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 78
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v2

    const-string v5, "Database error querying filter results. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/i3;->w(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 80
    invoke-virtual {v2, v5, v3, v0}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    if-eqz v4, :cond_b

    .line 82
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_b
    move-object v12, v0

    .line 83
    :goto_e
    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v7, 0x2

    if-eqz v0, :cond_d

    :cond_c
    move-object/from16 v28, v8

    move-object/from16 v23, v10

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    const/4 v13, 0x2

    goto/16 :goto_24

    .line 84
    :cond_d
    new-instance v2, Ljava/util/HashSet;

    .line 85
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz v1, :cond_1c

    iget-object v1, v9, Lcom/google/android/gms/measurement/internal/t9;->d:Ljava/lang/String;

    .line 86
    invoke-static {v1}, Lcom/google/android/gms/common/internal/n;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    invoke-static {v12}, Lcom/google/android/gms/common/internal/n;->h(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lx;

    .line 88
    invoke-direct {v3}, Lx;-><init>()V

    .line 89
    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_17

    .line 90
    :cond_e
    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/b9;

    .line 91
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b9;->X()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v4

    .line 92
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/s8;->i()V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    .line 93
    invoke-static {v1}, Lcom/google/android/gms/common/internal/n;->e(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lx;

    .line 94
    invoke-direct {v0}, Lx;-><init>()V

    .line 95
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/i;->M()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    :try_start_f
    new-array v6, v7, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v1, v6, v16

    const/16 v16, 0x1

    aput-object v1, v6, v16

    const-string v7, "select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;"

    .line 96
    invoke-virtual {v5, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_a
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 97
    :try_start_10
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_11

    :cond_f
    const/4 v6, 0x0

    .line 98
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 99
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Le0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_10

    new-instance v7, Ljava/util/ArrayList;

    .line 100
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-virtual {v0, v6, v7}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    const/4 v6, 0x1

    .line 102
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 103
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-nez v6, :cond_f

    .line 105
    :goto_f
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_11

    .line 106
    :cond_11
    :try_start_11
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto :goto_f

    :catchall_3
    move-exception v0

    goto/16 :goto_18

    :catch_9
    move-exception v0

    goto :goto_10

    :catchall_4
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_18

    :catch_a
    move-exception v0

    const/4 v5, 0x0

    .line 107
    :goto_10
    :try_start_12
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 108
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v4

    .line 109
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v4

    const-string v6, "Database error querying scoped filters. appId"

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/i3;->w(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 110
    invoke-virtual {v4, v6, v1, v0}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    if-eqz v5, :cond_12

    goto :goto_f

    .line 112
    :cond_12
    :goto_11
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 113
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzdq;

    .line 114
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_19

    .line 115
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_13

    goto/16 :goto_15

    .line 116
    :cond_13
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/b9;

    .line 117
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/b9;->c0()Lcom/google/android/gms/measurement/internal/d9;

    move-result-object v5

    move-object/from16 v17, v0

    .line 118
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzdq;->zzc()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0, v7}, Lcom/google/android/gms/measurement/internal/d9;->D(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_18

    .line 120
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhs;->zzbu()Lcom/google/android/gms/internal/measurement/zzho;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzdp;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzdp;->zzd()Lcom/google/android/gms/internal/measurement/zzdp;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzdp;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzdp;

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/b9;

    .line 121
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b9;->c0()Lcom/google/android/gms/measurement/internal/d9;

    move-result-object v0

    move-object/from16 v20, v1

    .line 122
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzdq;->zza()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/google/android/gms/measurement/internal/d9;->D(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 123
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzdp;->zzb()Lcom/google/android/gms/internal/measurement/zzdp;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzdp;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzdp;

    const/4 v0, 0x0

    .line 124
    :goto_13
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzdq;->zzf()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 125
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/measurement/zzdq;->zzg(I)Lcom/google/android/gms/internal/measurement/zzcz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcz;->zzb()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 126
    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 127
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzdp;->zzf(I)Lcom/google/android/gms/internal/measurement/zzdp;

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_15
    const/4 v0, 0x0

    .line 128
    :goto_14
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzdq;->zzi()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 129
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/measurement/zzdq;->zzj(I)Lcom/google/android/gms/internal/measurement/zzds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzds;->zzb()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 130
    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 131
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzdp;->zzh(I)Lcom/google/android/gms/internal/measurement/zzdp;

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 132
    :cond_17
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzdq;

    invoke-virtual {v3, v0, v1}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_18
    move-object/from16 v0, v17

    goto/16 :goto_12

    :cond_19
    :goto_15
    move-object/from16 v17, v0

    move-object/from16 v20, v1

    .line 133
    invoke-virtual {v3, v5, v6}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_16
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    goto/16 :goto_12

    :cond_1a
    :goto_17
    move-object v0, v3

    goto :goto_19

    :goto_18
    if-eqz v5, :cond_1b

    .line 134
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 135
    :cond_1b
    throw v0

    :cond_1c
    move-object v0, v12

    .line 136
    :goto_19
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1a
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 137
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzdq;

    new-instance v5, Ljava/util/BitSet;

    .line 138
    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    new-instance v6, Ljava/util/BitSet;

    .line 139
    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    new-instance v7, Lx;

    .line 140
    invoke-direct {v7}, Lx;-><init>()V

    if-eqz v1, :cond_20

    .line 141
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdq;->zzf()I

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_1d

    .line 142
    :cond_1d
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdq;->zze()Ljava/util/List;

    move-result-object v2

    .line 143
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcz;

    .line 144
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcz;->zza()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 145
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcz;->zzb()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 146
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcz;->zzc()Z

    move-result v21

    if-eqz v21, :cond_1f

    .line 147
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcz;->zzd()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_1c

    :cond_1f
    const/4 v3, 0x0

    .line 148
    :goto_1c
    invoke-virtual {v7, v4, v3}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 149
    :cond_20
    :goto_1d
    new-instance v4, Lx;

    .line 150
    invoke-direct {v4}, Lx;-><init>()V

    if-eqz v1, :cond_23

    .line 151
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdq;->zzi()I

    move-result v2

    if-nez v2, :cond_21

    goto :goto_1f

    .line 152
    :cond_21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdq;->zzh()Ljava/util/List;

    move-result-object v2

    .line 153
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_22
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzds;

    .line 154
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzds;->zza()Z

    move-result v21

    if-eqz v21, :cond_22

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzds;->zzd()I

    move-result v21

    if-lez v21, :cond_22

    .line 155
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzds;->zzb()I

    move-result v21

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 156
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzds;->zzd()I

    move-result v21

    move-object/from16 v23, v2

    add-int/lit8 v2, v21, -0x1

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzds;->zze(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 157
    invoke-virtual {v4, v0, v2}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v22

    move-object/from16 v2, v23

    goto :goto_1e

    :cond_23
    :goto_1f
    move-object/from16 v22, v0

    if-eqz v1, :cond_26

    const/4 v0, 0x0

    .line 158
    :goto_20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdq;->zzb()I

    move-result v2

    mul-int/lit8 v2, v2, 0x40

    if-ge v0, v2, :cond_26

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdq;->zza()Ljava/util/List;

    move-result-object v2

    .line 159
    invoke-static {v2, v0}, Lcom/google/android/gms/measurement/internal/d9;->B(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, v9, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 160
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v2

    .line 161
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->v()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v2

    .line 162
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v21, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v23, v10

    const-string v10, "Filter already evaluated. audience ID, filter ID"

    invoke-virtual {v2, v10, v3, v8}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    invoke-virtual {v6, v0}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdq;->zzc()Ljava/util/List;

    move-result-object v2

    .line 164
    invoke-static {v2, v0}, Lcom/google/android/gms/measurement/internal/d9;->B(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 165
    invoke-virtual {v5, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_21

    :cond_24
    move-object/from16 v21, v8

    move-object/from16 v23, v10

    .line 166
    :cond_25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Le0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_21
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v8, v21

    move-object/from16 v10, v23

    goto :goto_20

    :cond_26
    move-object/from16 v21, v8

    move-object/from16 v23, v10

    .line 167
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzdq;

    if-eqz v14, :cond_2b

    if-eqz v13, :cond_2b

    .line 168
    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2b

    iget-object v1, v9, Lcom/google/android/gms/measurement/internal/t9;->h:Ljava/lang/Long;

    if-eqz v1, :cond_2b

    iget-object v1, v9, Lcom/google/android/gms/measurement/internal/t9;->g:Ljava/lang/Long;

    if-nez v1, :cond_27

    goto :goto_23

    .line 169
    :cond_27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_28
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzbw;

    .line 170
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb()I

    move-result v2

    iget-object v3, v9, Lcom/google/android/gms/measurement/internal/t9;->h:Ljava/lang/Long;

    .line 171
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    div-long v24, v24, v26

    .line 172
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw;->zzj()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, v9, Lcom/google/android/gms/measurement/internal/t9;->g:Ljava/lang/Long;

    .line 173
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    div-long v24, v24, v26

    .line 174
    :cond_29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Le0;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 175
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_2a
    invoke-virtual {v4, v1}, Le0;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 177
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 178
    :cond_2b
    :goto_23
    new-instance v0, Lcom/google/android/gms/measurement/internal/o9;

    iget-object v3, v9, Lcom/google/android/gms/measurement/internal/t9;->d:Ljava/lang/String;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v10, v4

    move-object v4, v8

    const/4 v8, 0x0

    move-object/from16 v24, v11

    move-object/from16 v11, v18

    move-object/from16 p1, v12

    move/from16 v16, v13

    move-object/from16 v12, v19

    const/4 v13, 0x2

    move-object/from16 v28, v21

    move-object v8, v10

    .line 179
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/o9;-><init>(Lcom/google/android/gms/measurement/internal/t9;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzdq;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;)V

    iget-object v1, v9, Lcom/google/android/gms/measurement/internal/t9;->f:Ljava/util/Map;

    .line 180
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v13, v16

    move-object/from16 v0, v22

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v8, v28

    move-object/from16 v12, p1

    goto/16 :goto_1a

    .line 181
    :goto_24
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "Skipping failed audience ID"

    if-eqz v0, :cond_2d

    :cond_2c
    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object/from16 v12, v28

    goto/16 :goto_34

    .line 182
    :cond_2d
    new-instance v2, Lcom/google/android/gms/measurement/internal/p9;

    .line 183
    invoke-direct {v2, v9}, Lcom/google/android/gms/measurement/internal/p9;-><init>(Lcom/google/android/gms/measurement/internal/t9;)V

    new-instance v3, Lx;

    .line 184
    invoke-direct {v3}, Lx;-><init>()V

    .line 185
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2e
    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzdb;

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/t9;->d:Ljava/lang/String;

    .line 186
    invoke-virtual {v2, v5, v0}, Lcom/google/android/gms/measurement/internal/p9;->a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzdb;)Lcom/google/android/gms/internal/measurement/zzdb;

    move-result-object v5

    if-eqz v5, :cond_2e

    iget-object v6, v9, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/b9;

    .line 187
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/b9;->X()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v6

    iget-object v7, v9, Lcom/google/android/gms/measurement/internal/t9;->d:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzdb;->zzd()Ljava/lang/String;

    move-result-object v8

    .line 188
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdb;->zzd()Ljava/lang/String;

    move-result-object v10

    .line 189
    invoke-virtual {v6, v7, v10}, Lcom/google/android/gms/measurement/internal/i;->N(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v10

    if-nez v10, :cond_2f

    iget-object v10, v6, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 190
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v10

    .line 191
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v10

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/i3;->w(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 192
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v6

    .line 193
    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/d3;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "Event aggregate wasn\'t created during raw event logging. appId, event"

    .line 194
    invoke-virtual {v10, v8, v14, v6}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lcom/google/android/gms/measurement/internal/o;

    move-object/from16 v29, v6

    .line 195
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdb;->zzd()Ljava/lang/String;

    move-result-object v31

    const-wide/16 v32, 0x1

    const-wide/16 v34, 0x1

    const-wide/16 v36, 0x1

    .line 196
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdb;->zzf()J

    move-result-wide v38

    const-wide/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v30, v7

    invoke-direct/range {v29 .. v45}, Lcom/google/android/gms/measurement/internal/o;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_26

    .line 197
    :cond_2f
    new-instance v6, Lcom/google/android/gms/measurement/internal/o;

    move-object/from16 v46, v6

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/o;->a:Ljava/lang/String;

    move-object/from16 v47, v0

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/o;->b:Ljava/lang/String;

    move-object/from16 v48, v0

    iget-wide v7, v10, Lcom/google/android/gms/measurement/internal/o;->c:J

    const-wide/16 v16, 0x1

    add-long v49, v7, v16

    iget-wide v7, v10, Lcom/google/android/gms/measurement/internal/o;->d:J

    add-long v51, v7, v16

    iget-wide v7, v10, Lcom/google/android/gms/measurement/internal/o;->e:J

    add-long v53, v7, v16

    iget-wide v7, v10, Lcom/google/android/gms/measurement/internal/o;->f:J

    move-wide/from16 v55, v7

    iget-wide v7, v10, Lcom/google/android/gms/measurement/internal/o;->g:J

    move-wide/from16 v57, v7

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/o;->h:Ljava/lang/Long;

    move-object/from16 v59, v0

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/o;->i:Ljava/lang/Long;

    move-object/from16 v60, v0

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/o;->j:Ljava/lang/Long;

    move-object/from16 v61, v0

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/o;->k:Ljava/lang/Boolean;

    move-object/from16 v62, v0

    .line 198
    invoke-direct/range {v46 .. v62}, Lcom/google/android/gms/measurement/internal/o;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 199
    :goto_26
    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/b9;

    .line 200
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b9;->X()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v0

    .line 201
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/i;->O(Lcom/google/android/gms/measurement/internal/o;)V

    iget-wide v7, v6, Lcom/google/android/gms/measurement/internal/o;->c:J

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzdb;->zzd()Ljava/lang/String;

    move-result-object v10

    .line 202
    invoke-virtual {v3, v10}, Le0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_35

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/b9;

    .line 203
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b9;->X()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v14

    iget-object v13, v9, Lcom/google/android/gms/measurement/internal/t9;->d:Ljava/lang/String;

    .line 204
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/s8;->i()V

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    .line 205
    invoke-static {v13}, Lcom/google/android/gms/common/internal/n;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    invoke-static {v10}, Lcom/google/android/gms/common/internal/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 p1, v2

    new-instance v2, Lx;

    .line 207
    invoke-direct {v2}, Lx;-><init>()V

    .line 208
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/i;->M()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v29

    :try_start_13
    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v31
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_10
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    move-object/from16 p2, v4

    const/4 v4, 0x2

    :try_start_14
    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v13, v0, v4

    const/4 v4, 0x1

    aput-object v10, v0, v4

    const-string v30, "event_filters"

    const-string v32, "app_id=? AND event_name=?"

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v33, v0

    .line 209
    invoke-virtual/range {v29 .. v36}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_f
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 210
    :try_start_15
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_e
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    if-eqz v0, :cond_32

    move-object/from16 v18, v11

    :goto_27
    const/4 v11, 0x1

    .line 211
    :try_start_16
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_c
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 212
    :try_start_17
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbw;->zzn()Lcom/google/android/gms/internal/measurement/zzbv;

    move-result-object v11

    invoke-static {v11, v0}, Lcom/google/android/gms/measurement/internal/d9;->H(Lcom/google/android/gms/internal/measurement/zziw;[B)Lcom/google/android/gms/internal/measurement/zziw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbw;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_c
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    const/4 v11, 0x0

    .line 213
    :try_start_18
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 214
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11}, Le0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_c
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    if-nez v17, :cond_30

    move-object/from16 v19, v12

    :try_start_19
    new-instance v12, Ljava/util/ArrayList;

    .line 215
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 216
    invoke-virtual {v2, v11, v12}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    :cond_30
    move-object/from16 v19, v12

    move-object/from16 v12, v17

    .line 217
    :goto_28
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :catch_b
    move-exception v0

    move-object/from16 v19, v12

    .line 218
    iget-object v11, v14, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 219
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v11

    .line 220
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v11

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/i3;->w(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 221
    invoke-virtual {v11, v15, v12, v0}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 222
    :goto_29
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_19} :catch_d
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    if-nez v0, :cond_31

    .line 223
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    goto :goto_2a

    :cond_31
    move-object/from16 v12, v19

    goto :goto_27

    :catch_c
    move-exception v0

    goto :goto_2b

    :cond_32
    move-object/from16 v18, v11

    move-object/from16 v19, v12

    .line 224
    :try_start_1a
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_d
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    .line 225
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :goto_2a
    move-object/from16 v12, v28

    goto :goto_2e

    :catch_d
    move-exception v0

    goto :goto_2d

    :catch_e
    move-exception v0

    move-object/from16 v18, v11

    :goto_2b
    move-object/from16 v19, v12

    goto :goto_2d

    :catch_f
    move-exception v0

    goto :goto_2c

    :catchall_5
    move-exception v0

    const/4 v5, 0x0

    goto :goto_2f

    :catch_10
    move-exception v0

    move-object/from16 p2, v4

    :goto_2c
    move-object/from16 v18, v11

    move-object/from16 v19, v12

    const/4 v4, 0x0

    .line 226
    :goto_2d
    :try_start_1b
    iget-object v2, v14, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 227
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v2

    .line 228
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v2

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/i3;->w(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v12, v28

    .line 229
    invoke-virtual {v2, v12, v11, v0}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 230
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    if-eqz v4, :cond_33

    .line 231
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_33
    :goto_2e
    invoke-virtual {v3, v10, v0}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    :catchall_6
    move-exception v0

    move-object v5, v4

    :goto_2f
    if-eqz v5, :cond_34

    .line 233
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_34
    throw v0

    :cond_35
    move-object/from16 p1, v2

    move-object/from16 p2, v4

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object/from16 v12, v28

    .line 235
    :goto_30
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v10, v9, Lcom/google/android/gms/measurement/internal/t9;->e:Ljava/util/Set;

    .line 236
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_36

    iget-object v4, v9, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 237
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v4

    .line 238
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/i3;->v()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v4

    invoke-virtual {v4, v1, v11}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_31

    .line 239
    :cond_36
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 240
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x1

    :goto_32
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_38

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzbw;

    new-instance v13, Lcom/google/android/gms/measurement/internal/q9;

    iget-object v14, v9, Lcom/google/android/gms/measurement/internal/t9;->d:Ljava/lang/String;

    .line 241
    invoke-direct {v13, v9, v14, v4, v11}, Lcom/google/android/gms/measurement/internal/q9;-><init>(Lcom/google/android/gms/measurement/internal/t9;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzbw;)V

    iget-object v14, v9, Lcom/google/android/gms/measurement/internal/t9;->g:Ljava/lang/Long;

    move-object/from16 v17, v0

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/t9;->h:Ljava/lang/Long;

    .line 242
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb()I

    move-result v11

    invoke-direct {v9, v4, v11}, Lcom/google/android/gms/measurement/internal/t9;->n(II)Z

    move-result v36

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    move-object/from16 v31, v0

    move-object/from16 v32, v5

    move-wide/from16 v33, v7

    move-object/from16 v35, v6

    .line 243
    invoke-virtual/range {v29 .. v36}, Lcom/google/android/gms/measurement/internal/q9;->i(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzdb;JLcom/google/android/gms/measurement/internal/o;Z)Z

    move-result v11

    if-eqz v11, :cond_37

    .line 244
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/google/android/gms/measurement/internal/t9;->m(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/o9;

    move-result-object v0

    .line 245
    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/o9;->a(Lcom/google/android/gms/measurement/internal/r9;)V

    move-object/from16 v0, v17

    goto :goto_32

    :cond_37
    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/t9;->e:Ljava/util/Set;

    .line 246
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_38
    move-object/from16 v17, v0

    :goto_33
    if-nez v11, :cond_39

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/t9;->e:Ljava/util/Set;

    .line 247
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_39
    move-object/from16 v0, v17

    goto/16 :goto_31

    :cond_3a
    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v28, v12

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    const/4 v13, 0x2

    goto/16 :goto_25

    .line 248
    :goto_34
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_3b
    move-object/from16 v11, v18

    goto/16 :goto_47

    .line 249
    :cond_3c
    new-instance v2, Lx;

    .line 250
    invoke-direct {v2}, Lx;-><init>()V

    .line 251
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzdu;

    .line 252
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzdu;->zzc()Ljava/lang/String;

    move-result-object v5

    .line 253
    invoke-virtual {v2, v5}, Le0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_42

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/b9;

    .line 254
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b9;->X()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v6

    iget-object v7, v9, Lcom/google/android/gms/measurement/internal/t9;->d:Ljava/lang/String;

    .line 255
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/s8;->i()V

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    .line 256
    invoke-static {v7}, Lcom/google/android/gms/common/internal/n;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 257
    invoke-static {v5}, Lcom/google/android/gms/common/internal/n;->e(Ljava/lang/String;)Ljava/lang/String;

    new-instance v8, Lx;

    .line 258
    invoke-direct {v8}, Lx;-><init>()V

    .line 259
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/i;->M()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v29

    move-object/from16 v11, v18

    move-object/from16 v10, v19

    :try_start_1c
    filled-new-array {v11, v10}, [Ljava/lang/String;

    move-result-object v31

    const/4 v13, 0x2

    new-array v0, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v7, v0, v13

    const/4 v13, 0x1

    aput-object v5, v0, v13

    const-string v30, "property_filters"

    const-string v32, "app_id=? AND property_name=?"

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v33, v0

    .line 260
    invoke-virtual/range {v29 .. v36}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_1c} :catch_14
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    .line 261
    :try_start_1d
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3f

    :goto_36
    const/4 v14, 0x1

    .line 262
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d .. :try_end_1d} :catch_13
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    .line 263
    :try_start_1e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcf;->zzi()Lcom/google/android/gms/internal/measurement/zzce;

    move-result-object v15

    invoke-static {v15, v0}, Lcom/google/android/gms/measurement/internal/d9;->H(Lcom/google/android/gms/internal/measurement/zziw;[B)Lcom/google/android/gms/internal/measurement/zziw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcf;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_1e} :catch_13
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    const/4 v15, 0x0

    .line 264
    :try_start_1f
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 265
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v14}, Le0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    if-nez v17, :cond_3d

    new-instance v15, Ljava/util/ArrayList;

    .line 266
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 267
    invoke-virtual {v8, v14, v15}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    :cond_3d
    move-object/from16 v15, v17

    .line 268
    :goto_37
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 p1, v3

    goto :goto_38

    :catch_11
    move-exception v0

    .line 269
    iget-object v14, v6, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 270
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v14

    .line 271
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v14

    const-string v15, "Failed to merge filter"
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f .. :try_end_1f} :catch_13
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    move-object/from16 p1, v3

    :try_start_20
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/i3;->w(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v14, v15, v3, v0}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 272
    :goto_38
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_20
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_20 .. :try_end_20} :catch_12
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    if-nez v0, :cond_3e

    .line 273
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    goto :goto_3b

    :cond_3e
    move-object/from16 v3, p1

    goto :goto_36

    :cond_3f
    move-object/from16 p1, v3

    .line 274
    :try_start_21
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_21
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21 .. :try_end_21} :catch_12
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    .line 275
    :goto_39
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_3b

    :catch_12
    move-exception v0

    goto :goto_3a

    :catch_13
    move-exception v0

    move-object/from16 p1, v3

    goto :goto_3a

    :catchall_7
    move-exception v0

    const/4 v5, 0x0

    goto :goto_3c

    :catch_14
    move-exception v0

    move-object/from16 p1, v3

    const/4 v13, 0x0

    .line 276
    :goto_3a
    :try_start_22
    iget-object v3, v6, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 277
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v3

    .line 278
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v3

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/i3;->w(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 279
    invoke-virtual {v3, v12, v6, v0}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 280
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    if-eqz v13, :cond_40

    goto :goto_39

    .line 281
    :cond_40
    :goto_3b
    invoke-virtual {v2, v5, v0}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    :catchall_8
    move-exception v0

    move-object v5, v13

    :goto_3c
    if-eqz v5, :cond_41

    .line 282
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 283
    :cond_41
    throw v0

    :cond_42
    move-object/from16 p1, v3

    move-object/from16 v11, v18

    move-object/from16 v10, v19

    .line 284
    :goto_3d
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v9, Lcom/google/android/gms/measurement/internal/t9;->e:Ljava/util/Set;

    .line 285
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 286
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->v()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    invoke-virtual {v0, v1, v7}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_46

    .line 288
    :cond_43
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 289
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x1

    :goto_3f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzcf;

    iget-object v8, v9, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 290
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v8

    .line 291
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/i3;->y()Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x2

    .line 292
    invoke-static {v8, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_45

    iget-object v8, v9, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 293
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v8

    .line 294
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/i3;->v()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v8

    .line 295
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 296
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcf;->zza()Z

    move-result v15

    if-eqz v15, :cond_44

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcf;->zzb()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_40

    :cond_44
    const/4 v15, 0x0

    :goto_40
    iget-object v13, v9, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 297
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v13

    move-object/from16 p2, v0

    .line 298
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcf;->zzc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/google/android/gms/measurement/internal/d3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v13, "Evaluating filter. audience, filter, property"

    .line 299
    invoke-virtual {v8, v13, v14, v15, v0}, Lcom/google/android/gms/measurement/internal/g3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 300
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->v()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    iget-object v8, v9, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/b9;

    .line 302
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/b9;->c0()Lcom/google/android/gms/measurement/internal/d9;

    move-result-object v8

    .line 303
    invoke-virtual {v8, v7}, Lcom/google/android/gms/measurement/internal/d9;->y(Lcom/google/android/gms/internal/measurement/zzcf;)Ljava/lang/String;

    move-result-object v8

    const-string v13, "Filter definition"

    invoke-virtual {v0, v13, v8}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_41

    :cond_45
    move-object/from16 p2, v0

    .line 304
    :goto_41
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcf;->zza()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcf;->zzb()I

    move-result v0

    const/16 v8, 0x100

    if-le v0, v8, :cond_46

    goto :goto_42

    .line 305
    :cond_46
    new-instance v0, Lcom/google/android/gms/measurement/internal/s9;

    iget-object v8, v9, Lcom/google/android/gms/measurement/internal/t9;->d:Ljava/lang/String;

    .line 306
    invoke-direct {v0, v9, v8, v5, v7}, Lcom/google/android/gms/measurement/internal/s9;-><init>(Lcom/google/android/gms/measurement/internal/t9;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzcf;)V

    iget-object v8, v9, Lcom/google/android/gms/measurement/internal/t9;->g:Ljava/lang/Long;

    iget-object v13, v9, Lcom/google/android/gms/measurement/internal/t9;->h:Ljava/lang/Long;

    .line 307
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcf;->zzb()I

    move-result v7

    invoke-direct {v9, v5, v7}, Lcom/google/android/gms/measurement/internal/t9;->n(II)Z

    move-result v7

    .line 308
    invoke-virtual {v0, v8, v13, v4, v7}, Lcom/google/android/gms/measurement/internal/s9;->i(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzdu;Z)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 309
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v9, v8}, Lcom/google/android/gms/measurement/internal/t9;->m(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/o9;

    move-result-object v8

    .line 310
    invoke-virtual {v8, v0}, Lcom/google/android/gms/measurement/internal/o9;->a(Lcom/google/android/gms/measurement/internal/r9;)V

    move-object/from16 v0, p2

    goto/16 :goto_3f

    :cond_47
    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/t9;->e:Ljava/util/Set;

    .line 311
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 312
    :cond_48
    :goto_42
    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 313
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    iget-object v6, v9, Lcom/google/android/gms/measurement/internal/t9;->d:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/i3;->w(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 315
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcf;->zza()Z

    move-result v8

    if-eqz v8, :cond_49

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcf;->zzb()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_43

    :cond_49
    const/4 v7, 0x0

    :goto_43
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Invalid property filter ID. appId, id"

    .line 316
    invoke-virtual {v0, v8, v6, v7}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_45

    :cond_4a
    move-object/from16 p2, v0

    :goto_44
    if-nez v7, :cond_4b

    :goto_45
    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/t9;->e:Ljava/util/Set;

    .line 317
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4b
    move-object/from16 v0, p2

    goto/16 :goto_3e

    :cond_4c
    :goto_46
    move-object/from16 v3, p1

    move-object/from16 v19, v10

    move-object/from16 v18, v11

    goto/16 :goto_35

    .line 318
    :goto_47
    new-instance v1, Ljava/util/ArrayList;

    .line 319
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/t9;->f:Ljava/util/Map;

    .line 320
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, v9, Lcom/google/android/gms/measurement/internal/t9;->e:Ljava/util/Set;

    .line 321
    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 322
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, v9, Lcom/google/android/gms/measurement/internal/t9;->f:Ljava/util/Map;

    .line 323
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/o9;

    .line 324
    invoke-static {v3}, Lcom/google/android/gms/common/internal/n;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/o9;->b(I)Lcom/google/android/gms/internal/measurement/zzcx;

    move-result-object v0

    .line 326
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v9, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/b9;

    .line 327
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/b9;->X()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v3

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/t9;->d:Ljava/lang/String;

    .line 328
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcx;->zzc()Lcom/google/android/gms/internal/measurement/zzdq;

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/s8;->i()V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    .line 329
    invoke-static {v5}, Lcom/google/android/gms/common/internal/n;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 330
    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgb;->zzbp()[B

    move-result-object v0

    new-instance v6, Landroid/content/ContentValues;

    .line 332
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "app_id"

    .line 333
    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-virtual {v6, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v4, v23

    .line 335
    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 336
    :try_start_23
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i;->M()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v7, "audience_filter_values"
    :try_end_23
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_23 .. :try_end_23} :catch_16

    const/4 v8, 0x5

    const/4 v10, 0x0

    .line 337
    :try_start_24
    invoke-virtual {v0, v7, v10, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v6

    const-wide/16 v12, -0x1

    cmp-long v0, v6, v12

    if-nez v0, :cond_4d

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 338
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    const-string v6, "Failed to insert filter results (got -1). appId"

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/i3;->w(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 340
    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_24
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_24 .. :try_end_24} :catch_15

    goto :goto_4a

    :catch_15
    move-exception v0

    goto :goto_49

    :catch_16
    move-exception v0

    const/4 v10, 0x0

    .line 341
    :goto_49
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 342
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v3

    .line 343
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v3

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/i3;->w(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Error storing filter results. appId"

    .line 344
    invoke-virtual {v3, v6, v5, v0}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4d
    :goto_4a
    move-object/from16 v23, v4

    goto/16 :goto_48

    :cond_4e
    return-object v1

    :catchall_9
    move-exception v0

    move-object v5, v4

    :goto_4b
    if-eqz v5, :cond_4f

    .line 345
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 346
    :cond_4f
    goto :goto_4d

    :goto_4c
    throw v0

    :goto_4d
    goto :goto_4c
.end method
