.class final Lcom/google/android/gms/analytics/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/google/android/gms/analytics/i;

.field final synthetic c:Lcom/google/android/gms/analytics/q;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/q;Lcom/google/android/gms/analytics/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/l;->c:Lcom/google/android/gms/analytics/q;

    iput-object p2, p0, Lcom/google/android/gms/analytics/l;->b:Lcom/google/android/gms/analytics/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/analytics/l;->b:Lcom/google/android/gms/analytics/i;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/i;->d()Lcom/google/android/gms/analytics/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/l;->b:Lcom/google/android/gms/analytics/i;

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/c;->e(Lcom/google/android/gms/analytics/i;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/l;->c:Lcom/google/android/gms/analytics/q;

    invoke-static {v0}, Lcom/google/android/gms/analytics/q;->f(Lcom/google/android/gms/analytics/q;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/r;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/analytics/r;->zza()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/l;->b:Lcom/google/android/gms/analytics/i;

    const-string v1, "deliver should be called from worker thread"

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/common/internal/n;->g(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/i;->m()Z

    move-result v1

    const-string v2, "Measurement must be submitted"

    .line 5
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/n;->b(ZLjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/i;->f()Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    new-instance v2, Ljava/util/HashSet;

    .line 7
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/analytics/s;

    .line 9
    invoke-interface {v3}, Lcom/google/android/gms/analytics/s;->zzb()Landroid/net/Uri;

    move-result-object v4

    .line 10
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 11
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-interface {v3, v0}, Lcom/google/android/gms/analytics/s;->j(Lcom/google/android/gms/analytics/i;)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method
