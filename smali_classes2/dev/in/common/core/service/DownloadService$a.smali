.class Ldev/in/common/core/service/DownloadService$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/in/common/core/service/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/in/common/core/service/DownloadService;


# direct methods
.method constructor <init>(Ldev/in/common/core/service/DownloadService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/in/common/core/service/DownloadService$a;->a:Ldev/in/common/core/service/DownloadService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "checkUpdate"

    const-string v0, "stop....."

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Ldev/in/common/core/service/DownloadService$a;->a:Ldev/in/common/core/service/DownloadService;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    :goto_0
    return-void
.end method
