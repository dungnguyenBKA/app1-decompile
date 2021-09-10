.class public Lcom/google/billingclient/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/billingclient/g$d;
    }
.end annotation


# static fields
.field private static final g:Ljava/util/concurrent/ExecutorService;

.field public static final synthetic h:I


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/android/billingclient/api/c;

.field private c:Z

.field private d:Lcom/google/billingclient/g$d;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/billingclient/api/n;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/google/billingclient/BillingHelper;->b:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/billingclient/g;->g:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/m;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/billingclient/g;->c:Z

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/billingclient/g;->e:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/billingclient/g;->f:Ljava/util/LinkedList;

    const-string v0, "BillingManager"

    const-string v1, "Creating Billing client."

    .line 5
    invoke-static {v0, v1}, Lcom/google/billingclient/BillingHelper;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/billingclient/g;->a:Landroid/content/Context;

    .line 7
    new-instance v1, Lcom/google/billingclient/h;

    invoke-direct {v1, p0, p2}, Lcom/google/billingclient/h;-><init>(Lcom/google/billingclient/g;Lcom/android/billingclient/api/m;)V

    .line 8
    invoke-static {p1}, Lcom/android/billingclient/api/c;->f(Landroid/content/Context;)Lcom/android/billingclient/api/c$a;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v1}, Lcom/android/billingclient/api/c$a;->c(Lcom/android/billingclient/api/m;)Lcom/android/billingclient/api/c$a;

    .line 10
    invoke-virtual {p1}, Lcom/android/billingclient/api/c$a;->b()Lcom/android/billingclient/api/c$a;

    .line 11
    invoke-virtual {p1}, Lcom/android/billingclient/api/c$a;->a()Lcom/android/billingclient/api/c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/billingclient/g;->b:Lcom/android/billingclient/api/c;

    .line 12
    sget-object p1, Lcom/google/billingclient/g;->g:Ljava/util/concurrent/ExecutorService;

    :try_start_0
    const-string p2, "com.android.billingclient.api.d"

    .line 13
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-string v1, "zzt"

    .line 14
    invoke-virtual {p2, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    const/4 v1, 0x1

    .line 15
    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 16
    iget-object v1, p0, Lcom/google/billingclient/g;->b:Lcom/android/billingclient/api/c;

    .line 17
    invoke-virtual {p2, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string p1, "Starting setup."

    .line 19
    invoke-static {v0, p1}, Lcom/google/billingclient/BillingHelper;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance p1, Lcom/google/billingclient/i;

    invoke-direct {p1, p0}, Lcom/google/billingclient/i;-><init>(Lcom/google/billingclient/g;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/google/billingclient/g;->k(Ljava/lang/Runnable;)V

    .line 22
    iget-object p1, p0, Lcom/google/billingclient/g;->b:Lcom/android/billingclient/api/c;

    new-instance p2, Lcom/google/billingclient/k;

    invoke-direct {p2, p0}, Lcom/google/billingclient/k;-><init>(Lcom/google/billingclient/g;)V

    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/c;->j(Lcom/android/billingclient/api/e;)V

    return-void
.end method

.method static synthetic a(Lcom/google/billingclient/g;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/billingclient/g;->j(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/google/billingclient/g;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/billingclient/g;->c:Z

    return p1
.end method

.method static synthetic c(Lcom/google/billingclient/g;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/billingclient/g;->l()Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/google/billingclient/g;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/billingclient/g;->a:Landroid/content/Context;

    return-object p0
.end method

.method static e(Lcom/google/billingclient/g;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/billingclient/g;->f:Ljava/util/LinkedList;

    monitor-enter v0

    .line 2
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/billingclient/g;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/billingclient/g;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method static synthetic f(Lcom/google/billingclient/g;)Lcom/google/billingclient/g$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/billingclient/g;->d:Lcom/google/billingclient/g$d;

    return-object p0
.end method

.method static synthetic g(Lcom/google/billingclient/g;)Lcom/android/billingclient/api/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/billingclient/g;->b:Lcom/android/billingclient/api/c;

    return-object p0
.end method

.method static h(Lcom/google/billingclient/g;Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/billingclient/g;->e:Ljava/util/Map;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/n;

    .line 4
    iget-object v2, p0, Lcom/google/billingclient/g;->e:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/android/billingclient/api/n;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    monitor-exit v0

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method static synthetic i(Lcom/google/billingclient/g;)Lcom/android/billingclient/api/l;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method private j(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/j;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/j;

    .line 3
    invoke-virtual {v0}, Lcom/android/billingclient/api/j;->a()I

    move-result v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase state, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BillingManager"

    invoke-static {v3, v2}, Lcom/google/billingclient/BillingHelper;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const-string v0, "It is not purchased and cannot acknowledged"

    .line 5
    invoke-static {v3, v0}, Lcom/google/billingclient/BillingHelper;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/android/billingclient/api/j;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "Purchase acknowledged, No need to repeat acknowledge"

    .line 7
    invoke-static {v3, v0}, Lcom/google/billingclient/BillingHelper;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {}, Lcom/android/billingclient/api/a;->b()Lcom/android/billingclient/api/a$a;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lcom/android/billingclient/api/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/a$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/a$a;

    .line 10
    invoke-virtual {v1}, Lcom/android/billingclient/api/a$a;->a()Lcom/android/billingclient/api/a;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/google/billingclient/f;

    invoke-direct {v1, p0, v0}, Lcom/google/billingclient/f;-><init>(Lcom/google/billingclient/g;Lcom/android/billingclient/api/a;)V

    invoke-direct {p0, v1}, Lcom/google/billingclient/g;->n(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private k(Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/billingclient/g;->f:Ljava/util/LinkedList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/billingclient/g;->f:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method private l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/billingclient/g;->b:Lcom/android/billingclient/api/c;

    const-string v1, "subscriptions"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/c;->c(Ljava/lang/String;)Lcom/android/billingclient/api/g;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/billingclient/BillingHelper;->b(Lcom/android/billingclient/api/g;)V

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/billingclient/api/g;->b()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private n(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/billingclient/g;->b:Lcom/android/billingclient/api/c;

    invoke-virtual {v0}, Lcom/android/billingclient/api/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/billingclient/g;->k(Ljava/lang/Runnable;)V

    .line 4
    iget-object p1, p0, Lcom/google/billingclient/g;->b:Lcom/android/billingclient/api/c;

    new-instance v0, Lcom/google/billingclient/k;

    invoke-direct {v0, p0}, Lcom/google/billingclient/k;-><init>(Lcom/google/billingclient/g;)V

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/c;->j(Lcom/android/billingclient/api/e;)V

    :goto_0
    return-void
.end method

.method private s(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/billingclient/g;->o(Ljava/lang/String;)Lcom/android/billingclient/api/n;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2
    new-instance p2, Lcom/google/billingclient/l;

    move-object v0, p2

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/billingclient/l;-><init>(Lcom/google/billingclient/g;Lcom/android/billingclient/api/n;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-direct {p0, p2}, Lcom/google/billingclient/g;->n(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p1, "BillingManager"

    const-string p2, "launch billing failed, details is null"

    .line 3
    invoke-static {p1, p2}, Lcom/google/billingclient/BillingHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public m(Ljava/lang/String;Lcom/android/billingclient/api/i;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/billingclient/g$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/billingclient/g$a;-><init>(Lcom/google/billingclient/g;Ljava/lang/String;Lcom/android/billingclient/api/i;)V

    invoke-direct {p0, v0}, Lcom/google/billingclient/g;->n(Ljava/lang/Runnable;)V

    return-void
.end method

.method public o(Ljava/lang/String;)Lcom/android/billingclient/api/n;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/billingclient/g;->e:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/billingclient/g;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/n;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public synthetic p(Landroid/app/Activity;Ljava/lang/String;Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/billingclient/g;->s(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Billing flow request after query sku , "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BillingManager"

    invoke-static {p2, p1}, Lcom/google/billingclient/BillingHelper;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public q(Lud0;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    iget-boolean v3, p0, Lcom/google/billingclient/g;->c:Z

    if-nez v3, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/google/billingclient/g;->l()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/billingclient/g;->c:Z

    .line 5
    :cond_0
    iget-boolean v3, p0, Lcom/google/billingclient/g;->c:Z

    const-string v4, "ms"

    const-string v5, "BillingManager"

    if-nez v3, :cond_1

    const-string v1, "The subscriptions unsupported"

    .line 6
    invoke-static {v5, v1}, Lcom/google/billingclient/BillingHelper;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_1

    .line 7
    :cond_1
    iget-object v3, p0, Lcom/google/billingclient/g;->b:Lcom/android/billingclient/api/c;

    const-string v6, "subs"

    invoke-virtual {v3, v6}, Lcom/android/billingclient/api/c;->h(Ljava/lang/String;)Lcom/android/billingclient/api/j$a;

    move-result-object v3

    const-string v6, "Querying subscriptions elapsed time: "

    .line 8
    invoke-static {v6}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/billingclient/BillingHelper;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v3}, Lcom/android/billingclient/api/j$a;->b()I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Querying subscriptions result code: "

    .line 10
    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/billingclient/api/j$a;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/billingclient/BillingHelper;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "Got an error response trying to query subscription purchases"

    .line 11
    invoke-static {v5, v1}, Lcom/google/billingclient/BillingHelper;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v1, v3

    .line 12
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 13
    iget-object v6, p0, Lcom/google/billingclient/g;->b:Lcom/android/billingclient/api/c;

    const-string v7, "inapp"

    invoke-virtual {v6, v7}, Lcom/android/billingclient/api/c;->h(Ljava/lang/String;)Lcom/android/billingclient/api/j$a;

    move-result-object v6

    .line 14
    invoke-virtual {v6}, Lcom/android/billingclient/api/j$a;->b()I

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "getInAppPurchases success, response code:"

    .line 15
    invoke-static {v7}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/billingclient/api/j$a;->b()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/google/billingclient/BillingHelper;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v7, "getInAppPurchases got an error response code: "

    .line 16
    invoke-static {v7}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/billingclient/api/j$a;->b()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/google/billingclient/BillingHelper;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string v7, "Querying inapp purchases elapsed time: "

    .line 17
    invoke-static {v7}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/billingclient/BillingHelper;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v6}, Lcom/android/billingclient/api/j$a;->b()I

    move-result v2

    if-nez v2, :cond_4

    .line 19
    invoke-virtual {v6}, Lcom/android/billingclient/api/j$a;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 20
    invoke-virtual {v6}, Lcom/android/billingclient/api/j$a;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    if-eqz v1, :cond_5

    .line 21
    invoke-virtual {v1}, Lcom/android/billingclient/api/j$a;->b()I

    move-result v2

    if-nez v2, :cond_5

    .line 22
    invoke-virtual {v1}, Lcom/android/billingclient/api/j$a;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 23
    invoke-virtual {v1}, Lcom/android/billingclient/api/j$a;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 24
    :cond_5
    invoke-virtual {v6}, Lcom/android/billingclient/api/j$a;->b()I

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 25
    invoke-virtual {v1}, Lcom/android/billingclient/api/j$a;->b()I

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x6

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v1, 0x0

    :goto_4
    const-string v2, "BillingClient: Query inventory"

    .line 26
    invoke-static {v1, v2}, Lic;->y(ILjava/lang/String;)Lcom/android/billingclient/api/g;

    move-result-object v1

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/j;

    .line 29
    invoke-virtual {v3}, Lcom/android/billingclient/api/j;->a()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_9

    .line 30
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    const/4 v6, 0x2

    if-ne v4, v6, :cond_8

    const-string v4, "Received a pending purchase of SKU: "

    .line 31
    invoke-static {v4}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/billingclient/api/j;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/billingclient/BillingHelper;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 32
    :cond_a
    invoke-direct {p0, v2}, Lcom/google/billingclient/g;->j(Ljava/util/List;)V

    .line 33
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {v1}, Lcom/android/billingclient/api/g;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lud0;->c(Ljava/lang/Object;)V

    .line 34
    invoke-interface {p1}, Lud0;->a()V

    return-void
.end method

.method public synthetic r(Landroid/util/Pair;)V
    .locals 2

    const-string v0, "BillingManager"

    const-string v1, "Query inventory was successful."

    .line 1
    invoke-static {v0, v1}, Lcom/google/billingclient/BillingHelper;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/billingclient/g;->d:Lcom/google/billingclient/g$d;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {v0, v1, p1}, Lcom/google/billingclient/g$d;->b(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public t(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/billingclient/g;->o(Ljava/lang/String;)Lcom/android/billingclient/api/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/billingclient/g;->s(Landroid/app/Activity;Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Direct billing flow request, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BillingManager"

    invoke-static {p2, p1}, Lcom/google/billingclient/BillingHelper;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/billingclient/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/billingclient/b;-><init>(Lcom/google/billingclient/g;Landroid/app/Activity;Ljava/lang/String;)V

    .line 5
    new-instance p2, Lcom/google/billingclient/m;

    invoke-direct {p2, p0, v0, p3, v1}, Lcom/google/billingclient/m;-><init>(Lcom/google/billingclient/g;Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/p;)V

    .line 6
    iget-object p3, p0, Lcom/google/billingclient/g;->b:Lcom/android/billingclient/api/c;

    invoke-virtual {p3}, Lcom/android/billingclient/api/c;->d()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 7
    invoke-virtual {p2}, Lcom/google/billingclient/m;->run()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0, p2}, Lcom/google/billingclient/g;->k(Ljava/lang/Runnable;)V

    .line 9
    iget-object p2, p0, Lcom/google/billingclient/g;->b:Lcom/android/billingclient/api/c;

    new-instance p3, Lcom/google/billingclient/j;

    invoke-direct {p3, p0, p1, v0}, Lcom/google/billingclient/j;-><init>(Lcom/google/billingclient/g;Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {p2, p3}, Lcom/android/billingclient/api/c;->j(Lcom/android/billingclient/api/e;)V

    :goto_0
    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/billingclient/g$c;

    invoke-direct {v0, p0, p1}, Lcom/google/billingclient/g$c;-><init>(Lcom/google/billingclient/g;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/billingclient/g;->n(Ljava/lang/Runnable;)V

    return-void
.end method

.method public v()Lcom/google/billingclient/g;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/billingclient/a;

    invoke-direct {v0, p0}, Lcom/google/billingclient/a;-><init>(Lcom/google/billingclient/g;)V

    invoke-direct {p0, v0}, Lcom/google/billingclient/g;->n(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public w(Ljava/lang/String;Ljava/util/List;Lcom/android/billingclient/api/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/billingclient/api/p;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/billingclient/g$b;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/google/billingclient/g$b;-><init>(Lcom/google/billingclient/g;Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/p;)V

    invoke-direct {p0, v0}, Lcom/google/billingclient/g;->n(Ljava/lang/Runnable;)V

    return-void
.end method

.method public x(Lcom/google/billingclient/g$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/billingclient/g;->d:Lcom/google/billingclient/g$d;

    return-void
.end method
