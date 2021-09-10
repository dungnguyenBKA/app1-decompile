.class public Lcom/google/android/gms/analytics/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/c<",
        "Lcom/google/android/gms/analytics/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/analytics/q;

.field protected final b:Lcom/google/android/gms/analytics/i;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/analytics/j;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/gtm/zzbv;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzbv;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbv;->zzd()Lcom/google/android/gms/analytics/q;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbv;->zzr()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "null reference"

    .line 3
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/analytics/c;->a:Lcom/google/android/gms/analytics/q;

    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/c;->c:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/analytics/i;

    .line 6
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/analytics/i;-><init>(Lcom/google/android/gms/analytics/c;Lcom/google/android/gms/common/util/d;)V

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/i;->h()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/c;->b:Lcom/google/android/gms/analytics/i;

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/analytics/c;->d:Lcom/google/android/gms/internal/gtm/zzbv;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/analytics/i;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->b:Lcom/google/android/gms/analytics/i;

    new-instance v1, Lcom/google/android/gms/analytics/i;

    .line 1
    invoke-direct {v1, v0}, Lcom/google/android/gms/analytics/i;-><init>(Lcom/google/android/gms/analytics/i;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->d:Lcom/google/android/gms/internal/gtm/zzbv;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzh()Lcom/google/android/gms/internal/gtm/zzcf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcf;->zza()Lcom/google/android/gms/internal/gtm/zzav;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/i;->g(Lcom/google/android/gms/analytics/k;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->d:Lcom/google/android/gms/internal/gtm/zzbv;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzk()Lcom/google/android/gms/internal/gtm/zzcx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcx;->zza()Lcom/google/android/gms/internal/gtm/zzba;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/i;->g(Lcom/google/android/gms/analytics/k;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->c:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/j;

    .line 6
    invoke-interface {v2}, Lcom/google/android/gms/analytics/j;->zza()V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method final b()Lcom/google/android/gms/internal/gtm/zzbv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->d:Lcom/google/android/gms/internal/gtm/zzbv;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/n;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/analytics/d;->o(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/c;->b:Lcom/google/android/gms/analytics/i;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/i;->f()Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/s;

    invoke-interface {v2}, Lcom/google/android/gms/analytics/s;->zzb()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->b:Lcom/google/android/gms/analytics/i;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/i;->f()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/d;

    iget-object v2, p0, Lcom/google/android/gms/analytics/c;->d:Lcom/google/android/gms/internal/gtm/zzbv;

    .line 9
    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/analytics/d;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/c;->e:Z

    return-void
.end method

.method protected final e(Lcom/google/android/gms/analytics/i;)V
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/gtm/zzbe;

    .line 1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/i;->b(Ljava/lang/Class;)Lcom/google/android/gms/analytics/k;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzbe;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbe;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->d:Lcom/google/android/gms/internal/gtm/zzbv;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzi()Lcom/google/android/gms/internal/gtm/zzcn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcn;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzbe;->zzj(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/c;->e:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbe;->zzd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->d:Lcom/google/android/gms/internal/gtm/zzbv;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zze()Lcom/google/android/gms/internal/gtm/zzbi;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbi;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/gtm/zzbe;->zzi(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbi;->zzb()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzbe;->zzh(Z)V

    :cond_1
    return-void
.end method

.method protected final f()Lcom/google/android/gms/analytics/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->a:Lcom/google/android/gms/analytics/q;

    return-object v0
.end method
