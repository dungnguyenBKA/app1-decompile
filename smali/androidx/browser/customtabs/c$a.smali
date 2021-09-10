.class public final Landroidx/browser/customtabs/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/customtabs/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Intent;

.field private b:Z


# direct methods
.method public constructor <init>(Landroidx/browser/customtabs/e;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/browser/customtabs/c$a;->a:Landroid/content/Intent;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Landroidx/browser/customtabs/c$a;->b:Z

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroidx/browser/customtabs/e;->b()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroidx/browser/customtabs/e;->a()Landroid/os/IBinder;

    move-result-object p1

    :goto_0
    const-string v2, "android.support.customtabs.extra.SESSION"

    .line 7
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public a()Landroidx/browser/customtabs/c;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/c$a;->a:Landroid/content/Intent;

    iget-boolean v1, p0, Landroidx/browser/customtabs/c$a;->b:Z

    const-string v2, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2
    new-instance v0, Landroidx/browser/customtabs/c;

    iget-object v1, p0, Landroidx/browser/customtabs/c$a;->a:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/browser/customtabs/c;-><init>(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-object v0
.end method
