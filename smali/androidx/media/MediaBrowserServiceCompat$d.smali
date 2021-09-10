.class Landroidx/media/MediaBrowserServiceCompat$d;
.super Landroidx/media/MediaBrowserServiceCompat$c;
.source "SourceFile"

# interfaces
.implements Landroidx/media/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic e:Landroidx/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$d;->e:Landroidx/media/MediaBrowserServiceCompat;

    invoke-direct {p0, p1}, Landroidx/media/MediaBrowserServiceCompat$c;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroidx/media/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media/s<",
            "Landroid/os/Parcel;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$d$a;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media/MediaBrowserServiceCompat$d$a;-><init>(Landroidx/media/MediaBrowserServiceCompat$d;Ljava/lang/Object;Landroidx/media/s;)V

    .line 2
    iget-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$d;->e:Landroidx/media/MediaBrowserServiceCompat;

    invoke-virtual {p1, v0}, Landroidx/media/MediaBrowserServiceCompat;->e(Landroidx/media/MediaBrowserServiceCompat$h;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$d;->e:Landroidx/media/MediaBrowserServiceCompat;

    .line 2
    new-instance v1, Landroidx/media/u;

    invoke-direct {v1, v0, p0}, Landroidx/media/u;-><init>(Landroid/content/Context;Landroidx/media/v;)V

    .line 3
    iput-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$c;->b:Ljava/lang/Object;

    .line 4
    check-cast v1, Landroid/service/media/MediaBrowserService;

    invoke-virtual {v1}, Landroid/service/media/MediaBrowserService;->onCreate()V

    return-void
.end method
