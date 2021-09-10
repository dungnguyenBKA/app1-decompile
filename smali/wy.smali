.class public Lwy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvy;


# static fields
.field private static volatile c:Lvy;


# instance fields
.field final a:Lcw;

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcw;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lwy;->a:Lcw;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lwy;->b:Ljava/util/Map;

    return-void
.end method

.method public static d(Lcom/google/firebase/c;Landroid/content/Context;Lu40;)Lvy;
    .locals 5
    .param p0    # Lcom/google/firebase/c;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lu40;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    const-string v0, "null reference"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "null reference"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "null reference"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null reference"

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lwy;->c:Lvy;

    if-nez v0, :cond_2

    const-class v0, Lwy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lwy;->c:Lvy;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    .line 7
    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 8
    invoke-virtual {p0}, Lcom/google/firebase/c;->q()Z

    move-result v2

    if-eqz v2, :cond_0

    const-class v2, Lcom/google/firebase/a;

    sget-object v3, Lxy;->b:Ljava/util/concurrent/Executor;

    .line 9
    sget-object v4, Lyy;->a:Ls40;

    invoke-interface {p2, v2, v3, v4}, Lu40;->a(Ljava/lang/Class;Ljava/util/concurrent/Executor;Ls40;)V

    const-string p2, "dataCollectionDefaultEnabled"

    .line 10
    invoke-virtual {p0}, Lcom/google/firebase/c;->p()Z

    move-result p0

    .line 11
    invoke-virtual {v1, p2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    new-instance p0, Lwy;

    const/4 p2, 0x0

    .line 12
    invoke-static {p1, p2, p2, p2, v1}, Lcom/google/android/gms/internal/measurement/zzbr;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/zzbr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbr;->zzb()Lcw;

    move-result-object p1

    .line 13
    invoke-direct {p0, p1}, Lwy;-><init>(Lcw;)V

    sput-object p0, Lwy;->c:Lvy;

    .line 14
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    sget-object p0, Lwy;->c:Lvy;

    return-object p0
.end method


# virtual methods
.method public a(Z)Ljava/util/Map;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lwy;->a:Lcw;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1, v1, p1}, Lcw;->l(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public b(Lvy$c;)V
    .locals 5
    .param p1    # Lvy$c;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/google/firebase/analytics/connector/internal/b;->d(Lvy$c;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lwy;->a:Lcw;

    .line 2
    new-instance v1, Landroid/os/Bundle;

    .line 3
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v2, p1, Lvy$c;->a:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "origin"

    .line 5
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object v2, p1, Lvy$c;->b:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v3, "name"

    .line 7
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_2
    iget-object v2, p1, Lvy$c;->c:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 9
    invoke-static {v1, v2}, Landroidx/core/app/b;->T0(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 10
    :cond_3
    iget-object v2, p1, Lvy$c;->d:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v3, "trigger_event_name"

    .line 11
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_4
    iget-wide v2, p1, Lvy$c;->e:J

    const-string v4, "trigger_timeout"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 13
    iget-object v2, p1, Lvy$c;->f:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string v3, "timed_out_event_name"

    .line 14
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_5
    iget-object v2, p1, Lvy$c;->g:Landroid/os/Bundle;

    if-eqz v2, :cond_6

    const-string v3, "timed_out_event_params"

    .line 16
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 17
    :cond_6
    iget-object v2, p1, Lvy$c;->h:Ljava/lang/String;

    if-eqz v2, :cond_7

    const-string v3, "triggered_event_name"

    .line 18
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_7
    iget-object v2, p1, Lvy$c;->i:Landroid/os/Bundle;

    if-eqz v2, :cond_8

    const-string v3, "triggered_event_params"

    .line 20
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 21
    :cond_8
    iget-wide v2, p1, Lvy$c;->j:J

    const-string v4, "time_to_live"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 22
    iget-object v2, p1, Lvy$c;->k:Ljava/lang/String;

    if-eqz v2, :cond_9

    const-string v3, "expired_event_name"

    .line 23
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_9
    iget-object v2, p1, Lvy$c;->l:Landroid/os/Bundle;

    if-eqz v2, :cond_a

    const-string v3, "expired_event_params"

    .line 25
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 26
    :cond_a
    iget-wide v2, p1, Lvy$c;->m:J

    const-string v4, "creation_timestamp"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 27
    iget-boolean v2, p1, Lvy$c;->n:Z

    const-string v3, "active"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 28
    iget-wide v2, p1, Lvy$c;->o:J

    const-string p1, "triggered_timestamp"

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 29
    invoke-virtual {v0, v1}, Lcw;->q(Landroid/os/Bundle;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lvy$b;)Lvy$a;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lvy$b;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    const-string v0, "null reference"

    .line 1
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/firebase/analytics/connector/internal/b;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lwy;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lwy;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-object v1

    .line 4
    :cond_2
    iget-object v0, p0, Lwy;->a:Lcw;

    const-string v2, "fiam"

    .line 5
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/google/firebase/analytics/connector/internal/d;

    .line 6
    invoke-direct {v2, v0, p2}, Lcom/google/firebase/analytics/connector/internal/d;-><init>(Lcw;Lvy$b;)V

    goto :goto_2

    :cond_3
    const-string v2, "crash"

    .line 7
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "clx"

    .line 8
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, v1

    goto :goto_2

    :cond_5
    :goto_1
    new-instance v2, Lcom/google/firebase/analytics/connector/internal/f;

    .line 9
    invoke-direct {v2, v0, p2}, Lcom/google/firebase/analytics/connector/internal/f;-><init>(Lcw;Lvy$b;)V

    :goto_2
    if-eqz v2, :cond_6

    .line 10
    iget-object p2, p0, Lwy;->b:Ljava/util/Map;

    .line 11
    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance p2, Lwy$a;

    invoke-direct {p2, p0, p1}, Lwy$a;-><init>(Lwy;Ljava/lang/String;)V

    return-object p2

    :cond_6
    return-object v1
.end method

.method public clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lwy;->a:Lcw;

    const/4 p3, 0x0

    .line 2
    invoke-virtual {p2, p1, p3, p3}, Lcw;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lvy$c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lwy;->a:Lcw;

    .line 2
    invoke-virtual {v1, p1, p2}, Lcw;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 3
    sget v1, Lcom/google/firebase/analytics/connector/internal/b;->g:I

    .line 4
    const-class v1, Ljava/lang/Long;

    const-class v2, Ljava/lang/String;

    const-string v3, "null reference"

    .line 5
    invoke-static {p2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v4, Lvy$c;

    invoke-direct {v4}, Lvy$c;-><init>()V

    const/4 v5, 0x0

    const-string v6, "origin"

    .line 7
    invoke-static {p2, v6, v2, v5}, Landroidx/core/app/b;->U0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 8
    invoke-static {v6, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object v6, v4, Lvy$c;->a:Ljava/lang/String;

    const-string v6, "name"

    .line 10
    invoke-static {p2, v6, v2, v5}, Landroidx/core/app/b;->U0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 11
    invoke-static {v6, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iput-object v6, v4, Lvy$c;->b:Ljava/lang/String;

    const-class v3, Ljava/lang/Object;

    const-string v6, "value"

    .line 13
    invoke-static {p2, v6, v3, v5}, Landroidx/core/app/b;->U0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v4, Lvy$c;->c:Ljava/lang/Object;

    const-string v3, "trigger_event_name"

    .line 14
    invoke-static {p2, v3, v2, v5}, Landroidx/core/app/b;->U0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lvy$c;->d:Ljava/lang/String;

    const-wide/16 v6, 0x0

    .line 15
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v6, "trigger_timeout"

    .line 16
    invoke-static {p2, v6, v1, v3}, Landroidx/core/app/b;->U0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v4, Lvy$c;->e:J

    const-string v6, "timed_out_event_name"

    .line 17
    invoke-static {p2, v6, v2, v5}, Landroidx/core/app/b;->U0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v4, Lvy$c;->f:Ljava/lang/String;

    const-class v6, Landroid/os/Bundle;

    const-string v7, "timed_out_event_params"

    .line 18
    invoke-static {p2, v7, v6, v5}, Landroidx/core/app/b;->U0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    iput-object v6, v4, Lvy$c;->g:Landroid/os/Bundle;

    const-string v6, "triggered_event_name"

    .line 19
    invoke-static {p2, v6, v2, v5}, Landroidx/core/app/b;->U0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v4, Lvy$c;->h:Ljava/lang/String;

    const-class v6, Landroid/os/Bundle;

    const-string v7, "triggered_event_params"

    .line 20
    invoke-static {p2, v7, v6, v5}, Landroidx/core/app/b;->U0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    iput-object v6, v4, Lvy$c;->i:Landroid/os/Bundle;

    const-string v6, "time_to_live"

    .line 21
    invoke-static {p2, v6, v1, v3}, Landroidx/core/app/b;->U0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v4, Lvy$c;->j:J

    const-string v6, "expired_event_name"

    .line 22
    invoke-static {p2, v6, v2, v5}, Landroidx/core/app/b;->U0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v4, Lvy$c;->k:Ljava/lang/String;

    const-class v2, Landroid/os/Bundle;

    const-string v6, "expired_event_params"

    .line 23
    invoke-static {p2, v6, v2, v5}, Landroidx/core/app/b;->U0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    iput-object v2, v4, Lvy$c;->l:Landroid/os/Bundle;

    const-class v2, Ljava/lang/Boolean;

    .line 24
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v6, "active"

    .line 25
    invoke-static {p2, v6, v2, v5}, Landroidx/core/app/b;->U0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v4, Lvy$c;->n:Z

    const-string v2, "creation_timestamp"

    .line 26
    invoke-static {p2, v2, v1, v3}, Landroidx/core/app/b;->U0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v4, Lvy$c;->m:J

    const-string v2, "triggered_timestamp"

    .line 27
    invoke-static {p2, v2, v1, v3}, Landroidx/core/app/b;->U0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v4, Lvy$c;->o:J

    .line 28
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    return-object v0
.end method

.method public getMaxUserProperties(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lwy;->a:Lcw;

    .line 1
    invoke-virtual {v0, p1}, Lcw;->k(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    .line 1
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/analytics/connector/internal/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {p2, p3}, Lcom/google/firebase/analytics/connector/internal/b;->b(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/google/firebase/analytics/connector/internal/b;->e(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const-string v0, "clx"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "_ae"

    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x1

    const-string v2, "_r"

    .line 7
    invoke-virtual {p3, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 8
    :cond_4
    iget-object v0, p0, Lwy;->a:Lcw;

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lcw;->m(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
