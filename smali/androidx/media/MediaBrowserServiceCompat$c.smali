.class Landroidx/media/MediaBrowserServiceCompat$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media/MediaBrowserServiceCompat$b;
.implements Landroidx/media/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Object;

.field c:Landroid/os/Messenger;

.field final synthetic d:Landroidx/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$c;->d:Landroidx/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$c;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$c;->d:Landroidx/media/MediaBrowserServiceCompat;

    .line 2
    new-instance v1, Landroidx/media/r;

    invoke-direct {v1, v0, p0}, Landroidx/media/r;-><init>(Landroid/content/Context;Landroidx/media/t;)V

    .line 3
    iput-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$c;->b:Ljava/lang/Object;

    .line 4
    check-cast v1, Landroid/service/media/MediaBrowserService;

    invoke-virtual {v1}, Landroid/service/media/MediaBrowserService;->onCreate()V

    return-void
.end method

.method public c(Ljava/lang/String;Landroidx/media/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media/s<",
            "Ljava/util/List<",
            "Landroid/os/Parcel;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$c$a;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media/MediaBrowserServiceCompat$c$a;-><init>(Landroidx/media/MediaBrowserServiceCompat$c;Ljava/lang/Object;Landroidx/media/s;)V

    .line 2
    iget-object p2, p0, Landroidx/media/MediaBrowserServiceCompat$c;->d:Landroidx/media/MediaBrowserServiceCompat;

    invoke-virtual {p2, p1, v0}, Landroidx/media/MediaBrowserServiceCompat;->c(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$h;)V

    return-void
.end method

.method public d(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$c;->b:Ljava/lang/Object;

    .line 2
    check-cast v0, Landroid/service/media/MediaBrowserService;

    invoke-virtual {v0, p1}, Landroid/service/media/MediaBrowserService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media/q;
    .locals 4

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    const-string v1, "extra_client_version"

    .line 1
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$c;->d:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->d:Landroidx/media/MediaBrowserServiceCompat$l;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$c;->c:Landroid/os/Messenger;

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x2

    const-string v2, "extra_service_version"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$c;->c:Landroid/os/Messenger;

    invoke-virtual {v1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "extra_messenger"

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 8
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$c;->d:Landroidx/media/MediaBrowserServiceCompat;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$c;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$c;->d:Landroidx/media/MediaBrowserServiceCompat;

    const/4 v1, -0x1

    .line 11
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1

    .line 13
    new-instance v2, Landroidx/media/z;

    invoke-direct {v2, p1, v1, p2}, Landroidx/media/z;-><init>(Ljava/lang/String;II)V

    .line 14
    :cond_1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$c;->d:Landroidx/media/MediaBrowserServiceCompat;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media/MediaBrowserServiceCompat;->b(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 16
    iget-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$c;->d:Landroidx/media/MediaBrowserServiceCompat;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method
