.class final Lcom/google/android/gms/measurement/internal/q9;
.super Lcom/google/android/gms/measurement/internal/r9;
.source "SourceFile"


# instance fields
.field private final g:Lcom/google/android/gms/internal/measurement/zzbw;

.field final synthetic h:Lcom/google/android/gms/measurement/internal/t9;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/t9;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzbw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/r9;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/q9;->g:Lcom/google/android/gms/internal/measurement/zzbw;

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q9;->g:Lcom/google/android/gms/internal/measurement/zzbw;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb()I

    move-result v0

    return v0
.end method

.method final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q9;->g:Lcom/google/android/gms/internal/measurement/zzbw;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw;->zzg()Z

    move-result v0

    return v0
.end method

.method final i(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzdb;JLcom/google/android/gms/measurement/internal/o;Z)Z
    .locals 15

    move-object v0, p0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlo;->zzb()Z

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/r9;->a:Ljava/lang/String;

    .line 3
    sget-object v3, Lcom/google/android/gms/measurement/internal/v2;->b0:Lcom/google/android/gms/measurement/internal/u2;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/q9;->g:Lcom/google/android/gms/internal/measurement/zzbw;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzm()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v2, p6

    iget-wide v2, v2, Lcom/google/android/gms/measurement/internal/o;->e:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p4

    :goto_0
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 5
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/i3;->y()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 7
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 8
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v4

    .line 9
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/i3;->v()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v4

    iget v6, v0, Lcom/google/android/gms/measurement/internal/r9;->b:I

    .line 10
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/q9;->g:Lcom/google/android/gms/internal/measurement/zzbw;

    .line 11
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw;->zza()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/q9;->g:Lcom/google/android/gms/internal/measurement/zzbw;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_1

    :cond_1
    move-object v7, v5

    :goto_1
    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 12
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v8

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/q9;->g:Lcom/google/android/gms/internal/measurement/zzbw;

    .line 13
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzbw;->zzc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/d3;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Evaluating filter. audience, filter, event"

    .line 14
    invoke-virtual {v4, v9, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/g3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 15
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v4

    .line 16
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/i3;->v()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v4

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/b9;

    .line 17
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/b9;->c0()Lcom/google/android/gms/measurement/internal/d9;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/q9;->g:Lcom/google/android/gms/internal/measurement/zzbw;

    .line 18
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/d9;->x(Lcom/google/android/gms/internal/measurement/zzbw;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Filter definition"

    invoke-virtual {v4, v7, v6}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/q9;->g:Lcom/google/android/gms/internal/measurement/zzbw;

    .line 19
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbw;->zza()Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_2b

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/q9;->g:Lcom/google/android/gms/internal/measurement/zzbw;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb()I

    move-result v4

    const/16 v7, 0x100

    if-le v4, v7, :cond_3

    goto/16 :goto_f

    .line 20
    :cond_3
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/q9;->g:Lcom/google/android/gms/internal/measurement/zzbw;

    .line 21
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbw;->zzi()Z

    move-result v4

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/q9;->g:Lcom/google/android/gms/internal/measurement/zzbw;

    .line 22
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw;->zzj()Z

    move-result v7

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/q9;->g:Lcom/google/android/gms/internal/measurement/zzbw;

    .line 23
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbw;->zzm()Z

    move-result v8

    const/4 v9, 0x1

    if-nez v4, :cond_5

    if-nez v7, :cond_5

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v4, 0x1

    :goto_3
    if-eqz p7, :cond_7

    if-nez v4, :cond_7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->v()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v1

    iget v2, v0, Lcom/google/android/gms/measurement/internal/r9;->b:I

    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/q9;->g:Lcom/google/android/gms/internal/measurement/zzbw;

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbw;->zza()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/q9;->g:Lcom/google/android/gms/internal/measurement/zzbw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_6
    const-string v3, "Event filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    .line 28
    invoke-virtual {v1, v3, v2, v5}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v9

    :cond_7
    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/q9;->g:Lcom/google/android/gms/internal/measurement/zzbw;

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzdb;->zzd()Ljava/lang/String;

    move-result-object v8

    .line 29
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw;->zzg()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 30
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw;->zzh()Lcom/google/android/gms/internal/measurement/zzcd;

    move-result-object v10

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/measurement/internal/r9;->f(JLcom/google/android/gms/internal/measurement/zzcd;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_8

    goto/16 :goto_b

    .line 31
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_9

    .line 32
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_b

    :cond_9
    new-instance v2, Ljava/util/HashSet;

    .line 33
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 34
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw;->zzd()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzby;

    .line 35
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzby;->zzh()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 36
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 38
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v3

    .line 39
    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/d3;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "null or empty param name in filter. event"

    .line 40
    invoke-virtual {v2, v7, v3}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 41
    :cond_a
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzby;->zzh()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 42
    :cond_b
    new-instance v3, Lx;

    invoke-direct {v3}, Lx;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzdb;->zza()Ljava/util/List;

    move-result-object v10

    .line 43
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_c
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzdf;

    .line 44
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdf;->zzb()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 45
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdf;->zze()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 46
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdf;->zzb()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdf;->zze()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdf;->zzf()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    goto :goto_6

    :cond_d
    move-object v11, v5

    :goto_6
    invoke-virtual {v3, v12, v11}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 47
    :cond_e
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdf;->zzi()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 48
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdf;->zzb()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdf;->zzi()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdf;->zzj()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    goto :goto_7

    :cond_f
    move-object v11, v5

    .line 49
    :goto_7
    invoke-virtual {v3, v12, v11}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 50
    :cond_10
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdf;->zzc()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 51
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdf;->zzb()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdf;->zzd()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v12, v11}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_11
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 52
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 54
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v3

    .line 55
    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/d3;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 56
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v7

    .line 57
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdf;->zzb()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/d3;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Unknown value for param. event, param"

    .line 58
    invoke-virtual {v2, v8, v3, v7}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 59
    :cond_12
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw;->zzd()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzby;

    .line 60
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzby;->zze()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzby;->zzf()Z

    move-result v10

    if-eqz v10, :cond_14

    const/4 v10, 0x1

    goto :goto_8

    :cond_14
    const/4 v10, 0x0

    .line 61
    :goto_8
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzby;->zzh()Ljava/lang/String;

    move-result-object v11

    .line 62
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_15

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 63
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 65
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v3

    .line 66
    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/d3;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "Event has empty param name. event"

    .line 67
    invoke-virtual {v2, v7, v3}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 68
    :cond_15
    invoke-virtual {v3, v11, v5}, Le0;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 69
    instance-of v13, v12, Ljava/lang/Long;

    if-eqz v13, :cond_18

    .line 70
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzby;->zzc()Z

    move-result v13

    if-nez v13, :cond_16

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 71
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v2

    .line 72
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 73
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v3

    .line 74
    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/d3;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 75
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v7

    .line 76
    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/d3;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No number filter for long param. event, param"

    .line 77
    invoke-virtual {v2, v8, v3, v7}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 78
    :cond_16
    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzby;->zzd()Lcom/google/android/gms/internal/measurement/zzcd;

    move-result-object v7

    invoke-static {v11, v12, v7}, Lcom/google/android/gms/measurement/internal/r9;->f(JLcom/google/android/gms/internal/measurement/zzcd;)Ljava/lang/Boolean;

    move-result-object v7

    if-nez v7, :cond_17

    goto/16 :goto_b

    .line 79
    :cond_17
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-ne v7, v10, :cond_13

    .line 80
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_b

    .line 81
    :cond_18
    instance-of v13, v12, Ljava/lang/Double;

    if-eqz v13, :cond_1b

    .line 82
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzby;->zzc()Z

    move-result v13

    if-nez v13, :cond_19

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 83
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v2

    .line 84
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 85
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v3

    .line 86
    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/d3;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 87
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v7

    .line 88
    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/d3;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No number filter for double param. event, param"

    .line 89
    invoke-virtual {v2, v8, v3, v7}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 90
    :cond_19
    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzby;->zzd()Lcom/google/android/gms/internal/measurement/zzcd;

    move-result-object v7

    .line 91
    :try_start_0
    new-instance v13, Ljava/math/BigDecimal;

    .line 92
    invoke-direct {v13, v11, v12}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {v11, v12}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v11

    invoke-static {v13, v7, v11, v12}, Lcom/google/android/gms/measurement/internal/r9;->h(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzcd;D)Ljava/lang/Boolean;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-object v7, v5

    :goto_9
    if-nez v7, :cond_1a

    goto/16 :goto_b

    .line 93
    :cond_1a
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-ne v7, v10, :cond_13

    .line 94
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_b

    .line 95
    :cond_1b
    instance-of v13, v12, Ljava/lang/String;

    if-eqz v13, :cond_20

    .line 96
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzby;->zza()Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 97
    check-cast v12, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzby;->zzb()Lcom/google/android/gms/internal/measurement/zzck;

    move-result-object v7

    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 98
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v11

    .line 99
    invoke-static {v12, v7, v11}, Lcom/google/android/gms/measurement/internal/r9;->e(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzck;Lcom/google/android/gms/measurement/internal/i3;)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_a

    .line 100
    :cond_1c
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzby;->zzc()Z

    move-result v13

    if-eqz v13, :cond_1f

    .line 101
    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/d9;->A(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 102
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzby;->zzd()Lcom/google/android/gms/internal/measurement/zzcd;

    move-result-object v7

    invoke-static {v12, v7}, Lcom/google/android/gms/measurement/internal/r9;->g(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcd;)Ljava/lang/Boolean;

    move-result-object v7

    :goto_a
    if-nez v7, :cond_1d

    goto/16 :goto_b

    .line 103
    :cond_1d
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-ne v7, v10, :cond_13

    .line 104
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_b

    .line 105
    :cond_1e
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 106
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v2

    .line 107
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 108
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v3

    .line 109
    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/d3;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 110
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v7

    .line 111
    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/d3;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Invalid param value for number filter. event, param"

    .line 112
    invoke-virtual {v2, v8, v3, v7}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_1f
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 113
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v2

    .line 114
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 115
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v3

    .line 116
    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/d3;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 117
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v7

    .line 118
    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/d3;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No filter for String param. event, param"

    .line 119
    invoke-virtual {v2, v8, v3, v7}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    :cond_20
    if-nez v12, :cond_21

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 120
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v2

    .line 121
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->v()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 122
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v3

    .line 123
    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/d3;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 124
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v5

    .line 125
    invoke-virtual {v5, v11}, Lcom/google/android/gms/measurement/internal/d3;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "Missing param for filter. event, param"

    .line 126
    invoke-virtual {v2, v7, v3, v5}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_b

    :cond_21
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 128
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 130
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v3

    .line 131
    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/d3;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 132
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v7

    .line 133
    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/d3;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Unknown param type. event, param"

    .line 134
    invoke-virtual {v2, v8, v3, v7}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    .line 135
    :cond_22
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 136
    :goto_b
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 137
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v2

    .line 138
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->v()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v2

    if-nez v5, :cond_23

    const-string v3, "null"

    goto :goto_c

    :cond_23
    move-object v3, v5

    :goto_c
    const-string v7, "Event filter result"

    invoke-virtual {v2, v7, v3}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v5, :cond_24

    return v6

    .line 139
    :cond_24
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/r9;->c:Ljava/lang/Boolean;

    .line 140
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_25

    return v9

    :cond_25
    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/r9;->d:Ljava/lang/Boolean;

    if-eqz v4, :cond_2a

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzdb;->zze()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzdb;->zzf()J

    move-result-wide v2

    .line 141
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/q9;->g:Lcom/google/android/gms/internal/measurement/zzbw;

    .line 142
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbw;->zzj()Z

    move-result v3

    if-eqz v3, :cond_28

    if-eqz v1, :cond_27

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/q9;->g:Lcom/google/android/gms/internal/measurement/zzbw;

    .line 143
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw;->zzg()Z

    move-result v1

    if-nez v1, :cond_26

    goto :goto_d

    :cond_26
    move-object/from16 v2, p1

    :cond_27
    :goto_d
    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/r9;->f:Ljava/lang/Long;

    goto :goto_e

    :cond_28
    if-eqz v1, :cond_29

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/q9;->g:Lcom/google/android/gms/internal/measurement/zzbw;

    .line 144
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw;->zzg()Z

    move-result v1

    if-eqz v1, :cond_29

    move-object/from16 v2, p2

    :cond_29
    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/r9;->e:Ljava/lang/Long;

    :cond_2a
    :goto_e
    return v9

    .line 145
    :cond_2b
    :goto_f
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/q9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 146
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/r9;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/i3;->w(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/q9;->g:Lcom/google/android/gms/internal/measurement/zzbw;

    .line 148
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbw;->zza()Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/q9;->g:Lcom/google/android/gms/internal/measurement/zzbw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_2c
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid event filter ID. appId, id"

    .line 149
    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v6
.end method
