.class public final Lcom/google/android/gms/analytics/d;
.super Lcom/google/android/gms/internal/gtm/zzbr;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/analytics/s;


# static fields
.field private static e:Ljava/text/DecimalFormat;


# instance fields
.field private final b:Lcom/google/android/gms/internal/gtm/zzbv;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzbv;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/n;->e(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/analytics/d;->b:Lcom/google/android/gms/internal/gtm/zzbv;

    iput-object p2, p0, Lcom/google/android/gms/analytics/d;->c:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/analytics/d;->o(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/analytics/d;->d:Landroid/net/Uri;

    return-void
.end method

.method static L(D)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/google/android/gms/analytics/d;->e:Ljava/text/DecimalFormat;

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.######"

    .line 1
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/analytics/d;->e:Ljava/text/DecimalFormat;

    :cond_0
    sget-object v0, Lcom/google/android/gms/analytics/d;->e:Ljava/text/DecimalFormat;

    .line 2
    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static S(Lcom/google/android/gms/analytics/i;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/analytics/i;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-class v1, Lcom/google/android/gms/internal/gtm/zzaz;

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/i;->c(Ljava/lang/Class;)Lcom/google/android/gms/analytics/k;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzaz;

    const-wide/16 v2, 0x0

    const-string v4, "1"

    const/4 v5, 0x0

    if-eqz v1, :cond_7

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzaz;->zzd()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 6
    check-cast v7, Ljava/lang/String;

    .line 7
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_1

    .line 8
    :cond_2
    instance-of v8, v7, Ljava/lang/Double;

    if-eqz v8, :cond_3

    .line 9
    check-cast v7, Ljava/lang/Double;

    .line 10
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    cmpl-double v10, v8, v2

    if-eqz v10, :cond_4

    .line 11
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/google/android/gms/analytics/d;->L(D)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 12
    :cond_3
    instance-of v8, v7, Ljava/lang/Boolean;

    if-eqz v8, :cond_5

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v7, v8, :cond_4

    move-object v7, v4

    goto :goto_2

    :cond_4
    :goto_1
    move-object v7, v5

    goto :goto_2

    .line 13
    :cond_5
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :cond_6
    :goto_2
    if-eqz v7, :cond_0

    .line 14
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_7
    const-class v1, Lcom/google/android/gms/internal/gtm/zzbe;

    .line 16
    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/i;->c(Ljava/lang/Class;)Lcom/google/android/gms/analytics/k;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzbe;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbe;->zzf()Ljava/lang/String;

    move-result-object v6

    const-string v7, "t"

    .line 17
    invoke-static {v0, v7, v6}, Lcom/google/android/gms/analytics/d;->V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbe;->zze()Ljava/lang/String;

    move-result-object v6

    const-string v7, "cid"

    .line 18
    invoke-static {v0, v7, v6}, Lcom/google/android/gms/analytics/d;->V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbe;->zzg()Ljava/lang/String;

    move-result-object v6

    const-string v7, "uid"

    .line 19
    invoke-static {v0, v7, v6}, Lcom/google/android/gms/analytics/d;->V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "sc"

    .line 20
    invoke-static {v0, v6, v5}, Lcom/google/android/gms/analytics/d;->V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbe;->zzo()Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "ni"

    .line 21
    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbe;->zzd()Ljava/lang/String;

    move-result-object v6

    const-string v7, "adid"

    .line 23
    invoke-static {v0, v7, v6}, Lcom/google/android/gms/analytics/d;->V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbe;->zzn()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "ate"

    .line 24
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_9
    const-class v1, Lcom/google/android/gms/internal/gtm/zzbf;

    .line 26
    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/i;->c(Ljava/lang/Class;)Lcom/google/android/gms/analytics/k;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzbf;

    if-eqz v1, :cond_b

    const-string v4, "cd"

    .line 27
    invoke-static {v0, v4, v5}, Lcom/google/android/gms/analytics/d;->V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbf;->zzd()I

    move-result v1

    int-to-double v6, v1

    cmpl-double v1, v6, v2

    if-eqz v1, :cond_a

    .line 28
    invoke-static {v6, v7}, Lcom/google/android/gms/analytics/d;->L(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "a"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-string v1, "dr"

    .line 29
    invoke-static {v0, v1, v5}, Lcom/google/android/gms/analytics/d;->V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const-class v1, Lcom/google/android/gms/internal/gtm/zzbc;

    .line 30
    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/i;->c(Ljava/lang/Class;)Lcom/google/android/gms/analytics/k;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzbc;

    if-eqz v1, :cond_c

    const-string v1, "ec"

    .line 31
    invoke-static {v0, v1, v5}, Lcom/google/android/gms/analytics/d;->V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ea"

    .line 32
    invoke-static {v0, v1, v5}, Lcom/google/android/gms/analytics/d;->V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "el"

    .line 33
    invoke-static {v0, v1, v5}, Lcom/google/android/gms/analytics/d;->V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const-class v1, Lcom/google/android/gms/internal/gtm/zzaw;

    .line 34
    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/i;->c(Ljava/lang/Class;)Lcom/google/android/gms/analytics/k;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzaw;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzaw;->zzl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cn"

    .line 35
    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/d;->V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzaw;->zzm()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cs"

    .line 36
    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/d;->V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzaw;->zzk()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cm"

    .line 37
    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/d;->V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzaw;->zzj()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ck"

    .line 38
    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/d;->V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzaw;->zzf()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cc"

    .line 39
    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/d;->V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzaw;->zzi()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ci"

    .line 40
    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/d;->V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzaw;->zze()Ljava/lang/String;

    move-result-object v2

    const-string v3, "anid"

    .line 41
    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/d;->V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzaw;->zzh()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gclid"

    .line 42
    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/d;->V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzaw;->zzg()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dclid"

    .line 43
    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/d;->V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzaw;->zzd()Ljava/lang/String;

    move-result-object v1

    const-string v2, "aclid"

    .line 44
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/analytics/d;->V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    const-class v1, Lcom/google/android/gms/internal/gtm/zzbd;

    .line 45
    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/i;->c(Ljava/lang/Class;)Lcom/google/android/gms/analytics/k;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzbd;

    if-eqz v1, :cond_e

    const-string v1, "exd"

    .line 46
    invoke-static {v0, v1, v5}, Lcom/google/android/gms/analytics/d;->V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const-class v1, Lcom/google/android/gms/internal/gtm/zzbg;

    .line 47
    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/i;->c(Ljava/lang/Class;)Lcom/google/android/gms/analytics/k;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzbg;

    if-eqz v1, :cond_f

    const-string v1, "sn"

    .line 48
    invoke-static {v0, v1, v5}, Lcom/google/android/gms/analytics/d;->V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sa"

    .line 49
    invoke-static {v0, v1, v5}, Lcom/google/android/gms/analytics/d;->V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "st"

    .line 50
    invoke-static {v0, v1, v5}, Lcom/google/android/gms/analytics/d;->V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const-class v1, Lcom/google/android/gms/internal/gtm/zzbh;

    .line 51
    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/i;->c(Ljava/lang/Class;)Lcom/google/android/gms/analytics/k;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzbh;

    if-eqz v1, :cond_10

    const-string v1, "utv"

    .line 52
    invoke-static {v0, v1, v5}, Lcom/google/android/gms/analytics/d;->V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "utc"

    .line 53
    invoke-static {v0, v1, v5}, Lcom/google/android/gms/analytics/d;->V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "utl"

    .line 54
    invoke-static {v0, v1, v5}, Lcom/google/android/gms/analytics/d;->V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    const-class v1, Lcom/google/android/gms/internal/gtm/zzax;

    .line 55
    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/i;->c(Ljava/lang/Class;)Lcom/google/android/gms/analytics/k;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzax;

    if-eqz v1, :cond_12

    .line 56
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzax;->zzd()Ljava/util/Map;

    move-result-object v1

    .line 57
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 58
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/analytics/f;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 60
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_12
    const-class v1, Lcom/google/android/gms/internal/gtm/zzay;

    .line 61
    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/i;->c(Ljava/lang/Class;)Lcom/google/android/gms/analytics/k;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzay;

    if-eqz v1, :cond_14

    .line 62
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzay;->zzd()Ljava/util/Map;

    move-result-object v1

    .line 63
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 64
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/analytics/f;->b(I)Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 66
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/analytics/d;->L(D)Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_14
    const-class v1, Lcom/google/android/gms/internal/gtm/zzbb;

    .line 68
    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/i;->c(Ljava/lang/Class;)Lcom/google/android/gms/analytics/k;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzbb;

    if-eqz v1, :cond_1a

    .line 69
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbb;->zze()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltv;

    .line 70
    invoke-static {v4}, Lcom/google/android/gms/analytics/f;->f(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ltv;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    add-int/2addr v4, v3

    goto :goto_5

    .line 71
    :cond_15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbb;->zzd()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x1

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsv;

    .line 72
    invoke-static {v4}, Lcom/google/android/gms/analytics/f;->e(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsv;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    add-int/2addr v4, v3

    goto :goto_6

    :cond_16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbb;->zzf()Ljava/util/Map;

    move-result-object v1

    .line 73
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 74
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 75
    invoke-static {v2}, Lcom/google/android/gms/analytics/f;->c(I)Ljava/lang/String;

    move-result-object v6

    .line 76
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x1

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsv;

    .line 77
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Lcom/google/android/gms/analytics/f;->d(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_17

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_9

    :cond_17
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v9, v10

    :goto_9
    invoke-virtual {v8, v9}, Lsv;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 78
    :cond_18
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 79
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "nm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1a
    const-class v1, Lcom/google/android/gms/internal/gtm/zzba;

    .line 80
    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/i;->c(Ljava/lang/Class;)Lcom/google/android/gms/analytics/k;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzba;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzba;->zzd()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ul"

    .line 81
    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/d;->V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v1, Lcom/google/android/gms/internal/gtm/zzba;->zza:I

    iget v1, v1, Lcom/google/android/gms/internal/gtm/zzba;->zzb:I

    if-lez v2, :cond_1b

    if-lez v1, :cond_1b

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x17

    .line 82
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sr"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    const-class v1, Lcom/google/android/gms/internal/gtm/zzav;

    .line 83
    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/i;->c(Ljava/lang/Class;)Lcom/google/android/gms/analytics/k;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzav;

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzav;->zzf()Ljava/lang/String;

    move-result-object v1

    const-string v2, "an"

    .line 84
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/analytics/d;->V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzav;->zzd()Ljava/lang/String;

    move-result-object v1

    const-string v2, "aid"

    .line 85
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/analytics/d;->V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzav;->zze()Ljava/lang/String;

    move-result-object v1

    const-string v2, "aiid"

    .line 86
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/analytics/d;->V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzav;->zzg()Ljava/lang/String;

    move-result-object p0

    const-string v1, "av"

    .line 87
    invoke-static {v0, v1, p0}, Lcom/google/android/gms/analytics/d;->V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return-object v0
.end method

.method private static V(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static o(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/n;->e(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroid/net/Uri$Builder;

    .line 2
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "uri"

    .line 3
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "google-analytics.com"

    .line 4
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 5
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 6
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final j(Lcom/google/android/gms/analytics/i;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/i;->m()Z

    move-result v0

    const-string v1, "Can\'t deliver not submitted measurement"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->b(ZLjava/lang/Object;)V

    const-string v0, "deliver should be called on worker thread"

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->g(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/analytics/i;

    .line 4
    invoke-direct {v0, p1}, Lcom/google/android/gms/analytics/i;-><init>(Lcom/google/android/gms/analytics/i;)V

    const-class v1, Lcom/google/android/gms/internal/gtm/zzbe;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/i;->b(Ljava/lang/Class;)Lcom/google/android/gms/analytics/k;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzbe;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbe;->zzf()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzz()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object p1

    invoke-static {v0}, Lcom/google/android/gms/analytics/d;->S(Lcom/google/android/gms/analytics/i;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "Ignoring measurement without type"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/gtm/zzfb;->zzc(Ljava/util/Map;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbe;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzz()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object p1

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/analytics/d;->S(Lcom/google/android/gms/analytics/i;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "Ignoring measurement without client id"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/gtm/zzfb;->zzc(Ljava/util/Map;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/analytics/d;->b:Lcom/google/android/gms/internal/gtm/zzbv;

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzbv;->zzc()Lcom/google/android/gms/analytics/a;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbe;->zze()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/gtm/zzfs;->zzj(DLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v0, "Sampling enabled. Hit sampled out. sampling rate"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzG(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 14
    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/analytics/d;->S(Lcom/google/android/gms/analytics/i;)Ljava/util/Map;

    move-result-object v3

    .line 15
    move-object v0, v3

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "v"

    const-string v4, "1"

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v2, Lcom/google/android/gms/internal/gtm/zzbt;->zzb:Ljava/lang/String;

    const-string v4, "_v"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/analytics/d;->c:Ljava/lang/String;

    const-string v4, "tid"

    .line 17
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/analytics/d;->b:Lcom/google/android/gms/internal/gtm/zzbv;

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzbv;->zzc()Lcom/google/android/gms/analytics/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/a;->g()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ", "

    .line 22
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 24
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 26
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Dry run is enabled. GoogleAnalytics would have sent"

    .line 27
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzN(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_5
    new-instance v12, Ljava/util/HashMap;

    .line 28
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbe;->zzg()Ljava/lang/String;

    move-result-object v2

    const-string v4, "uid"

    invoke-static {v12, v4, v2}, Lcom/google/android/gms/internal/gtm/zzfs;->zzg(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-class v2, Lcom/google/android/gms/internal/gtm/zzav;

    .line 30
    invoke-virtual {p1, v2}, Lcom/google/android/gms/analytics/i;->c(Ljava/lang/Class;)Lcom/google/android/gms/analytics/k;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzav;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzav;->zzf()Ljava/lang/String;

    move-result-object v4

    const-string v5, "an"

    .line 31
    invoke-static {v12, v5, v4}, Lcom/google/android/gms/internal/gtm/zzfs;->zzg(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzav;->zzd()Ljava/lang/String;

    move-result-object v4

    const-string v5, "aid"

    .line 32
    invoke-static {v12, v5, v4}, Lcom/google/android/gms/internal/gtm/zzfs;->zzg(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzav;->zzg()Ljava/lang/String;

    move-result-object v4

    const-string v5, "av"

    .line 33
    invoke-static {v12, v5, v4}, Lcom/google/android/gms/internal/gtm/zzfs;->zzg(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzav;->zze()Ljava/lang/String;

    move-result-object v2

    const-string v4, "aiid"

    .line 34
    invoke-static {v12, v4, v2}, Lcom/google/android/gms/internal/gtm/zzfs;->zzg(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    new-instance v2, Lcom/google/android/gms/internal/gtm/zzbx;

    const-wide/16 v5, 0x0

    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbe;->zze()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/analytics/d;->c:Ljava/lang/String;

    .line 36
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbe;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v9, v1, 0x1

    const-wide/16 v10, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/internal/gtm/zzbx;-><init>(JLjava/lang/String;Ljava/lang/String;ZJLjava/util/Map;)V

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzs()Lcom/google/android/gms/internal/gtm/zzbq;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gtm/zzbq;->zza(Lcom/google/android/gms/internal/gtm/zzbx;)J

    move-result-wide v1

    .line 38
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_s"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzex;

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzz()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/i;->a()J

    move-result-wide v4

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/gtm/zzex;-><init>(Lcom/google/android/gms/internal/gtm/zzbr;Ljava/util/Map;JZ)V

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzs()Lcom/google/android/gms/internal/gtm/zzbq;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzbq;->zzh(Lcom/google/android/gms/internal/gtm/zzex;)V

    return-void
.end method

.method public final zzb()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/d;->d:Landroid/net/Uri;

    return-object v0
.end method
