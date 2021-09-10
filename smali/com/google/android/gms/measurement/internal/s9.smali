.class final Lcom/google/android/gms/measurement/internal/s9;
.super Lcom/google/android/gms/measurement/internal/r9;
.source "SourceFile"


# instance fields
.field private final g:Lcom/google/android/gms/internal/measurement/zzcf;

.field final synthetic h:Lcom/google/android/gms/measurement/internal/t9;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/t9;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzcf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/s9;->h:Lcom/google/android/gms/measurement/internal/t9;

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/r9;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/s9;->g:Lcom/google/android/gms/internal/measurement/zzcf;

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/s9;->g:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcf;->zzb()I

    move-result v0

    return v0
.end method

.method final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final i(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzdu;Z)Z
    .locals 11

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlo;->zzb()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/s9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/r9;->a:Ljava/lang/String;

    .line 3
    sget-object v2, Lcom/google/android/gms/measurement/internal/v2;->Z:Lcom/google/android/gms/measurement/internal/u2;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/s9;->g:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcf;->zze()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/s9;->g:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcf;->zzf()Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/s9;->g:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcf;->zzh()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v2, 0x0

    if-eqz p4, :cond_3

    if-nez v1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/s9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->v()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p1

    iget p2, p0, Lcom/google/android/gms/measurement/internal/r9;->b:I

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/s9;->g:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 11
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcf;->zza()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/s9;->g:Lcom/google/android/gms/internal/measurement/zzcf;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcf;->zzb()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_2
    const-string p3, "Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    .line 12
    invoke-virtual {p1, p3, p2, v2}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v4

    :cond_3
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/s9;->g:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 13
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcf;->zzd()Lcom/google/android/gms/internal/measurement/zzby;

    move-result-object v6

    .line 14
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzby;->zzf()Z

    move-result v7

    .line 15
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdu;->zzf()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 16
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzby;->zzc()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/s9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 17
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v6

    .line 18
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/s9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 19
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v7

    .line 20
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdu;->zzc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/d3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No number filter for long property. property"

    .line 21
    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 22
    :cond_4
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdu;->zzg()J

    move-result-wide v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzby;->zzd()Lcom/google/android/gms/internal/measurement/zzcd;

    move-result-object v2

    invoke-static {v8, v9, v2}, Lcom/google/android/gms/measurement/internal/r9;->f(JLcom/google/android/gms/internal/measurement/zzcd;)Ljava/lang/Boolean;

    move-result-object v2

    .line 23
    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/r9;->d(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_2

    .line 24
    :cond_5
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdu;->zzh()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 25
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzby;->zzc()Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/s9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 26
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v6

    .line 27
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/s9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 28
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v7

    .line 29
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdu;->zzc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/d3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No number filter for double property. property"

    .line 30
    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 31
    :cond_6
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdu;->zzi()D

    move-result-wide v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzby;->zzd()Lcom/google/android/gms/internal/measurement/zzcd;

    move-result-object v6

    .line 32
    :try_start_0
    new-instance v10, Ljava/math/BigDecimal;

    .line 33
    invoke-direct {v10, v8, v9}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {v8, v9}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v8

    invoke-static {v10, v6, v8, v9}, Lcom/google/android/gms/measurement/internal/r9;->h(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzcd;D)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :catch_0
    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/r9;->d(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_2

    .line 35
    :cond_7
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdu;->zzd()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 36
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzby;->zza()Z

    move-result v8

    if-nez v8, :cond_a

    .line 37
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzby;->zzc()Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/s9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 38
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v6

    .line 39
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/s9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 40
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v7

    .line 41
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdu;->zzc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/d3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No string or number filter defined. property"

    .line 42
    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 43
    :cond_8
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdu;->zze()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/d9;->A(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 44
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdu;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzby;->zzd()Lcom/google/android/gms/internal/measurement/zzcd;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/google/android/gms/measurement/internal/r9;->g(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcd;)Ljava/lang/Boolean;

    move-result-object v2

    .line 45
    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/r9;->d(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_2

    :cond_9
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/s9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 46
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v6

    .line 47
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/s9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 48
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v7

    .line 49
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdu;->zzc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/d3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 50
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdu;->zze()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Invalid user property value for Numeric number filter. property, value"

    .line 51
    invoke-virtual {v6, v9, v7, v8}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 52
    :cond_a
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdu;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzby;->zzb()Lcom/google/android/gms/internal/measurement/zzck;

    move-result-object v6

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/s9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 53
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v8

    .line 54
    invoke-static {v2, v6, v8}, Lcom/google/android/gms/measurement/internal/r9;->e(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzck;Lcom/google/android/gms/measurement/internal/i3;)Ljava/lang/Boolean;

    move-result-object v2

    .line 55
    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/r9;->d(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_2

    :cond_b
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/s9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 56
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v6

    .line 57
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/s9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 58
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v7

    .line 59
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdu;->zzc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/d3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "User property has no value, property"

    .line 60
    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    :goto_2
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/s9;->h:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 62
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v6

    .line 63
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/i3;->v()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v6

    if-nez v2, :cond_c

    const-string v7, "null"

    goto :goto_3

    :cond_c
    move-object v7, v2

    :goto_3
    const-string v8, "Property filter result"

    .line 64
    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v2, :cond_d

    return v5

    .line 65
    :cond_d
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/r9;->c:Ljava/lang/Boolean;

    if-eqz v3, :cond_f

    .line 66
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_4

    :cond_e
    return v4

    :cond_f
    :goto_4
    if-eqz p4, :cond_10

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/s9;->g:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 67
    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzcf;->zze()Z

    move-result p4

    if-eqz p4, :cond_11

    :cond_10
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/r9;->d:Ljava/lang/Boolean;

    .line 68
    :cond_11
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_15

    if-eqz v1, :cond_15

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdu;->zza()Z

    move-result p4

    if-eqz p4, :cond_15

    .line 69
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdu;->zzb()J

    move-result-wide p3

    if-eqz p1, :cond_12

    .line 70
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    :cond_12
    if-eqz v0, :cond_13

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/s9;->g:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 71
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcf;->zze()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/s9;->g:Lcom/google/android/gms/internal/measurement/zzcf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcf;->zzf()Z

    move-result p1

    if-nez p1, :cond_13

    if-eqz p2, :cond_13

    .line 72
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    :cond_13
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/s9;->g:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 73
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcf;->zzf()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 74
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/r9;->f:Ljava/lang/Long;

    goto :goto_5

    .line 75
    :cond_14
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/r9;->e:Ljava/lang/Long;

    :cond_15
    :goto_5
    return v4
.end method
