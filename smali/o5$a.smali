.class Lo5$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo5;


# direct methods
.method constructor <init>(Lo5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo5$a;->a:Lo5;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lo5$a;->a:Lo5;

    invoke-virtual {v0, p1, p2}, Lo5;->h(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
