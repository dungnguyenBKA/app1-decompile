.class Landroidx/media/MediaBrowserServiceCompat$e;
.super Landroidx/media/MediaBrowserServiceCompat$d;
.source "SourceFile"

# interfaces
.implements Landroidx/media/w$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic f:Landroidx/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$e;->f:Landroidx/media/MediaBrowserServiceCompat;

    invoke-direct {p0, p1}, Landroidx/media/MediaBrowserServiceCompat$d;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$e;->f:Landroidx/media/MediaBrowserServiceCompat;

    .line 2
    sget-object v1, Landroidx/media/w;->a:Ljava/lang/reflect/Field;

    .line 3
    new-instance v1, Landroidx/media/w$a;

    invoke-direct {v1, v0, p0}, Landroidx/media/w$a;-><init>(Landroid/content/Context;Landroidx/media/w$c;)V

    .line 4
    iput-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$c;->b:Ljava/lang/Object;

    .line 5
    check-cast v1, Landroid/service/media/MediaBrowserService;

    invoke-virtual {v1}, Landroid/service/media/MediaBrowserService;->onCreate()V

    return-void
.end method

.method public e(Ljava/lang/String;Landroidx/media/w$b;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    new-instance p3, Landroidx/media/MediaBrowserServiceCompat$e$a;

    invoke-direct {p3, p0, p1, p2}, Landroidx/media/MediaBrowserServiceCompat$e$a;-><init>(Landroidx/media/MediaBrowserServiceCompat$e;Ljava/lang/Object;Landroidx/media/w$b;)V

    .line 2
    iget-object p2, p0, Landroidx/media/MediaBrowserServiceCompat$e;->f:Landroidx/media/MediaBrowserServiceCompat;

    invoke-virtual {p2, p1, p3}, Landroidx/media/MediaBrowserServiceCompat;->d(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$h;)V

    return-void
.end method
