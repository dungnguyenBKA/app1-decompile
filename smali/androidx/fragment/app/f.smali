.class public abstract Landroidx/fragment/app/f;
.super Landroidx/fragment/app/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/c;"
    }
.end annotation


# instance fields
.field private final b:Landroid/app/Activity;

.field private final c:Landroid/content/Context;

.field private final d:Landroid/os/Handler;

.field private final e:I

.field final f:Landroidx/fragment/app/h;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2
    invoke-direct {p0}, Landroidx/fragment/app/c;-><init>()V

    .line 3
    new-instance v1, Landroidx/fragment/app/h;

    invoke-direct {v1}, Landroidx/fragment/app/h;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/f;->f:Landroidx/fragment/app/h;

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/f;->b:Landroid/app/Activity;

    const-string v1, "context == null"

    .line 5
    invoke-static {p1, v1}, Landroidx/core/app/b;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/fragment/app/f;->c:Landroid/content/Context;

    const-string p1, "handler == null"

    .line 6
    invoke-static {v0, p1}, Landroidx/core/app/b;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Landroidx/fragment/app/f;->d:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Landroidx/fragment/app/f;->e:I

    return-void
.end method


# virtual methods
.method c()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->b:Landroid/app/Activity;

    return-object v0
.end method

.method d()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->c:Landroid/content/Context;

    return-object v0
.end method

.method e()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->d:Landroid/os/Handler;

    return-object v0
.end method

.method abstract f(Landroidx/fragment/app/Fragment;)V
.end method

.method public abstract g(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract h()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public abstract i()Landroid/view/LayoutInflater;
.end method

.method public abstract j()I
.end method

.method public abstract k()Z
.end method

.method public abstract l(Landroidx/fragment/app/Fragment;)Z
.end method

.method public abstract m(Ljava/lang/String;)Z
.end method

.method public abstract n(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .param p2    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
.end method

.method public abstract o()V
.end method
