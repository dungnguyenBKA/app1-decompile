.class public abstract Landroidx/appcompat/app/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/appcompat/app/i;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/Object;

.field public static final synthetic d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lz;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1}, Lz;-><init>(I)V

    .line 3
    sput-object v0, Landroidx/appcompat/app/i;->b:Lz;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/appcompat/app/i;->c:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static l(Landroidx/appcompat/app/i;)V
    .locals 3

    .line 1
    sget-object v0, Landroidx/appcompat/app/i;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p0}, Landroidx/appcompat/app/i;->v(Landroidx/appcompat/app/i;)V

    .line 3
    sget-object v1, Landroidx/appcompat/app/i;->b:Lz;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lz;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static m(Landroidx/appcompat/app/i;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/appcompat/app/i;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p0}, Landroidx/appcompat/app/i;->v(Landroidx/appcompat/app/i;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static v(Landroidx/appcompat/app/i;)V
    .locals 3

    .line 1
    sget-object v0, Landroidx/appcompat/app/i;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Landroidx/appcompat/app/i;->b:Lz;

    invoke-virtual {v1}, Lz;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/i;

    if-eq v2, p0, :cond_1

    if-nez v2, :cond_0

    .line 5
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 6
    :cond_2
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


# virtual methods
.method public abstract A(Landroidx/appcompat/widget/Toolbar;)V
.end method

.method public B(I)V
    .locals 0

    return-void
.end method

.method public abstract C(Ljava/lang/CharSequence;)V
.end method

.method public abstract D(Lk$a;)Lk;
.end method

.method public abstract c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public d(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public abstract e(I)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation
.end method

.method public abstract f()Landroidx/appcompat/app/a;
.end method

.method public g()I
    .locals 1

    const/16 v0, -0x64

    return v0
.end method

.method public abstract h()Landroid/view/MenuInflater;
.end method

.method public abstract i()Landroidx/appcompat/app/ActionBar;
.end method

.method public abstract j()V
.end method

.method public abstract k()V
.end method

.method public abstract n(Landroid/content/res/Configuration;)V
.end method

.method public abstract o(Landroid/os/Bundle;)V
.end method

.method public abstract p()V
.end method

.method public abstract q(Landroid/os/Bundle;)V
.end method

.method public abstract r()V
.end method

.method public abstract s(Landroid/os/Bundle;)V
.end method

.method public abstract t()V
.end method

.method public abstract u()V
.end method

.method public abstract w(I)Z
.end method

.method public abstract x(I)V
.end method

.method public abstract y(Landroid/view/View;)V
.end method

.method public abstract z(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method
