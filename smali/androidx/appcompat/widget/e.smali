.class public final Landroidx/appcompat/widget/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Landroid/graphics/PorterDuff$Mode;

.field private static c:Landroidx/appcompat/widget/e;

.field public static final synthetic d:I


# instance fields
.field private a:Landroidx/appcompat/widget/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/appcompat/widget/e;->b:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    sget-object v0, Landroidx/appcompat/widget/e;->b:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public static declared-synchronized b()Landroidx/appcompat/widget/e;
    .locals 2

    const-class v0, Landroidx/appcompat/widget/e;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/e;->c:Landroidx/appcompat/widget/e;

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Landroidx/appcompat/widget/e;->h()V

    .line 3
    :cond_0
    sget-object v1, Landroidx/appcompat/widget/e;->c:Landroidx/appcompat/widget/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    const-class v0, Landroidx/appcompat/widget/e;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Landroidx/appcompat/widget/v;->h(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized h()V
    .locals 3

    const-class v0, Landroidx/appcompat/widget/e;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/e;->c:Landroidx/appcompat/widget/e;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroidx/appcompat/widget/e;

    invoke-direct {v1}, Landroidx/appcompat/widget/e;-><init>()V

    sput-object v1, Landroidx/appcompat/widget/e;->c:Landroidx/appcompat/widget/e;

    .line 3
    invoke-static {}, Landroidx/appcompat/widget/v;->d()Landroidx/appcompat/widget/v;

    move-result-object v2

    iput-object v2, v1, Landroidx/appcompat/widget/e;->a:Landroidx/appcompat/widget/v;

    .line 4
    sget-object v1, Landroidx/appcompat/widget/e;->c:Landroidx/appcompat/widget/e;

    iget-object v1, v1, Landroidx/appcompat/widget/e;->a:Landroidx/appcompat/widget/v;

    new-instance v2, Landroidx/appcompat/widget/e$a;

    invoke-direct {v2}, Landroidx/appcompat/widget/e$a;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/v;->m(Landroidx/appcompat/widget/v$e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/e;->a:Landroidx/appcompat/widget/v;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/v;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized d(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/e;->a:Landroidx/appcompat/widget/v;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/widget/v;->g(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/e;->a:Landroidx/appcompat/widget/v;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/v;->i(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized g(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/e;->a:Landroidx/appcompat/widget/v;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/v;->k(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
