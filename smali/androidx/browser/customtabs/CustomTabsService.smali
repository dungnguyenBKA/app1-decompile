.class public abstract Landroidx/browser/customtabs/CustomTabsService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lb$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lx;

    invoke-direct {v0}, Lx;-><init>()V

    iput-object v0, p0, Landroidx/browser/customtabs/CustomTabsService;->b:Ljava/util/Map;

    .line 3
    new-instance v0, Landroidx/browser/customtabs/CustomTabsService$a;

    invoke-direct {v0, p0}, Landroidx/browser/customtabs/CustomTabsService$a;-><init>(Landroidx/browser/customtabs/CustomTabsService;)V

    iput-object v0, p0, Landroidx/browser/customtabs/CustomTabsService;->c:Lb$a;

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method protected abstract b(Landroidx/browser/customtabs/f;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/browser/customtabs/f;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation
.end method

.method protected abstract c(Landroidx/browser/customtabs/f;)Z
.end method

.method protected abstract d(Landroidx/browser/customtabs/f;Ljava/lang/String;Landroid/os/Bundle;)I
.end method

.method protected abstract e(Landroidx/browser/customtabs/f;Landroid/net/Uri;)Z
.end method

.method protected abstract f(Landroidx/browser/customtabs/f;Landroid/os/Bundle;)Z
.end method

.method protected abstract g(Landroidx/browser/customtabs/f;ILandroid/net/Uri;Landroid/os/Bundle;)Z
.end method

.method protected abstract h(J)Z
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/browser/customtabs/CustomTabsService;->c:Lb$a;

    return-object p1
.end method
