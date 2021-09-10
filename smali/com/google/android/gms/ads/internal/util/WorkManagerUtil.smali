.class public Lcom/google/android/gms/ads/internal/util/WorkManagerUtil;
.super Lcom/google/android/gms/ads/internal/util/zzbf;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
        value = "This class must be instantiated reflectively so that the default class loader can be used."
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzbf;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzap(Lzv;)V
    .locals 4

    .line 1
    invoke-static {p1}, Law;->P(Lzv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroidx/work/b$a;

    invoke-direct {v1}, Landroidx/work/b$a;-><init>()V

    invoke-virtual {v1}, Landroidx/work/b$a;->a()Landroidx/work/b;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Landroidx/work/impl/i;->k(Landroid/content/Context;Landroidx/work/b;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    :try_start_1
    invoke-static {p1}, Landroidx/work/impl/i;->e(Landroid/content/Context;)Landroidx/work/impl/i;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v0, "offline_ping_sender_work"

    .line 5
    invoke-virtual {p1, v0}, Landroidx/work/impl/i;->a(Ljava/lang/String;)Landroidx/work/k;

    .line 6
    new-instance v1, Landroidx/work/c$a;

    invoke-direct {v1}, Landroidx/work/c$a;-><init>()V

    sget-object v2, Landroidx/work/i;->c:Landroidx/work/i;

    .line 7
    invoke-virtual {v1, v2}, Landroidx/work/c$a;->b(Landroidx/work/i;)Landroidx/work/c$a;

    invoke-virtual {v1}, Landroidx/work/c$a;->a()Landroidx/work/c;

    move-result-object v1

    .line 8
    new-instance v2, Landroidx/work/j$a;

    const-class v3, Lcom/google/android/gms/ads/internal/offline/buffering/OfflinePingSender;

    invoke-direct {v2, v3}, Landroidx/work/j$a;-><init>(Ljava/lang/Class;)V

    .line 9
    invoke-virtual {v2, v1}, Landroidx/work/o$a;->c(Landroidx/work/c;)Landroidx/work/o$a;

    move-result-object v1

    check-cast v1, Landroidx/work/j$a;

    .line 10
    invoke-virtual {v1, v0}, Landroidx/work/o$a;->a(Ljava/lang/String;)Landroidx/work/o$a;

    move-result-object v0

    check-cast v0, Landroidx/work/j$a;

    .line 11
    invoke-virtual {v0}, Landroidx/work/o$a;->b()Landroidx/work/o;

    move-result-object v0

    check-cast v0, Landroidx/work/j;

    .line 12
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/work/impl/i;->b(Ljava/util/List;)Landroidx/work/k;

    return-void

    :catch_1
    move-exception p1

    const-string v0, "Failed to instantiate WorkManager."

    .line 13
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzd(Lzv;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Law;->P(Lzv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroidx/work/b$a;

    invoke-direct {v1}, Landroidx/work/b$a;-><init>()V

    invoke-virtual {v1}, Landroidx/work/b$a;->a()Landroidx/work/b;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Landroidx/work/impl/i;->k(Landroid/content/Context;Landroidx/work/b;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    new-instance v0, Landroidx/work/c$a;

    invoke-direct {v0}, Landroidx/work/c$a;-><init>()V

    sget-object v1, Landroidx/work/i;->c:Landroidx/work/i;

    .line 5
    invoke-virtual {v0, v1}, Landroidx/work/c$a;->b(Landroidx/work/i;)Landroidx/work/c$a;

    invoke-virtual {v0}, Landroidx/work/c$a;->a()Landroidx/work/c;

    move-result-object v0

    .line 6
    new-instance v1, Landroidx/work/e$a;

    invoke-direct {v1}, Landroidx/work/e$a;-><init>()V

    const-string v2, "uri"

    .line 7
    invoke-virtual {v1, v2, p2}, Landroidx/work/e$a;->d(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/e$a;

    const-string p2, "gws_query_id"

    invoke-virtual {v1, p2, p3}, Landroidx/work/e$a;->d(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/e$a;

    invoke-virtual {v1}, Landroidx/work/e$a;->a()Landroidx/work/e;

    move-result-object p2

    .line 8
    new-instance p3, Landroidx/work/j$a;

    const-class v1, Lcom/google/android/gms/ads/internal/offline/buffering/OfflineNotificationPoster;

    invoke-direct {p3, v1}, Landroidx/work/j$a;-><init>(Ljava/lang/Class;)V

    .line 9
    invoke-virtual {p3, v0}, Landroidx/work/o$a;->c(Landroidx/work/c;)Landroidx/work/o$a;

    move-result-object p3

    check-cast p3, Landroidx/work/j$a;

    .line 10
    invoke-virtual {p3, p2}, Landroidx/work/o$a;->d(Landroidx/work/e;)Landroidx/work/o$a;

    move-result-object p2

    check-cast p2, Landroidx/work/j$a;

    const-string p3, "offline_notification_work"

    .line 11
    invoke-virtual {p2, p3}, Landroidx/work/o$a;->a(Ljava/lang/String;)Landroidx/work/o$a;

    move-result-object p2

    check-cast p2, Landroidx/work/j$a;

    .line 12
    invoke-virtual {p2}, Landroidx/work/o$a;->b()Landroidx/work/o;

    move-result-object p2

    check-cast p2, Landroidx/work/j;

    .line 13
    :try_start_1
    invoke-static {p1}, Landroidx/work/impl/i;->e(Landroid/content/Context;)Landroidx/work/impl/i;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 14
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/work/impl/i;->b(Ljava/util/List;)Landroidx/work/k;

    const/4 p1, 0x1

    return p1

    :catch_1
    move-exception p1

    const-string p2, "Failed to instantiate WorkManager."

    .line 16
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method
