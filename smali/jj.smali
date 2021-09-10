.class public Ljj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljj$b;
    }
.end annotation


# static fields
.field private static final j:Ljj$b;


# instance fields
.field private volatile b:Lcom/bumptech/glide/i;

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/FragmentManager;",
            "Lij;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/fragment/app/g;",
            "Lmj;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/Handler;

.field private final f:Ljj$b;

.field private final g:Lx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx<",
            "Landroid/view/View;",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx<",
            "Landroid/view/View;",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljj$a;

    invoke-direct {v0}, Ljj$a;-><init>()V

    sput-object v0, Ljj;->j:Ljj$b;

    return-void
.end method

.method public constructor <init>(Ljj$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljj;->c:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljj;->d:Ljava/util/Map;

    .line 4
    new-instance v0, Lx;

    invoke-direct {v0}, Lx;-><init>()V

    iput-object v0, p0, Ljj;->g:Lx;

    .line 5
    new-instance v0, Lx;

    invoke-direct {v0}, Lx;-><init>()V

    iput-object v0, p0, Ljj;->h:Lx;

    .line 6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Ljj;->i:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    sget-object p1, Ljj;->j:Ljj$b;

    :goto_0
    iput-object p1, p0, Ljj;->f:Ljj$b;

    .line 8
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Ljj;->e:Landroid/os/Handler;

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ljj;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private b(Landroid/app/FragmentManager;Lx;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Lx<",
            "Landroid/view/View;",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 3
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljj;->b(Landroid/app/FragmentManager;Lx;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    :goto_1
    iget-object v1, p0, Ljj;->i:Landroid/os/Bundle;

    add-int/lit8 v2, v0, 0x1

    const-string v3, "key"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 7
    :try_start_0
    iget-object v1, p0, Ljj;->i:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v3}, Landroid/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    :goto_2
    if-nez v0, :cond_3

    :cond_2
    return-void

    .line 8
    :cond_3
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljj;->b(Landroid/app/FragmentManager;Lx;)V

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private static c(Ljava/util/Collection;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->V()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->V()Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/g;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Ljj;->c(Ljava/util/Collection;Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private d(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/bumptech/glide/i;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3, p4}, Ljj;->k(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lij;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Lij;->b()Lcom/bumptech/glide/i;

    move-result-object p3

    if-nez p3, :cond_0

    .line 3
    invoke-static {p1}, Lcom/bumptech/glide/c;->c(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object p3

    .line 4
    iget-object p4, p0, Ljj;->f:Ljj$b;

    .line 5
    invoke-virtual {p2}, Lij;->a()Lyi;

    move-result-object v0

    invoke-virtual {p2}, Lij;->c()Lkj;

    move-result-object v1

    .line 6
    invoke-interface {p4, p3, v0, v1, p1}, Ljj$b;->a(Lcom/bumptech/glide/c;Lfj;Lkj;Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object p3

    .line 7
    invoke-virtual {p2, p3}, Lij;->f(Lcom/bumptech/glide/i;)V

    :cond_0
    return-object p3
.end method

.method private k(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lij;
    .locals 2

    const-string v0, "com.bumptech.glide.manager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lij;

    if-nez v1, :cond_1

    .line 2
    iget-object v1, p0, Ljj;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lij;

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Lij;

    invoke-direct {v1}, Lij;-><init>()V

    .line 4
    invoke-virtual {v1, p2}, Lij;->e(Landroid/app/Fragment;)V

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {v1}, Lij;->a()Lyi;

    move-result-object p2

    invoke-virtual {p2}, Lyi;->d()V

    .line 6
    :cond_0
    iget-object p2, p0, Ljj;->c:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2, v1, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 8
    iget-object p2, p0, Ljj;->e:Landroid/os/Handler;

    const/4 p3, 0x1

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-object v1
.end method

.method private m(Landroidx/fragment/app/g;Landroidx/fragment/app/Fragment;Z)Lmj;
    .locals 2

    const-string v0, "com.bumptech.glide.manager"

    .line 1
    invoke-virtual {p1, v0}, Landroidx/fragment/app/g;->c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lmj;

    if-nez v1, :cond_1

    .line 2
    iget-object v1, p0, Ljj;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmj;

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Lmj;

    invoke-direct {v1}, Lmj;-><init>()V

    .line 4
    invoke-virtual {v1, p2}, Lmj;->q1(Landroidx/fragment/app/Fragment;)V

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {v1}, Lmj;->l1()Lyi;

    move-result-object p2

    invoke-virtual {p2}, Lyi;->d()V

    .line 6
    :cond_0
    iget-object p2, p0, Ljj;->d:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/g;->a()Landroidx/fragment/app/m;

    move-result-object p2

    invoke-virtual {p2, v1, v0}, Landroidx/fragment/app/m;->c(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/m;

    invoke-virtual {p2}, Landroidx/fragment/app/m;->g()I

    .line 8
    iget-object p2, p0, Ljj;->e:Landroid/os/Handler;

    const/4 p3, 0x2

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-object v1
.end method

.method private static n(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Ljj;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private o(Landroid/content/Context;Landroidx/fragment/app/g;Landroidx/fragment/app/Fragment;Z)Lcom/bumptech/glide/i;
    .locals 2

    .line 1
    invoke-direct {p0, p2, p3, p4}, Ljj;->m(Landroidx/fragment/app/g;Landroidx/fragment/app/Fragment;Z)Lmj;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Lmj;->n1()Lcom/bumptech/glide/i;

    move-result-object p3

    if-nez p3, :cond_0

    .line 3
    invoke-static {p1}, Lcom/bumptech/glide/c;->c(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object p3

    .line 4
    iget-object p4, p0, Ljj;->f:Ljj$b;

    .line 5
    invoke-virtual {p2}, Lmj;->l1()Lyi;

    move-result-object v0

    invoke-virtual {p2}, Lmj;->o1()Lkj;

    move-result-object v1

    .line 6
    invoke-interface {p4, p3, v0, v1, p1}, Ljj$b;->a(Lcom/bumptech/glide/c;Lfj;Lkj;Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object p3

    .line 7
    invoke-virtual {p2, p3}, Lmj;->r1(Lcom/bumptech/glide/i;)V

    :cond_0
    return-object p3
.end method


# virtual methods
.method public e(Landroid/app/Activity;)Lcom/bumptech/glide/i;
    .locals 3

    .line 1
    invoke-static {}, Lhl;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljj;->f(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljj;->n(Landroid/content/Context;)Z

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Ljj;->d(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/bumptech/glide/i;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load for a destroyed activity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Landroid/content/Context;)Lcom/bumptech/glide/i;
    .locals 4

    if-eqz p1, :cond_5

    .line 1
    invoke-static {}, Lhl;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_2

    .line 2
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, p1}, Ljj;->i(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/i;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Ljj;->e(Landroid/app/Activity;)Lcom/bumptech/glide/i;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    .line 7
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljj;->f(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    iget-object v0, p0, Ljj;->b:Lcom/bumptech/glide/i;

    if-nez v0, :cond_4

    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    iget-object v0, p0, Ljj;->b:Lcom/bumptech/glide/i;

    if-nez v0, :cond_3

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->c(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v0

    .line 13
    iget-object v1, p0, Ljj;->f:Ljj$b;

    new-instance v2, Lzi;

    invoke-direct {v2}, Lzi;-><init>()V

    new-instance v3, Lej;

    invoke-direct {v3}, Lej;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 15
    invoke-interface {v1, v0, v2, v3, p1}, Ljj$b;->a(Lcom/bumptech/glide/c;Lfj;Lkj;Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object p1

    iput-object p1, p0, Ljj;->b:Lcom/bumptech/glide/i;

    .line 16
    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 17
    :cond_4
    :goto_0
    iget-object p1, p0, Ljj;->b:Lcom/bumptech/glide/i;

    return-object p1

    .line 18
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load on a null Context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Landroid/view/View;)Lcom/bumptech/glide/i;
    .locals 5

    .line 1
    invoke-static {}, Lhl;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljj;->f(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Unable to obtain a request manager for a view without a Context"

    .line 4
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljj;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljj;->f(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    const/4 v2, 0x0

    const v3, 0x1020002

    if-eqz v1, :cond_5

    .line 8
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 9
    iget-object v1, p0, Ljj;->g:Lx;

    invoke-virtual {v1}, Le0;->clear()V

    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/g;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/g;->f()Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Ljj;->g:Lx;

    .line 11
    invoke-static {v1, v4}, Ljj;->c(Ljava/util/Collection;Ljava/util/Map;)V

    .line 12
    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v2

    .line 13
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 14
    iget-object v3, p0, Ljj;->g:Lx;

    .line 15
    invoke-virtual {v3, p1, v2}, Le0;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 16
    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_2

    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_3

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 19
    :cond_3
    :goto_1
    iget-object p1, p0, Ljj;->g:Lx;

    invoke-virtual {p1}, Le0;->clear()V

    if-eqz v3, :cond_4

    .line 20
    invoke-virtual {p0, v3}, Ljj;->h(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/i;

    move-result-object p1

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v0}, Ljj;->i(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/i;

    move-result-object p1

    :goto_2
    return-object p1

    .line 21
    :cond_5
    iget-object v1, p0, Ljj;->h:Lx;

    invoke-virtual {v1}, Le0;->clear()V

    .line 22
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v4, p0, Ljj;->h:Lx;

    invoke-direct {p0, v1, v4}, Ljj;->b(Landroid/app/FragmentManager;Lx;)V

    .line 23
    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v2

    .line 24
    :goto_3
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 25
    iget-object v3, p0, Ljj;->h:Lx;

    .line 26
    invoke-virtual {v3, p1, v2}, Le0;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 27
    check-cast v3, Landroid/app/Fragment;

    if-eqz v3, :cond_6

    goto :goto_4

    .line 28
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_7

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_3

    .line 30
    :cond_7
    :goto_4
    iget-object p1, p0, Ljj;->h:Lx;

    invoke-virtual {p1}, Le0;->clear()V

    if-nez v3, :cond_8

    .line 31
    invoke-virtual {p0, v0}, Ljj;->e(Landroid/app/Activity;)Lcom/bumptech/glide/i;

    move-result-object p1

    return-object p1

    .line 32
    :cond_8
    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 33
    invoke-static {}, Lhl;->g()Z

    move-result p1

    if-nez p1, :cond_9

    .line 34
    invoke-virtual {v3}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 35
    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v3}, Landroid/app/Fragment;->isVisible()Z

    move-result v1

    invoke-direct {p0, v0, p1, v3, v1}, Ljj;->d(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/bumptech/glide/i;

    move-result-object p1

    goto :goto_5

    .line 36
    :cond_9
    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljj;->f(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object p1

    :goto_5
    return-object p1

    .line 37
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load on a fragment before it is attached"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public h(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/i;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    move-result-object v0

    const-string v1, "You cannot start a load on a fragment before it is attached or after it is destroyed"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lhl;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljj;->f(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/g;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->c0()Z

    move-result v2

    invoke-direct {p0, v1, v0, p1, v2}, Ljj;->o(Landroid/content/Context;Landroidx/fragment/app/g;Landroidx/fragment/app/Fragment;Z)Lcom/bumptech/glide/i;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v2, 0x0

    move-object p1, v1

    goto :goto_1

    .line 2
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroidx/fragment/app/g;

    .line 3
    iget-object p1, p0, Ljj;->d:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/app/FragmentManager;

    .line 5
    iget-object p1, p0, Ljj;->c:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    move-object v4, v1

    move-object v1, p1

    move-object p1, v4

    :goto_1
    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    const/4 v0, 0x5

    const-string v1, "RMRetriever"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove expected request manager fragment, manager: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2
.end method

.method public i(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/i;
    .locals 3

    .line 1
    invoke-static {}, Lhl;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljj;->f(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/g;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljj;->n(Landroid/content/Context;)Z

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Ljj;->o(Landroid/content/Context;Landroidx/fragment/app/g;Landroidx/fragment/app/Fragment;Z)Lcom/bumptech/glide/i;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load for a destroyed activity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method j(Landroid/app/Activity;)Lij;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {p1}, Ljj;->n(Landroid/content/Context;)Z

    move-result p1

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, v1, p1}, Ljj;->k(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lij;

    move-result-object p1

    return-object p1
.end method

.method l(Landroid/content/Context;Landroidx/fragment/app/g;)Lmj;
    .locals 1

    .line 1
    invoke-static {p1}, Ljj;->n(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p2, v0, p1}, Ljj;->m(Landroidx/fragment/app/g;Landroidx/fragment/app/Fragment;Z)Lmj;

    move-result-object p1

    return-object p1
.end method
