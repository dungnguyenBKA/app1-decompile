.class Landroidx/media/u;
.super Landroidx/media/r;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media/v;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media/r;-><init>(Landroid/content/Context;Landroidx/media/t;)V

    return-void
.end method


# virtual methods
.method public onLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media/r;->b:Landroidx/media/t;

    check-cast v0, Landroidx/media/v;

    new-instance v1, Landroidx/media/s;

    invoke-direct {v1, p2}, Landroidx/media/s;-><init>(Landroid/service/media/MediaBrowserService$Result;)V

    invoke-interface {v0, p1, v1}, Landroidx/media/v;->a(Ljava/lang/String;Landroidx/media/s;)V

    return-void
.end method
