.class public final Lcom/google/android/gms/measurement/internal/c4;
.super Lcom/google/android/gms/measurement/internal/s8;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/d;


# instance fields
.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/zzcp;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/b9;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/s8;-><init>(Lcom/google/android/gms/measurement/internal/b9;)V

    .line 2
    new-instance p1, Lx;

    invoke-direct {p1}, Lx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->d:Ljava/util/Map;

    new-instance p1, Lx;

    .line 3
    invoke-direct {p1}, Lx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->e:Ljava/util/Map;

    new-instance p1, Lx;

    .line 4
    invoke-direct {p1}, Lx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->f:Ljava/util/Map;

    new-instance p1, Lx;

    .line 5
    invoke-direct {p1}, Lx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->g:Ljava/util/Map;

    new-instance p1, Lx;

    .line 6
    invoke-direct {p1}, Lx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->i:Ljava/util/Map;

    new-instance p1, Lx;

    .line 7
    invoke-direct {p1}, Lx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->h:Ljava/util/Map;

    return-void
.end method

.method private final w(Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/s8;->i()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/n;->e(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->g:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/b9;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b9;->X()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v0

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/n;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s8;->i()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->M()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "remote_config"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v6, v10

    const-string v3, "apps"

    const-string v5, "app_id=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 8
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 11
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 12
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v4

    .line 13
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v4

    const-string v5, "Got multiple records for app config, expected one. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/i3;->w(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 14
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    :goto_0
    :try_start_2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    const-string v4, "Error querying remote config. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/i3;->w(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 18
    invoke-virtual {v0, v4, v5, v3}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_2

    .line 19
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v3, v1

    :goto_2
    if-nez v3, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->d:Ljava/util/Map;

    .line 20
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->e:Ljava/util/Map;

    .line 21
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->f:Ljava/util/Map;

    .line 22
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->g:Ljava/util/Map;

    .line 23
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->i:Ljava/util/Map;

    .line 24
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->h:Ljava/util/Map;

    .line 25
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 26
    :cond_3
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/measurement/internal/c4;->y(Ljava/lang/String;[B)Lcom/google/android/gms/internal/measurement/zzcp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhs;->zzbu()Lcom/google/android/gms/internal/measurement/zzho;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzco;

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/c4;->x(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzco;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/c4;->d:Ljava/util/Map;

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcp;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/c4;->z(Lcom/google/android/gms/internal/measurement/zzcp;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/c4;->g:Ljava/util/Map;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcp;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->i:Ljava/util/Map;

    .line 30
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_1
    move-exception p1

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_4

    .line 31
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 32
    :cond_4
    throw p1

    :cond_5
    return-void
.end method

.method private final x(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzco;)V
    .locals 9

    .line 1
    new-instance v0, Lx;

    invoke-direct {v0}, Lx;-><init>()V

    new-instance v1, Lx;

    .line 2
    invoke-direct {v1}, Lx;-><init>()V

    new-instance v2, Lx;

    .line 3
    invoke-direct {v2}, Lx;-><init>()V

    if-eqz p2, :cond_5

    const/4 v3, 0x0

    .line 4
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzco;->zza()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 5
    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/measurement/zzco;->zzb(I)Lcom/google/android/gms/internal/measurement/zzcn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhs;->zzbu()Lcom/google/android/gms/internal/measurement/zzho;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcm;

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcm;->zza()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v4

    .line 8
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v4

    const-string v5, "EventConfig contained null event name"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 9
    :cond_0
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcm;->zza()Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcm;->zza()Ljava/lang/String;

    move-result-object v6

    .line 11
    sget-object v7, Lcom/google/android/gms/measurement/internal/g5;->a:[Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/measurement/internal/g5;->c:[Ljava/lang/String;

    .line 12
    invoke-static {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/j;->d(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 14
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/zzcm;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcm;

    .line 15
    invoke-virtual {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzco;->zzc(ILcom/google/android/gms/internal/measurement/zzcm;)Lcom/google/android/gms/internal/measurement/zzco;

    .line 16
    :cond_1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcm;->zzc()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcm;->zza()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcm;->zzd()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcm;->zze()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 19
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcm;->zzf()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_3

    .line 20
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcm;->zzf()I

    move-result v5

    const v6, 0xffff

    if-le v5, v6, :cond_2

    goto :goto_1

    .line 21
    :cond_2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcm;->zza()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcm;->zzf()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 22
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 23
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v5

    .line 24
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v5

    .line 25
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcm;->zza()Ljava/lang/String;

    move-result-object v6

    .line 26
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcm;->zzf()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "Invalid sampling rate. Event name, sample rate"

    .line 27
    invoke-virtual {v5, v7, v6, v4}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 28
    :cond_5
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/c4;->e:Ljava/util/Map;

    .line 29
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/c4;->f:Ljava/util/Map;

    .line 30
    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/c4;->h:Ljava/util/Map;

    .line 31
    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final y(Ljava/lang/String;[B)Lcom/google/android/gms/internal/measurement/zzcp;
    .locals 7

    const-string v0, "Unable to merge remote config. appId"

    if-eqz p2, :cond_2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcp;->zzj()Lcom/google/android/gms/internal/measurement/zzco;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/android/gms/measurement/internal/d9;->H(Lcom/google/android/gms/internal/measurement/zziw;[B)Lcom/google/android/gms/internal/measurement/zziw;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzco;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzcp;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->v()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v1

    const-string v2, "Parsed config. version, gmp_app_id"

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzcp;->zza()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzcp;->zzb()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 5
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzcp;->zzc()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzcp;->zzd()Ljava/lang/String;

    move-result-object v4

    .line 6
    :cond_1
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzic; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/i3;->w(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcp;->zzk()Lcom/google/android/gms/internal/measurement/zzcp;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p2

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/i3;->w(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcp;->zzk()Lcom/google/android/gms/internal/measurement/zzcp;

    move-result-object p1

    return-object p1

    .line 17
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcp;->zzk()Lcom/google/android/gms/internal/measurement/zzcp;

    move-result-object p1

    return-object p1
.end method

.method private static final z(Lcom/google/android/gms/internal/measurement/zzcp;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzcp;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lx;

    invoke-direct {v0}, Lx;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcp;->zze()Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzcr;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcr;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcr;->zzb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/c4;->w(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->d:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final l(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcp;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/s8;->i()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/n;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/c4;->w(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->g:Ljava/util/Map;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzcp;

    return-object p1
.end method

.method protected final m(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->i:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected final n(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->i:Ljava/util/Map;

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final o(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->g:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final p(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/c4;->l(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcp;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcp;->zzi()Z

    move-result p1

    return p1
.end method

.method protected final q(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/s8;->i()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/n;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/c4;->y(Ljava/lang/String;[B)Lcom/google/android/gms/internal/measurement/zzcp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhs;->zzbu()Lcom/google/android/gms/internal/measurement/zzho;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzco;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/c4;->x(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzco;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/c4;->g:Ljava/util/Map;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcp;

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/c4;->i:Ljava/util/Map;

    .line 7
    invoke-interface {v2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/c4;->d:Ljava/util/Map;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcp;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/c4;->z(Lcom/google/android/gms/internal/measurement/zzcp;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/b9;

    .line 9
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/b9;->X()Lcom/google/android/gms/measurement/internal/i;

    move-result-object p3

    new-instance v2, Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzco;->zzd()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p3, p1, v2}, Lcom/google/android/gms/measurement/internal/i;->u(Ljava/lang/String;Ljava/util/List;)V

    .line 11
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzco;->zze()Lcom/google/android/gms/internal/measurement/zzco;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/measurement/zzcp;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgb;->zzbp()[B

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 13
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/i3;->w(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Unable to serialize reduced-size config. Storing full config instead. appId"

    .line 16
    invoke-virtual {v2, v4, v3, p3}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    :goto_0
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/b9;

    .line 18
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/b9;->X()Lcom/google/android/gms/measurement/internal/i;

    move-result-object p3

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/common/internal/n;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/s8;->i()V

    new-instance v2, Landroid/content/ContentValues;

    .line 21
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "remote_config"

    .line 22
    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 p2, 0x1

    .line 23
    :try_start_1
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/i;->M()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-array v4, p2, [Ljava/lang/String;

    aput-object p1, v4, v1

    const-string v1, "apps"

    const-string v5, "app_id = ?"

    .line 24
    invoke-virtual {v3, v1, v2, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v1

    const-string v2, "Failed to update remote config (got 0). appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/i3;->w(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 27
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 28
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 29
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p3

    .line 30
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p3

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/i3;->w(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Error storing remote config. appId"

    .line 31
    invoke-virtual {p3, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    :cond_1
    :goto_1
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/c4;->g:Ljava/util/Map;

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcp;

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p2
.end method

.method final r(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/c4;->w(Ljava/lang/String;)V

    const-string v0, "measurement.upload.blacklist_internal"

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/c4;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/h9;->E(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    const-string v0, "measurement.upload.blacklist_public"

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/c4;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/h9;->e0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->e:Ljava/util/Map;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 8
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_4

    return v0

    .line 9
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_5
    return v0
.end method

.method final s(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/c4;->w(Ljava/lang/String;)V

    const-string v0, "ecommerce_purchase"

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "purchase"

    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "refund"

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->f:Ljava/util/Map;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 7
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_2

    return v0

    .line 8
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method final t(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/c4;->w(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->h:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method final u(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "measurement.upload.blacklist_internal"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/c4;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final v(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "measurement.upload.blacklist_public"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/c4;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
