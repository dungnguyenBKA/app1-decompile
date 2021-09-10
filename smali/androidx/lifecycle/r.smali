.class public Landroidx/lifecycle/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/r$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/j;

.field private final b:Landroid/os/Handler;

.field private c:Landroidx/lifecycle/r$a;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/j;

    invoke-direct {v0, p1}, Landroidx/lifecycle/j;-><init>(Landroidx/lifecycle/i;)V

    iput-object v0, p0, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/j;

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/r;->b:Landroid/os/Handler;

    return-void
.end method

.method private f(Landroidx/lifecycle/f$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/r;->c:Landroidx/lifecycle/r$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/lifecycle/r$a;->run()V

    .line 3
    :cond_0
    new-instance v0, Landroidx/lifecycle/r$a;

    iget-object v1, p0, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/j;

    invoke-direct {v0, v1, p1}, Landroidx/lifecycle/r$a;-><init>(Landroidx/lifecycle/j;Landroidx/lifecycle/f$a;)V

    iput-object v0, p0, Landroidx/lifecycle/r;->c:Landroidx/lifecycle/r$a;

    .line 4
    iget-object p1, p0, Landroidx/lifecycle/r;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a()Landroidx/lifecycle/f;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/j;

    return-object v0
.end method

.method public b()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/lifecycle/f$a;->ON_START:Landroidx/lifecycle/f$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/r;->f(Landroidx/lifecycle/f$a;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/lifecycle/f$a;->ON_CREATE:Landroidx/lifecycle/f$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/r;->f(Landroidx/lifecycle/f$a;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/lifecycle/f$a;->ON_STOP:Landroidx/lifecycle/f$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/r;->f(Landroidx/lifecycle/f$a;)V

    .line 2
    sget-object v0, Landroidx/lifecycle/f$a;->ON_DESTROY:Landroidx/lifecycle/f$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/r;->f(Landroidx/lifecycle/f$a;)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/lifecycle/f$a;->ON_START:Landroidx/lifecycle/f$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/r;->f(Landroidx/lifecycle/f$a;)V

    return-void
.end method
