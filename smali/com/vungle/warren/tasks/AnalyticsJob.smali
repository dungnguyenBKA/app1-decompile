.class public Lcom/vungle/warren/tasks/AnalyticsJob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/warren/tasks/Job;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/tasks/AnalyticsJob$Action;
    }
.end annotation


# static fields
.field private static final DEFAULT_DELAY:J = 0x7d0L

.field public static final EXTRA_ACTION:Ljava/lang/String; = "action_extra"

.field private static final EXTRA_BODY:Ljava/lang/String; = "extra_body"

.field private static final EXTRA_URLS:Ljava/lang/String; = "extra_urls"

.field public static final TAG:Ljava/lang/String; = "AnalyticsJob"


# instance fields
.field private final adAnalytics:Lcom/vungle/warren/analytics/AdAnalytics;


# direct methods
.method public constructor <init>(Lcom/vungle/warren/analytics/AdAnalytics;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/tasks/AnalyticsJob;->adAnalytics:Lcom/vungle/warren/analytics/AdAnalytics;

    return-void
.end method

.method public static makeJob(ILjava/lang/String;[Ljava/lang/String;)Lcom/vungle/warren/tasks/JobInfo;
    .locals 2
    .param p0    # I
        .annotation build Lcom/vungle/warren/tasks/AnalyticsJob$Action;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action_extra"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "extra_body"

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "extra_urls"

    .line 4
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 5
    new-instance p0, Lcom/vungle/warren/tasks/JobInfo;

    sget-object p1, Lcom/vungle/warren/tasks/AnalyticsJob;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/vungle/warren/tasks/JobInfo;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/vungle/warren/tasks/JobInfo;->setUpdateCurrent(Z)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p0

    .line 7
    invoke-virtual {p0, v0}, Lcom/vungle/warren/tasks/JobInfo;->setExtras(Landroid/os/Bundle;)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p0

    const-wide/16 p1, 0x7d0

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, p1, p2, v0}, Lcom/vungle/warren/tasks/JobInfo;->setReschedulePolicy(JI)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p0

    .line 9
    invoke-virtual {p0, v0}, Lcom/vungle/warren/tasks/JobInfo;->setRequiredNetworkType(I)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p0

    const/4 p1, 0x5

    .line 10
    invoke-virtual {p0, p1}, Lcom/vungle/warren/tasks/JobInfo;->setPriority(I)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onRunJob(Landroid/os/Bundle;Lcom/vungle/warren/tasks/JobRunner;)I
    .locals 2

    const-string p2, "action_extra"

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "extra_body"

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p2, Lj60;

    invoke-direct {p2}, Lj60;-><init>()V

    .line 4
    const-class v0, Lp60;

    invoke-virtual {p2, p1, v0}, Lj60;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp60;

    .line 5
    invoke-virtual {p1}, Lp60;->e()Ls60;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/vungle/warren/tasks/AnalyticsJob;->adAnalytics:Lcom/vungle/warren/analytics/AdAnalytics;

    invoke-interface {p2, p1}, Lcom/vungle/warren/analytics/AdAnalytics;->ri(Ls60;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const-string p2, "extra_urls"

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Lcom/vungle/warren/tasks/AnalyticsJob;->adAnalytics:Lcom/vungle/warren/analytics/AdAnalytics;

    invoke-interface {v1, v0}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 9
    array-length v1, v0

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p1, 0x2

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
