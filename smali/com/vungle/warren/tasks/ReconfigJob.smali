.class public Lcom/vungle/warren/tasks/ReconfigJob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/warren/tasks/Job;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "com.vungle.warren.tasks.ReconfigJob"


# instance fields
.field private reconfigCall:Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;


# direct methods
.method public constructor <init>(Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/tasks/ReconfigJob;->reconfigCall:Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;

    return-void
.end method

.method public static makeJobInfo(Ljava/lang/String;)Lcom/vungle/warren/tasks/JobInfo;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "appId"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p0, Lcom/vungle/warren/tasks/JobInfo;

    sget-object v1, Lcom/vungle/warren/tasks/ReconfigJob;->TAG:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/vungle/warren/tasks/JobInfo;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/vungle/warren/tasks/JobInfo;->setExtras(Landroid/os/Bundle;)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p0

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/vungle/warren/tasks/JobInfo;->setUpdateCurrent(Z)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p0

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p0, v0}, Lcom/vungle/warren/tasks/JobInfo;->setPriority(I)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onRunJob(Landroid/os/Bundle;Lcom/vungle/warren/tasks/JobRunner;)I
    .locals 1

    const-string p2, "appId"

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/vungle/warren/tasks/ReconfigJob;->reconfigCall:Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;

    invoke-interface {p1}, Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;->reConfigVungle()V

    const/4 p1, 0x0

    return p1
.end method
