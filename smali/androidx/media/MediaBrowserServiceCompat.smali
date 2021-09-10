.class public abstract Landroidx/media/MediaBrowserServiceCompat;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media/MediaBrowserServiceCompat$k;,
        Landroidx/media/MediaBrowserServiceCompat$j;,
        Landroidx/media/MediaBrowserServiceCompat$i;,
        Landroidx/media/MediaBrowserServiceCompat$h;,
        Landroidx/media/MediaBrowserServiceCompat$a;,
        Landroidx/media/MediaBrowserServiceCompat$l;,
        Landroidx/media/MediaBrowserServiceCompat$f;,
        Landroidx/media/MediaBrowserServiceCompat$e;,
        Landroidx/media/MediaBrowserServiceCompat$d;,
        Landroidx/media/MediaBrowserServiceCompat$c;,
        Landroidx/media/MediaBrowserServiceCompat$g;,
        Landroidx/media/MediaBrowserServiceCompat$b;
    }
.end annotation


# static fields
.field static final e:Z


# instance fields
.field private b:Landroidx/media/MediaBrowserServiceCompat$b;

.field final c:Lx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx<",
            "Landroid/os/IBinder;",
            "Landroidx/media/MediaBrowserServiceCompat$a;",
            ">;"
        }
    .end annotation
.end field

.field final d:Landroidx/media/MediaBrowserServiceCompat$l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MBServiceCompat"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media/MediaBrowserServiceCompat;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lx;

    invoke-direct {v0}, Lx;-><init>()V

    iput-object v0, p0, Landroidx/media/MediaBrowserServiceCompat;->c:Lx;

    .line 3
    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$l;

    invoke-direct {v0, p0}, Landroidx/media/MediaBrowserServiceCompat$l;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroidx/media/MediaBrowserServiceCompat;->d:Landroidx/media/MediaBrowserServiceCompat$l;

    return-void
.end method


# virtual methods
.method public a(Landroidx/media/MediaBrowserServiceCompat$h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroidx/media/MediaBrowserServiceCompat$h<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroidx/media/MediaBrowserServiceCompat$h;->e(Landroid/os/Bundle;)V

    return-void
.end method

.method public abstract b(Ljava/lang/String;ILandroid/os/Bundle;)V
.end method

.method public abstract c(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$h;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media/MediaBrowserServiceCompat$h<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public d(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media/MediaBrowserServiceCompat$h<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p2, v0}, Landroidx/media/MediaBrowserServiceCompat$h;->g(I)V

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/media/MediaBrowserServiceCompat;->c(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$h;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public e(Landroidx/media/MediaBrowserServiceCompat$h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media/MediaBrowserServiceCompat$h<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p1, v0}, Landroidx/media/MediaBrowserServiceCompat$h;->g(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroidx/media/MediaBrowserServiceCompat$h;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public f(Landroidx/media/MediaBrowserServiceCompat$h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroidx/media/MediaBrowserServiceCompat$h<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p1, v0}, Landroidx/media/MediaBrowserServiceCompat$h;->g(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroidx/media/MediaBrowserServiceCompat$h;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat;->b:Landroidx/media/MediaBrowserServiceCompat$b;

    invoke-interface {v0, p1}, Landroidx/media/MediaBrowserServiceCompat$b;->d(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$f;

    invoke-direct {v0, p0}, Landroidx/media/MediaBrowserServiceCompat$f;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroidx/media/MediaBrowserServiceCompat;->b:Landroidx/media/MediaBrowserServiceCompat$b;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 4
    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$e;

    invoke-direct {v0, p0}, Landroidx/media/MediaBrowserServiceCompat$e;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroidx/media/MediaBrowserServiceCompat;->b:Landroidx/media/MediaBrowserServiceCompat$b;

    goto :goto_0

    :cond_1
    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 5
    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$d;

    invoke-direct {v0, p0}, Landroidx/media/MediaBrowserServiceCompat$d;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroidx/media/MediaBrowserServiceCompat;->b:Landroidx/media/MediaBrowserServiceCompat$b;

    goto :goto_0

    :cond_2
    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 6
    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$c;

    invoke-direct {v0, p0}, Landroidx/media/MediaBrowserServiceCompat$c;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroidx/media/MediaBrowserServiceCompat;->b:Landroidx/media/MediaBrowserServiceCompat$b;

    goto :goto_0

    .line 7
    :cond_3
    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$g;

    invoke-direct {v0, p0}, Landroidx/media/MediaBrowserServiceCompat$g;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroidx/media/MediaBrowserServiceCompat;->b:Landroidx/media/MediaBrowserServiceCompat$b;

    .line 8
    :goto_0
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat;->b:Landroidx/media/MediaBrowserServiceCompat$b;

    invoke-interface {v0}, Landroidx/media/MediaBrowserServiceCompat$b;->b()V

    return-void
.end method
