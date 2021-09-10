.class public Lca0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "Application Context cannot be null"

    .line 1
    invoke-static {p1, v0}, Landroidx/core/app/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lca0;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lca0;->a:Z

    .line 4
    invoke-static {}, Lba0;->a()Lba0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lba0;->c(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    invoke-static {p1}, Lha0;->c(Landroid/content/Context;)V

    invoke-static {}, Ly90;->a()Ly90;

    move-result-object v0

    invoke-virtual {v0, p1}, Ly90;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method b()Z
    .locals 1

    iget-boolean v0, p0, Lca0;->a:Z

    return v0
.end method
