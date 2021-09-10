.class public final Lnl$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl$b$a;
    }
.end annotation


# instance fields
.field private final a:Lnl$c;

.field private b:Z

.field final synthetic c:Lnl;


# direct methods
.method constructor <init>(Lnl;Lnl$c;Lnl$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnl$b;->c:Lnl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lnl$b;->a:Lnl$c;

    return-void
.end method

.method static synthetic b(Lnl$b;)Lnl$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lnl$b;->a:Lnl$c;

    return-object p0
.end method

.method static synthetic c(Lnl$b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnl$b;->b:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnl$b;->c:Lnl;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lnl;->L(Lnl;Lnl$b;Z)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lnl$b;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lnl$b;->c:Lnl;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lnl;->L(Lnl;Lnl$b;Z)V

    .line 3
    iget-object v0, p0, Lnl$b;->c:Lnl;

    iget-object v1, p0, Lnl$b;->a:Lnl$c;

    invoke-static {v1}, Lnl$c;->b(Lnl$c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnl;->z0(Ljava/lang/String;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lnl$b;->c:Lnl;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lnl;->L(Lnl;Lnl$b;Z)V

    :goto_0
    return-void
.end method

.method public e(I)Ljava/io/OutputStream;
    .locals 4

    .line 1
    iget-object v0, p0, Lnl$b;->c:Lnl;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lnl$b;->a:Lnl$c;

    invoke-static {v1}, Lnl$c;->g(Lnl$c;)Lnl$b;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 3
    new-instance v1, Lnl$b$a;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lnl$b;->a:Lnl$c;

    invoke-virtual {v3, p1}, Lnl$c;->k(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 p1, 0x0

    invoke-direct {v1, p0, v2, p1}, Lnl$b$a;-><init>(Lnl$b;Ljava/io/OutputStream;Lnl$a;)V

    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "This entry editor error"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
