.class public Lcom/vungle/warren/tasks/DownloadJob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/warren/tasks/Job;


# static fields
.field private static final PLACEMENT_KEY:Ljava/lang/String; = "placement"

.field static final TAG:Ljava/lang/String; = "com.vungle.warren.tasks.DownloadJob"


# instance fields
.field private final adLoader:Lcom/vungle/warren/AdLoader;

.field private final vungleApi:Lcom/vungle/warren/VungleStaticApi;


# direct methods
.method public constructor <init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/VungleStaticApi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/tasks/DownloadJob;->adLoader:Lcom/vungle/warren/AdLoader;

    .line 3
    iput-object p2, p0, Lcom/vungle/warren/tasks/DownloadJob;->vungleApi:Lcom/vungle/warren/VungleStaticApi;

    return-void
.end method

.method public static makeJobInfo(Ljava/lang/String;)Lcom/vungle/warren/tasks/JobInfo;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "placement"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/vungle/warren/tasks/DownloadJob;->TAG:Ljava/lang/String;

    const-string v3, " "

    invoke-static {v1, v2, v3, p0}, Lic;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance v1, Lcom/vungle/warren/tasks/JobInfo;

    invoke-direct {v1, p0}, Lcom/vungle/warren/tasks/JobInfo;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 5
    invoke-virtual {v1, p0}, Lcom/vungle/warren/tasks/JobInfo;->setUpdateCurrent(Z)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p0

    .line 6
    invoke-virtual {p0, v0}, Lcom/vungle/warren/tasks/JobInfo;->setExtras(Landroid/os/Bundle;)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p0

    const/4 v0, 0x4

    .line 7
    invoke-virtual {p0, v0}, Lcom/vungle/warren/tasks/JobInfo;->setPriority(I)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onRunJob(Landroid/os/Bundle;Lcom/vungle/warren/tasks/JobRunner;)I
    .locals 1

    const-string p2, "placement"

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/vungle/warren/tasks/DownloadJob;->vungleApi:Lcom/vungle/warren/VungleStaticApi;

    invoke-interface {p2}, Lcom/vungle/warren/VungleStaticApi;->getValidPlacements()Ljava/util/Collection;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/vungle/warren/tasks/DownloadJob;->adLoader:Lcom/vungle/warren/AdLoader;

    invoke-virtual {p2, p1}, Lcom/vungle/warren/AdLoader;->loadPendingInternal(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
